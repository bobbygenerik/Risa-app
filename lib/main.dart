import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/voice_search_service.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/services/google_drive_sync_service.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';
import 'package:iptv_player/services/live_transcription_service.dart';
import 'package:iptv_player/widgets/app_shell.dart';
import 'package:iptv_player/widgets/legal_disclaimer_dialog.dart';
import 'package:iptv_player/screens/home_screen.dart';
import 'package:iptv_player/screens/epg_screen.dart';
import 'package:iptv_player/screens/settings_screen.dart';
import 'package:iptv_player/screens/mini_player_screen.dart';
import 'package:iptv_player/screens/content_detail_screen.dart';
import 'package:iptv_player/models/content.dart';

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

  @override
  void initState() {
    super.initState();
    _checkDisclaimer();
  }

  Future<void> _checkDisclaimer() async {
    final prefs = await SharedPreferences.getInstance();
    final accepted = prefs.getBool('disclaimer_accepted') ?? false;
    
    setState(() {
      _disclaimerAccepted = accepted;
      _loading = false;
    });

    if (!accepted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showDisclaimer();
      });
    }
  }

  Future<void> _showDisclaimer() async {
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
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChannelProvider()),
        ChangeNotifierProvider(create: (_) => VoiceSearchService()..initialize()),
        ChangeNotifierProvider(create: (_) => EpgService()),
        ChangeNotifierProvider(create: (_) => GoogleDriveSyncService()..initialize()),
        ChangeNotifierProvider(create: (_) => AIUpscalingService()..initialize()),
        ChangeNotifierProvider(create: (_) => LiveTranscriptionService()..initialize()),
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
    ShellRoute(
      builder: (context, state, child) {
        return AppShell(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => const SearchPlaceholder(),
        ),
        GoRoute(
          path: '/movies',
          builder: (context, state) => const MoviesPlaceholder(),
        ),
        GoRoute(
          path: '/series',
          builder: (context, state) => const SeriesPlaceholder(),
        ),
        GoRoute(
          path: '/catchup',
          builder: (context, state) => const CatchupPlaceholder(),
        ),
        GoRoute(
          path: '/favorites',
          builder: (context, state) => const FavoritesPlaceholder(),
        ),
        GoRoute(
          path: '/epg',
          builder: (context, state) => const EPGScreen(),
        ),
        GoRoute(
          path: '/recordings',
          builder: (context, state) => const RecordingsPlaceholder(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          path: '/player',
          builder: (context, state) => const MiniPlayerScreen(),
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
class SearchPlaceholder extends StatelessWidget {
  const SearchPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPlaceholder(context, 'Search', Icons.search);
  }
}

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

class FavoritesPlaceholder extends StatelessWidget {
  const FavoritesPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPlaceholder(context, 'Favorites', Icons.favorite);
  }
}

class RecordingsPlaceholder extends StatelessWidget {
  const RecordingsPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPlaceholder(context, 'Recordings', Icons.fiber_manual_record);
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
          color: AppTheme.primaryBlue.withOpacity(0.5),
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 8),
        Text(
          'Coming Soon',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppTheme.textSecondary,
          ),
        ),
      ],
    ),
  );
}
