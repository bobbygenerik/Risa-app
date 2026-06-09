import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
// ignore_for_file: todo
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:iptv_player/l10n/gen/app_localizations.dart';
import 'package:media_kit/media_kit.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/jank_monitor.dart';
import 'package:iptv_player/utils/startup_probe.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/voice_search_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/crash_logger.dart';

import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/fast_startup_service.dart';

import 'package:iptv_player/services/whisper_transcription_service.dart';
import 'package:iptv_player/services/whisper_speech_service.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/services/whisper_model_service.dart';
import 'package:iptv_player/widgets/main_shell.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/screens/epg_screen.dart';
import 'package:iptv_player/screens/settings_screen.dart';
import 'package:iptv_player/screens/playlist_editor_screen.dart';
import 'package:iptv_player/screens/playlist_manager_screen.dart';
import 'package:iptv_player/screens/ssl_settings_screen.dart';
import 'package:iptv_player/screens/recordings_screen.dart';
import 'package:iptv_player/screens/translation_models_screen.dart';
import 'package:iptv_player/screens/whisper_models_screen.dart';
import 'package:iptv_player/screens/epg_diagnostic_screen.dart';
import 'package:flutter/scheduler.dart';
import 'package:iptv_player/screens/epg_manager_screen.dart';
import 'package:iptv_player/screens/debug_screen.dart';
import 'package:iptv_player/screens/exit_screen.dart';
// modern_home_screen is unused in the redesigned UI; import removed to silence lints
import 'package:iptv_player/screens/live_tv_screen.dart';
// import 'package:iptv_player/screens/multi_view_screen.dart';
import 'package:iptv_player/widgets/safe_pop_scope.dart';

import 'package:iptv_player/screens/favorites_screen.dart';
import 'package:iptv_player/screens/downloads_screen.dart';

import 'package:iptv_player/screens/search_screen.dart';
import 'package:iptv_player/screens/video_player_router.dart';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/settings_provider.dart';
import 'package:iptv_player/services/background_task_manager.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/services/ssl_handler.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/services/prewarm_service.dart';
import 'package:iptv_player/services/sqlite_platform_init.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_cache_config.dart';
import 'package:iptv_player/utils/linux_keyboard_workarounds.dart';
import 'package:iptv_player/services/clock_service.dart';

part 'app/app_startup.dart';
part 'app/app_error_ui.dart';
part 'app/app_router.dart';
part 'app/my_app_lifecycle.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
const bool _enablePrewarm = false;

void main() {
  StartupProbe.mark('main() entry');
  runZonedGuarded(
    () async {
      // Ensure the Flutter bindings are created inside the same Zone
      // that will run the application. Creating the binding outside
      // the guarded zone can cause a "bindings initialized in a
      // different zone" error when the framework is used later.
      WidgetsFlutterBinding.ensureInitialized();
      installLinuxKeyboardWorkarounds();
      StartupProbe.mark('Flutter bindings initialized');

      ImageCacheConfig.initialize();
      StartupProbe.mark('Image cache config initialized');
      HttpOverrides.global = IPTVHttpOverrides();

      FlutterError.onError = (FlutterErrorDetails details) {
        final errorStr = details.exception.toString();
        if (_shouldSuppressError(errorStr)) {
          debugLog('Suppressed image error: ${details.exception}');
          return;
        }
        final flutterMessage = 'FlutterError: ${details.exception}';
        logToSystem(flutterMessage, name: 'RisaFlutter');
        // ignore: avoid_print
        print(flutterMessage);
        unawaited(CrashLogger.instance.logError(
          details.exception,
          details.stack,
          source: 'flutter',
        ));
        FlutterError.presentError(details);
        Zone.current.handleUncaughtError(
          details.exception,
          details.stack ?? StackTrace.current,
        );
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        final errorStr = error.toString();
        if (!_shouldSuppressError(errorStr)) {
          final platformMessage = 'PlatformError: $error';
          logToSystem(platformMessage, name: 'RisaFlutter');
          // ignore: avoid_print
          print(platformMessage);
        }
        unawaited(CrashLogger.instance.logError(
          error,
          stack,
          source: 'platform',
        ));
        _ErrorHandler.reportError(error, stack);
        return true;
      };

      StartupProbe.mark('Launching main app (first frame priority)');
      runApp(const MyApp());
      WidgetsBinding.instance.addPostFrameCallback((_) {
        unawaited(_completeDeferredStartup());
      });
    },
    (error, stack) {
      // Optionally log error to a service
      unawaited(CrashLogger.instance.logError(
        error,
        stack,
        source: 'zone',
      ));
      _ErrorHandler.reportError(error, stack);
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: unused_field
  bool _disclaimerAccepted = false;
  // ignore: unused_field
  bool _hasPlaylist = false;
  bool _prewarmStarted = false;
  final Set<Future> _pendingDeferredOperations = {};

  @override
  void initState() {
    super.initState();
    _enableJankLogging();
    _setupAndroidAutoListener();
    StartupProbe.mark('MyAppState initState');
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    // Loading screen removed to show skeleton loaders immediately
    /* if (_loading) { ... } code removed */

    return _ErrorHandler.wrapWithErrorListener(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) {
              final provider = SettingsProvider();
              provider.initialize();
              return provider;
            },
          ),
          ChangeNotifierProvider(
            create: (context) {
              final service = IncrementalEpgService();
              // Start EPG initialization immediately for fast startup
              Future.microtask(() => service.quickStart());
              return service;
            },
          ),
          ChangeNotifierProxyProvider<IncrementalEpgService, ChannelProvider>(
            create: (context) {
              final provider = ChannelProvider();
              // Defer playlist loading minimally - DB load is fast
              _runDeferred(
                provider.autoLoadPlaylist,
                delay: const Duration(milliseconds: 100),
              );
              return provider;
            },
            update: (context, epgService, channelProvider) {
              final provider = channelProvider ?? ChannelProvider();
              // Defer setting the service to avoid notifications during build
              Future.microtask(() => provider.setEpgService(epgService));
              return provider;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = VoiceSearchService();
              _runDeferred(service.initialize);
              return service;
            },
          ),
          // Drive sync service removed.
          ChangeNotifierProvider(
            create: (_) {
              final manager = AIModelManager();
              _runDeferred(() async {
                if (await _shouldInitTranscriptionServices()) {
                  await manager.initialize();
                }
              });
              return manager;
            },
          ),

          ChangeNotifierProxyProvider<AIModelManager, WhisperSpeechService>(
            create: (_) {
              final service = WhisperSpeechService();
              _runDeferred(() async {
                if (await _shouldInitTranscriptionServices()) {
                  await service.initialize();
                }
              });
              return service;
            },
            update: (_, modelManager, whisperService) {
              final service = whisperService ?? WhisperSpeechService();
              service.attachModelManager(modelManager);
              return service;
            },
          ),
          ChangeNotifierProxyProvider<WhisperSpeechService,
              WhisperTranscriptionService>(
            create: (_) {
              final service = WhisperTranscriptionService();
              _runDeferred(() async {
                if (await _shouldInitTranscriptionServices()) {
                  await service.initialize();
                }
              });
              return service;
            },
            update: (_, speechService, transcriptionService) {
              return transcriptionService ?? WhisperTranscriptionService();
            },
          ),
          ChangeNotifierProxyProvider<WhisperTranscriptionService,
              IntegratedTranscriptionService>(
            create: (_) {
              final service = IntegratedTranscriptionService();
              _runDeferred(() async {
                if (await _shouldInitTranscriptionServices()) {
                  await service.initialize();
                }
              });
              return service;
            },
            update: (_, whisperService, integratedService) {
              final service =
                  integratedService ?? IntegratedTranscriptionService();
              service.attachWhisperService(whisperService);
              return service;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = WhisperModelService();
              _runDeferred(() async {
                if (await _shouldInitTranscriptionServices()) {
                  await service.initialize();
                }
              });
              return service;
            },
          ),
        ],
        child: Builder(
          builder: (context) {
            // Start background tasks for EPG and playlist sync after the first frame is rendered
            WidgetsBinding.instance.addPostFrameCallback((_) {
              BackgroundTaskManager.start(context);
            });
            if (_enablePrewarm && !_prewarmStarted) {
              _prewarmStarted = true;
              _runDeferred(
                () async {
                  final appContext = context;
                  if (!appContext.mounted) return;
                  await PrewarmService.prewarmMainScreens(appContext);
                  if (!appContext.mounted) return;
                  await PrewarmService.prewarmHomeData(appContext);
                },
                delay: const Duration(milliseconds: 500),
              );
            }
            return MaterialApp.router(
              title: 'RISA IPTV Player',
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en', ''),
              ],
              debugShowCheckedModeBanner: false,
              theme: AppTheme.darkTheme,
              routerConfig: _router,
              scaffoldMessengerKey: rootScaffoldMessengerKey,
              builder: (context, child) {
                final media = MediaQuery.of(context);
                final resolvedChild = child ?? const SizedBox.shrink();
                // No scaling - use native screen size
                return MediaQuery(
                  data: media,
                  child: Stack(
                    children: [
                      resolvedChild,
                      // Performance overlay for debug builds
                      if (kDebugMode)
                        const Positioned(
                          top: 0,
                          left: 0,
                          child: SizedBox(
                            width: 200,
                            height: 60,
                            child: PerformanceOverlay(
                              optionsMask: 0x0F, // Show all stats
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    BackgroundTaskManager.stop();
    // Cancel any pending deferred operations
    _pendingDeferredOperations.clear();
    // Stop clock service
    ClockService().stop();
    super.dispose();
  }
}
