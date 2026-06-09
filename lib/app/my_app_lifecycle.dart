part of '../main.dart';

extension MyAppLifecycle on _MyAppState {
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

  void _enableJankLogging() {
    JankMonitor.instance.attach();
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
              await GoRouter.of(context).push('/player', extra: channel);
            }
          }
        }
      }
    });
  }

  Future<void> _initialize() async {
    try {
      ClockService().start();

      // Light prefs work only — DB/cache services run after first frame.
      StartupProbe.mark('MyApp initialization: clear old playlists');
      await _clearOldPlaylists();
      StartupProbe.mark('MyApp initialization: playlists cleared');
      await _checkDisclaimer();
      StartupProbe.mark('MyApp initialization: disclaimer checked');
      await _checkAndLoadPlaylist();
      StartupProbe.mark('MyApp initialization: playlist check finished');

      _runDeferred(() async {
        StartupProbe.mark('MyApp initialization: FastStartup init start');
        await FastStartupService.instance.initialize();
        StartupProbe.mark('MyApp initialization: FastStartup init finished');
        unawaited(TMDBService.init().catchError((error, stack) {
          debugLog('TMDBService.init() failed during startup: $error');
        }));
        if (mounted) {
          StartupProbe.mark('MyApp initialization: complete');
        }
      });
    } catch (error, stack) {
      debugLog('Initialization error: $error');
      debugLog('$stack');
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
            } catch (e) {
              debugLog('main: Xtream fallback URI construction failed (credentials not logged)');
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
}
