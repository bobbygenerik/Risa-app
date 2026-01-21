import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
// ignore_for_file: todo
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:iptv_player/l10n/gen/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
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
import 'package:iptv_player/screens/epg_manager_screen.dart';
import 'package:iptv_player/screens/debug_screen.dart';
import 'package:iptv_player/screens/exit_screen.dart';
// modern_home_screen is unused in the redesigned UI; import removed to silence lints
import 'package:iptv_player/screens/live_tv_screen.dart';
import 'package:iptv_player/screens/multi_view_screen.dart';
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

final _rootNavigatorKey = GlobalKey<NavigatorState>();
const bool _enablePrewarm = false;

class _DeviceMemoryInfo {
  final bool isLowMemory;
  _DeviceMemoryInfo({required this.isLowMemory});
}

Future<_DeviceMemoryInfo> _getDeviceMemoryInfo() async {
  try {
    if (kIsWeb) return _DeviceMemoryInfo(isLowMemory: false);

    // Simple heuristic: assume low memory if running on older Android or Shield
    if (Platform.isAndroid) {
      final info = await Process.run('getprop', ['ro.build.version.sdk']);
      final sdkVersion = int.tryParse(info.stdout.toString().trim()) ?? 30;
      
      // Check if it's a Shield device
      final model = await Process.run('getprop', ['ro.product.model']);
      final modelName = model.stdout.toString().toLowerCase();
      final isShield = modelName.contains('shield');
      
      // Shield devices need more conservative memory management
      if (isShield) {
        return _DeviceMemoryInfo(isLowMemory: true);
      }
      
      return _DeviceMemoryInfo(isLowMemory: sdkVersion < 26); // Android 8.0+
    }

    return _DeviceMemoryInfo(isLowMemory: false);
  } catch (e) {
    return _DeviceMemoryInfo(isLowMemory: false);
  }
}

final _suppressedErrorPatterns = {
  '429',
  'rate limit',
  'HttpException',
  'SocketException',
  'ClientException',
  'RenderFlex overflowed',
  'overflowed by',
  'Invalid image data',
  'Image data',
  'Failed to load network image',
  'NetworkImageLoadException',
  'HandshakeException',
  'Connection closed',
  'Connection reset',
};

bool _shouldSuppressError(String errorStr) {
  return _suppressedErrorPatterns.any((pattern) => errorStr.contains(pattern));
}

void main() {
  StartupProbe.mark('main() entry');
  runZonedGuarded(
    () async {
      // Ensure the Flutter bindings are created inside the same Zone
      // that will run the application. Creating the binding outside
      // the guarded zone can cause a "bindings initialized in a
      // different zone" error when the framework is used later.
      WidgetsFlutterBinding.ensureInitialized();
      StartupProbe.mark('Flutter bindings initialized');
      unawaited(CrashLogger.instance.init());

      // Optimize image cache for IPTV with conservative but functional limits
      final memoryInfo = await _getDeviceMemoryInfo();
      if (memoryInfo.isLowMemory) {
        // Very conservative cache sizes for Shield/low-memory devices
        PaintingBinding.instance.imageCache.maximumSize = 15; // Reduced from 20
        PaintingBinding.instance.imageCache.maximumSizeBytes =
            2 << 20; // 2MB max (reduced from 4MB)
        StartupProbe.mark('Image cache limits configured (SHIELD/LOW MEMORY)');
      } else {
        PaintingBinding.instance.imageCache.maximumSize =
            40; // Reduced from 50 for better performance
        PaintingBinding.instance.imageCache.maximumSizeBytes =
            6 << 20; // 6MB max (reduced from 8MB)
        StartupProbe.mark('Image cache limits configured (CONSERVATIVE)');
      }

      // Force immediate garbage collection and memory cleanup for Shield
      final tmp = List<int>.generate(1024, (index) => index);
      tmp.clear();
      
      // Additional cleanup for Shield devices
      if (memoryInfo.isLowMemory) {
        // Clear any existing image cache
        PaintingBinding.instance.imageCache.clear();
        PaintingBinding.instance.imageCache.clearLiveImages();
        
        // Force multiple GC cycles for Shield
        for (int i = 0; i < 3; i++) {
          final waste = List<int>.generate(512, (index) => index);
          waste.clear();
        }
        StartupProbe.mark('Shield memory cleanup completed');
      }

      // Initialize SSL handler for IPTV providers with certificate issues
      await SSLHandler.init();
      HttpOverrides.global = IPTVHttpOverrides();
      StartupProbe.mark('SSL handler configured');

      // Initialize HTTP client service with connection pooling
      HttpClientService().initialize();
      StartupProbe.mark('HTTP client service initialized');

      // Always lock landscape orientation on Android devices.
      if (!kIsWeb && Platform.isAndroid) {
        TVFocusHelper.setIsAndroidTV(true);
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
        StartupProbe.mark('Preferred orientations locked (Android)');
      }

      FlutterError.onError = (FlutterErrorDetails details) {
        // Suppress rate-limit errors from image loading (HTTP 429)
        final errorStr = details.exception.toString();
        if (_shouldSuppressError(errorStr)) {
          debugLog('Suppressed image error: ${details.exception}');
          return;
        }
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
        unawaited(CrashLogger.instance.logError(
          error,
          stack,
          source: 'platform',
        ));
        _ErrorHandler.reportError(error, stack);
        return true;
      };

      // Launch main app directly without startup progress widget
      StartupProbe.mark('Launching main app directly');
      runApp(const MyApp());
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

/// Global error handler for reporting and displaying errors
class _ErrorHandler {
  static final _errorNotifier = ValueNotifier<_AppError?>(null);
  static _AppError? _pendingError;
  static bool _errorDispatchScheduled = false;

  static void reportError(Object error, StackTrace stack) {
    // Filter out HTTP 429 (rate limit) errors from image loading
    // These are handled gracefully by error widgets, no need to show a global error
    final errorString = error.toString();
    if (_shouldSuppressError(errorString)) {
      debugLog('Suppressed network/image error: $error');
      return;
    }

    debugLog('Unhandled app error: $error');
    debugLog(stack.toString());
    _pendingError = _AppError(error, stack);

    final binding = WidgetsBinding.instance;

    if (_errorDispatchScheduled) {
      return;
    }

    _errorDispatchScheduled = true;
    binding.addPostFrameCallback((_) {
      _errorDispatchScheduled = false;
      final pending = _pendingError;
      if (pending == null) {
        return;
      }
      _pendingError = null;
      _errorNotifier.value = pending;
    });
    // Optional: Could send error to analytics/crash service in production
  }

  static Widget wrapWithErrorListener(Widget child) {
    return ValueListenableBuilder<_AppError?>(
      valueListenable: _errorNotifier,
      builder: (context, appError, _) {
        if (appError != null) {
          return _GlobalErrorScreen(
            error: appError,
            onDismiss: () => _errorNotifier.value = null,
          );
        }
        return child;
      },
    );
  }
}

class _AppError {
  final Object error;
  final StackTrace stack;
  _AppError(this.error, this.stack);
}

class _GlobalErrorScreen extends StatelessWidget {
  final _AppError error;
  final VoidCallback onDismiss;
  const _GlobalErrorScreen({required this.error, required this.onDismiss});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: AppTheme.darkTheme,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline,
                    color: Colors.redAccent, size: 80),
                const SizedBox(height: 24),
                Text(
                  'Something went wrong',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  error.error.toString(),
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(color: Colors.redAccent),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Focus(
                  autofocus: false,
                  child: Builder(
                    builder: (context) {
                      final isFocused = Focus.of(context).hasFocus;
                      return AnimatedScale(
                        scale: isFocused ? TVFocusStyle.focusScale : 1.0,
                        duration: TVFocusStyle.animationDuration,
                        child: AnimatedContainer(
                          duration: TVFocusStyle.animationDuration,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: isFocused
                                ? TVFocusStyle.focusedShadow
                                : TVFocusStyle.defaultShadow,
                          ),
                          child: ElevatedButton(
                            onPressed: onDismiss,
                            child: const Text('Dismiss'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
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

  void _runDeferred(
    FutureOr<void> Function() action, {
    Duration delay = Duration.zero,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final future = delay == Duration.zero
          ? Future.microtask(action)
          : Future.delayed(delay, action);
      _pendingDeferredOperations.add(future);
      future.whenComplete(() => _pendingDeferredOperations.remove(future));
    });
  }

  Future<bool> _shouldInitTranscriptionServices() async {
    final prefs = await SharedPreferences.getInstance();
    return (prefs.getBool('transcription_enabled') ?? false) ||
        (prefs.getBool('translation_enabled') ?? false);
  }

  @override
  void initState() {
    super.initState();
    _setupAndroidAutoListener();
    StartupProbe.mark('MyAppState initState');
    _initialize();
  }

  void _setupAndroidAutoListener() {
    if (!Platform.isAndroid) return;

    const channel = MethodChannel('com.streamhub.iptv/auto_play');
    channel.setMethodCallHandler((call) async {
      if (call.method == 'playChannel') {
        final url = call.arguments['url'] as String?;
        final name = call.arguments['name'] as String?;
        final id = call.arguments['id'] as String?;

        if (url != null && name != null) {
          // Create a Channel object and navigate to player
          final channel = Channel(
            id: id ?? 'auto_$url',
            name: name,
            url: url,
            tvgId: id,
            logoUrl: null,
            groupTitle: 'Android Auto',
          );

          // Capture context before async operations
          final context = _rootNavigatorKey.currentContext;
          if (context != null) {
            // Wait for router to be ready and navigate
            await Future.delayed(const Duration(milliseconds: 500));

            if (mounted) {
              // ignore: use_build_context_synchronously
              GoRouter.of(context).go('/player', extra: channel);
            }
          }
        }
      }
    });
  }

  Future<void> _initialize() async {
    try {
      StartupProbe.mark('MyApp initialization: FastStartup init start');
      await FastStartupService.instance.initialize();
      StartupProbe.mark('MyApp initialization: FastStartup init finished');

      unawaited(TMDBService.init().catchError((error, stack) {
        debugLog('TMDBService.init() failed during startup: $error');
      }));
      StartupProbe.mark('MyApp initialization: clear old playlists');
      await _clearOldPlaylists();
      StartupProbe.mark('MyApp initialization: playlists cleared');
      StartupProbe.mark('MyApp initialization: check disclaimer');
      await _checkDisclaimer();
      StartupProbe.mark('MyApp initialization: disclaimer checked');
      StartupProbe.mark('MyApp initialization: check/load playlist');
      await _checkAndLoadPlaylist();
      StartupProbe.mark('MyApp initialization: playlist check finished');
    } catch (error, stack) {
      debugLog('Initialization error: $error');
      debugLog('$stack');
    } finally {
      if (mounted) {
        StartupProbe.mark('MyApp initialization: complete');
      }
    }
  }

  Future<void> _clearOldPlaylists() async {
    final prefs = await SharedPreferences.getInstance();
    // Check if this is a new install or updated version
    final lastVersion = prefs.getString('app_version');
    const currentVersion =
        '2.0.2'; // Increment this when you want to clear old data

    if (lastVersion != currentVersion) {
      // Only clear cache files, preserve user settings
      await prefs.remove('cached_playlist');
      await prefs.remove('cache_timestamp');

      // Don't clear user's playlist URLs and EPG settings
      // await prefs.remove('playlist_type');
      // await prefs.remove('m3u_url');
      // await prefs.remove('xtream_server');
      // await prefs.remove('xtream_username');
      // await prefs.remove('xtream_password');

      // Save new version
      await prefs.setString('app_version', currentVersion);

      debugLog(
          'Cleared cache data - preserved user settings - new version: $currentVersion');
    }
  }

  Future<void> _checkDisclaimer() async {
    // Disclaimer removed from startup - now available in settings
    setState(() {
      _disclaimerAccepted = true;
    });
  }

  Future<void> _checkAndLoadPlaylist() async {
    final prefs = await SharedPreferences.getInstance();
    final playlistType = prefs.getString('playlist_type');

    if (playlistType == null) {
      await prefs.remove('cached_playlist');
      await prefs.remove('cache_timestamp');
      return;
    }

    // Try to auto-load the saved playlist
    try {
      String? playlistUrl;

      if (playlistType == 'm3u') {
        playlistUrl = prefs.getString('m3u_url');
      } else if (playlistType == 'xtream') {
        final server = prefs.getString('xtream_server');
        final username = prefs.getString('xtream_username');
        final password = prefs.getString('xtream_password');

        if (server != null && username != null && password != null) {
          // Build playlist URL and computed EPG URL using Uri for safety
          try {
            final cleaned = server.trim();
            Uri baseUri = Uri.parse(cleaned);
            if (baseUri.scheme.isEmpty || baseUri.host.isEmpty) {
              baseUri = Uri.parse(
                  'https://${cleaned.replaceAll(RegExp(r'^https?://'), '')}');
            }
            final playlistUri = baseUri.replace(
                path: (baseUri.path.trim().isEmpty)
                    ? 'get.php'
                    : '${baseUri.path.replaceAll(RegExp(r'^/'), '')}/get.php',
                queryParameters: {
                  'username': username.replaceAll(' ', ''),
                  'password': password.replaceAll(' ', ''),
                  'type': 'm3u_plus',
                });
            playlistUrl = playlistUri.toString();

            // Computed EPG URL
            final epgUri = baseUri.replace(
              path: (baseUri.path.trim().isEmpty)
                  ? 'xmltv.php'
                  : '${baseUri.path.replaceAll(RegExp(r'^/'), '')}/xmltv.php',
              queryParameters: {
                'username': username.replaceAll(' ', ''),
                'password': password.replaceAll(' ', ''),
              },
            );
            await prefs.setString('epg_url', epgUri.toString());
            debugLog(
                'Main: Saved computed epg_url for Xtream: ${epgUri.toString()}');
          } catch (e) {
            debugLog('Main: Could not compute/save epg_url: $e');
            try {
              final cleaned2 = server.trim();
              Uri fallbackBase = Uri.parse(cleaned2);
              if (fallbackBase.scheme.isEmpty || fallbackBase.host.isEmpty) {
                fallbackBase = Uri.parse(
                    'https://${cleaned2.replaceAll(RegExp(r'^https?://'), '')}');
              }
              final fallbackUri = fallbackBase.replace(
                path: (fallbackBase.path.trim().isEmpty)
                    ? 'get.php'
                    : '${fallbackBase.path.replaceAll(RegExp(r'^/'), '')}/get.php',
                queryParameters: {
                  'username': username.replaceAll(' ', ''),
                  'password': password.replaceAll(' ', ''),
                  'type': 'm3u_plus',
                  'output': 'ts'
                },
              );
              playlistUrl = fallbackUri.toString();
            } catch (_) {
              playlistUrl = '';
            }
          }
        }
      }

      if (playlistUrl != null && playlistUrl.isNotEmpty) {
        // Will be loaded by ChannelProvider after it's created
        setState(() {
          _hasPlaylist = true;
        });
      }
    } catch (error, stack) {
      debugLog('Failed to auto-load playlist: $error');
      debugLog('$stack');
    }
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
                return MediaQuery(data: media, child: resolvedChild);
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
    super.dispose();
  }

  final Set<Future> _pendingDeferredOperations = {};
}

// Deep linking: GoRouter will handle incoming URIs (e.g., myapp://content/123 or https://risa.app/content/123)
final _router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  // To test deep links on Android:
  // adb shell am start -a android.intent.action.VIEW -d "risa://content/123"
  // Or for web: open https://risa.app/content/123
  initialLocation: '/home',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(path: '/', redirect: (context, state) => '/home'),
    // Main shell containing fixed navbar with home, guide, search screens
    ShellRoute(
      builder: (context, state, child) {
        // Determine active tab from current location
        final location = state.matchedLocation;
        final activeTab = location == '/search'
            ? 'search'
            : location == '/epg'
                ? 'epg'
                : location == '/settings'
                    ? 'settings'
                    : location == '/favorites'
                        ? 'favorites'
                        : location == '/downloads'
                            ? 'downloads'
                            : 'home';

        return MainShell(activeTab: activeTab, child: child);
      },
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) =>
              _fadeSlidePage(key: state.pageKey, child: const LiveTVScreen()),
        ),
        GoRoute(
          path: '/epg',
          pageBuilder: (context, state) {
            final extra = state.extra as Map<String, dynamic>?;
            final channel = extra?['channel'] as Channel?;
            final continuePlayback =
                extra?['continuePlayback'] as bool? ?? false;
            return _fadeSlidePage(
              key: state.pageKey,
              child: EPGScreen(
                initialChannel: channel,
                continuePlayback: continuePlayback,
              ),
            );
          },
        ),
        GoRoute(
          path: '/search',
          pageBuilder: (context, state) =>
              _fadeSlidePage(key: state.pageKey, child: const SearchScreen()),
        ),
        GoRoute(
          path: '/favorites',
          pageBuilder: (context, state) => _fadeSlidePage(
              key: state.pageKey, child: const FavoritesScreen()),
        ),
        GoRoute(
          path: '/downloads',
          pageBuilder: (context, state) => _fadeSlidePage(
              key: state.pageKey, child: const DownloadsScreen()),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (context, state) =>
              _fadeSlidePage(key: state.pageKey, child: const SettingsScreen()),
        ),
      ],
    ),
    GoRoute(
      path: '/recordings',
      pageBuilder: (context, state) => _fadeSlidePage(
          key: state.pageKey,
          child: const SafePopScope(child: RecordingsScreen())),
    ),

    GoRoute(
      path: '/playlist-editor',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const SafePopScope(child: PlaylistEditorScreen()),
      ),
    ),
    GoRoute(
      path: '/playlist-manager',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const SafePopScope(child: PlaylistManagerScreen()),
      ),
    ),
    GoRoute(
      path: '/ssl-settings',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const SafePopScope(child: SSLSettingsScreen()),
      ),
    ),
    GoRoute(
      path: '/ai-models',
      pageBuilder: (context, state) => _fadeSlidePage(
          key: state.pageKey,
          child: const SafePopScope(child: TranslationModelsScreen())),
    ),
    GoRoute(
      path: '/translation-models',
      pageBuilder: (context, state) => _fadeSlidePage(
          key: state.pageKey,
          child: const SafePopScope(child: TranslationModelsScreen())),
    ),
    GoRoute(
      path: '/whisper-models',
      pageBuilder: (context, state) => _fadeSlidePage(
          key: state.pageKey,
          child: const SafePopScope(child: WhisperModelsScreen())),
    ),
    GoRoute(
      path: '/epg-diagnostic',
      pageBuilder: (context, state) => _fadeSlidePage(
          key: state.pageKey,
          child: const SafePopScope(child: EpgDiagnosticScreen())),
    ),
    GoRoute(
      path: '/epg-manager',
      pageBuilder: (context, state) => _fadeSlidePage(
          key: state.pageKey,
          child: const SafePopScope(child: EpgManagerScreen())),
    ),
    GoRoute(
      path: '/debug',
      pageBuilder: (context, state) => _fadeSlidePage(
          key: state.pageKey, child: const SafePopScope(child: DebugScreen())),
    ),
    GoRoute(
      path: '/exit',
      pageBuilder: (context, state) =>
          _fadeSlidePage(key: state.pageKey, child: const ExitScreen()),
    ),
    GoRoute(
      path: '/player',
      pageBuilder: (context, state) {
        final data = state.extra;
        String videoUrl =
            'https://commondatastorage.googleapis.com/gtv-videos-library/sample/BigBuckBunny.mp4';
        String title = 'Video';
        String? subtitle;
        String? streamUrl;
        Channel? channel;
        bool isLive = false;

        if (data is Channel) {
          videoUrl = data.url;
          streamUrl = data.url;
          title = data.name;
          channel = data;
          isLive = true;
          final appContext = context;
          Future.microtask(() {
            if (!appContext.mounted) return;
            final channelProvider =
                Provider.of<ChannelProvider>(appContext, listen: false);
            channelProvider.incrementWatchCount(data.id);
          });
        } else if (data is Map<String, dynamic> || data is Map) {
          final mapArgs = data is Map<String, dynamic>
              ? data
              : Map<String, dynamic>.from(data as Map);
          videoUrl = mapArgs['videoUrl'] ?? videoUrl;
          streamUrl = mapArgs['streamUrl'] ?? streamUrl;
          title = mapArgs['title'] ?? title;
          subtitle = mapArgs['subtitle'] ?? subtitle;
          isLive = mapArgs['isLive'] ?? isLive;
          streamUrl ??= videoUrl;
        }

        return _fadeSlidePage(
          key: state.pageKey,
          child: SafePopScope(
            child: VideoPlayerRouter(
              channel: channel,
              streamUrl: streamUrl,
              videoUrl: videoUrl,
              title: title,
              subtitle: subtitle,
              isLive: isLive,
            ),
          ),
        );
      },
    ),
    GoRoute(
      path: '/multi-view',
      pageBuilder: (context, state) {
        final data = state.extra;
        List<Channel>? channels;
        Channel? initialChannel;

        if (data is List<Channel>) {
          channels = data;
        } else if (data is Channel) {
          initialChannel = data;
        }

        return _fadeSlidePage(
          key: state.pageKey,
          child: SafePopScope(
            child: MultiViewScreen(
              channels: channels,
              initialChannel: initialChannel,
            ),
          ),
        );
      },
    ),
  ],
);

CustomTransitionPage _fadeSlidePage({
  required LocalKey key,
  required Widget child,
}) {
  return CustomTransitionPage(
    key: key,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final fade = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
      final slide = Tween<Offset>(
        begin: const Offset(0.08, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic));
      return FadeTransition(
        opacity: fade,
        child: SlideTransition(position: slide, child: child),
      );
    },
  );
}

class CatchupPlaceholder extends StatelessWidget {
  const CatchupPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPlaceholder(context, 'Catch-up TV', Icons.restore);
  }
}

Widget _buildPlaceholder(BuildContext context, String title, IconData icon) {
  // Prevent initial focus on placeholder screens by unfocusing after build
  WidgetsBinding.instance.addPostFrameCallback((_) {
    FocusScope.of(context).unfocus();
  });
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
        ),
        const SizedBox(height: 16),
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 8),
        Text(
          'No content available',
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
        ),
      ],
    ),
  );
}
