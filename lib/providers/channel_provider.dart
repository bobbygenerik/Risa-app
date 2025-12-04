
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
import 'package:http/io_client.dart';
import 'content_provider.dart';

/// Isolate function to extract unique category names only (fast)
/// Preserves the order categories first appear in the playlist
List<String> _extractCategoriesInIsolate(List<String?> groupTitles) {
  final List<String> categories = [];
  final Set<String> seen = {};
  for (final title in groupTitles) {
    final category = title ?? 'Uncategorized';
    if (!seen.contains(category)) {
      seen.add(category);
      // Add Uncategorized at the end
      if (category != 'Uncategorized') {
        categories.add(category);
      }
    }
  }
  // Add Uncategorized at the end if it exists
  if (seen.contains('Uncategorized')) {
    categories.add('Uncategorized');
  }
  return categories;
}

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

  // Store raw channel data as maps to avoid expensive conversion on main thread
  List<Map<String, dynamic>> _channelMaps = [];
  // Cache of converted Channel objects (populated on-demand)
  final Map<int, Channel> _channelCache = {};
  
  final List<Channel> _favoriteChannels = [];
  List<Content> _movies = [];
  List<Content> _series = [];
  bool _isLoading = false;
  String? _errorMessage;
  ContentProvider? _contentProvider;
  bool _hasLoadedPlaylist = false;
  String? _lastM3UContent; // Store last content for debugging
  bool _disposed = false; // Track if provider is disposed
  
  // Cached category list (lightweight - just strings)
  List<String>? _cachedCategories;
  
  // Flag to track if categories are being computed
  bool _isGroupingChannels = false;
  bool get isGroupingChannels => _isGroupingChannels;
  
  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }
  
  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  // Set the ContentProvider reference for VOD sync
  void setContentProvider(ContentProvider provider) {
    _contentProvider = provider;
  }

  // Watch count tracking (channelId -> count)
  Map<String, int> _watchCounts = {};

  /// Get channel count without converting all channels
  int get channelCount => _channelMaps.length;
  
  /// Quick check if there are any channels (no conversion needed)
  bool get hasChannels => _channelMaps.isNotEmpty;
  
  /// Get channels - returns limited list for UI (lazy conversion)
  List<Channel> get channels {
    // For UI, return more channels but still limit to prevent freeze
    // Use getChannelAt() or getChannelsForCategory() for specific access
    final limit = _channelMaps.length < 500 ? _channelMaps.length : 500;
    return List.generate(limit, (i) => _getChannelAt(i));
  }
  
  /// Get a specific channel by index (cached conversion)
  Channel _getChannelAt(int index) {
    if (index < 0 || index >= _channelMaps.length) {
      throw RangeError.index(index, _channelMaps, 'index');
    }
    return _channelCache.putIfAbsent(
      index,
      () => Channel.fromMap(_channelMaps[index]),
    );
  }
  
  /// Find a channel by ID (lazy conversion)
  Channel? getChannelById(String id) {
    for (int i = 0; i < _channelMaps.length; i++) {
      if (_channelMaps[i]['id'] == id) {
        return _getChannelAt(i);
      }
    }
    return null;
  }
  
  /// Get filtered channels for EPG/search (with limit for performance)
  List<Channel> getFilteredChannels({
    String? category,
    Set<String>? favoriteIds,
    bool excludeHidden = true,
    int limit = 500,
  }) {
    final result = <Channel>[];
    for (int i = 0; i < _channelMaps.length && result.length < limit; i++) {
      final map = _channelMaps[i];
      
      // Filter by hidden
      if (excludeHidden && map['isHidden'] == true) continue;
      
      // Filter by category
      if (category != null) {
        final channelCategory = (map['groupTitle'] as String?) ?? 'Uncategorized';
        if (channelCategory != category) continue;
      }
      
      // Filter by favorites
      if (favoriteIds != null) {
        final channelId = map['id'] as String?;
        if (channelId == null || !favoriteIds.contains(channelId)) continue;
      }
      
      result.add(_getChannelAt(i));
    }
    return result;
  }
  
  /// Get next channel in the list (for channel surfing)
  Channel? getNextChannel(String currentChannelId) {
    for (int i = 0; i < _channelMaps.length; i++) {
      if (_channelMaps[i]['id'] == currentChannelId) {
        final nextIndex = (i + 1) % _channelMaps.length;
        return _getChannelAt(nextIndex);
      }
    }
    return null;
  }
  
  /// Get previous channel in the list (for channel surfing)
  Channel? getPreviousChannel(String currentChannelId) {
    for (int i = 0; i < _channelMaps.length; i++) {
      if (_channelMaps[i]['id'] == currentChannelId) {
        final prevIndex = (i - 1 + _channelMaps.length) % _channelMaps.length;
        return _getChannelAt(prevIndex);
      }
    }
    return null;
  }
  
  List<Channel> get favoriteChannels => _favoriteChannels;
  List<Content> get movies => _movies;
  List<Content> get series => _series;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get hasLoadedPlaylist => _hasLoadedPlaylist;
  String? get lastM3UContent => _lastM3UContent; // Expose for debugging
  
  /// Get channels sorted by watch count (most watched first) - limited
  List<Channel> get mostWatchedChannels {
    // Sort indices by watch count, then convert limited number
    final indices = List.generate(_channelMaps.length, (i) => i);
    indices.sort((a, b) {
      final aId = _channelMaps[a]['id'] as String? ?? '';
      final bId = _channelMaps[b]['id'] as String? ?? '';
      final aCount = _watchCounts[aId] ?? 0;
      final bCount = _watchCounts[bId] ?? 0;
      return bCount.compareTo(aCount);
    });
    // Only return top 50 most watched
    return indices.take(50).map((i) => _getChannelAt(i)).toList();
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

    // Set loading immediately so UI shows loading state
    // Use Future.microtask to avoid calling notifyListeners during build
    _isLoading = true;
    Future.microtask(() => notifyListeners());

    StartupProbe.mark('ChannelProvider.autoLoadPlaylist invoked');
    await _loadWatchCounts();
    debugPrint('ChannelProvider: Auto-loading playlist...');
    final prefs = await SharedPreferences.getInstance();
    final playlistType = prefs.getString('playlist_type');

    if (playlistType == null) {
      _isLoading = false;
      Future.microtask(() => notifyListeners());
      StartupProbe.mark('ChannelProvider.autoLoadPlaylist: no saved playlist');
      debugPrint('ChannelProvider: No saved playlist found');
      if (_channelMaps.isNotEmpty || _movies.isNotEmpty || _series.isNotEmpty) {
        _channelMaps = [];
        _channelCache.clear();
        _movies = [];
        _series = [];
        _cachedCategories = null;
        Future.microtask(() => notifyListeners());
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

    // First, try to load from pre-parsed JSON cache (much faster!)
    if (cacheAge != null && cacheAge < 21600000) {
      final dir = await getApplicationDocumentsDirectory();
      final jsonCacheFile = File('${dir.path}/parsed_playlist_cache.json');
      
      if (await jsonCacheFile.exists()) {
        try {
          debugPrint('ChannelProvider: Loading from pre-parsed JSON cache...');
          final cacheLoadStart = DateTime.now();
          
          final jsonString = await jsonCacheFile.readAsString();
          final parsed = json.decode(jsonString) as Map<String, dynamic>;
          
          _channelMaps = (parsed['channels'] as List<dynamic>)
              .map((c) => Map<String, dynamic>.from(c as Map))
              .toList();
          _channelCache.clear();
          
          _movies = (parsed['movies'] as List<dynamic>)
              .map((m) => Content.fromMap(Map<String, dynamic>.from(m as Map)))
              .toList();
          _series = (parsed['series'] as List<dynamic>)
              .map((s) => Content.fromMap(Map<String, dynamic>.from(s as Map)))
              .toList();
          
          _cachedCategories = null;
          _computeCategoriesAsync();
          
          if (_contentProvider != null) {
            _contentProvider!.loadMovies(_movies);
            _contentProvider!.loadSeries(_series);
          }
          
          _isLoading = false;
          _hasLoadedPlaylist = true;
          notifyListeners();
          
          final totalCacheLoad = DateTime.now().difference(cacheLoadStart);
          debugPrint('ChannelProvider: JSON cache loaded in ${totalCacheLoad.inMilliseconds}ms with ${_channelMaps.length} channels');
          StartupProbe.mark('ChannelProvider.autoLoadPlaylist: JSON cache load finished');
          return;
        } catch (e) {
          debugPrint('ChannelProvider: JSON cache load failed: $e, trying M3U cache');
        }
      }
    }

    // Fallback: Try file-based M3U cache if present and fresh - use streaming parser
    if (cacheFilePath != null && cacheAge != null && cacheAge < 21600000) {
      try {
        final file = File(cacheFilePath);
        if (await file.exists()) {
          debugPrint('ChannelProvider: Loading from M3U file cache (streaming parser)...');
          final cacheLoadStart = DateTime.now();
          
          // Parse from file in isolate to avoid blocking main thread and OOM
          final parseStart = DateTime.now();
          final parsed = await compute(parsePlaylistFromFile, cacheFilePath);
          final parseDuration = DateTime.now().difference(parseStart);
          debugPrint('ChannelProvider: Cache isolate parsing took ${parseDuration.inMilliseconds}ms');
          
          // Store raw maps - already in map format from optimized parser
          final mapStart = DateTime.now();
          _channelMaps = (parsed['channels'] as List<dynamic>)
              .map((c) => Map<String, dynamic>.from(c))
              .toList();
          _channelCache.clear();
          
          var movies = (parsed['movies'] as List<dynamic>)
              .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
              .toList();
          var series = (parsed['series'] as List<dynamic>)
              .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
              .toList();
          final mapDuration = DateTime.now().difference(mapStart);
          debugPrint('ChannelProvider: Cache map conversion took ${mapDuration.inMilliseconds}ms');
          
          _cachedCategories = null; // Clear cache when channels change
          // Trigger async category extraction in background (non-blocking)
          _computeCategoriesAsync();
          _movies = movies;
          _series = series;
          
          if (_contentProvider != null) {
            _contentProvider!.loadMovies(_movies);
            _contentProvider!.loadSeries(_series);
          }
          
          // Save to JSON cache for faster loading next time
          _saveJsonCache(parsed);
          
          _isLoading = false;
          _hasLoadedPlaylist = true;
          notifyListeners();
          final totalCacheLoad = DateTime.now().difference(cacheLoadStart);
          debugPrint('ChannelProvider: File cache loaded in ${totalCacheLoad.inMilliseconds}ms with ${_channelMaps.length} channels');
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

      // Create HttpClient with maximum TLS compatibility (no SecurityContext)
      final ioClient = HttpClient()
        ..badCertificateCallback = (cert, host, port) {
          debugPrint('ChannelProvider: Accepting cert from $host:$port');
          return true;
        }
        ..connectionTimeout = const Duration(seconds: 90)
        ..idleTimeout = const Duration(seconds: 90);
      
      try {
        ioClient.findProxy = (uri) => 'DIRECT';
      } catch (e) {
        debugPrint('ChannelProvider: Could not set proxy: $e');
      }

      http.Client client = IOClient(ioClient);
      
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
        
        final downloadStart = DateTime.now();

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
        final downloadDuration = DateTime.now().difference(downloadStart);
        debugPrint('ChannelProvider: Downloaded $totalBytes bytes in ${downloadDuration.inMilliseconds}ms');

        // Parse playlist from file in background isolate (memory efficient)
        final parseStart = DateTime.now();
        final parsed = await compute(parsePlaylistFromFile, tempFile.path);
        final parseDuration = DateTime.now().difference(parseStart);
        debugPrint('ChannelProvider: Isolate parsing took ${parseDuration.inMilliseconds}ms');
        
        // Store raw maps - already in map format from optimized parser
        final mapStart = DateTime.now();
        _channelMaps = (parsed['channels'] as List<dynamic>)
            .map((c) => Map<String, dynamic>.from(c))
            .toList();
        _channelCache.clear();
        
        _movies = (parsed['movies'] as List<dynamic>)
            .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
            .toList();
        _series = (parsed['series'] as List<dynamic>)
            .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
            .toList();
        final mapDuration = DateTime.now().difference(mapStart);
        debugPrint('ChannelProvider: Map conversion took ${mapDuration.inMilliseconds}ms');
        
        _cachedCategories = null; // Clear cache when channels change
        // Trigger async category extraction in background (non-blocking)
        _computeCategoriesAsync();
        
        debugPrint('ChannelProvider: Parsed ${_channelMaps.length} channels (isolate)');
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
        
        // Save to JSON cache for faster loading next time
        _saveJsonCache(parsed);

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

    final httpClient = HttpClient(context: SecurityContext(withTrustedRoots: true))
      ..badCertificateCallback = (X509Certificate cert, String host, int port) {
        debugPrint('ChannelProvider: Accepting cert from $host:$port');
        return true;
      }
      ..connectionTimeout = const Duration(seconds: 90)
      ..idleTimeout = const Duration(seconds: 90);
    
    try {
      httpClient.findProxy = (uri) => 'DIRECT';
    } catch (e) {
      debugPrint('ChannelProvider: Could not set proxy: $e');
    }

    try {
      debugPrint('ChannelProvider: Using direct HttpClient with improved TLS handling');
      
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
      
      // Store raw maps - don't convert to Channel objects on main thread!
      _channelMaps = (parsed['channels'] as List<dynamic>)
          .map((c) => Map<String, dynamic>.from(c))
          .toList();
      _channelCache.clear();
      
      _movies = (parsed['movies'] as List<dynamic>)
          .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
          .toList();
      _series = (parsed['series'] as List<dynamic>)
          .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
          .toList();

      _cachedCategories = null; // Clear cache when channels change
      // Trigger async category extraction in background (non-blocking)
      _computeCategoriesAsync();

      debugPrint('ChannelProvider: Parsed ${_channelMaps.length} channels (direct client)');

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

      // Store raw maps - don't convert to Channel objects on main thread!
      _channelMaps = (parsed['channels'] as List<dynamic>? ?? [])
          .map((channel) => Map<String, dynamic>.from(channel as Map))
          .toList();
      _channelCache.clear();
      
      final movieMaps = (parsed['movies'] as List<dynamic>? ?? [])
          .map((movie) => Content.fromMap(Map<String, dynamic>.from(movie as Map)))
          .toList();
      final seriesMaps = (parsed['series'] as List<dynamic>? ?? [])
          .map((show) => Content.fromMap(Map<String, dynamic>.from(show as Map)))
          .toList();

      _cachedCategories = null; // Clear cache when channels change
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

  /// Get list of category names (lightweight - computed in isolate)
  List<String> getCategories() {
    if (_cachedCategories != null) {
      return _cachedCategories!;
    }
    if (_isGroupingChannels) {
      return [];
    }
    // Trigger async computation
    _computeCategoriesAsync();
    return [];
  }
  
  /// Get channels for a specific category (on-demand, limited, lazy conversion)
  List<Channel> getChannelsForCategory(String category, {int limit = 20}) {
    final result = <Channel>[];
    for (int i = 0; i < _channelMaps.length && result.length < limit; i++) {
      final channelMap = _channelMaps[i];
      final channelCategory = (channelMap['groupTitle'] as String?) ?? 'Uncategorized';
      if (channelCategory == category) {
        result.add(_getChannelAt(i));
      }
    }
    return result;
  }
  
  /// Save parsed playlist data to JSON cache for fast loading
  Future<void> _saveJsonCache(Map<String, dynamic> parsed) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final jsonCacheFile = File('${dir.path}/parsed_playlist_cache.json');
      
      // Remove genres from maps (they're not needed and slow down JSON encoding)
      final channelMaps = (parsed['channels'] as List<dynamic>).map((c) {
        final map = Map<String, dynamic>.from(c as Map);
        map.remove('genres'); // Not needed for channels
        return map;
      }).toList();
      
      final movieMaps = (parsed['movies'] as List<dynamic>).map((m) {
        final map = Map<String, dynamic>.from(m as Map);
        map.remove('genres'); // Can be regenerated
        return map;
      }).toList();
      
      final seriesMaps = (parsed['series'] as List<dynamic>).map((s) {
        final map = Map<String, dynamic>.from(s as Map);
        map.remove('genres'); // Can be regenerated
        return map;
      }).toList();
      
      final jsonData = json.encode({
        'channels': channelMaps,
        'movies': movieMaps,
        'series': seriesMaps,
        'epgUrl': parsed['epgUrl'],
      });
      
      await jsonCacheFile.writeAsString(jsonData);
      debugPrint('ChannelProvider: Saved JSON cache (${jsonData.length} bytes)');
    } catch (e) {
      debugPrint('ChannelProvider: Failed to save JSON cache: $e');
    }
  }
  
  /// Compute categories in isolate (lightweight - just strings)
  Future<void> _computeCategoriesAsync() async {
    if (_cachedCategories != null || _isGroupingChannels) return;
    _isGroupingChannels = true;
    notifyListeners();
    
    try {
      // Just extract groupTitle strings from maps - very lightweight
      final groupTitles = _channelMaps.map((m) => m['groupTitle'] as String?).toList();
      
      // Run category extraction in isolate
      _cachedCategories = await compute(_extractCategoriesInIsolate, groupTitles);
      
      debugPrint('ChannelProvider: Found ${_cachedCategories!.length} categories from ${_channelMaps.length} channels');
    } catch (e) {
      debugPrint('ChannelProvider: Error extracting categories: $e');
      // Fallback - just use a few hardcoded
      _cachedCategories = ['All Channels'];
    }
    
    _isGroupingChannels = false;
    notifyListeners();
  }

  /// Get all category names for dropdowns/selectors (returns cached list)
  List<String> getAllCategoryNames() {
    return _cachedCategories ?? getCategories();
  }

  /// Home screen version - builds limited map for display
  Map<String, List<Channel>> getGroupedChannels() {
    final categories = getCategories();
    if (categories.isEmpty) return {};
    
    final result = <String, List<Channel>>{};
    // Only process first 15 categories with 30 channels each for home screen
    for (final category in categories.take(15)) {
      result[category] = getChannelsForCategory(category, limit: 30);
    }
    return result;
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

  /// Search channels by name (limited results for performance)
  List<Channel> searchChannels(String query, {int limit = 50}) {
    if (query.isEmpty) return channels; // Returns limited list via getter
    
    final lowerQuery = query.toLowerCase();
    final result = <Channel>[];
    for (int i = 0; i < _channelMaps.length && result.length < limit; i++) {
      final name = (_channelMaps[i]['name'] as String?) ?? '';
      if (name.toLowerCase().contains(lowerQuery)) {
        result.add(_getChannelAt(i));
      }
    }
    return result;
  }

  /// Filter channels by category with pagination support
  List<Channel> filterByCategory(String category, {int offset = 0, int limit = 100}) {
    final result = <Channel>[];
    int skipped = 0;
    for (int i = 0; i < _channelMaps.length && result.length < limit; i++) {
      final channelCategory = (_channelMaps[i]['groupTitle'] as String?) ?? 'Uncategorized';
      if (channelCategory == category) {
        if (skipped < offset) {
          skipped++;
          continue;
        }
        result.add(_getChannelAt(i));
      }
    }
    return result;
  }
  
  /// Get count of channels in a category (no conversion needed)
  int getChannelCountForCategory(String category) {
    int count = 0;
    for (int i = 0; i < _channelMaps.length; i++) {
      final channelCategory = (_channelMaps[i]['groupTitle'] as String?) ?? 'Uncategorized';
      if (channelCategory == category) {
        count++;
      }
    }
    return count;
  }
  
  /// Get a channel at a specific index within a category (for lazy loading)
  Channel? getChannelInCategoryAtIndex(String category, int index) {
    int found = 0;
    for (int i = 0; i < _channelMaps.length; i++) {
      final channelCategory = (_channelMaps[i]['groupTitle'] as String?) ?? 'Uncategorized';
      if (channelCategory == category) {
        if (found == index) {
          return _getChannelAt(i);
        }
        found++;
      }
    }
    return null;
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
