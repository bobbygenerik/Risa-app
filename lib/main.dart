import 'dart:async';
// ignore_for_file: todo
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/services/voice_search_service.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';
import 'package:iptv_player/services/mlkit_translation_service.dart';
import 'package:iptv_player/services/live_transcription_service.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/services/opensubtitles_service.dart';
import 'package:iptv_player/services/real_debrid_service.dart';
import 'package:iptv_player/services/whisper_speech_service.dart';
// import 'package:iptv_player/widgets/app_shell.dart'; // Removed - no sidebar in new UI
import 'package:iptv_player/widgets/legal_disclaimer_dialog.dart';
import 'package:iptv_player/screens/epg_screen.dart';
import 'package:iptv_player/screens/settings_screen.dart';
import 'package:iptv_player/screens/playlist_editor_screen.dart';
import 'package:iptv_player/screens/edit_profile_screen.dart';
import 'package:iptv_player/screens/recordings_screen.dart';
import 'package:iptv_player/screens/ai_models_screen.dart';
import 'package:iptv_player/screens/modern_home_screen.dart';
import 'package:iptv_player/screens/enhanced_video_player_screen.dart';
import 'package:iptv_player/screens/search_screen.dart';
import 'package:iptv_player/screens/playlist_login_screen.dart';
import 'package:iptv_player/screens/help_about_screen.dart';
import 'package:iptv_player/screens/favorites_screen.dart';
import 'package:iptv_player/screens/downloads_screen.dart';
import 'package:iptv_player/screens/movies_screen.dart';
import 'package:iptv_player/screens/series_screen.dart';

import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/profile_provider.dart';
import 'package:iptv_player/services/background_task_manager.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

void main() {
  runZonedGuarded(
    () {
      // Initialize binding within the zone context
      WidgetsFlutterBinding.ensureInitialized();
      
      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        Zone.current.handleUncaughtError(
          details.exception,
          details.stack ?? StackTrace.current,
        );
      };
      runApp(const MyApp());
    },
    (error, stack) {
      // Optionally log error to a service
      _ErrorHandler.reportError(error, stack);
    },
  );
}

/// Global error handler for reporting and displaying errors
class _ErrorHandler {
  static final _errorNotifier = ValueNotifier<_AppError?>(null);

  static void reportError(Object error, StackTrace stack) {
    debugPrint('Unhandled app error: $error');
    debugPrint(stack.toString());
    _errorNotifier.value = _AppError(error, stack);
    // TODO: Optionally send error to analytics/crash service
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
                const Icon(Icons.error_outline, color: Colors.redAccent, size: 80),
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
                ElevatedButton(
                  onPressed: onDismiss,
                  child: const Text('Dismiss'),
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

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    try {
      await _clearOldPlaylists();
      await _checkDisclaimer();
      await _checkAndLoadPlaylist();

      final profileProvider = ProfileProvider();
      await profileProvider.loadProfiles();
    } catch (error, stack) {
      debugPrint('Initialization error: $error');
      debugPrint('$stack');
    } finally {
      if (mounted) {
        setState(() {
          _profileReady = true;
          _loading = false;
        });
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

    // Disclaimer disabled temporarily - causes Navigator null error
    // TODO: Show disclaimer after user navigates to a screen
    /*
    if (!accepted) {
      // Schedule disclaimer to show after first navigation is complete
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          try {
            _showDisclaimer();
          } catch (e) {
            debugPrint('Failed to show disclaimer: $e');
          }
        }
      });
    }
    */
  }

  Future<void> _checkAndLoadPlaylist() async {
    final prefs = await SharedPreferences.getInstance();
    final playlistType = prefs.getString('playlist_type');

    if (playlistType != null) {
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
        home: const Scaffold(body: Center(child: CircularProgressIndicator())),
      );
    }

    return _ErrorHandler.wrapWithErrorListener(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ProfileProvider()),
          ChangeNotifierProvider(
            create: (_) => ContentProvider()..initialize(),
          ),
          ChangeNotifierProxyProvider<ContentProvider, ChannelProvider>(
            create: (context) {
              final provider = ChannelProvider();
              // Auto-load playlist after a short delay to ensure initialization
              Future.delayed(const Duration(milliseconds: 500), () {
                provider.autoLoadPlaylist();
              });
              return provider;
            },
            update: (context, contentProvider, channelProvider) {
              channelProvider?.setContentProvider(contentProvider);
              return channelProvider ?? ChannelProvider();
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = VoiceSearchService();
              service.initialize().catchError((e) {
                debugPrint('VoiceSearch init error: $e');
              });
              return service;
            },
          ),
          ChangeNotifierProvider(create: (_) => EpgService()),
          // Google Drive sync removed; use LocalBackupService for local exports/imports.
          ChangeNotifierProvider(
            create: (_) {
              final service = AIModelManager();
              service.initialize().catchError((e) {
                debugPrint('AIModel init error: $e');
              });
              return service;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = AIUpscalingService();
              service.initialize().catchError((e) {
                debugPrint('AIUpscaling init error: $e');
                return false;
              });
              return service;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = MLKitTranslationService();
              service.initialize().catchError((e) {
                debugPrint('MLKitTranslation init error: $e');
                return false;
              });
              return service;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = LiveTranscriptionService();
              service.initialize().catchError((e) {
                debugPrint('LiveTranscription init error: $e');
                return false;
              });
              return service;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = OpenSubtitlesService();
              service.initialize().catchError((e) {
                debugPrint('OpenSubtitles init error: $e');
              });
              return service;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = RealDebridService();
              service.initialize().catchError((e) {
                debugPrint('RealDebrid init error: $e');
              });
              return service;
            },
          ),
          ChangeNotifierProvider(
            create: (_) {
              final service = WhisperSpeechService();
              service.initialize().catchError((e) {
                debugPrint('WhisperSpeech init error: $e');
              });
              return service;
            },
          ),
        ],
        child: Builder(
          builder: (context) {
            // Start background tasks for EPG and playlist sync
            BackgroundTaskManager.start(context);
            final profileProvider = Provider.of<ProfileProvider>(context);
            return MaterialApp.router(
              title: 'RISA IPTV Player',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.darkTheme,
              routerConfig: _router,
              builder: (context, child) {
                final media = MediaQuery.of(context);
                final resolvedChild = child ?? const SizedBox.shrink();
                _maybePromptForProfile(profileProvider);
                // Using textScaleFactor is deprecated in newer Flutter versions.
                // Keep current behavior but silence the deprecation until a
                // larger migration to TextScaler is performed.
                // ignore: deprecated_member_use
                final mediaData = media.copyWith(textScaleFactor: 0.95);
                return MediaQuery(
                  data: mediaData,
                  child: resolvedChild,
                );
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
        if (mounted) {
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

      try {
        final id = DateTime.now().millisecondsSinceEpoch.toString();
        final profile = UserProfile(
          id: id,
          name: 'Default Profile',
          avatarUrl: '',
        );
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
    return AlertDialog(
      title: const Text('Select Profile'),
      content: provider.profiles.isEmpty
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('No profiles found. Create a new profile:'),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Profile Name'),
                ),
              ],
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...provider.profiles.map(
                  (p) => ListTile(
                    leading: CircleAvatar(child: Text(p.name[0])),
                    title: Text(p.name),
                    onTap: () {
                      provider.setActiveProfile(p.id);
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                const Divider(),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'New Profile Name',
                  ),
                ),
              ],
            ),
      actions: [
        TextButton(
          onPressed: () async {
            final name = _nameController.text.trim();
            if (name.isNotEmpty) {
              final id = DateTime.now().millisecondsSinceEpoch.toString();
              final profile = UserProfile(id: id, name: name, avatarUrl: '');
              // Capture a reference to the root navigator so we don't use the
              // dialog's BuildContext after an await (avoids analyzer warnings).
              final rootNav = _rootNavigatorKey.currentState;
              await provider.addProfile(profile);
              provider.setActiveProfile(profile.id);
              // Use the root navigator to pop the dialog safely.
              rootNav?.pop();
            }
          },
          child: const Text('Create'),
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
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const ModernHomeScreen(),
      ),
    ),
    GoRoute(
      path: '/search',
      pageBuilder: (context, state) =>
          _fadeSlidePage(key: state.pageKey, child: const SearchScreen()),
    ),
    GoRoute(
      path: '/epg',
      pageBuilder: (context, state) =>
          _fadeSlidePage(key: state.pageKey, child: const EPGScreen()),
    ),
    GoRoute(
      path: '/recordings',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const RecordingsScreen(),
      ),
    ),
        GoRoute(
          path: '/help',
          pageBuilder: (context, state) => _fadeSlidePage(
            key: state.pageKey,
            child: const HelpAboutScreen(),
          ),
        ),
    GoRoute(
      path: '/settings',
      pageBuilder: (context, state) =>
          _fadeSlidePage(key: state.pageKey, child: const SettingsScreen()),
    ),
    GoRoute(
      path: '/playlist-editor',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const PlaylistEditorScreen(),
      ),
    ),
    GoRoute(
      path: '/edit-profile',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const EditProfileScreen(),
      ),
    ),
    GoRoute(
      path: '/ai-models',
      pageBuilder: (context, state) =>
          _fadeSlidePage(key: state.pageKey, child: const AIModelsScreen()),
    ),
    GoRoute(
      path: '/favorites',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const FavoritesScreen(),
      ),
    ),
    GoRoute(
      path: '/downloads',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const DownloadsScreen(),
      ),
    ),
    GoRoute(
      path: '/movies',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const MoviesScreen(),
      ),
    ),
    GoRoute(
      path: '/series',
      pageBuilder: (context, state) => _fadeSlidePage(
        key: state.pageKey,
        child: const SeriesScreen(),
      ),
    ),
    GoRoute(
      path: '/player',
      pageBuilder: (context, state) {
        final data = state.extra;
        String videoUrl = 'https://commondatastorage.googleapis.com/gtv-videos-library/sample/BigBuckBunny.mp4';
        String title = 'Video';

        if (data is Channel) {
          videoUrl = data.url;
          title = data.name;
        } else if (data is Content) {
          videoUrl = data.videoUrl ?? videoUrl;
          title = data.title;
        }

        return _fadeSlidePage(
          key: state.pageKey,
          child: EnhancedVideoPlayerScreen(
            videoUrl: videoUrl,
            title: title,
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
        Icon(icon, size: 80, color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round())),
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
