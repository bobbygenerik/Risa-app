import 'dart:async';
import 'dart:io';
// ignore_for_file: todo
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/startup_probe.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/services/voice_search_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/epg_service.dart';

import 'package:iptv_player/services/whisper_transcription_service.dart';
import 'package:iptv_player/services/whisper_speech_service.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/services/opensubtitles_service.dart';
import 'package:iptv_player/services/real_debrid_service.dart';
import 'package:iptv_player/widgets/main_shell.dart';
import 'package:iptv_player/widgets/legal_disclaimer_dialog.dart';
import 'package:iptv_player/widgets/app_dialog.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/screens/epg_screen.dart';
import 'package:iptv_player/screens/settings_screen.dart';
import 'package:iptv_player/screens/playlist_editor_screen.dart';
import 'package:iptv_player/screens/playlist_manager_screen.dart';
import 'package:iptv_player/screens/ssl_settings_screen.dart';
import 'package:iptv_player/screens/edit_profile_screen.dart';
import 'package:iptv_player/screens/recordings_screen.dart';
import 'package:iptv_player/screens/ai_models_screen.dart';
// modern_home_screen is unused in the redesigned UI; import removed to silence lints
import 'package:iptv_player/screens/live_tv_screen.dart';
import 'package:iptv_player/screens/movies_screen.dart';
import 'package:iptv_player/screens/series_screen.dart';
import 'package:iptv_player/screens/enhanced_video_player_screen.dart';
import 'package:iptv_player/screens/playlist_login_screen.dart';
import 'package:iptv_player/screens/help_about_screen.dart';
import 'package:iptv_player/screens/favorites_screen.dart';
import 'package:iptv_player/screens/downloads_screen.dart';

import 'package:iptv_player/screens/search_screen.dart';

import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/profile_provider.dart';
import 'package:iptv_player/providers/settings_provider.dart';
import 'package:iptv_player/services/background_task_manager.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/services/ssl_handler.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

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

      // Limit image cache to prevent OOM errors
      PaintingBinding.instance.imageCache.maximumSize = 100;
      PaintingBinding.instance.imageCache.maximumSizeBytes = 50 << 20; // 50MB
      StartupProbe.mark('Image cache limits configured');

      // Initialize SSL handler for IPTV providers with certificate issues
      await SSLHandler.init();
      HttpOverrides.global = IPTVHttpOverrides();
      StartupProbe.mark('SSL handler configured');

      // Only lock landscape on Android TV, allow portrait on mobile
      if (!kIsWeb && Platform.isAndroid) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
        StartupProbe.mark('Preferred orientations locked (Android TV)');
      }

      FlutterError.onError = (FlutterErrorDetails details) {
        // Suppress rate-limit errors from image loading (HTTP 429)
        final exception = details.exception;
        if (exception.toString().contains('429') ||
            exception.toString().contains('rate limit')) {
          debugPrint('Suppressed image error: ${details.exception}');
          return;
        }
        FlutterError.presentError(details);
        Zone.current.handleUncaughtError(
          details.exception,
          details.stack ?? StackTrace.current,
        );
      };

      // Show a short startup loader while TMDB disk cache loads
      StartupProbe.mark('Launching StartupLoader');
      runApp(const StartupLoader());
    },
    (error, stack) {
      // Optionally log error to a service
      _ErrorHandler.reportError(error, stack);
    },
  );
}

class StartupLoader extends StatefulWidget {
  const StartupLoader({super.key});

  @override
  State<StartupLoader> createState() => _StartupLoaderState();
}

class _StartupLoaderState extends State<StartupLoader> {
  bool _ready = false;

  @override
  void initState() {
    super.initState();
    StartupProbe.mark('StartupLoader initState');
    _initialize();
  }

  Future<void> _initialize() async {
    StartupProbe.mark('StartupLoader: TMDB init start');
    const tmdbBudget = Duration(milliseconds: 600);
    final tmdbFuture = TMDBService.init().then<bool>((_) {
      StartupProbe.mark('StartupLoader: TMDB init finished');
      return true;
    }).catchError((error, stack) {
      debugPrint('TMDBService.init() failed during startup: $error');
      return true;
    });

    final completedWithinBudget = await Future.any<bool>([
      tmdbFuture,
      Future.delayed(tmdbBudget, () => false),
    ]);

    if (!mounted) return;

    if (!completedWithinBudget) {
      StartupProbe.mark('StartupLoader: continuing without TMDB init');
    }

    // EPG loading is now handled by the EpgService provider's initialize() method
    // which loads from cache or fetches from URL automatically

    // Small delay so the indicator is visible briefly on very fast devices
    await Future.delayed(const Duration(milliseconds: 150));
    StartupProbe.mark('StartupLoader: ready to enter MyApp');
    setState(() => _ready = true);
  }

  @override
  Widget build(BuildContext context) {
    if (_ready) return const MyApp();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(color: AppTheme.primaryBlue),
              SizedBox(height: 12),
              Text('Loading cache...', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
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
    if (errorString.contains('429') ||
        errorString.contains('rate limit') ||
        errorString.contains('HttpException') &&
            errorString.contains('imgur') ||
        errorString.contains('SocketException') &&
            errorString.contains('image.tmdb.org') ||
        errorString.contains('ClientException') &&
            errorString.contains('SocketException')) {
      debugPrint('Suppressed network/image error: $error');
      return;
    }

    debugPrint('Unhandled app error: $error');
    debugPrint(stack.toString());
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
  bool _loading = true;
  // ignore: unused_field
  bool _hasPlaylist = false;
  bool _profileReady = false;
  bool _profileDialogScheduled = false;
  bool _creatingDefaultProfile = false;
  late final ProfileProvider _profileProvider;

  void _runDeferred(
    FutureOr<void> Function() action, {
    Duration delay = Duration.zero,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (delay == Duration.zero) {
        Future.microtask(action);
      } else {
        Future.delayed(delay, action);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _profileProvider = ProfileProvider();
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

          // Wait for router to be ready
          await Future.delayed(const Duration(milliseconds: 500));

          if (_rootNavigatorKey.currentContext != null) {
            _rootNavigatorKey.currentContext!.go('/player', extra: channel);
          }
        }
      }
    });
  }

  Future<void> _initialize() async {
    try {
      StartupProbe.mark('MyApp initialization: clear old playlists');
      await _clearOldPlaylists();
      StartupProbe.mark('MyApp initialization: playlists cleared');
      StartupProbe.mark('MyApp initialization: check disclaimer');
      await _checkDisclaimer();
      StartupProbe.mark('MyApp initialization: disclaimer checked');
      StartupProbe.mark('MyApp initialization: check/load playlist');
      await _checkAndLoadPlaylist();
      StartupProbe.mark('MyApp initialization: playlist check finished');

      StartupProbe.mark('MyApp initialization: load profiles');
      await _profileProvider.loadProfiles();
      StartupProbe.mark('MyApp initialization: profiles loaded');
    } catch (error, stack) {
      debugPrint('Initialization error: $error');
      debugPrint('$stack');
    } finally {
      if (mounted) {
        setState(() {
          _profileReady = true;
          _loading = false;
        });
        StartupProbe.mark('MyApp initialization: complete');
      }
    }
  }

  Future<void> _clearOldPlaylists() async {
    final prefs = await SharedPreferences.getInstance();
    // Check if this is a new install or updated version
    final lastVersion = prefs.getString('app_version');
    const currentVersion =
        '2.0.1'; // Increment this when you want to clear old data

    if (lastVersion != currentVersion) {
      // Clear old playlist data
      await prefs.remove('playlist_type');
      await prefs.remove('m3u_url');
      await prefs.remove('xtream_server');
      await prefs.remove('xtream_username');
      await prefs.remove('xtream_password');

      // Save new version
      await prefs.setString('app_version', currentVersion);

      debugPrint('Cleared old playlist data - new version: $currentVersion');
    }
  }

  Future<void> _checkDisclaimer() async {
    final prefs = await SharedPreferences.getInstance();
    final accepted = prefs.getBool('disclaimer_accepted') ?? false;

    setState(() {
      _disclaimerAccepted = accepted;
    });

    // Show disclaimer after user navigates to a screen
    if (!accepted) {
      // Schedule disclaimer to show after first navigation is complete
      Future.delayed(const Duration(seconds: 3), () {
        if (mounted) {
          try {
            _showDisclaimer();
          } catch (e) {
            debugPrint('Failed to show disclaimer: $e');
          }
        }
      });
    }
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
          playlistUrl =
              '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';
        }
      }

      if (playlistUrl != null && playlistUrl.isNotEmpty) {
        // Will be loaded by ChannelProvider after it's created
        setState(() {
          _hasPlaylist = true;
        });
      }
    } catch (error, stack) {
      debugPrint('Failed to auto-load playlist: $error');
      debugPrint('$stack');
    }
  }

  // ignore: unused_element
  Future<void> _showDisclaimer() async {
    // Make sure we have a valid context
    if (!mounted) return;

    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => const LegalDisclaimerDialog(),
    );

    if (result == true) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('disclaimer_accepted', true);
      setState(() {
        _disclaimerAccepted = true;
      });
    } else {
      // User declined, exit app
      // In production, you might want to close the app gracefully
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading || !_profileReady) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        home: const Scaffold(body: Center(child: CircularProgressIndicator(color: AppTheme.primaryBlue))),
      );
    }

    return _ErrorHandler.wrapWithErrorListener(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: _profileProvider),
          ChangeNotifierProvider(
            create: (_) {
              final provider = SettingsProvider();
              provider.initialize();
              return provider;
            },
          ),
          ChangeNotifierProvider(
            create: (_) => ContentProvider()..initialize(),
          ),
          ChangeNotifierProvider(
            create: (context) {
              final service = EpgService();
              // Initialize EPG and force refresh on app start
              Future.microtask(() async {
                await service.initialize();
                debugPrint(
                    'Main: EPG initialized with ${service.totalChannelCount} channels');
                // Force a background refresh to ensure fresh data
                await service.loadEpg();
                debugPrint(
                    'Main: EPG refresh complete, total channels: ${service.totalChannelCount}');
              });
              return service;
            },
          ),
          ChangeNotifierProxyProvider2<ContentProvider, EpgService, ChannelProvider>(
            create: (context) {
              final provider = ChannelProvider();
              // Defer playlist loading until after first frame is rendered
              if (_hasPlaylist) {
                _runDeferred(
                  provider.autoLoadPlaylist,
                  delay: const Duration(milliseconds: 1500),
                );
              } else {
                StartupProbe.mark(
                  'ChannelProvider.autoLoadPlaylist skipped (no saved playlist)',
                );
              }
              return provider;
            },
            update: (context, contentProvider, epgService, channelProvider) {
              channelProvider?.setContentProvider(contentProvider);
              channelProvider?.setEpgService(epgService);
              return channelProvider ?? ChannelProvider();
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
              _runDeferred(manager.initialize);
              return manager;
            },
          ),

          ChangeNotifierProxyProvider<AIModelManager, WhisperSpeechService>(
            create: (_) {
              final service = WhisperSpeechService();
              _runDeferred(service.initialize);
              return service;
            },
            update: (_, modelManager, whisperService) {
              final service =
                  whisperService ?? (WhisperSpeechService()..initialize());
              service.attachModelManager(modelManager);
              return service;
            },
          ),
          ChangeNotifierProxyProvider<WhisperSpeechService,
              WhisperTranscriptionService>(
            create: (_) {
              final service = WhisperTranscriptionService();
              _runDeferred(service.initialize);
              return service;
            },
            update: (_, speechService, transcriptionService) {
              final service = transcriptionService ??
                  (WhisperTranscriptionService()..initialize());
              return service;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = OpenSubtitlesService();
              _runDeferred(service.initialize);
              return service;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = RealDebridService();
              _runDeferred(service.initialize);
              return service;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = IntegratedTranscriptionService();
              _runDeferred(service.initialize);
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
            final profileProvider = Provider.of<ProfileProvider>(context);
            return MaterialApp.router(
              title: 'RISA IPTV Player',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.darkTheme,
              routerConfig: _router,
              scaffoldMessengerKey: rootScaffoldMessengerKey,
              builder: (context, child) {
                final media = MediaQuery.of(context);
                final resolvedChild = child ?? const SizedBox.shrink();
                _maybePromptForProfile(profileProvider);
                // No scaling - use native screen size
                return MediaQuery(data: media, child: resolvedChild);
              },
            );
          },
        ),
      ),
    );
  }

  void _maybePromptForProfile(ProfileProvider profileProvider) {
    final shouldPrompt = profileProvider.activeProfile == null;
    if (!shouldPrompt) {
      _profileDialogScheduled = false;
      return;
    }

    if (profileProvider.profiles.isEmpty) {
      _ensureDefaultProfile(profileProvider);
      return;
    }

    if (_profileDialogScheduled) {
      return;
    }

    _profileDialogScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Avoid using the widget BuildContext across async gaps. Use the
      // ProfileProvider instance passed into this method (already captured
      // from the widget tree) instead of calling Provider.of(context).
      final profileProviderRef = profileProvider;
      try {
        await _showProfileDialog();
      } finally {
        // Ensure the scheduled flag is cleared regardless of mounted state.
        _profileDialogScheduled = false;
        if (mounted && !profileProviderRef.isDisposed) {
          final stillMissingProfile = profileProviderRef.activeProfile == null;
          if (stillMissingProfile) {
            setState(() {});
          }
        }
      }
    });
  }

  Future<void> _showProfileDialog() async {
    final navigatorContext = _rootNavigatorKey.currentContext;
    if (navigatorContext == null) {
      _profileDialogScheduled = false;
      return;
    }

    await showDialog(
      context: navigatorContext,
      barrierDismissible: false,
      builder: (context) => _ProfileSelectionDialog(),
    );
  }

  void _ensureDefaultProfile(ProfileProvider provider) {
    if (_creatingDefaultProfile) {
      return;
    }

    if (provider.profiles.isNotEmpty) {
      return;
    }

    _creatingDefaultProfile = true;
    debugPrint(
      'ProfileProvider empty; creating default profile for auto-setup',
    );
    // Use addPostFrameCallback instead of scheduleMicrotask to avoid zone mismatch
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) {
        _creatingDefaultProfile = false;
        return;
      }

      if (provider.isDisposed) {
        _creatingDefaultProfile = false;
        return;
      }

      try {
        final id = DateTime.now().millisecondsSinceEpoch.toString();
        final profile = UserProfile(
          id: id,
          name: 'Default Profile',
          avatarUrl: '',
        );
        if (provider.isDisposed) {
          _creatingDefaultProfile = false;
          return;
        }
        await provider.addProfile(profile);
        debugPrint('Default profile created: ${profile.id}');
      } catch (error, stack) {
        debugPrint('Failed to create default profile: $error');
        debugPrint('$stack');
      } finally {
        if (mounted) {
          setState(() {});
        }
        _creatingDefaultProfile = false;
      }
    });
  }

  @override
  void dispose() {
    BackgroundTaskManager.stop();
    _profileProvider.dispose();
    super.dispose();
  }
}

class _ProfileSelectionDialog extends StatefulWidget {
  @override
  State<_ProfileSelectionDialog> createState() =>
      _ProfileSelectionDialogState();
}

class _ProfileSelectionDialogState extends State<_ProfileSelectionDialog> {
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProfileProvider>(context);
    return AppDialog(
      title: 'Select Profile',
      content: provider.profiles.isEmpty
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('No profiles found. Create a new profile:'),
                const SizedBox(height: 16),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Profile Name'),
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...provider.profiles.map(
                  (p) => ListTile(
                    leading: CircleAvatar(child: Text(p.name[0])),
                    title: Text(p.name, style: const TextStyle(color: Colors.white)),
                    onTap: () {
                      provider.setActiveProfile(p.id);
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                const Divider(color: Colors.white12),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'New Profile Name'),
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
      actions: [
        AppDialogButton(
          text: 'Create',
          isPrimary: true,
          onPressed: () async {
            final name = _nameController.text.trim();
            if (name.isNotEmpty) {
              final id = DateTime.now().millisecondsSinceEpoch.toString();
              final profile = UserProfile(id: id, name: name, avatarUrl: '');
              final rootNav = _rootNavigatorKey.currentState;
              await provider.addProfile(profile);
              provider.setActiveProfile(profile.id);
              rootNav?.pop();
            }
          },
        ),
      ],
    );
  }
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
    GoRoute(
      path: '/playlist-login',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const PlaylistLoginScreen(),
      ),
    ),
    GoRoute(path: '/', redirect: (context, state) => '/home'),
    // Main shell containing fixed navbar with home, movies, series screens
    ShellRoute(
      builder: (context, state, child) {
        // Determine active tab from current location
        final activeTab = state.matchedLocation.contains('/search')
            ? 'search'
            : state.matchedLocation.contains('/movies')
                ? 'movies'
                : state.matchedLocation.contains('/series')
                    ? 'series'
                    : state.matchedLocation.contains('/epg')
                        ? 'guide'
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
          path: '/movies',
          pageBuilder: (context, state) =>
              _fadeSlidePage(key: state.pageKey, child: const MoviesScreen()),
        ),
        GoRoute(
          path: '/series',
          pageBuilder: (context, state) =>
              _fadeSlidePage(key: state.pageKey, child: const SeriesScreen()),
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
      pageBuilder: (context, state) =>
          _fadeSlidePage(key: state.pageKey, child: const RecordingsScreen()),
    ),
    GoRoute(
      path: '/help',
      pageBuilder: (context, state) =>
          _fadeSlidePage(key: state.pageKey, child: const HelpAboutScreen()),
    ),

    GoRoute(
      path: '/playlist-editor',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const PlaylistEditorScreen(),
      ),
    ),
    GoRoute(
      path: '/playlist-manager',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const PlaylistManagerScreen(),
      ),
    ),
    GoRoute(
      path: '/ssl-settings',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const SSLSettingsScreen(),
      ),
    ),
    GoRoute(
      path: '/edit-profile',
      pageBuilder: (context, state) =>
          _fadeSlidePage(key: state.pageKey, child: const EditProfileScreen()),
    ),
    GoRoute(
      path: '/ai-models',
      pageBuilder: (context, state) =>
          _fadeSlidePage(key: state.pageKey, child: const AIModelsScreen()),
    ),
    GoRoute(
      path: '/content/:id',
      pageBuilder: (context, state) {
        Content? content;

        if (state.extra is Content) {
          content = state.extra as Content;
        } else {
          final encodedId = state.pathParameters['id'];
          final contentId =
              encodedId != null ? Uri.decodeComponent(encodedId) : null;
          if (contentId != null) {
            final contentProvider = Provider.of<ContentProvider>(
              context,
              listen: false,
            );
            final catalog = [
              ...contentProvider.movies,
              ...contentProvider.series,
              ...contentProvider.continueWatching,
              ...contentProvider.highlights,
            ];
            for (final entry in catalog) {
              if (entry.id == contentId) {
                content = entry;
                break;
              }
            }
          }
        }

        if (content == null) {
          return _fadeSlidePage(
            key: state.pageKey,
            child: Scaffold(
              appBar: AppBar(title: const Text('Content not found')),
              body: const Center(
                child: Text('We could not locate the requested item.'),
              ),
            ),
          );
        }

        return _fadeSlidePage(
          key: state.pageKey,
          child: Scaffold(
            appBar: AppBar(title: const Text('Content Detail')),
            body: const Center(
              child: Text('Content detail screen'),
            ),
          ),
        );
      },
    ),
    GoRoute(
      path: '/player',
      pageBuilder: (context, state) {
        final data = state.extra;
        String videoUrl =
            'https://commondatastorage.googleapis.com/gtv-videos-library/sample/BigBuckBunny.mp4';
        String title = 'Video';
        Channel? channel;
        bool isLive = false;

        if (data is Channel) {
          videoUrl = data.url;
          title = data.name;
          channel = data;
          isLive = true;
        } else if (data is Content) {
          videoUrl = data.videoUrl ?? videoUrl;
          title = data.title;
        }

        return _fadeSlidePage(
          key: state.pageKey,
          child: EnhancedVideoPlayerScreen(
            videoUrl: videoUrl,
            title: title,
            isLive: isLive,
            channel: channel,
          ),
        );
      },
    ),
    GoRoute(
      path: '/vlc-player',
      pageBuilder: (context, state) {
        final params = state.extra as Map<String, dynamic>?;
        return _fadeSlidePage(
          key: state.pageKey,
          child: EnhancedVideoPlayerScreen(
            videoUrl: params?['videoUrl'] ?? '',
            title: params?['title'] ?? 'Video',
            subtitle: params?['subtitle'],
            isLive: params?['isLive'] ?? false,
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

// Placeholder screens
class MoviesPlaceholder extends StatelessWidget {
  const MoviesPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPlaceholder(context, 'Movies', Icons.movie);
  }
}

class SeriesPlaceholder extends StatelessWidget {
  const SeriesPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPlaceholder(context, 'Series', Icons.tv);
  }
}

class CatchupPlaceholder extends StatelessWidget {
  const CatchupPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPlaceholder(context, 'Catch-up TV', Icons.restore);
  }
}

Widget _buildPlaceholder(BuildContext context, String title, IconData icon) {
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
