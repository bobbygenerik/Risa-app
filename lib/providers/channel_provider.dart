
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:iptv_player/utils/startup_probe.dart';
import '../models/channel.dart';
import '../models/content.dart';
import '../services/m3u_parser_service.dart';
import 'playlist_isolate.dart';
import '../services/xtream_codes_service.dart';
import 'package:http/http.dart' as http;
import 'content_provider.dart';

/// Clear both SharedPreferences and file-based playlist cache
Future<void> clearPlaylistCache() async {
  final prefs = await SharedPreferences.getInstance();
  // Remove SharedPreferences cache
  await prefs.remove('cached_playlist');
  await prefs.remove('cache_timestamp');
  // Remove file-based cache
  final cacheFilePath = prefs.getString(ChannelProvider._playlistCacheFilePathKey);
  if (cacheFilePath != null) {
    final file = File(cacheFilePath);
    if (await file.exists()) {
      await file.delete();
    }
    await prefs.remove(ChannelProvider._playlistCacheFilePathKey);
  }
  debugPrint('ChannelProvider: Playlist cache cleared');
}

class ChannelProvider with ChangeNotifier {
  static const String _playlistCacheFileName = 'playlist_cache.m3u';
  static const String _playlistCacheFilePathKey = 'cached_playlist_file';
  static const int _debugCaptureBytes =
      512 * 1024; // capture 512 KB for previews

  List<Channel> _channels = [];
  final List<Channel> _favoriteChannels = [];
  List<Content> _movies = [];
  List<Content> _series = [];
  bool _isLoading = false;
  String? _errorMessage;
  ContentProvider? _contentProvider;
  bool _hasLoadedPlaylist = false;
  String? _lastM3UContent; // Store last content for debugging

  final M3UParserService _parserService = M3UParserService();

  // Set the ContentProvider reference for VOD sync
  void setContentProvider(ContentProvider provider) {
    _contentProvider = provider;
  }

  // Watch count tracking (channelId -> count)
  Map<String, int> _watchCounts = {};

  List<Channel> get channels => _channels;
  List<Channel> get favoriteChannels => _favoriteChannels;
  List<Content> get movies => _movies;
  List<Content> get series => _series;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get hasLoadedPlaylist => _hasLoadedPlaylist;
  String? get lastM3UContent => _lastM3UContent; // Expose for debugging
  
  /// Get channels sorted by watch count (most watched first)
  List<Channel> get mostWatchedChannels {
    final sorted = List<Channel>.from(_channels);
    sorted.sort((a, b) {
      final aCount = _watchCounts[a.id] ?? 0;
      final bCount = _watchCounts[b.id] ?? 0;
      return bCount.compareTo(aCount); // Descending order
    });
    return sorted;
  }

  /// Track when a channel is watched
  Future<void> incrementWatchCount(String channelId) async {
    _watchCounts[channelId] = (_watchCounts[channelId] ?? 0) + 1;
    notifyListeners();
    
    // Persist watch counts
    final prefs = await SharedPreferences.getInstance();
    final watchCountsJson = _watchCounts.map((k, v) => MapEntry(k, v.toString()));
    await prefs.setString('channel_watch_counts', json.encode(watchCountsJson));
  }
  
  /// Load watch counts from storage
  Future<void> _loadWatchCounts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final watchCountsString = prefs.getString('channel_watch_counts');
      if (watchCountsString != null) {
        final decoded = json.decode(watchCountsString) as Map<String, dynamic>;
        _watchCounts = decoded.map((k, v) => MapEntry(k, int.tryParse(v.toString()) ?? 0));
      }
    } catch (e) {
      debugPrint('Error loading watch counts: $e');
    }
  }

  /// Auto-load saved playlist on startup
  Future<void> autoLoadPlaylist() async {
    if (_hasLoadedPlaylist) return; // Already loaded

    StartupProbe.mark('ChannelProvider.autoLoadPlaylist invoked');
    await _loadWatchCounts();
    debugPrint('ChannelProvider: Auto-loading playlist...');
    final prefs = await SharedPreferences.getInstance();
    final playlistType = prefs.getString('playlist_type');

    if (playlistType == null) {
      StartupProbe.mark('ChannelProvider.autoLoadPlaylist: no saved playlist');
      debugPrint('ChannelProvider: No saved playlist found');
      if (_channels.isNotEmpty || _movies.isNotEmpty || _series.isNotEmpty) {
        _channels = [];
        _movies = [];
        _series = [];
        notifyListeners();
      }
      // Ensure stale cache does not resurrect old playlists when none are saved
      await prefs.remove('cached_playlist');
      await prefs.remove('cache_timestamp');
      return; // No saved playlist
    }

    // Load from file-based cache (handles large playlists via streaming)
    final cacheTimestamp = prefs.getInt('cache_timestamp');
    final cacheFilePath = prefs.getString(_playlistCacheFilePathKey);
    final cacheAge = cacheTimestamp != null
        ? DateTime.now().millisecondsSinceEpoch - cacheTimestamp
        : null;

    // Try file-based cache if present and fresh - use streaming parser to avoid OOM
    if (cacheFilePath != null && cacheAge != null && cacheAge < 21600000) {
      try {
        final file = File(cacheFilePath);
        if (await file.exists()) {
          debugPrint('ChannelProvider: Loading from file cache (streaming parser)...');
          _isLoading = true;
          notifyListeners();
          
          // Parse from file in isolate to avoid blocking main thread and OOM
          final parsed = await compute(parsePlaylistFromFile, cacheFilePath);
          
          var channels = (parsed['channels'] as List<dynamic>)
              .map((c) => Channel.fromMap(Map<String, dynamic>.from(c)))
              .toList();
          var movies = (parsed['movies'] as List<dynamic>)
              .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
              .toList();
          var series = (parsed['series'] as List<dynamic>)
              .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
              .toList();
          
          _channels = channels;
          _movies = movies;
          _series = series;
          
          if (_contentProvider != null) {
            _contentProvider!.loadMovies(_movies);
            _contentProvider!.loadSeries(_series);
          }
          
          _isLoading = false;
          _hasLoadedPlaylist = true;
          notifyListeners();
          debugPrint('ChannelProvider: File cache loaded successfully with ${_channels.length} channels');
          StartupProbe.mark('ChannelProvider.autoLoadPlaylist: file cache load finished');
          return;
        }
      } catch (e) {
        debugPrint('ChannelProvider: File cache load failed: $e, loading from network');
        _isLoading = false;
        notifyListeners();
      }
      debugPrint('ChannelProvider: File cache expired or not found, loading from network');
    }

    debugPrint('ChannelProvider: Playlist type: $playlistType');

    try {
      String? playlistUrl;

      if (playlistType == 'm3u') {
        playlistUrl = prefs.getString('m3u_url');
        debugPrint('ChannelProvider: M3U URL: $playlistUrl');
      } else if (playlistType == 'xtream') {
        final server = prefs.getString('xtream_server');
        final username = prefs.getString('xtream_username');
        final password = prefs.getString('xtream_password');

        debugPrint(
          'ChannelProvider: Xtream - Server: $server, User: $username',
        );
        if (server != null && username != null && password != null) {
          playlistUrl =
              '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';
        }
      }

      if (playlistUrl != null && playlistUrl.isNotEmpty) {
        debugPrint('ChannelProvider: Loading playlist URL: $playlistUrl');
        StartupProbe.mark('ChannelProvider.autoLoadPlaylist: downloading playlist');
        await loadPlaylistFromUrl(playlistUrl);
        _hasLoadedPlaylist = true;
        debugPrint('ChannelProvider: Auto-load completed successfully');
        StartupProbe.mark('ChannelProvider.autoLoadPlaylist: network load finished');
      } else {
        debugPrint('ChannelProvider: Playlist URL is empty');
        StartupProbe.mark('ChannelProvider.autoLoadPlaylist: playlist url empty');
      }
    } catch (e) {
      // Silently fail - user can manually load from settings
      debugPrint('ChannelProvider: Auto-load playlist failed: $e');
      StartupProbe.mark('ChannelProvider.autoLoadPlaylist: failed ($e)');
    }
  }

  // NOTE: Background cache refresh removed - file-based caching is now used exclusively
  // The cache is refreshed when the user loads a playlist from network

  /// Load channels from M3U URL
  Future<void> loadPlaylistFromUrl(String url) async {
    try {
      await _loadPlaylistFromUrlImpl(url);
    } catch (e) {
      // If we get an SSL/TLS handshake error, retry with direct HttpClient
      if (e.toString().contains('HandshakeException') || 
          e.toString().contains('WRONG_VERSION_NUMBER') ||
          e.toString().contains('CERTIFICATE_VERIFY_FAILED')) {
        debugPrint('ChannelProvider: Handshake error detected, retrying with direct HttpClient: $e');
        await _loadPlaylistWithDirectClient(url);
      } else {
        rethrow;
      }
    }
  }

  /// Implementation of loadPlaylistFromUrl using standard http.Client
  Future<void> _loadPlaylistFromUrlImpl(String url) async {
    _isLoading = true;
    _errorMessage = null;
    _lastM3UContent = null; // Clear old content
    notifyListeners();

    try {
      debugPrint('ChannelProvider: Loading playlist from URL: $url');
      debugPrint(
        'ChannelProvider: Starting streamed download with 90 second timeout...',
      );

      // Allow insecure connections for IPTV providers with SSL issues
      HttpOverrides.global = _MyHttpOverrides();

      http.Client client = http.Client();
      
      try {
        final request = http.Request('GET', Uri.parse(url));
        request.headers.addAll({
          'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
          'Accept': '*/*',
          'Accept-Encoding': 'gzip, deflate',
        });

        final streamedResponse = await client
            .send(request)
            .timeout(
              const Duration(seconds: 90),
              onTimeout: () {
                debugPrint(
                  'ChannelProvider: Request timed out after 90 seconds',
                );
                throw Exception(
                  'Connection timeout - server took too long to respond (90s limit)',
                );
              },
            ).catchError((e) {
              // Handshake errors will be caught by outer try-catch
              throw e;
            });

        debugPrint(
          'ChannelProvider: Response received - status: ${streamedResponse.statusCode}',
        );
        debugPrint(
          'ChannelProvider: Content-Type: ${streamedResponse.headers['content-type']}',
        );

        if (streamedResponse.statusCode != 200) {
          final previewBuilder = BytesBuilder();
          await for (final chunk in streamedResponse.stream) {
            if (previewBuilder.length >= _debugCaptureBytes) continue;
            final remaining = _debugCaptureBytes - previewBuilder.length;
            previewBuilder.add(
              chunk.length <= remaining ? chunk : chunk.sublist(0, remaining),
            );
          }
          _lastM3UContent = utf8.decode(
            previewBuilder.takeBytes(),
            allowMalformed: true,
          );
          throw Exception(
            'HTTP ${streamedResponse.statusCode}: Failed to load playlist',
          );
        }


        // Stream download directly to temp file to avoid OOM on large playlists
        final dir = await getApplicationDocumentsDirectory();
        final tempFile = File('${dir.path}/temp_playlist.m3u');
        final sink = tempFile.openWrite();
        final debugBuilder = BytesBuilder();
        int totalBytes = 0;

        try {
          await for (final chunk in streamedResponse.stream) {
            totalBytes += chunk.length;
            sink.add(chunk);
            if (debugBuilder.length < _debugCaptureBytes) {
              final remaining = _debugCaptureBytes - debugBuilder.length;
              debugBuilder.add(
                chunk.length <= remaining ? chunk : chunk.sublist(0, remaining),
              );
            }
          }
          await sink.flush();
        } finally {
          await sink.close();
        }
        debugPrint('ChannelProvider: Downloaded $totalBytes bytes to temp file');

        // Parse playlist from file in background isolate (memory efficient)
        final parsed = await compute(parsePlaylistFromFile, tempFile.path);
        var channels = (parsed['channels'] as List<dynamic>)
            .map((c) => Channel.fromMap(Map<String, dynamic>.from(c)))
            .toList();
        _movies = (parsed['movies'] as List<dynamic>)
            .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
            .toList();
        _series = (parsed['series'] as List<dynamic>)
            .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
            .toList();
        
        _channels = channels;
        
        debugPrint('ChannelProvider: Parsed ${_channels.length} channels (isolate)');
        debugPrint('ChannelProvider: Parsed ${_movies.length} movies, ${_series.length} series (isolate)');

        if (_contentProvider != null) {
          _contentProvider!.loadMovies(_movies);
          _contentProvider!.loadSeries(_series);
        }

        _lastM3UContent = debugBuilder.length > 0
            ? utf8.decode(debugBuilder.takeBytes(), allowMalformed: true)
            : null;

        // Use the temp file as cache (rename it to cache file)
        final prefs = await SharedPreferences.getInstance();
        final now = DateTime.now().millisecondsSinceEpoch;
        final cacheFile = File('${dir.path}/$_playlistCacheFileName');
        if (await tempFile.exists()) {
          if (await cacheFile.exists()) {
            await cacheFile.delete();
          }
          await tempFile.rename(cacheFile.path);
          await prefs.setString(_playlistCacheFilePathKey, cacheFile.path);
          await prefs.setInt('cache_timestamp', now);
          await prefs.remove('cached_playlist'); // Remove old SharedPreferences cache if any
          debugPrint('ChannelProvider: Playlist cached to file (${cacheFile.path}, $totalBytes bytes)');
        }

        // Auto-save EPG URL from M3U x-tvg-url attribute
        final epgUrl = parsed['epgUrl'] as String?;
        if (epgUrl != null && epgUrl.isNotEmpty) {
          debugPrint('ChannelProvider: Found EPG URL in M3U: $epgUrl (auto-saving)');
          await prefs.setString('epg_url', epgUrl);
        }

        await _loadXtreamVOD(url);

        _isLoading = false;
        _hasLoadedPlaylist = true;
        notifyListeners();
      } finally {
        client.close();
      }
    } catch (e, stackTrace) {
      debugPrint('ChannelProvider: Error loading playlist: $e');
      debugPrint('ChannelProvider: Stack trace: $stackTrace');

      // Provide more helpful error messages
      if (e.toString().contains('HandshakeException') ||
          e.toString().contains('WRONG_VERSION_NUMBER')) {
        _errorMessage =
            'SSL/TLS Error: Server security configuration issue.\n\n'
            'This usually means:\n'
            '• The server URL should use HTTPS (not HTTP)\n'
            '• Or the server has SSL certificate problems\n\n'
            'Try changing http:// to https:// in your URL.';
      } else if (e.toString().contains('SocketException')) {
        final socketError = e.toString();
        _errorMessage =
            'Connection Error: Unable to reach server.\n\n'
            'Details: $socketError\n\n'
            'Check your internet connection and server URL.';
      } else if (e.toString().contains('timeout')) {
        _errorMessage =
            'Timeout Error: Playlist took too long to download (90 second limit).\n\n'
            'This could mean:\n'
            '• The playlist is very large\n'
            '• Your internet connection is slow\n'
            '• The server is overloaded\n\n'
            'Try again in a few moments.';
      } else if (e.toString().contains('FormatException')) {
        _errorMessage =
            'Invalid URL: The playlist URL format is incorrect.\n\n'
            'Make sure your URL starts with http:// or https://';
      } else {
        _errorMessage = 'Error loading playlist:\n\n$e';
      }

      _isLoading = false;
      notifyListeners();
      rethrow; // Re-throw so UI can handle it
    }
  }

  /// Load playlist using direct HttpClient with SSL bypass (fallback for handshake errors)
  Future<void> _loadPlaylistWithDirectClient(String url) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final httpClient = HttpClient()
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;

    try {
      debugPrint('ChannelProvider: Using direct HttpClient with SSL bypass');
      
      final request = await httpClient.getUrl(Uri.parse(url));
      request.headers.add('User-Agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36');
      request.headers.add('Accept', '*/*');
      
      final response = await request.close().timeout(
        const Duration(seconds: 90),
        onTimeout: () {
          throw Exception('Connection timeout - server took too long to respond (90s limit)');
        },
      );

      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}: Failed to load playlist');
      }

      // Stream download directly to temp file to avoid OOM on large playlists
      final dir = await getApplicationDocumentsDirectory();
      final tempFile = File('${dir.path}/temp_playlist.m3u');
      final sink = tempFile.openWrite();
      int totalBytes = 0;

      try {
        await for (final chunk in response) {
          totalBytes += chunk.length;
          sink.add(chunk);
        }
        await sink.flush();
      } finally {
        await sink.close();
      }
      
      debugPrint('ChannelProvider: Downloaded $totalBytes bytes to temp file (direct client)');

      // Parse from file in background isolate (memory efficient)
      final parsed = await compute(parsePlaylistFromFile, tempFile.path);
      var channels = (parsed['channels'] as List<dynamic>)
          .map((c) => Channel.fromMap(Map<String, dynamic>.from(c)))
          .toList();
      _movies = (parsed['movies'] as List<dynamic>)
          .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
          .toList();
      _series = (parsed['series'] as List<dynamic>)
          .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
          .toList();

      _channels = channels;

      debugPrint('ChannelProvider: Parsed ${_channels.length} channels (direct client)');

      if (_contentProvider != null) {
        _contentProvider!.loadMovies(_movies);
        _contentProvider!.loadSeries(_series);
      }

      // Use the temp file as cache
      final prefs = await SharedPreferences.getInstance();
      final now = DateTime.now().millisecondsSinceEpoch;
      final cacheFile = File('${dir.path}/$_playlistCacheFileName');
      if (await tempFile.exists()) {
        if (await cacheFile.exists()) {
          await cacheFile.delete();
        }
        await tempFile.rename(cacheFile.path);
        await prefs.setString(_playlistCacheFilePathKey, cacheFile.path);
        await prefs.setInt('cache_timestamp', now);
        await prefs.remove('cached_playlist');
        debugPrint('ChannelProvider: Playlist cached to file (${cacheFile.path}, $totalBytes bytes)');
      }

      // Auto-save EPG URL
      final epgUrl = parsed['epgUrl'] as String?;
      if (epgUrl != null && epgUrl.isNotEmpty) {
        debugPrint('ChannelProvider: Found EPG URL: $epgUrl (auto-saving)');
        await prefs.setString('epg_url', epgUrl);
      }

      await _loadXtreamVOD(url);

      _isLoading = false;
      _hasLoadedPlaylist = true;
      notifyListeners();
    } catch (e, stackTrace) {
      debugPrint('ChannelProvider: Error with direct client: $e');
      debugPrint('ChannelProvider: Stack trace: $stackTrace');
      _errorMessage = e.toString();
      _isLoading = false;
      notifyListeners();
      rethrow;
    } finally {
      httpClient.close();
    }
  }

  /// Load channels from M3U content string without blocking the UI isolate
  Future<void> loadPlaylistFromString(String content) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final parsed = await compute(_parsePlaylistInIsolate, content);

      var channelMaps = (parsed['channels'] as List<dynamic>? ?? [])
          .map((channel) =>
            Channel.fromMap(Map<String, dynamic>.from(channel as Map)))
          .toList();
      final movieMaps = (parsed['movies'] as List<dynamic>? ?? [])
          .map((movie) => Content.fromMap(Map<String, dynamic>.from(movie as Map)))
          .toList();
      final seriesMaps = (parsed['series'] as List<dynamic>? ?? [])
          .map((show) => Content.fromMap(Map<String, dynamic>.from(show as Map)))
          .toList();

      _channels = channelMaps;
      _movies = movieMaps;
      _series = seriesMaps;

      // Sync VOD content to ContentProvider
      if (_contentProvider != null) {
        _contentProvider!.loadMovies(_movies);
        _contentProvider!.loadSeries(_series);
      }

      // Auto-save EPG URL from M3U x-tvg-url attribute
      final epgUrl = parsed['epgUrl'] as String?;
      if (epgUrl != null && epgUrl.isNotEmpty) {
        debugPrint('ChannelProvider: Found EPG URL in M3U: $epgUrl (auto-saving)');
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('epg_url', epgUrl);
      }

      _isLoading = false;
      notifyListeners();
    } catch (e, stackTrace) {
      debugPrint('ChannelProvider: Error parsing playlist string: $e');
      debugPrint('ChannelProvider: Stack trace: $stackTrace');
      _errorMessage = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Get channels grouped by category
  Map<String, List<Channel>> getGroupedChannels() {
    return _parserService.groupChannelsByCategory(_channels);
  }

  /// Add channel to favorites
  void addToFavorites(Channel channel) {
    if (!_favoriteChannels.contains(channel)) {
      _favoriteChannels.add(channel);
      notifyListeners();
    }
  }

  /// Load VOD content using Xtream Codes API
  Future<void> _loadXtreamVOD(String m3uUrl) async {
    try {
      // Extract server, username, password from M3U URL
      // Format: http://server/get.php?username=X&password=Y&type=m3u_plus&output=ts
      final uri = Uri.parse(m3uUrl);
      final serverUrl =
          '${uri.scheme}://${uri.host}${uri.port != 80 && uri.port != 443 ? ':${uri.port}' : ''}';
      final username = uri.queryParameters['username'];
      final password = uri.queryParameters['password'];

      if (username == null || password == null) {
        debugPrint(
          'ChannelProvider: Cannot load VOD - missing credentials in URL',
        );
        return;
      }

      debugPrint('ChannelProvider: Loading VOD from Xtream Codes API...');
      final xtreamService = XtreamCodesService(
        serverUrl: serverUrl,
        username: username,
        password: password,
      );

      // Load movies and series in parallel
      final results = await Future.wait([
        xtreamService.getAllMovies(),
        xtreamService.getAllSeries(),
      ]);

      _movies = results[0];
      _series = results[1];

      debugPrint(
        'ChannelProvider: Loaded ${_movies.length} movies, ${_series.length} series from Xtream API',
      );

      // Sync VOD content to ContentProvider
      if (_contentProvider != null) {
        _contentProvider!.loadMovies(_movies);
        _contentProvider!.loadSeries(_series);
      }
    } catch (e) {
      debugPrint('ChannelProvider: Error loading Xtream VOD: $e');
      // Don't fail the whole playlist load if VOD fails
    }
  }

  /// Remove channel from favorites
  void removeFromFavorites(Channel channel) {
    _favoriteChannels.remove(channel);
    notifyListeners();
  }

  /// Check if channel is favorite
  bool isFavorite(Channel channel) {
    return _favoriteChannels.any((c) => c.id == channel.id);
  }

  /// Search channels by name
  List<Channel> searchChannels(String query) {
    if (query.isEmpty) return _channels;

    return _channels
        .where(
          (channel) => channel.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  /// Filter channels by category
  List<Channel> filterByCategory(String category) {
    return _channels
        .where((channel) => channel.groupTitle == category)
        .toList();
  }
}

// SSL bypass for IPTV providers with certificate issues
class _MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) {
        // Allow all certificates - WARNING: Only use for IPTV providers you trust!
        debugPrint('SSL: Accepting certificate for $host:$port');
        return true;
      };
  }
}

/// Parse an entire playlist off the main isolate and return simple maps that
/// can be reconstructed into Channel/Content objects.
Map<String, dynamic> _parsePlaylistInIsolate(String content) {
  final parser = M3UParserService();
  final channels = parser.parseM3U(content).map((c) => c.toMap()).toList();
  final vodMap = parser.parseVOD(content);
  final movies = (vodMap['movies'] ?? <Content>[])
      .map((content) => content.toMap())
      .toList();
  final series = (vodMap['series'] ?? <Content>[])
      .map((content) => content.toMap())
      .toList();

  return {
    'channels': channels,
    'movies': movies,
    'series': series,
    'epgUrl': parser.epgUrl,
  };
}
