import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/services/voice_search_service.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/services/google_drive_sync_service.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';
import 'package:iptv_player/services/whisper_speech_service.dart';
import 'package:iptv_player/services/mlkit_translation_service.dart';
import 'package:iptv_player/services/live_transcription_service.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/services/opensubtitles_service.dart';
import 'package:iptv_player/services/real_debrid_service.dart';
import 'package:iptv_player/widgets/app_shell.dart';
import 'package:iptv_player/widgets/legal_disclaimer_dialog.dart';
import 'package:iptv_player/screens/home_screen.dart';
import 'package:iptv_player/screens/epg_screen.dart';
import 'package:iptv_player/screens/settings_screen.dart';
import 'package:iptv_player/screens/edit_profile_screen.dart';
import 'package:iptv_player/screens/recordings_screen.dart';
import 'package:iptv_player/screens/ai_models_screen.dart';
import 'package:iptv_player/screens/mini_player_screen.dart';
import 'package:iptv_player/screens/multi_view_screen.dart';
import 'package:iptv_player/screens/vlc_enhanced_player_screen.dart';
import 'package:iptv_player/screens/content_detail_screen.dart';
import 'package:iptv_player/screens/search_screen.dart';
import 'package:iptv_player/screens/category_screen.dart';
import 'package:iptv_player/screens/movies_screen.dart';
import 'package:iptv_player/screens/series_screen.dart';
import 'package:iptv_player/screens/playlist_login_screen.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/models/channel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _disclaimerAccepted = false;
  bool _loading = true;
  bool _hasPlaylist = false;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    await _clearOldPlaylists(); // Clear any stored playlists from old builds
    await _checkDisclaimer();
    await _checkAndLoadPlaylist();
  }

  Future<void> _clearOldPlaylists() async {
    final prefs = await SharedPreferences.getInstance();
    // Check if this is a new install or updated version
    final lastVersion = prefs.getString('app_version');
    const currentVersion = '2.0.1'; // Increment this when you want to clear old data
    
    if (lastVersion != currentVersion) {
      // Clear old playlist data
      await prefs.remove('playlist_type');
      await prefs.remove('m3u_url');
      await prefs.remove('xtream_server');
      await prefs.remove('xtream_username');
      await prefs.remove('xtream_password');
      
      // Save new version
      await prefs.setString('app_version', currentVersion);
      
      print('Cleared old playlist data - new version: $currentVersion');
    }
  }

  Future<void> _checkDisclaimer() async {
    final prefs = await SharedPreferences.getInstance();
    final accepted = prefs.getBool('disclaimer_accepted') ?? false;

    setState(() {
      _disclaimerAccepted = accepted;
    });

    if (!accepted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _showDisclaimer();
        }
      });
    }
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
      } catch (e) {
        debugPrint('Error checking playlist: $e');
      }
    }
    
    setState(() {
      _loading = false;
    });
  }

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
    if (_loading) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        home: Scaffold(body: Center(child: CircularProgressIndicator())),
      );
    }

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ContentProvider()..initialize()),
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
          create: (_) => VoiceSearchService()..initialize(),
        ),
        ChangeNotifierProvider(create: (_) => EpgService()),
        ChangeNotifierProvider(
          create: (_) => GoogleDriveSyncService()..initialize(),
        ),
        ChangeNotifierProvider(create: (_) => AIModelManager()..initialize()),
        ChangeNotifierProvider(
          create: (_) => AIUpscalingService()..initialize(),
        ),
        ChangeNotifierProvider(
          create: (_) => WhisperSpeechService()..initialize(),
        ),
        ChangeNotifierProvider(
          create: (_) => MLKitTranslationService()..initialize(),
        ),
        ChangeNotifierProvider(
          create: (_) => LiveTranscriptionService()..initialize(),
        ),
        ChangeNotifierProvider(
          create: (_) => OpenSubtitlesService()..initialize(),
        ),
        ChangeNotifierProvider(
          create: (_) => RealDebridService()..initialize(),
        ),
      ],
      child: MaterialApp.router(
        title: 'RISA IPTV Player',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        routerConfig: _router,
      ),
    );
  }
}

final _router = GoRouter(
  routes: [
    // Standalone route for playlist login (no shell)
    GoRoute(
      path: '/playlist-login',
      builder: (context, state) => const PlaylistLoginScreen(),
    ),
    
    ShellRoute(
      builder: (context, state, child) {
        return AppShell(child: child);
      },
      routes: [
        GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
        GoRoute(
          path: '/search',
          builder: (context, state) => const SearchScreen(),
        ),
        GoRoute(
          path: '/movies',
          builder: (context, state) => const MoviesScreen(),
        ),
        GoRoute(
          path: '/series',
          builder: (context, state) => const SeriesScreen(),
        ),
        GoRoute(
          path: '/category/:name',
          builder: (context, state) {
            final categoryName = state.pathParameters['name'] ?? 'Unknown';
            return CategoryScreen(category: categoryName);
          },
        ),
        GoRoute(path: '/epg', builder: (context, state) => const EPGScreen()),
        GoRoute(
          path: '/recordings',
          builder: (context, state) => const RecordingsScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          path: '/edit-profile',
          builder: (context, state) => const EditProfileScreen(),
        ),
        GoRoute(
          path: '/ai-models',
          builder: (context, state) => const AIModelsScreen(),
        ),
        GoRoute(
          path: '/player',
          builder: (context, state) {
            final channel = state.extra as Channel?;
            return MiniPlayerScreen(channel: channel);
          },
        ),
        GoRoute(
          path: '/multi-view',
          builder: (context, state) {
            final channels = state.extra as List<Channel>?;
            return MultiViewScreen(channels: channels ?? []);
          },
        ),
        GoRoute(
          path: '/vlc-player',
          builder: (context, state) {
            final params = state.extra as Map<String, dynamic>?;
            return VlcEnhancedPlayerScreen(
              videoUrl: params?['videoUrl'] ?? '',
              title: params?['title'] ?? 'Video',
              subtitle: params?['subtitle'],
              isLive: params?['isLive'] ?? false,
              channelId: params?['channelId'],
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: '/content/:id',
      builder: (context, state) {
        final content = Content(
          id: state.pathParameters['id'] ?? '1',
          title: 'Dune',
          type: ContentType.movie,
          genres: ['Sci-Fi', 'Action'],
          year: 2021,
          duration: '155',
        );
        return ContentDetailScreen(content: content);
      },
    ),
  ],
);

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
        Icon(icon, size: 80, color: AppTheme.primaryBlue.withOpacity(0.5)),
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
