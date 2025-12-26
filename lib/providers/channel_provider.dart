import 'dart:convert';
import '../providers/playlist_isolate.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:iptv_player/utils/startup_probe.dart';
import 'package:iptv_player/utils/performance_monitor.dart';
import '../models/channel.dart';
import '../models/content.dart';
// M3U parsing is handled via `playlist_isolate.dart` (streaming/isolate helpers).
// Keep the local import commented out to avoid unused-import warnings while
// migration completes.
// import '../services/m3u_parser_service.dart';
import '../services/xtream_codes_service.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'content_provider.dart';
import '../services/tmdb_enrichment_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'playlist_loader.dart';

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
  final cacheFilePath =
      prefs.getString(ChannelProvider._playlistCacheFilePathKey);
  if (cacheFilePath != null) {
    final file = File(cacheFilePath);
    if (await file.exists()) {
      await file.delete();
    }
    await prefs.remove(ChannelProvider._playlistCacheFilePathKey);
  }
  debugLog('ChannelProvider: Playlist cache cleared');
}

class ChannelProvider with ChangeNotifier {
  static const String _playlistCacheFileName = 'playlist_cache.m3u';
  static const String _playlistCacheFilePathKey = 'cached_playlist_file';
  // Debug preview capture size (unused after refactor)

  // Store raw channel data as maps to avoid expensive conversion on main thread
  List<Map<String, dynamic>> _channelMaps = [];
  // Cache of converted Channel objects (populated on-demand)
  final Map<int, Channel> _channelCache = {};

  final List<Channel> _favoriteChannels = [];
  // Store VOD content count only - lazy load actual content on demand
  int _moviesCount = 0;
  int _seriesCount = 0;
  // Cache file paths for lazy VOD loading
  String? _moviesCachePath;
  String? _seriesCachePath;
  bool _isLoading = false;
  String? _errorMessage;
  ContentProvider? _contentProvider;
  IncrementalEpgService? _epgService; // Add IncrementalEpgService reference
  bool _hasLoadedPlaylist = false;
  String? _lastM3UContent; // Store last content for debugging
  bool _disposed = false; // Track if provider is disposed
  // Loading progress for UI feedback
  double _loadingProgress = 0.0;
  String _loadingStatus = '';
  bool _vodHydrated = false; // Tracks if full VOD lists were pushed to ContentProvider

  // TMDB enrichment service for background genre enrichment
  final TMDBEnrichmentService _enrichmentService = TMDBEnrichmentService();
  bool _isEnriching = false;
  bool get isEnriching => _isEnriching;

  // Cached category list (lightweight - just strings)
  List<String>? _cachedCategories;

  // Flag to track if categories are being computed
  bool _isGroupingChannels = false;
  bool get isGroupingChannels => _isGroupingChannels;

  // Playlist loader manages download+isolate parsing and supports cancellation
  PlaylistLoader _playlistLoader = PlaylistLoader();

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

  // Set the IncrementalEpgService reference for EPG loading
  void setEpgService(IncrementalEpgService service) {
    _epgService = service;
    // Ensure EPG service is initialized when channel provider loads.
    // Call initialize unconditionally to avoid a race where the
    // provider update happens before the async initialization
    // (which is started elsewhere) has completed.
    service.initialize().catchError((e) {
      debugLog('EPG Service initialization failed in ChannelProvider: $e');
    });
  }

  void _scheduleEpgRefresh({bool forceRefresh = false}) {
    final service = _epgService;
    if (service == null) return;
    if (service.isLoading || service.isDownloading || service.isParsing) return;

    unawaited(service.initialize(forceRefresh: forceRefresh).catchError((e) {
      debugLog('ChannelProvider: EPG refresh failed: $e');
    }));
  }

  Future<void> _hydrateContentProviderFromCache() async {
    if (_contentProvider == null || _vodHydrated) return;
    if (_moviesCachePath == null || _seriesCachePath == null) return;

    try {
      final movies = await getMovies(limit: 999999);
      final series = await getSeries(limit: 999999);
      if (_disposed) return;
      _contentProvider!.loadMovies(movies);
      _contentProvider!.loadSeries(series);
      _vodHydrated = true;
      debugLog(
          'ChannelProvider: Hydrated ContentProvider with ${movies.length} movies and ${series.length} series');
    } catch (e) {
      debugLog('ChannelProvider: Failed to hydrate full VOD cache: $e');
    }
  }

  /// Public API to cancel any in-progress playlist load.
  void cancelPlaylistLoad() {
    try {
      _playlistLoader.cancelCurrent();
    } catch (_) {}
    _loadingStatus = 'Cancelled';
    _loadingProgress = 0.0;
    _isLoading = false;
    notifyListeners();
  }

  // Watch count tracking (channelId -> count)
  Map<String, int> _watchCounts = {};

  /// Get channel count without converting all channels
  int get channelCount => _channelMaps.length;

  /// Quick check if there are any channels (no conversion needed)
  bool get hasChannels => _channelMaps.isNotEmpty;

  /// Public accessor for virtualized lists
  Channel getChannelAt(int index) => _getChannelAt(index);

  /// Get channels - returns limited list for UI to prevent freezing
  List<Channel> get channels {
    // Return a preview list. Use getChannelAt() for full lists.
    final limit = _channelMaps.length < 30 ? _channelMaps.length : 30;
    return List.generate(limit, (i) => _getChannelAt(i));
  }

  /// Get specific channel by index
  Channel _getChannelAt(int index) {
    if (index < 0 || index >= _channelMaps.length) {
      throw RangeError.index(index, _channelMaps, 'index');
    }

    // Track cache performance
    final wasInCache = _channelCache.containsKey(index);
    final channel = _channelCache.putIfAbsent(
      index,
      () => Channel.fromMap(_channelMaps[index]),
    );

    // Debug log occasionally
    if (!wasInCache && _channelCache.length % 500 == 0) {
      debugLog('ChannelProvider: Channel cache size: ${_channelCache.length}');
    }

    return channel;
  }

  /// Get channel maps for virtual scrolling (memory efficient)
  List<Map<String, dynamic>> getChannelMapsForUI({int limit = 50}) {
    final actualLimit =
        _channelMaps.length < limit ? _channelMaps.length : limit;
    return _channelMaps.take(actualLimit).toList();
  }

  /// Get channel maps for category (virtual scrolling)
  List<Map<String, dynamic>> getChannelMapsForCategory(String category,
      {int limit = 50}) {
    final result = <Map<String, dynamic>>[];
    for (int i = 0; i < _channelMaps.length && result.length < limit; i++) {
      final channelMap = _channelMaps[i];
      final channelCategory =
          (channelMap['groupTitle'] as String?) ?? 'Uncategorized';
      if (channelCategory == category) {
        result.add(channelMap);
      }
    }
    return result;
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
        final channelCategory =
            (map['groupTitle'] as String?) ?? 'Uncategorized';
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
  int get moviesCount => _moviesCount;
  int get seriesCount => _seriesCount;
  double get loadingProgress => _loadingProgress;
  String get loadingStatus => _loadingStatus;

  /// Load movies on-demand (paginated)
  Future<List<Content>> getMovies({int offset = 0, int limit = 50}) async {
    if (_moviesCachePath == null) return [];
    try {
      final file = File(_moviesCachePath!);
      if (!await file.exists()) return [];

      final jsonStr = await file.readAsString();
      if (jsonStr.trim().isEmpty) return [];
      final List<dynamic> allMovies = json.decode(jsonStr);

      return allMovies
          .skip(offset)
          .take(limit)
          .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
          .toList();
    } catch (e) {
      debugLog('ChannelProvider: Error loading movies: $e');
      return [];
    }
  }

  /// Load series on-demand (paginated)
  Future<List<Content>> getSeries({int offset = 0, int limit = 50}) async {
    if (_seriesCachePath == null) return [];
    try {
      final file = File(_seriesCachePath!);
      if (!await file.exists()) return [];

      final jsonStr = await file.readAsString();
      if (jsonStr.trim().isEmpty) return [];
      final List<dynamic> allSeries = json.decode(jsonStr);

      return allSeries
          .skip(offset)
          .take(limit)
          .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
          .toList();
    } catch (e) {
      debugLog('ChannelProvider: Error loading series: $e');
      return [];
    }
  }

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
    unawaited((() async {
      final prefs = await SharedPreferences.getInstance();
      final watchCountsJson =
          _watchCounts.map((k, v) => MapEntry(k, v.toString()));
      await prefs.setString(
          'channel_watch_counts', json.encode(watchCountsJson));
    })());
  }

  /// Load watch counts from storage
  Future<void> _loadWatchCounts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final watchCountsString = prefs.getString('channel_watch_counts');
      if (watchCountsString != null && watchCountsString.trim().isNotEmpty) {
        final decoded = json.decode(watchCountsString) as Map<String, dynamic>;
        _watchCounts =
            decoded.map((k, v) => MapEntry(k, int.tryParse(v.toString()) ?? 0));
      }
    } catch (e) {
      debugLog('Error loading watch counts: $e');
    }
  }

  /// Auto-load saved playlist on startup
  Future<void> autoLoadPlaylist() async {
    if (_hasLoadedPlaylist) return; // Already loaded

    // Set loading immediately so UI shows loading state
    _isLoading = true;
    notifyListeners();

    StartupProbe.mark('ChannelProvider.autoLoadPlaylist invoked');
    await _loadWatchCounts();
    debugLog('ChannelProvider: Auto-loading playlist...');
    final prefs = await SharedPreferences.getInstance();
    final playlistType = prefs.getString('playlist_type');

    if (playlistType == null) {
      _isLoading = false;
      notifyListeners();
      StartupProbe.mark('ChannelProvider.autoLoadPlaylist: no saved playlist');
      debugLog('ChannelProvider: No saved playlist found');
      if (_channelMaps.isNotEmpty || _moviesCount > 0 || _seriesCount > 0) {
        _channelMaps = [];
        _channelCache.clear();
        _moviesCount = 0;
        _seriesCount = 0;
        _moviesCachePath = null;
        _seriesCachePath = null;
        _cachedCategories = null;
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

    // First, try to load from pre-parsed JSON cache (much faster!)
    if (cacheAge != null && cacheAge < 21600000) {
      final dir = await getApplicationDocumentsDirectory();
      final jsonCacheFile = File('${dir.path}/parsed_playlist_cache.json');

      if (await jsonCacheFile.exists()) {
        try {
          debugLog('ChannelProvider: Loading from pre-parsed JSON cache...');
          final cacheLoadStart = DateTime.now();

          final jsonString = await jsonCacheFile.readAsString();
          if (jsonString.trim().isEmpty) {
            await jsonCacheFile.delete();
            throw const FormatException('Cached playlist JSON is empty');
          }
          final parsed = json.decode(jsonString) as Map<String, dynamic>;

          _channelMaps = (parsed['channels'] as List<dynamic>)
              .map((c) => Map<String, dynamic>.from(c as Map))
              .toList();
          _vodHydrated = false;
          _channelCache.clear();

          // Extract and save EPG URL from JSON cache
          final epgUrl = parsed['epgUrl'] as String?;
          if (epgUrl != null && epgUrl.isNotEmpty) {
            final prefs = await SharedPreferences.getInstance();
            final oldUrl = prefs.getString('epg_url');
            final urlChanged = oldUrl != epgUrl;

            await prefs.setString('epg_url', epgUrl);
            // Ensure EPG service is initialized
            if (_epgService != null) {
              debugLog(
                  'ChannelProvider: Initializing EPG service with URL from cache');
              _scheduleEpgRefresh(forceRefresh: urlChanged);
            }
          }

          // VOD content is now loaded on demand, so just set the cache paths
          final dir = await getApplicationDocumentsDirectory();
          _moviesCachePath = '${dir.path}/movies_cache.json';
          _seriesCachePath = '${dir.path}/series_cache.json';

          // Asynchronously read counts from VOD cache files without blocking
          unawaited(Future.microtask(() async {
            if (_moviesCachePath != null) {
              final moviesFile = File(_moviesCachePath!);
              if (await moviesFile.exists()) {
                final moviesJson = await moviesFile.readAsString();
                if (moviesJson.trim().isNotEmpty) {
                  _moviesCount = (json.decode(moviesJson) as List).length;
                } else {
                  _moviesCount = 0;
                }
                if (!_disposed) notifyListeners();
              }
            }
            if (_seriesCachePath != null) {
              final seriesFile = File(_seriesCachePath!);
              if (await seriesFile.exists()) {
                final seriesJson = await seriesFile.readAsString();
                if (seriesJson.trim().isNotEmpty) {
                  _seriesCount = (json.decode(seriesJson) as List).length;
                } else {
                  _seriesCount = 0;
                }
                if (!_disposed) notifyListeners();
              }
            }
          }));

          _cachedCategories = null;
          unawaited(_computeCategoriesAsync());

          // VOD is loaded on demand by UI, no need to preload here

          _isLoading = false;
          _hasLoadedPlaylist = true;
          notifyListeners();

          final totalCacheLoad = DateTime.now().difference(cacheLoadStart);
          debugLog(
              'ChannelProvider: JSON cache loaded in ${totalCacheLoad.inMilliseconds}ms with ${_channelMaps.length} channels');
          StartupProbe.mark(
              'ChannelProvider.autoLoadPlaylist: JSON cache load finished');
          _scheduleEpgRefresh(
              forceRefresh: (_epgService?.availableChannels.isEmpty ?? true));
          return;
        } catch (e) {
          debugLog(
              'ChannelProvider: JSON cache load failed: $e, trying M3U cache');
        }
      }
    }

    // Fallback: Try file-based M3U cache if present and fresh - use streaming parser
    if (cacheFilePath != null && cacheAge != null && cacheAge < 21600000) {
      try {
        final file = File(cacheFilePath);
        if (await file.exists()) {
          debugLog(
              'ChannelProvider: Loading from M3U file cache (streaming parser)...');
          final cacheLoadStart = DateTime.now();

          // Parse from file in isolate to avoid blocking main thread and OOM
          final parseStart = DateTime.now();
          final parsed = await parsePlaylistCancelable(filePath: cacheFilePath);
          final parseDuration = DateTime.now().difference(parseStart);
          debugLog(
              'ChannelProvider: Cache isolate parsing took ${parseDuration.inMilliseconds}ms');

          // Extract and save EPG URL from cache if found
          final epgUrl = parsed['epgUrl'] as String?;
          if (epgUrl != null && epgUrl.isNotEmpty) {
            final prefs = await SharedPreferences.getInstance();
            final oldUrl = prefs.getString('epg_url');
            final urlChanged = oldUrl != epgUrl;

            await prefs.setString('epg_url', epgUrl);
            // Ensure EPG service is initialized
            if (_epgService != null) {
              _scheduleEpgRefresh(forceRefresh: urlChanged);
            }
          }

          // Store raw maps - already in map format from optimized parser
          final mapStart = DateTime.now();
          _vodHydrated = false;
          _channelMaps = (parsed['channels'] as List<dynamic>)
              .map((c) => Map<String, dynamic>.from(c))
              .toList();
          _channelCache.clear();

          final List<Content> movies = (parsed['movies'] as List<dynamic>)
              .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
              .toList();
          final List<Content> series = (parsed['series'] as List<dynamic>)
              .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
              .toList();

          _moviesCount = movies.length;
          _seriesCount = series.length;

          // Save movies/series to separate cache files for on-demand loading
          final dir = await getApplicationDocumentsDirectory();
          _moviesCachePath = '${dir.path}/movies_cache.json';
          _seriesCachePath = '${dir.path}/series_cache.json';
          await File(_moviesCachePath!).writeAsString(
              json.encode(movies.map((m) => m.toMap()).toList()));
          await File(_seriesCachePath!).writeAsString(
              json.encode(series.map((s) => s.toMap()).toList()));

          final mapDuration = DateTime.now().difference(mapStart);
          debugLog(
              'ChannelProvider: Cache map conversion took ${mapDuration.inMilliseconds}ms');

          _cachedCategories = null; // Clear cache when channels change
          // Trigger async category extraction in background (non-blocking)
          unawaited(_computeCategoriesAsync());

          if (_contentProvider != null) {
            _contentProvider!.loadMovies(movies.take(100).toList());
            _contentProvider!.loadSeries(series.take(100).toList());
            unawaited(_hydrateContentProviderFromCache());
          }

          // Save to JSON cache for faster loading next time
          unawaited(_saveJsonCache(parsed));

          _isLoading = false;
          _hasLoadedPlaylist = true;
          notifyListeners();
          final totalCacheLoad = DateTime.now().difference(cacheLoadStart);
          debugLog(
              'ChannelProvider: File cache loaded in ${totalCacheLoad.inMilliseconds}ms with ${_channelMaps.length} channels');
          StartupProbe.mark(
              'ChannelProvider.autoLoadPlaylist: file cache load finished');
          _scheduleEpgRefresh(
              forceRefresh: (_epgService?.availableChannels.isEmpty ?? true));
          return;
        }
      } catch (e) {
        debugLog(
            'ChannelProvider: File cache load failed: $e, loading from network');
        _isLoading = false;
        notifyListeners();
      }
      debugLog(
          'ChannelProvider: File cache expired or not found, loading from network');
    }

    debugLog('ChannelProvider: Playlist type: $playlistType');

    try {
      String? playlistUrl;

      if (playlistType == 'm3u') {
        playlistUrl = prefs.getString('m3u_url');
        debugLog('ChannelProvider: M3U URL: $playlistUrl');
      } else if (playlistType == 'xtream') {
        final server = prefs.getString('xtream_server');
        final username = prefs.getString('xtream_username');
        final password = prefs.getString('xtream_password');
        debugLog('ChannelProvider: Xtream account configured');
        // Note: Do NOT log credentials or full URLs containing credentials
        if (server != null && username != null && password != null) {
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
                'output': 'ts'
              },
            );
            playlistUrl = playlistUri.toString();

            // Construct a canonical EPG url for Xtream servers using Uri
            final epgUri = baseUri.replace(
              path: (baseUri.path.trim().isEmpty)
                  ? 'xmltv.php'
                  : '${baseUri.path.replaceAll(RegExp(r'^/'), '')}/xmltv.php',
              queryParameters: {
                'username': username.replaceAll(' ', ''),
                'password': password.replaceAll(' ', ''),
              },
            );

            final prefs = await SharedPreferences.getInstance();
            final oldUrl = prefs.getString('epg_url');
            final custom = prefs.getString('custom_epg_url');
            // Overwrite stored epg_url if empty or if the prior value was just the user's custom URL
            final shouldSave = (oldUrl == null || oldUrl.isEmpty) ||
                (custom != null && oldUrl == custom);
            if (shouldSave) {
              await prefs.setString('epg_url', epgUri.toString());
              debugLog('ChannelProvider: Saved computed epg_url for Xtream');
              // Initialize EPG service later when UI requests it; do not force refresh here
            }
          } catch (e) {
            debugLog(
                'ChannelProvider: Failed to compute/save epg_url for Xtream: $e');
          }
        }
      }

      if (playlistUrl != null && playlistUrl.isNotEmpty) {
        debugLog('ChannelProvider: Loading playlist URL: $playlistUrl');
        StartupProbe.mark(
            'ChannelProvider.autoLoadPlaylist: downloading playlist');
        await loadPlaylistFromUrl(playlistUrl);
        _hasLoadedPlaylist = true;
        debugLog('ChannelProvider: Auto-load completed successfully');
        StartupProbe.mark(
            'ChannelProvider.autoLoadPlaylist: network load finished');
      } else {
        debugLog('ChannelProvider: Playlist URL is empty');
        StartupProbe.mark(
            'ChannelProvider.autoLoadPlaylist: playlist url empty');
      }
    } catch (e) {
      // Silently fail - user can manually load from settings
      debugLog('ChannelProvider: Auto-load playlist failed: $e');
      StartupProbe.mark('ChannelProvider.autoLoadPlaylist: failed ($e)');
    }
  }

  // NOTE: Background cache refresh removed - file-based caching is now used exclusively
  // The cache is refreshed when the user loads a playlist from network

  /// Load channels from M3U URL
  Future<void> loadPlaylistFromUrl(String url) async {
    PerformanceMonitor.start('PLAYLIST_LOAD_TOTAL');
    PerformanceMonitor.trackMemoryUsage('Before playlist load');

    try {
      await _loadPlaylistFromUrlImpl(url);
      PerformanceMonitor.trackChannelLoad(
          _channelMaps.length, DateTime.now().difference(DateTime.now()));
    } catch (e) {
      // If we get an SSL/TLS handshake error, retry with direct HttpClient
      if (e.toString().contains('HandshakeException') ||
          e.toString().contains('WRONG_VERSION_NUMBER') ||
          e.toString().contains('CERTIFICATE_VERIFY_FAILED')) {
        debugLog(
            'ChannelProvider: Handshake error detected, retrying with direct HttpClient: $e');
        await _loadPlaylistWithDirectClient(url);
      } else {
        rethrow;
      }
    }
  }

  /// Implementation of loadPlaylistFromUrl using standard http.Client
  Future<void> _loadPlaylistFromUrlImpl(String url) async {
    PerformanceMonitor.start('PLAYLIST_LOAD_TOTAL');

    _isLoading = true;
    _errorMessage = null;
    _lastM3UContent = null; // Clear old content
    _vodHydrated = false;
    notifyListeners();

    try {
      debugLog(
          'ChannelProvider: Loading playlist from URL: $url (using PlaylistLoader)');
      // Cancel any prior loader job
      _playlistLoader.cancelCurrent();
      _playlistLoader = PlaylistLoader();

      _loadingStatus = 'Starting download...';
      _loadingProgress = 0.0;
      notifyListeners();

      final parsed =
          await _playlistLoader.loadFromUrl(url, onProgress: (count) {
        // Emit progressive parsing progress
        _loadingStatus = 'Parsing playlist: $count channels';
        // Rough normalized progress: parsing dominates after download
        _loadingProgress = 0.5 + (count / 20000).clamp(0.0, 0.45);
        notifyListeners();
      });

      // Validate parsed result
      if (parsed['channels'] == null || (parsed['channels'] as List).isEmpty) {
        _errorMessage =
            'The playlist file could not be parsed or contains no channels. Please check your playlist source.';
        _isLoading = false;
        notifyListeners();
        throw Exception('Parsed playlist is empty or invalid');
      }

      final prefs = await SharedPreferences.getInstance();

      // Extract and save EPG URL if found
      final epgUrl = parsed['epgUrl'] as String?;
      if (epgUrl != null && epgUrl.isNotEmpty) {
        final oldUrl = prefs.getString('epg_url');
        final urlChanged = oldUrl != epgUrl;
        debugLog(
            'ChannelProvider: Found EPG URL in playlist: $epgUrl (changed: $urlChanged)');
        await prefs.setString('epg_url', epgUrl);
        if (_epgService != null) {
          debugLog(
              'ChannelProvider: Initializing EPG service with URL from M3U');
          _scheduleEpgRefresh(forceRefresh: urlChanged);
        }
      }

      _loadingStatus = 'Processing channels...';
      _loadingProgress = 0.7;
      notifyListeners();

      final mapStart = DateTime.now();
      final rawChannels = parsed['channels'] as List<dynamic>;
      _channelMaps.clear();
      _channelCache.clear();

      const chunkSize = 1000;
      for (int i = 0; i < rawChannels.length; i += chunkSize) {
        final end = (i + chunkSize).clamp(0, rawChannels.length);
        final chunk = rawChannels.sublist(i, end);

        for (final c in chunk) {
          _channelMaps.add(Map<String, dynamic>.from(c));
        }

        if (rawChannels.length > 5000 && i % (chunkSize * 2) == 0) {
          _loadingStatus =
              'Processing channels... ${i + end}/${rawChannels.length}';
          _loadingProgress = 0.7 + (0.1 * (i + end) / rawChannels.length);
          notifyListeners();
          await Future.delayed(Duration.zero);
        }
      }

      try {
        final playlistJson = json.encode(_channelMaps);
        await prefs.setString('flutter.cached_playlist', playlistJson);
        debugLog(
            'ChannelProvider: Saved playlist to flutter.cached_playlist for Android Auto');
      } catch (e) {
        debugLog(
            'ChannelProvider: Failed to save playlist for Android Auto: $e');
      }

      final List<Content> movies = (parsed['movies'] as List<dynamic>)
          .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
          .toList();
      final List<Content> series = (parsed['series'] as List<dynamic>)
          .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
          .toList();

      _moviesCount = movies.length;
      _seriesCount = series.length;

      _loadingStatus = 'Saving VOD content...';
      _loadingProgress = 0.8;
      notifyListeners();

      final dir = await getApplicationDocumentsDirectory();
      _moviesCachePath = '${dir.path}/movies_cache.json';
      _seriesCachePath = '${dir.path}/series_cache.json';
      await File(_moviesCachePath!)
          .writeAsString(json.encode(movies.map((m) => m.toMap()).toList()));
      await File(_seriesCachePath!)
          .writeAsString(json.encode(series.map((s) => s.toMap()).toList()));
      final mapDuration = DateTime.now().difference(mapStart);
      debugLog(
          'ChannelProvider: Map conversion took ${mapDuration.inMilliseconds}ms');

      _cachedCategories = null;
      unawaited(_computeCategoriesAsync());

      debugLog(
          'ChannelProvider: Parsed ${_channelMaps.length} channels (isolate)');
      debugLog(
          'ChannelProvider: Parsed $_moviesCount movies, $_seriesCount series (isolate)');

      _loadingStatus = 'Loading initial VOD content...';
      _loadingProgress = 0.9;
      notifyListeners();

      if (_contentProvider != null) {
        _contentProvider!.loadMovies(movies.take(100).toList());
        _contentProvider!.loadSeries(series.take(100).toList());
        unawaited(_hydrateContentProviderFromCache());
      }

      _loadingStatus = 'Finalizing...';
      _loadingProgress = 0.95;
      notifyListeners();

      final now = DateTime.now().millisecondsSinceEpoch;
      final cacheFile = File('${dir.path}/$_playlistCacheFileName');
      // PlaylistLoader stores temp files internally; we just write cache metadata
      if (_channelMaps.isNotEmpty) {
        await prefs.setString(_playlistCacheFilePathKey, cacheFile.path);
        await prefs.setInt('cache_timestamp', now);
      }

      unawaited(_saveJsonCache(parsed));
      unawaited(_loadXtreamVOD(url));

      _loadingProgress = 1.0;
      _loadingStatus = 'Complete!';
      _isLoading = false;
      _hasLoadedPlaylist = true;
      notifyListeners();

      PerformanceMonitor.end('PLAYLIST_LOAD_TOTAL');
      PerformanceMonitor.trackMemoryUsage('After playlist load');
      debugLog(
          'ChannelProvider: Loaded ${_channelMaps.length} channels, cache size: ${_channelCache.length}');

      _scheduleEpgRefresh(
          forceRefresh: (_epgService?.availableChannels.isEmpty ?? true));
      unawaited(_startBackgroundEnrichment());
    } catch (e, stackTrace) {
      debugLog('ChannelProvider: Error loading playlist: $e');
      debugLog('ChannelProvider: Stack trace: $stackTrace');

      _loadingProgress = 0.0;
      _loadingStatus = '';

      // Provide more helpful error messages
      if (e.toString().contains('HandshakeException') ||
          e.toString().contains('WRONG_VERSION_NUMBER') ||
          e.toString().contains('wrong version number')) {
        _errorMessage = 'SSL/TLS Handshake Error\n\n'
            'Technical details:\n$e\n\n'
            'Possible causes:\n'
            '• Server requires specific TLS version\n'
            '• SSL certificate is invalid or expired\n'
            '• Firewall or proxy blocking connection\n\n'
            'The app is configured to accept all certificates.\n'
            'This is a server-side compatibility issue.';
      } else if (e.toString().contains('SocketException')) {
        final socketError = e.toString();
        _errorMessage = 'Connection Error: Unable to reach server.\n\n'
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
            'Invalid playlist file or format. The playlist could not be parsed.\n\n'
            'Please check that your playlist URL is correct and the file is not empty or corrupted.';
      } else if (e.toString().contains('Empty playlist file')) {
        // Already handled above
      } else if (e.toString().contains('Parsed playlist is empty or invalid')) {
        // Already handled above
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
    _vodHydrated = false;
    notifyListeners();

    final httpClient =
        HttpClient(context: SecurityContext(withTrustedRoots: true))
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) {
            debugLog('ChannelProvider: Accepting cert from $host:$port');
            return true;
          }
          ..connectionTimeout = const Duration(seconds: 90)
          ..idleTimeout = const Duration(seconds: 90);

    try {
      httpClient.findProxy = (uri) => 'DIRECT';
    } catch (e) {
      debugLog('ChannelProvider: Could not set proxy: $e');
    }

    try {
      debugLog(
          'ChannelProvider: Using direct HttpClient with improved TLS handling');

      final request = await httpClient.getUrl(Uri.parse(url));
      request.headers.add(
          'User-Agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36');
      request.headers.add('Accept', '*/*');

      final response = await request.close().timeout(
        const Duration(seconds: 90),
        onTimeout: () {
          throw Exception(
              'Connection timeout - server took too long to respond (90s limit)');
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

      debugLog(
          'ChannelProvider: Downloaded $totalBytes bytes to temp file (direct client)');

      // Parse from file in background isolate (memory efficient)
      final parsed = await parsePlaylistCancelable(filePath: tempFile.path);

      // Store raw maps - don't convert to Channel objects on main thread!
      _channelMaps = (parsed['channels'] as List<dynamic>)
          .map((c) => Map<String, dynamic>.from(c))
          .toList();
      _channelCache.clear();

      final List<Content> movies = (parsed['movies'] as List<dynamic>)
          .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
          .toList();
      final List<Content> series = (parsed['series'] as List<dynamic>)
          .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
          .toList();

      _moviesCount = movies.length;
      _seriesCount = series.length;

      // Save VOD to separate cache files for lazy loading
      _moviesCachePath = '${dir.path}/movies_cache.json';
      _seriesCachePath = '${dir.path}/series_cache.json';
      await File(_moviesCachePath!)
          .writeAsString(json.encode(movies.map((m) => m.toMap()).toList()));
      await File(_seriesCachePath!)
          .writeAsString(json.encode(series.map((s) => s.toMap()).toList()));

      _cachedCategories = null; // Clear cache when channels change
      // Trigger async category extraction in background (non-blocking)
      unawaited(_computeCategoriesAsync());

      debugLog(
          'ChannelProvider: Parsed ${_channelMaps.length} channels (direct client)');

      if (_contentProvider != null) {
        _contentProvider!.loadMovies(movies.take(100).toList());
        _contentProvider!.loadSeries(series.take(100).toList());
        unawaited(_hydrateContentProviderFromCache());
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
        debugLog(
            'ChannelProvider: Playlist cached to file (${cacheFile.path}, $totalBytes bytes)');
      }

      // Auto-save EPG URL
      final epgUrl = parsed['epgUrl'] as String?;
      if (epgUrl != null && epgUrl.isNotEmpty) {
        debugLog('ChannelProvider: Found EPG URL: $epgUrl (auto-saving)');
        await prefs.setString('custom_epg_url', epgUrl);
        try {
          final enc = base64Url.encode(utf8.encode(url));
          await prefs.setString('m3u_epg_url_$enc', epgUrl);
          await prefs.remove('m3u_epg_url_$url');
        } catch (_) {
          // ignore per-playlist save errors
        }
        try {
          await _epgService?.initialize(forceRefresh: true);
          debugLog(
              'ChannelProvider: EPG initialized (auto-save). Available channels: ${_epgService?.availableChannels.length}, Error: ${_epgService?.error}');
        } catch (e) {
          debugLog(
              'ChannelProvider: EPG initialization failed after auto-save: $e');
        }
      }

      unawaited(_loadXtreamVOD(url));

      _isLoading = false;
      _hasLoadedPlaylist = true;
      notifyListeners();

      _scheduleEpgRefresh(
          forceRefresh: (_epgService?.availableChannels.isEmpty ?? true));
      // Start background TMDB enrichment (non-blocking)
      unawaited(_startBackgroundEnrichment());
    } catch (e, stackTrace) {
      debugLog('ChannelProvider: Error with direct client: $e');
      debugLog('ChannelProvider: Stack trace: $stackTrace');
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
    _vodHydrated = false;
    notifyListeners();

    try {
      // Use the optimized isolate parser that accepts bytes/stream to avoid
      // allocating huge intermediate strings in the main isolate.
      final bytes = utf8.encode(content);
      final parsed = await compute(parsePlaylistInIsolate, bytes);

      // Store raw maps - don't convert to Channel objects on main thread!
      _channelMaps = (parsed['channels'] as List<dynamic>? ?? [])
          .map((channel) => Map<String, dynamic>.from(channel as Map))
          .toList();
      _channelCache.clear();

      final List<Content> movies = (parsed['movies'] as List<dynamic>? ?? [])
          .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
          .toList();
      final List<Content> series = (parsed['series'] as List<dynamic>? ?? [])
          .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
          .toList();

      _moviesCount = movies.length;
      _seriesCount = series.length;

      // Save VOD to separate cache files for lazy loading
      final dir = await getApplicationDocumentsDirectory();
      _moviesCachePath = '${dir.path}/movies_cache.json';
      _seriesCachePath = '${dir.path}/series_cache.json';
      await File(_moviesCachePath!)
          .writeAsString(json.encode(movies.map((m) => m.toMap()).toList()));
      await File(_seriesCachePath!)
          .writeAsString(json.encode(series.map((s) => s.toMap()).toList()));

      _cachedCategories = null; // Clear cache when channels change

      // Sync VOD content to ContentProvider (first batch only)
      if (_contentProvider != null) {
        _contentProvider!.loadMovies(movies.take(100).toList());
        _contentProvider!.loadSeries(series.take(100).toList());
        unawaited(_hydrateContentProviderFromCache());
      }

      // Auto-save EPG URL from M3U x-tvg-url attribute
      final epgUrl = parsed['epgUrl'] as String?;
      if (epgUrl != null && epgUrl.isNotEmpty) {
        debugLog(
            'ChannelProvider: Found EPG URL in M3U: $epgUrl (auto-saving)');
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('custom_epg_url', epgUrl);
        try {
          await _epgService?.initialize(forceRefresh: true);
          debugLog(
              'ChannelProvider: EPG initialized (M3U). Available channels: ${_epgService?.availableChannels.length}, Error: ${_epgService?.error}');
        } catch (e) {
          debugLog(
              'ChannelProvider: EPG initialization failed after M3U save: $e');
        }
      }

      _isLoading = false;
      notifyListeners();

      _scheduleEpgRefresh(
          forceRefresh: (_epgService?.availableChannels.isEmpty ?? true));
      // Start background TMDB enrichment (non-blocking)
      unawaited(_startBackgroundEnrichment());
    } catch (e, stackTrace) {
      debugLog('ChannelProvider: Error parsing playlist string: $e');
      debugLog('ChannelProvider: Stack trace: $stackTrace');
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
    unawaited(_computeCategoriesAsync());
    return [];
  }

  /// Get channels for a specific category (on-demand, limited, lazy conversion)
  List<Channel> getChannelsForCategory(String category, {int limit = 20}) {
    final result = <Channel>[];
    for (int i = 0; i < _channelMaps.length && result.length < limit; i++) {
      final channelMap = _channelMaps[i];
      final channelCategory =
          (channelMap['groupTitle'] as String?) ?? 'Uncategorized';
      if (channelCategory == category) {
        result.add(_getChannelAt(i));
      }
    }
    return result;
  }

  /// Save parsed playlist data to JSON cache for fast loading
  /// Save parsed playlist data to JSON cache for fast loading (chunked to avoid OOM)
  Future<void> _saveJsonCache(Map<String, dynamic> parsed) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final jsonCacheFile = File('${dir.path}/parsed_playlist_cache.json');

      // For very large playlists, don't save movies/series to main cache
      // They're already in separate files from lazy loading
      final channelsData = (parsed['channels'] as List<dynamic>).map((c) {
        return Map<String, dynamic>.from(c as Map);
      }).toList();

      // Only save channel data + metadata to main cache
      // Movies/series are in separate lazy-load files
      final cacheData = {
        'channels': channelsData,
        'movies': [], // Empty - loaded from separate file
        'series': [], // Empty - loaded from separate file
        'epgUrl': parsed['epgUrl'],
      };

      final jsonData = json.encode(cacheData);
      await jsonCacheFile.writeAsString(jsonData);
      debugLog(
          'ChannelProvider: Saved JSON cache (channels only, ${jsonData.length} bytes)');
    } catch (e) {
      debugLog('ChannelProvider: Failed to save JSON cache: $e');
      // Non-fatal - cache is optional
    }
  }

  /// Compute categories in isolate (lightweight - just strings)
  Future<void> _computeCategoriesAsync() async {
    if (_cachedCategories != null || _isGroupingChannels) return;
    _isGroupingChannels = true;
    notifyListeners();

    try {
      // Just extract groupTitle strings from maps - very lightweight
      final groupTitles =
          _channelMaps.map((m) => m['groupTitle'] as String?).toList();

      // Run category extraction in isolate
      _cachedCategories =
          await compute(_extractCategoriesInIsolate, groupTitles);

      debugLog(
          'ChannelProvider: Found ${_cachedCategories!.length} categories from ${_channelMaps.length} channels');
    } catch (e) {
      debugLog('ChannelProvider: Error extracting categories: $e');
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
      _vodHydrated = false;
      // Extract server, username, password from M3U URL
      // Format: http://server/get.php?username=X&password=Y&type=m3u_plus&output=ts
      final uri = Uri.parse(m3uUrl);
      final serverUrl =
          '${uri.scheme}://${uri.host}${uri.port != 80 && uri.port != 443 ? ':${uri.port}' : ''}';
      final username = uri.queryParameters['username'];
      final password = uri.queryParameters['password'];

      if (username == null || password == null) {
        debugLog(
          'ChannelProvider: Cannot load VOD - missing credentials in URL',
        );
        return;
      }

      debugLog('ChannelProvider: Loading VOD from Xtream Codes API...');
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

      final List<Content> xtreamMovies = results[0];
      final List<Content> xtreamSeries = results[1];

      debugLog(
        'ChannelProvider: Loaded ${xtreamMovies.length} movies, ${xtreamSeries.length} series from Xtream API',
      );

      // Probe Xtream live streams for EPG information (best-effort)
      try {
        final liveStreams = await xtreamService.getAllLiveStreams();
        if (liveStreams.isNotEmpty) {
          debugLog(
              'ChannelProvider: Retrieved ${liveStreams.length} live streams from Xtream API for EPG probing');

          // Collect potential EPG URL candidates and per-stream EPG IDs
          final Set<String> epgUrls = {};
          final Map<String, String> streamIdToEpgId =
              {}; // keyed by stream_id or name

          for (final s in liveStreams) {
            // Common fields: 'epg', 'stream_epg', 'epg_channel_id', 'stream_id', 'name'
            final epgCandidate = (s['epg'] ??
                    s['stream_epg'] ??
                    s['epg_channel_id'] ??
                    s['epg_url'])
                ?.toString();
            if (epgCandidate != null && epgCandidate.isNotEmpty) {
              // If it looks like a URL, add to epgUrls; otherwise keep as epg id
              if (epgCandidate.startsWith('http')) {
                epgUrls.add(epgCandidate);
              } else if (epgCandidate.startsWith('/') ||
                  epgCandidate.contains('xmltv') ||
                  epgCandidate.contains('.php')) {
                // Relative or server-provided path - resolve against Xtream server URL
                try {
                  final resolved =
                      '${serverUrl.replaceAll(RegExp(r'\/$'), '')}/${epgCandidate.replaceAll(RegExp(r'^\/+'), '')}';
                  epgUrls.add(resolved);
                } catch (_) {
                  // ignore resolution errors
                }
              } else {
                final key = (s['stream_id'] ?? s['name'] ?? '').toString();
                if (key.isNotEmpty) streamIdToEpgId[key] = epgCandidate;
              }
            }
            // Also check for explicit epg_channel_id
            final epgId = (s['epg_channel_id'] ?? s['epg_id'])?.toString();
            if (epgId != null && epgId.isNotEmpty) {
              final key = (s['stream_id'] ?? s['name'] ?? '').toString();
              if (key.isNotEmpty) streamIdToEpgId[key] = epgId;
            }
          }

          final prefs = await SharedPreferences.getInstance();

          // If we found a URL candidate, probe it (short GET) and auto-save it as custom_epg_url and per-playlist key
          String? accepted;
          final client = http.Client();
          if (epgUrls.isNotEmpty) {
            for (final candidate in epgUrls) {
              try {
                final req = http.Request('GET', Uri.parse(candidate));
                req.headers.addAll({
                  'User-Agent':
                      'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
                  'Accept': '*/*',
                });
                final streamed =
                    await client.send(req).timeout(const Duration(seconds: 15));
                if (streamed.statusCode == 200) {
                  // Read a small preview (first ~4KB) to validate it's XML-like
                  final preview = <int>[];
                  await for (final chunk in streamed.stream) {
                    preview.addAll(chunk);
                    if (preview.length >= 4096) break;
                  }
                  final textPreview =
                      utf8.decode(preview, allowMalformed: true).trimLeft();
                  if (textPreview.startsWith('<?xml') ||
                      textPreview.startsWith('<tv') ||
                      streamed.headers['content-type']?.contains('xml') ==
                          true) {
                    accepted = candidate;
                    break;
                  }
                }
              } catch (_) {
                // ignore probe failures for this candidate
              }
            }
            client.close();

            // If no candidate accepted yet, try probing a set of common EPG filenames
            if (accepted == null) {
              final commonPaths = [
                'xmltv.php',
                'xmltv',
                'epg.xml',
                'epg.php',
                'xmltv/xml.php'
              ];
              debugLog(
                  'ChannelProvider: No EPG accepted from candidates, trying common paths: ${commonPaths.join(', ')}');
              final client2 = http.Client();
              for (final p in commonPaths) {
                try {
                  final base = Uri.parse(serverUrl);
                  final probeUri = base.resolve(p).toString();
                  debugLog('ChannelProvider: Probing common path: $probeUri');
                  final req = http.Request('GET', Uri.parse(probeUri));
                  req.headers.addAll({
                    'User-Agent':
                        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
                    'Accept': '*/*',
                  });
                  final streamed = await client2
                      .send(req)
                      .timeout(const Duration(seconds: 12));
                  debugLog(
                      'ChannelProvider: Probe $probeUri returned ${streamed.statusCode}');
                  if (streamed.statusCode == 200) {
                    final preview = <int>[];
                    await for (final chunk in streamed.stream) {
                      preview.addAll(chunk);
                      if (preview.length >= 4096) break;
                    }
                    final textPreview =
                        utf8.decode(preview, allowMalformed: true).trimLeft();
                    if (textPreview.startsWith('<?xml') ||
                        textPreview.startsWith('<tv') ||
                        streamed.headers['content-type']?.contains('xml') ==
                            true) {
                      accepted = probeUri;
                      break;
                    }
                  }
                } catch (e) {
                  debugLog(
                      'ChannelProvider: Common-path probe failed for $p: $e');
                }
              }
              client2.close();
            }

            // If probe failed, optionally retry using a proxy configured in prefs
            if (accepted == null) {
              try {
                final proxySetting = prefs.getString('epg_probe_proxy');
                if (proxySetting != null && proxySetting.isNotEmpty) {
                  debugLog(
                      'ChannelProvider: Retrying EPG probes via proxy: $proxySetting');
                  Uri? proxyUri;
                  try {
                    proxyUri = Uri.parse(proxySetting);
                  } catch (_) {
                    // allow simple host:port format
                    final parts = proxySetting.split(':');
                    if (parts.length == 2) {
                      proxyUri = Uri(
                          scheme: 'http',
                          host: parts[0],
                          port: int.tryParse(parts[1]) ?? 0);
                    }
                  }

                  if (proxyUri != null &&
                      proxyUri.host.isNotEmpty &&
                      proxyUri.port != 0) {
                    final ioClient = HttpClient();
                    try {
                      ioClient.findProxy =
                          (uri) => 'PROXY ${proxyUri!.host}:${proxyUri.port}';
                    } catch (e) {
                      debugLog(
                          'ChannelProvider: Could not set proxy on HttpClient: $e');
                    }
                    final proxiedClient = IOClient(ioClient);
                    try {
                      for (final candidate in epgUrls) {
                        try {
                          final req = http.Request('GET', Uri.parse(candidate));
                          req.headers.addAll({
                            'User-Agent':
                                'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
                            'Accept': '*/*',
                          });
                          final streamed = await proxiedClient
                              .send(req)
                              .timeout(const Duration(seconds: 25));
                          if (streamed.statusCode == 200) {
                            final preview = <int>[];
                            await for (final chunk in streamed.stream) {
                              preview.addAll(chunk);
                              if (preview.length >= 4096) break;
                            }
                            final textPreview = utf8
                                .decode(preview, allowMalformed: true)
                                .trimLeft();
                            if (textPreview.startsWith('<?xml') ||
                                textPreview.startsWith('<tv') ||
                                streamed.headers['content-type']
                                        ?.contains('xml') ==
                                    true) {
                              accepted = candidate;
                              break;
                            }
                          }
                        } catch (_) {
                          // ignore individual candidate failures
                        }
                      }
                    } finally {
                      proxiedClient.close();
                      try {
                        ioClient.close(force: true);
                      } catch (_) {}
                    }
                  }
                }
              } catch (e) {
                debugLog('ChannelProvider: Proxy fallback failed: $e');
              }
            }

            if (accepted != null) {
              // Show a UI hint that EPG was auto-detected
              try {
                final display = accepted.length > 80
                    ? '${accepted.substring(0, 80)}...'
                    : accepted;
                rootScaffoldMessengerKey.currentState?.showSnackBar(
                  SnackBar(
                      content: Text('EPG auto-detected and saved: $display')),
                );
              } catch (_) {
                // ignore UI snackbar failures
              }
              debugLog(
                  'ChannelProvider: Found EPG URL via Xtream API: $accepted (auto-saving)');
              await prefs.setString('custom_epg_url', accepted);
              // Also set canonical epg_url so other services read it directly
              try {
                await prefs.setString('epg_url', accepted);
              } catch (_) {}
              // Also save per-playlist keys so the saved-playlists UI shows detected EPG
              try {
                final enc = base64Url.encode(utf8.encode(m3uUrl));
                await prefs.setString('xtream_epg_url_$enc', accepted);
                await prefs.setString('xtream_epg_url_$serverUrl', accepted);
              } catch (_) {
                // ignore per-playlist save errors
              }
              try {
                await _epgService?.initialize(forceRefresh: true);
                debugLog(
                    'ChannelProvider: EPG initialized after Xtream probe. Available: ${_epgService?.availableChannels.length}, Error: ${_epgService?.error}');
              } catch (e) {
                debugLog(
                    'ChannelProvider: EPG initialization failed after Xtream probe: $e');
              }
            }
          }
          // If still not accepted, and we have Xtream credentials, try probing
          // same-host candidates with username/password appended (some providers
          // require auth parameters on the XMLTV endpoint).
          if (accepted == null) {
            try {
              final prefs2 = await SharedPreferences.getInstance();
              final xtUser = prefs2.getString('xtream_username') ??
                  prefs2.getString('xtream_user') ??
                  username;
              final xtPass = prefs2.getString('xtream_password') ??
                  prefs2.getString('xtream_pass') ??
                  password;
              if ((xtUser.isNotEmpty) && (xtPass.isNotEmpty)) {
                debugLog(
                    'ChannelProvider: Attempting credentialed probes using Xtream creds');
                final baseUri = Uri.parse(serverUrl);
                for (final candidate in epgUrls) {
                  try {
                    final uri = Uri.parse(candidate);
                    if (uri.host == baseUri.host) {
                      final newQuery = StringBuffer();
                      if (uri.query.isNotEmpty) {
                        newQuery.write(uri.query);
                        newQuery.write('&');
                      }
                      newQuery.write(
                          'username=${Uri.encodeComponent(xtUser)}&password=${Uri.encodeComponent(xtPass)}');
                      final credUri =
                          uri.replace(query: newQuery.toString()).toString();
                      debugLog(
                          'ChannelProvider: Probing credentialed URL: $credUri');
                      final req = http.Request('GET', Uri.parse(credUri));
                      req.headers.addAll({
                        'User-Agent':
                            'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
                        'Accept': '*/*',
                      });
                      final streamed = await client
                          .send(req)
                          .timeout(const Duration(seconds: 15));
                      if (streamed.statusCode == 200) {
                        final preview = <int>[];
                        await for (final chunk in streamed.stream) {
                          preview.addAll(chunk);
                          if (preview.length >= 4096) break;
                        }
                        final textPreview = utf8
                            .decode(preview, allowMalformed: true)
                            .trimLeft();
                        if (textPreview.startsWith('<?xml') ||
                            textPreview.startsWith('<tv') ||
                            streamed.headers['content-type']?.contains('xml') ==
                                true) {
                          accepted = credUri;
                          break;
                        }
                      }
                    }
                  } catch (e) {
                    debugLog('ChannelProvider: Credentialed probe failed: $e');
                  }
                }
              }
            } catch (e) {
              debugLog('ChannelProvider: Error during credentialed probes: $e');
            }
          }

          // If we found per-stream epg ids, map them into channel maps by matching stream id or name
          if (streamIdToEpgId.isNotEmpty && _channelMaps.isNotEmpty) {
            var mapped = 0;
            for (int i = 0; i < _channelMaps.length; i++) {
              final map = _channelMaps[i];
              final url = (map['url'] as String?) ?? '';
              final name = (map['name'] as String?) ?? '';

              // Try to extract stream id from URL (common Xtream pattern is /USER/PASS/STREAMID)
              String? streamIdFromUrl;
              try {
                final uri = Uri.parse(url);
                final parts =
                    uri.path.split('/').where((p) => p.isNotEmpty).toList();
                if (parts.isNotEmpty) streamIdFromUrl = parts.last;
              } catch (_) {
                // ignore
              }

              // Lookup by stream id then by name
              final epgId = (streamIdFromUrl != null
                      ? streamIdToEpgId[streamIdFromUrl]
                      : null) ??
                  streamIdToEpgId[name];

              if (epgId != null) {
                map['tvgId'] = epgId;
                mapped++;
              }
            }
            if (mapped > 0) {
              debugLog(
                  'ChannelProvider: Mapped $mapped channels to EPG IDs from Xtream API');
              _channelCache.clear();
              notifyListeners();
            }
          }
        }
      } catch (e) {
        debugLog(
            'ChannelProvider: Error probing Xtream live streams for EPG: $e');
      }

      // Merge with existing VOD counts (avoid duplicates in count)
      _moviesCount += xtreamMovies.length;
      _seriesCount += xtreamSeries.length;

      // Append to lazy-load cache files
      final dir = await getApplicationDocumentsDirectory();
      if (_moviesCachePath == null) {
        _moviesCachePath = '${dir.path}/movies_cache.json';
        _seriesCachePath = '${dir.path}/series_cache.json';
      }

      // Load existing, append new, save back
      final existingMovies = await getMovies(limit: 999999); // Get all
      final existingSeries = await getSeries(limit: 999999);
      final allMovies = [...existingMovies, ...xtreamMovies];
      final allSeries = [...existingSeries, ...xtreamSeries];
      await File(_moviesCachePath!)
          .writeAsString(json.encode(allMovies.map((m) => m.toMap()).toList()));
      await File(_seriesCachePath!)
          .writeAsString(json.encode(allSeries.map((s) => s.toMap()).toList()));

      // Sync only first batch to ContentProvider
      if (_contentProvider != null) {
        final firstMovies = await getMovies(limit: 100);
        final firstSeries = await getSeries(limit: 100);
        _contentProvider!.loadMovies(firstMovies);
        _contentProvider!.loadSeries(firstSeries);
        unawaited(_hydrateContentProviderFromCache());
      }

      _scheduleEpgRefresh(
          forceRefresh: (_epgService?.availableChannels.isEmpty ?? true));
    } catch (e) {
      debugLog('ChannelProvider: Error loading Xtream VOD: $e');
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
  List<Channel> filterByCategory(String category,
      {int offset = 0, int limit = 100}) {
    final result = <Channel>[];
    int skipped = 0;
    for (int i = 0; i < _channelMaps.length && result.length < limit; i++) {
      final channelCategory =
          (_channelMaps[i]['groupTitle'] as String?) ?? 'Uncategorized';
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
      final channelCategory =
          (_channelMaps[i]['groupTitle'] as String?) ?? 'Uncategorized';
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
      final channelCategory =
          (_channelMaps[i]['groupTitle'] as String?) ?? 'Uncategorized';
      if (channelCategory == category) {
        if (found == index) {
          return _getChannelAt(i);
        }
        found++;
      }
    }
    return null;
  }

  /// Compute EPG match stats asynchronously to avoid freezing the UI
  Future<Map<String, int>> computeEpgMatchStats(
    IncrementalEpgService epgService, {
    int? maxChannels,
  }) async {
    final total = _channelMaps.length;
    final cappedTotal =
        maxChannels != null && maxChannels > 0 && maxChannels < total
            ? maxChannels
            : total;

    if (cappedTotal == 0 || epgService.availableChannels.isEmpty) {
      return {'matched': 0, 'total': cappedTotal};
    }

    int matched = 0;
    for (int i = 0; i < cappedTotal; i++) {
      final map = _channelMaps[i];
      final channelId = (map['tvgId'] as String?) ??
          (map['id'] as String?) ??
          (map['url'] as String? ?? '');
      final name = (map['name'] as String?) ?? '';

      if (channelId.isNotEmpty &&
          epgService.hasEpgMatch(channelId, channelName: name)) {
        matched++;
      }

      // Yield periodically to keep UI responsive on large playlists
      if (i % 400 == 0) {
        await Future.delayed(Duration.zero);
      }
    }

    return {'matched': matched, 'total': cappedTotal};
  }

  /// Start background TMDB enrichment for movies and series
  /// Runs asynchronously without blocking UI
  Future<void> _startBackgroundEnrichment() async {
    if (_isEnriching || _contentProvider == null) return;

    _isEnriching = true;
    debugLog(
        'ChannelProvider: Starting background TMDB enrichment for $_moviesCount movies and $_seriesCount series');

    // Run in background without awaiting
    unawaited(Future.microtask(() async {
      try {
        // Load all movies and series for enrichment
        final allMovies = await getMovies(limit: 999999);
        final allSeries = await getSeries(limit: 999999);

        debugLog('ChannelProvider: Enriching ${allMovies.length} movies...');
        final enrichedMovies = await _enrichmentService.enrichContent(
          allMovies,
          onProgress: (current, total) {
            debugLog(
                'ChannelProvider: Movie enrichment progress: $current/$total');
          },
        );

        debugLog('ChannelProvider: Enriching ${allSeries.length} series...');
        final enrichedSeries = await _enrichmentService.enrichContent(
          allSeries,
          onProgress: (current, total) {
            debugLog(
                'ChannelProvider: Series enrichment progress: $current/$total');
          },
        );

        // Save enriched content back to cache files
        _vodHydrated = false;
        await _saveEnrichedContent(enrichedMovies, enrichedSeries);

        // Update ContentProvider with enriched data (first 100 for UI)
        if (_contentProvider != null) {
          _contentProvider!.loadMovies(enrichedMovies.take(100).toList());
          _contentProvider!.loadSeries(enrichedSeries.take(100).toList());
          unawaited(_hydrateContentProviderFromCache());
        }

        debugLog('ChannelProvider: Background TMDB enrichment completed');
      } catch (e) {
        debugLog('ChannelProvider: Error during background enrichment: $e');
      } finally {
        _isEnriching = false;
      }
    }));
  }

  /// Save enriched VOD content back to cache files
  Future<void> _saveEnrichedContent(
      List<Content> movies, List<Content> series) async {
    try {
      if (_moviesCachePath != null) {
        final moviesJson = json.encode(movies.map((m) => m.toMap()).toList());
        await File(_moviesCachePath!).writeAsString(moviesJson);
        debugLog(
            'ChannelProvider: Saved ${movies.length} enriched movies to cache');
      }

      if (_seriesCachePath != null) {
        final seriesJson = json.encode(series.map((s) => s.toMap()).toList());
        await File(_seriesCachePath!).writeAsString(seriesJson);
        debugLog(
            'ChannelProvider: Saved ${series.length} enriched series to cache');
      }
    } catch (e) {
      debugLog('ChannelProvider: Error saving enriched content: $e');
    }
  }
}

// Playlist parsing is handled via the centralized isolate helpers in
// `lib/providers/playlist_isolate.dart` which provide streaming, map-based
// parsing (`parsePlaylistInIsolate` and `parsePlaylistFromFile`). The
// older string-based helper that lived here was removed to avoid duplicate
// implementations and to ensure all callers use the streaming/isolate paths.
