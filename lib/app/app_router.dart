part of '../main.dart';

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

        return NoTransitionPage(
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
        return _fadeSlidePage(
          key: state.pageKey,
          child: const SafePopScope(
            child: Scaffold(
              body: Center(
                child: Text('Multi-view temporarily disabled'),
              ),
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
