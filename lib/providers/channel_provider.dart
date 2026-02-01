import 'dart:convert';
import '../providers/playlist_isolate.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:iptv_player/utils/startup_probe.dart';
import 'package:iptv_player/utils/performance_monitor.dart';
import 'package:iptv_player/utils/hash_utils.dart';
import '../models/channel.dart';
import 'package:iptv_player/models/saved_playlist.dart';
// M3U parsing is handled via `playlist_isolate.dart` (streaming/isolate helpers).
// Keep the local import commented out to avoid unused-import warnings while
// migration completes.
// import '../services/m3u_parser_service.dart';
import '../services/xtream_codes_service.dart';
import 'package:http/http.dart' as http;
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/smart_cache_service.dart';
import 'playlist_loader.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import '../utils/throttled_notifier.dart';

/// Isolate function to extract unique category names only (fast)
/// Preserves the order categories first appear in the playlist
List<String> _extractCategoriesInIsolate(List<String?> groupTitles) {
  final List<String> categories = [];
  final Set<String> seen = {};
  for (final title in groupTitles) {
    final trimmed = title?.trim() ?? '';
    final category = trimmed.isEmpty ? 'Uncategorized' : trimmed;
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

/// Isolate function to rebuild channel caches (expensive work off main thread)
/// Returns a map with 'indexById', 'indicesByGroup', 'lowerNames', 'lowerGroups'
Map<String, dynamic> _rebuildChannelCachesInIsolate(List<Map<String, dynamic>> channelMaps) {
  final Map<String, int> indexById = {};
  final Map<String, List<int>> indicesByGroup = {};
  final List<String> lowerNames = List<String>.filled(channelMaps.length, '');
  final List<String> lowerGroups = List<String>.filled(channelMaps.length, '');
  
  for (int i = 0; i < channelMaps.length; i++) {
    final map = channelMaps[i];
    final id = (map['id'] ?? '').toString();
    if (id.isNotEmpty) {
      indexById[id] = i;
    }
    final name = (map['name'] as String?) ?? '';
    final normalizedName = name.toLowerCase();
    lowerNames[i] = normalizedName;
    final rawGroup = (map['groupTitle'] ?? '').toString();
    final group = rawGroup.trim().toLowerCase();
    lowerGroups[i] = group;
    final groupKey = group.isNotEmpty ? group : 'uncategorized';
    (indicesByGroup[groupKey] ??= []).add(i);
  }
  
  return {
    'indexById': indexById,
    'indicesByGroup': indicesByGroup,
    'lowerNames': lowerNames,
    'lowerGroups': lowerGroups,
  };
}

List<int> _filterCategoryIndicesInIsolate(Map<String, dynamic> args) {
  final titles = args['titles'] as List<String?>? ?? const [];
  final category = args['category'] as String? ?? 'Uncategorized';
  final offset = args['offset'] as int? ?? 0;
  final limit = args['limit'] as int? ?? 0;
  final indices = <int>[];
  if (limit <= 0) return indices;
  int matched = 0;
  for (int i = 0; i < titles.length; i++) {
    final title = titles[i] ?? 'Uncategorized';
    if (title != category) continue;
    if (matched < offset) {
      matched++;
      continue;
    }
    indices.add(i);
    if (indices.length >= limit) break;
  }
  return indices;
}

List<int> _filterChannelIndicesInIsolate(Map<String, dynamic> args) {
  final titles = args['titles'] as List<String?>? ?? const [];
  final ids = args['ids'] as List<String?>? ?? const [];
  final hidden = args['hidden'] as List<bool>? ?? const [];
  final category = args['category'] as String?;
  final favoriteIds = (args['favoriteIds'] as List<dynamic>?)
          ?.map((e) => e.toString())
          .toSet() ??
      const <String>{};
  final excludeHidden = args['excludeHidden'] as bool? ?? true;
  final offset = args['offset'] as int? ?? 0;
  final limit = args['limit'] as int? ?? 0;
  final indices = <int>[];
  if (limit <= 0) return indices;
  int matched = 0;
  for (int i = 0; i < titles.length; i++) {
    if (excludeHidden && i < hidden.length && hidden[i]) {
      continue;
    }
    if (category != null) {
      final title = titles[i] ?? 'Uncategorized';
      if (title != category) continue;
    }
    if (favoriteIds.isNotEmpty) {
      final id = i < ids.length ? ids[i] : null;
      if (id == null || !favoriteIds.contains(id)) {
        continue;
      }
    }
    if (matched < offset) {
      matched++;
      continue;
    }
    indices.add(i);
    if (indices.length >= limit) break;
  }
  return indices;
}

/// Clear both SharedPreferences and file-based playlist cache
Future<void> clearPlaylistCache() async {
  final prefs = await SharedPreferences.getInstance();
  // Remove SharedPreferences cache
  await prefs.remove('cached_playlist');
  await prefs.remove('cache_timestamp');
  await prefs.remove('playlist_cache_version');
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
  // Remove JSON preview cache
  debugLog('ChannelProvider: Playlist cache cleared');
}

class ChannelProvider extends ChangeNotifier with ThrottledNotifier {
  static const String _playlistCacheFileName = 'playlist_cache.m3u';
  static const String _playlistCacheFilePathKey = 'cached_playlist_file';
  static const int _playlistCacheVersion = 3;
  static const String _epgMapSignaturePrefix = 'epg_map_signature_';
  static const String _epgMapCountPrefix = 'epg_map_count_';
  static const String _categoryCachePrefix = 'category_cache_';
  // Debug preview capture size (unused after refactor)

  // Store raw channel data as maps to avoid expensive conversion on main thread
  List<Map<String, dynamic>> _channelMaps = [];
  // Cache of converted Channel objects (populated on-demand)
  final Map<int, Channel> _channelCache = {};
  Map<String, int> _channelIndexById = {};
  Map<String, List<int>> _channelIndicesByGroup = {};
  List<String> _channelLowerNames = [];
  List<String> _channelLowerGroups = [];

  /// Lightweight sync cache rebuild for small playlists or when isolate not available
  void _rebuildChannelCachesSync() {
    _channelIndexById.clear();
    _channelIndicesByGroup.clear();
    _channelLowerNames = List<String>.filled(_channelMaps.length, '');
    _channelLowerGroups = List<String>.filled(_channelMaps.length, '');
    for (int i = 0; i < _channelMaps.length; i++) {
      final map = _channelMaps[i];
      final id = (map['id'] ?? '').toString();
      if (id.isNotEmpty) {
        _channelIndexById[id] = i;
      }
      final name = (map['name'] as String?) ?? '';
      _channelLowerNames[i] = name.toLowerCase();
      final rawGroup = (map['groupTitle'] ?? '').toString();
      final group = rawGroup.trim().toLowerCase();
      _channelLowerGroups[i] = group;
      final groupKey = group.isNotEmpty ? group : 'uncategorized';
      (_channelIndicesByGroup[groupKey] ??= []).add(i);
    }
  }

  /// Async cache rebuild that uses isolate for large playlists (>1000 channels)
  Future<void> _rebuildChannelCachesAsync() async {
    if (_channelMaps.length < 1000) {
      // Small playlist - do it synchronously (faster than isolate overhead)
      _rebuildChannelCachesSync();
      return;
    }
    
    final start = DateTime.now();
    try {
      final result = await compute(_rebuildChannelCachesInIsolate, _channelMaps);
      _channelIndexById = Map<String, int>.from(result['indexById'] as Map);
      _channelIndicesByGroup = (result['indicesByGroup'] as Map).map(
        (k, v) => MapEntry(k as String, List<int>.from(v as List)),
      );
      _channelLowerNames = List<String>.from(result['lowerNames'] as List);
      _channelLowerGroups = List<String>.from(result['lowerGroups'] as List);
      debugLog('ChannelProvider: Async cache rebuild took ${DateTime.now().difference(start).inMilliseconds}ms');
    } catch (e) {
      debugLog('ChannelProvider: Async cache rebuild failed, falling back to sync: $e');
      _rebuildChannelCachesSync();
    }
  }

  /// Compatibility wrapper - calls sync version (use _rebuildChannelCachesAsync for large playlists)
  void _rebuildChannelCaches() {
    _rebuildChannelCachesSync();
  }

  void _refreshSmartChannelCache({bool allowConversion = true}) {
    if (_channelMaps.isEmpty) return;
    unawaited(() async {
      try {
        final smartCache = SmartCacheService.instance;
        if (allowConversion && _channelMaps.length <= 5000) {
          final channels =
              _channelMaps.map((m) => Channel.fromMap(m)).toList();
          await smartCache.cacheChannelData(channels, overwriteDb: false);
        } else {
          final signature = _signatureFromChannelMaps(_channelMaps);
          await smartCache.markChannelCacheFresh(
            channelCount: _channelMaps.length,
            signature: signature,
          );
        }
      } catch (e) {
        debugLog('ChannelProvider: Smart cache refresh failed: $e');
      }
    }());
  }

  String _signatureFromChannelMaps(List<Map<String, dynamic>> maps) {
    if (maps.isEmpty) return 'empty';
    final sampleCount = math.min(4, maps.length);
    final buffer = StringBuffer()..write('count:${maps.length}');
    for (var i = 0; i < sampleCount; i++) {
      final m = maps[i];
      buffer
        ..write('|')
        ..write(m['id'] ?? '')
        ..write(':')
        ..write(m['name'] ?? '');
    }
    final last = maps.last;
    buffer
      ..write('|last:')
      ..write(last['id'] ?? '')
      ..write(':')
      ..write(last['name'] ?? '');
    return fnv1aHex(buffer.toString());
  }

  final List<Channel> _favoriteChannels = [];
  bool get isBackgroundSyncing => _isBackgroundSyncing;
  // bool get isLoading => _isLoading; // Already defined/handled? No, standard pattern is private field public getter.
  // But conflict was "The name 'isLoading' is already defined".
  // Original file had `bool _isLoading = false`.
  // I added `bool get isLoading => _isLoading`.
  // Wait, if I have `get isLoading` AND `_isLoading`, that's fine.
  // BUT the error says `The name 'isLoading' is already defined`.
  // Maybe I have `bool isLoading = false` somewhere?
  // Let's strip the getters I added and trust the file structure?
  // Or maybe I added them twice.
  // I'll revert to just the fields and check if getters exist elsewhere.
  // Actually, I'll delete the block I added and inspect.
  // The block I added was:
  // bool get isLoading => _isLoading;
  // bool get isBackgroundSyncing => _isBackgroundSyncing;
  // bool _isLoading = false;
  // bool _isBackgroundSyncing = false; 
  
  // I'll replace it with just the fields and ONE set of getters if needed.
  // PROBABLY just the fields for now.
  bool _isLoading = false;
  bool _isBackgroundSyncing = false;
  String? _errorMessage;
  IncrementalEpgService? _epgService; // Add IncrementalEpgService reference
  bool _hasLoadedPlaylist = false;
  String? _lastM3UContent; // Store last content for debugging
  bool _disposed = false; // Track if provider is disposed
  bool _isColdStartLoad = false;
  // Loading progress for UI feedback
  double _loadingProgress = 0.0;
  String _loadingStatus = '';
  String? _lastPlaylistUrl;
  String? _currentEpgMapSignature;
  String? _currentEpgMapSignatureKey;
  String? _currentEpgMapCountKey;
  String? _categoryCacheKey;
  bool _categoryCacheLoaded = false;
  bool _xtreamEpgMapLoaded = false;
  static const String _xtreamEpgMapFileName = 'xtream_epg_map.json';
  bool _dbReady = false;
  bool _dbDisabled = false;
  bool _autoLoadInProgress = false;
  bool _dbReadOnlyRecoveryInFlight = false;
  bool _dbClosedRecoveryInFlight = false;
  bool _noPlaylistConfigured = false;
  bool _xtreamLiveMetadataLoaded = false;
  String? _xtreamLiveMetadataKey;
  bool _epgRefreshPending = false;
  bool _epgAllowedChannelsFromDbInFlight = false;
  final LocalDbService _db = LocalDbService.instance;
  String? _extractStreamIdFromUrl(String url) {
    if (url.isEmpty) return null;
    try {
      final uri = Uri.parse(url);
      final segments =
          uri.pathSegments.where((segment) => segment.isNotEmpty).toList();
      if (segments.isEmpty) return null;
      var last = segments.last;
      final dotIndex = last.indexOf('.');
      if (dotIndex > 0) {
        last = last.substring(0, dotIndex);
      }
      return last.isNotEmpty ? last : null;
    } catch (_) {
      final clean = url.split('?').first;
      final parts = clean.split('/').where((p) => p.isNotEmpty).toList();
      if (parts.isEmpty) return null;
      var last = parts.last;
      final dotIndex = last.indexOf('.');
      if (dotIndex > 0) {
        last = last.substring(0, dotIndex);
      }
      return last.isNotEmpty ? last : null;
    }
  }

  // TMDB enrichment service for background genre enrichment
  final bool _isEnriching = false;
  bool get isEnriching => _isEnriching;
  List<Map<String, dynamic>> getChannelSampleMaps(int limit) {
    if (_channelMaps.isEmpty || limit <= 0) return const [];
    final count = limit.clamp(0, _channelMaps.length);
    return _channelMaps
        .take(count)
        .map((m) => Map<String, dynamic>.from(m))
        .toList();
  }

  List<Map<String, dynamic>> getChannelSampleMapsByStride(int limit) {
    if (_channelMaps.isEmpty || limit <= 0) return const [];
    final total = _channelMaps.length;
    final count = limit.clamp(1, total); // Ensure count >= 1 to prevent division by zero
    if (count <= 0) return const []; // Extra safety check
    final step = (total / count).ceil().clamp(1, total);
    final sampled = <Map<String, dynamic>>[];
    for (int i = 0; i < total && sampled.length < count; i += step) {
      sampled.add(Map<String, dynamic>.from(_channelMaps[i]));
    }
    if (sampled.isEmpty && _channelMaps.isNotEmpty) {
      sampled.add(Map<String, dynamic>.from(_channelMaps.first));
    }
    return sampled;
  }

  // Cached category list (lightweight - just strings)
  List<String>? _cachedCategories;
  List<String?>? _categoryTitleCache;
  List<String?>? _channelIdCache;
  List<bool>? _hiddenFlagCache;
  Completer<List<String>>? _categoriesCompleter;

  // Flag to track if categories are being computed
  bool _isGroupingChannels = false;
  bool get isGroupingChannels => _isGroupingChannels;
  bool get hasComputedCategories => _cachedCategories != null;

  Future<List<String>> forceRecomputeCategories() async {
    if (_isGroupingChannels) return _cachedCategories ?? const [];
    _invalidateCategoryCaches();
    return getAllCategoryNamesAsync();
  }

  // Playlist loader manages download+isolate parsing and supports cancellation
  PlaylistLoader _playlistLoader = PlaylistLoader();

  int? _asInt(dynamic value) {
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) return int.tryParse(value);
    return null;
  }

  String _playlistCountsKey(SharedPreferences prefs, String? playlistUrl) {
    final keySource = prefs.getString('active_playlist_id')?.trim();
    final keyBase = (keySource != null && keySource.isNotEmpty)
        ? keySource
        : (playlistUrl?.trim().isNotEmpty == true
            ? playlistUrl!.trim()
            : 'default');
    return 'playlist_counts_${Uri.encodeComponent(keyBase)}';
  }

  Future<String?> _ensureStablePlaylistIdentity(
    SharedPreferences prefs, {
    String? playlistUrl,
  }) async {
    final type = prefs.getString('playlist_type') ?? 'm3u';
    final normalizedType = type.trim().toLowerCase();
    String? server;
    String? username;
    String? url = playlistUrl;
    if (normalizedType == 'xtream') {
      server = prefs.getString('xtream_server');
      username = prefs.getString('xtream_username');
      url ??= server;
    } else {
      url ??= prefs.getString('m3u_url');
    }

    final stableId = stablePlaylistId(
      type: normalizedType,
      url: url,
      server: server,
      username: username,
    );

    final activeId = prefs.getString('active_playlist_id');
    if (activeId != stableId) {
      await prefs.setString('active_playlist_id', stableId);
    }

    await _migrateSavedPlaylistIds(
      prefs,
      normalizedType: normalizedType,
      url: url,
      server: server,
      username: username,
      stableId: stableId,
    );

    _epgService?.setPlaylistIdentity(stableId);
    return stableId;
  }

  Future<void> _migrateSavedPlaylistIds(
    SharedPreferences prefs, {
    required String normalizedType,
    required String? url,
    required String? server,
    required String? username,
    required String stableId,
  }) async {
    final playlistsJson = prefs.getString('saved_playlists');
    if (playlistsJson == null || playlistsJson.trim().isEmpty) return;
    final List<dynamic> decoded = jsonDecode(playlistsJson);
    final saved = decoded
        .map((j) => SavedPlaylist.fromJson(Map<String, dynamic>.from(j)))
        .toList();

    var updated = false;
    final next = <SavedPlaylist>[];
    for (final playlist in saved) {
      final type = playlist.type.trim().toLowerCase();
      final matches = type == normalizedType &&
          (type == 'xtream'
              ? (playlist.server ?? '').trim().toLowerCase() ==
                      (server ?? '').trim().toLowerCase() &&
                  (playlist.username ?? '').trim().toLowerCase() ==
                      (username ?? '').trim().toLowerCase()
              : playlist.url.trim().toLowerCase() ==
                  (url ?? '').trim().toLowerCase());
      if (matches && playlist.id != stableId) {
        next.add(SavedPlaylist(
          id: stableId,
          name: playlist.name,
          type: playlist.type,
          url: playlist.url,
          server: playlist.server,
          username: playlist.username,
          password: playlist.password,
          epgUrl: playlist.epgUrl,
          epgUrlSecondary: playlist.epgUrlSecondary,
          addedDate: playlist.addedDate,
        ));
        updated = true;
      } else {
        next.add(playlist);
      }
    }

    if (updated) {
      await prefs.setString(
        'saved_playlists',
        jsonEncode(next.map((p) => p.toJson()).toList()),
      );
    }
  }

  Future<void> _persistPlaylistCounts({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required int channelCount,
  }) async {
    try {
      final key = _playlistCountsKey(prefs, playlistUrl);
      final payload = json.encode({
        'channels': channelCount,
        'timestamp': DateTime.now().millisecondsSinceEpoch,
      });
      await prefs.setString(key, payload);
    } catch (e) {
      debugLog('ChannelProvider: Failed to persist playlist counts: $e');
    }
  }

  Map<String, int>? _loadPlaylistCounts({
    required SharedPreferences prefs,
    required String? playlistUrl,
  }) {
    try {
      final key = _playlistCountsKey(prefs, playlistUrl);
      final stored = prefs.getString(key);
      if (stored == null || stored.trim().isEmpty) return null;
      final decoded = json.decode(stored) as Map<String, dynamic>;
      final channels = _asInt(decoded['channels']) ?? 0;
      return {
        'channels': channels,
      };
    } catch (e) {
      debugLog('ChannelProvider: Failed to read playlist counts: $e');
      return null;
    }
  }

  Future<bool> _setWakeLock(bool enable) async {
    try {
      if (enable) {
        await WakelockPlus.enable();
      } else {
        await WakelockPlus.disable();
      }
      return true;
    } catch (e) {
      debugLog('ChannelProvider: Failed to set wakelock: $e');
      return false;
    }
  }

  Future<void> _ensureDb() async {
    if (_dbDisabled) return;
    try {
      await _db.init();
      _dbReady = true;
      // Prime count if DB already has data
      try {
        _channelCountDb = await _db.channelCount();
      } catch (_) {}
    } catch (e) {
      _dbReady = false;
      debugLog('ChannelProvider: DB init failed: $e');
    }
  }

  // Throttle notifyListeners for performance - max once per 100ms
  DateTime? _lastNotifyTime;
  bool _notifyPending = false;
  static const Duration _notifyThrottleInterval = Duration(milliseconds: 100);

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (_disposed) return;
    
    final now = DateTime.now();
    if (_lastNotifyTime != null && 
        now.difference(_lastNotifyTime!) < _notifyThrottleInterval) {
      // Schedule a delayed notification if not already pending
      if (!_notifyPending) {
        _notifyPending = true;
        Future.delayed(_notifyThrottleInterval, () {
          _notifyPending = false;
          if (!_disposed) {
            _lastNotifyTime = DateTime.now();
            super.notifyListeners();
          }
        });
      }
      return;
    }
    
    _lastNotifyTime = now;
    super.notifyListeners();
  }

  void _notifyListenersSafe() {
    if (_disposed) return;
    final phase = SchedulerBinding.instance.schedulerPhase;
    if (phase == SchedulerPhase.persistentCallbacks ||
        phase == SchedulerPhase.midFrameMicrotasks) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!_disposed) {
          notifyListeners(); // Use throttled version
        }
      });
      return;
    }
    notifyListeners(); // Use throttled version
  }

  bool _isReadOnlyDbError(Object error) {
    final message = error.toString().toLowerCase();
    return message.contains('read-only') ||
        message.contains('read only') ||
        message.contains('readonly');
  }

  void _recoverReadOnlyDb(Object error) {
    if (!_isReadOnlyDbError(error) || _dbReadOnlyRecoveryInFlight) {
      return;
    }
    _dbReadOnlyRecoveryInFlight = true;
    _dbReady = false;
    debugLog('ChannelProvider: Detected read-only DB, attempting recovery');
    unawaited(() async {
      final recovered = await _db.recoverFromReadOnly();
      if (recovered) {
        debugLog('ChannelProvider: Recovered read-only DB, rebuilding caches');
        _dbDisabled = false;
        _dbReady = true;
        _channelCountDb = 0;
        _invalidateCategoryCaches();
        _cachedCategories = null;
        if (_channelMaps.isNotEmpty) {
          unawaited(_deferredDbInsert());
          _updateEpgAllowedChannels();
          _scheduleEpgRefresh(forceRefresh: true);
        }
      } else {
        debugLog('ChannelProvider: Failed to recover DB, disabling for session');
        _dbDisabled = true;
        _dbReady = false;
      }
      _dbReadOnlyRecoveryInFlight = false;
    }());
  }

  bool _isClosedDbError(Object error) {
    final message = error.toString().toLowerCase();
    return message.contains('database_closed') ||
        message.contains('database closed') ||
        message.contains('not initialized');
  }

  void _recoverClosedDb(Object error) {
    if (!_isClosedDbError(error) || _dbClosedRecoveryInFlight) {
      return;
    }
    _dbClosedRecoveryInFlight = true;
    _dbReady = false;
    debugLog('ChannelProvider: Detected closed DB, attempting reopen');
    unawaited(() async {
      try {
        await _db.init();
        _dbDisabled = false;
        _dbReady = true;
        _channelCountDb = 0;
      } catch (e) {
        debugLog('ChannelProvider: DB reopen failed: $e');
        _dbReady = false;
        _dbDisabled = true;
      }
      _dbClosedRecoveryInFlight = false;
    }());
  }

  void _handleDbError(Object error) {
    _recoverReadOnlyDb(error);
    _recoverClosedDb(error);
  }

  void _updateEpgAllowedChannels() async {
    final service = _epgService;
    if (service == null) return;
    if (_channelMaps.isEmpty) {
      unawaited(_loadAllowedChannelsFromDb());
      return;
    }

    // Capture maps for thread safety
    final mapsSubset = _channelMaps.length > 50000 
        ? _channelMaps.sublist(0, 50000) 
        : List<Map<String, dynamic>>.from(_channelMaps);

    // Offload heavy string normalization to isolate
    try {
      final allowed = await compute(_buildAllowedSet, mapsSubset);
      debugLog('ChannelProvider: Allowed set size=${allowed.length}');
      service.setAllowedChannelIds(allowed, triggerRefresh: true);
    } catch (e) {
      debugLog('ChannelProvider: compute(_buildAllowedSet) failed: $e');
    }
  }

  static Set<String> _buildAllowedSet(List<Map<String, dynamic>> maps) {
    final allowed = <String>{};
    for (final map in maps) {
      final attrs = map['attributes'];
      final tvgIdRaw = (map['tvgId'] as String?) ??
          (attrs is Map ? (attrs['tvg-id'] as String?) : null) ??
          (map['tvg-id'] as String?) ??
          '';
      final tvgId = tvgIdRaw.trim();
      final id = (map['id'] as String?)?.trim() ?? '';
      final name = (map['name'] as String?)?.trim() ?? '';
      if (tvgId.isNotEmpty) {
        allowed.add(IncrementalEpgService.normalizeForAllowedId(tvgId));
      } else {
        if (id.isNotEmpty) {
          allowed.add(IncrementalEpgService.normalizeForAllowedId(id));
        }
        if (name.isNotEmpty) {
          allowed.add(IncrementalEpgService.normalizeForAllowedId(name));
        }
      }
    }
    return allowed;
  }

  Future<void> _loadAllowedChannelsFromDb() async {
    if (!_dbReady || _epgAllowedChannelsFromDbInFlight) return;
    _epgAllowedChannelsFromDbInFlight = true;
    try {
      final service = _epgService;
      if (service == null) return;
      final allowed = <String>{};
      const int pageSize = 1000;
      int offset = 0;
      while (true) {
        final rows = await _db.getChannelIdentifiersPage(
          offset: offset,
          limit: pageSize,
        );
        if (rows.isEmpty) break;
        for (final row in rows) {
          final tvgId = (row['tvgId'] as String?)?.trim() ?? '';
          final id = (row['id'] as String?)?.trim() ?? '';
          final name = (row['name'] as String?)?.trim() ?? '';
          if (tvgId.isNotEmpty) {
            allowed.add(IncrementalEpgService.normalizeForAllowedId(tvgId));
          } else {
            if (id.isNotEmpty) {
              allowed.add(IncrementalEpgService.normalizeForAllowedId(id));
            }
            if (name.isNotEmpty) {
              allowed.add(IncrementalEpgService.normalizeForAllowedId(name));
            }
          }
        }
        if (rows.length < pageSize) break;
        offset += pageSize;
      }
      if (allowed.isNotEmpty) {
        debugLog('ChannelProvider: Allowed set (DB) size=${allowed.length}');
        service.setAllowedChannelIds(allowed, triggerRefresh: true);
      }
    } catch (e) {
      debugLog(
          'ChannelProvider: Failed to load EPG allowed channels from DB: $e');
    } finally {
      _epgAllowedChannelsFromDbInFlight = false;
    }
  }

  Future<Map<String, Map<String, String>>> _loadXtreamEpgMap() async {
    if (_xtreamEpgMapLoaded) {
      return const {'byStreamId': {}, 'byName': {}};
    }
    _xtreamEpgMapLoaded = true;
    try {
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$_xtreamEpgMapFileName');
      if (!await file.exists()) return const {'byStreamId': {}, 'byName': {}};
      final jsonStr = await file.readAsString();
      if (jsonStr.trim().isEmpty) {
        return const {'byStreamId': {}, 'byName': {}};
      }
      final decoded = json.decode(jsonStr) as Map<String, dynamic>;
      final byStreamId =
          Map<String, String>.from((decoded['byStreamId'] as Map? ?? const {}));
      final byName =
          Map<String, String>.from((decoded['byName'] as Map? ?? const {}));
      return {'byStreamId': byStreamId, 'byName': byName};
    } catch (_) {
      return const {'byStreamId': {}, 'byName': {}};
    }
  }

  Future<void> _saveXtreamEpgMap(
      Map<String, String> byStreamId, Map<String, String> byName) async {
    try {
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$_xtreamEpgMapFileName');
      final payload = json.encode({
        'byStreamId': byStreamId,
        'byName': byName,
      });
      await file.writeAsString(payload);
    } catch (_) {}
  }

  Future<int> _applyXtreamEpgMapFromCache() async {
    if (_channelMaps.isEmpty) return 0;
    final maps = await _loadXtreamEpgMap();
    final byStreamId = maps['byStreamId'] ?? const {};
    final byName = maps['byName'] ?? const {};
    if (byStreamId.isEmpty && byName.isEmpty) return 0;

    var mapped = 0;
    for (int i = 0; i < _channelMaps.length; i++) {
      final map = _channelMaps[i];
      if ((map['tvgId'] as String?)?.isNotEmpty == true) continue;
      final url = (map['url'] as String?) ?? '';
      final name = (map['name'] as String?) ?? '';

      final streamIdFromUrl = _extractStreamIdFromUrl(url);
      final normalizedName = IncrementalEpgService.normalizeForFilter(name);

      final epgId =
          (streamIdFromUrl != null ? byStreamId[streamIdFromUrl] : null) ??
              (normalizedName.isNotEmpty ? byName[normalizedName] : null) ??
              byName[name];
      if (epgId != null) {
        map['tvgId'] = epgId;
        mapped++;
      }
    }
    if (mapped > 0) {
      _channelCache.clear();
      _updateEpgAllowedChannels();
      notifyListeners();
    }
    return mapped;
  }

  String _buildXtreamServerUrl(Uri uri) {
    final portSegment = (uri.hasPort && uri.port != 80 && uri.port != 443)
        ? ':${uri.port}'
        : '';
    return '${uri.scheme}://${uri.host}$portSegment';
  }

  Future<Map<String, String>?> _resolveXtreamCredentials(String m3uUrl) async {
    String? serverUrl;
    String? username;
    String? password;

    final uri = Uri.tryParse(m3uUrl);
    if (uri != null &&
        uri.scheme.isNotEmpty &&
        uri.host.isNotEmpty &&
        uri.queryParameters.isNotEmpty) {
      username = uri.queryParameters['username'];
      password = uri.queryParameters['password'];
      if (username != null && password != null) {
        serverUrl = _buildXtreamServerUrl(uri);
      }
    }

    if (serverUrl == null || username == null || password == null) {
      final prefs = await SharedPreferences.getInstance();
      final server = prefs.getString('xtream_server') ?? '';
      final storedUser = prefs.getString('xtream_username') ?? '';
      final storedPass = prefs.getString('xtream_password') ?? '';
      if (server.isEmpty || storedUser.isEmpty || storedPass.isEmpty) {
        return null;
      }
      try {
        final cleaned = server.trim();
        Uri baseUri = Uri.parse(cleaned);
        if (baseUri.scheme.isEmpty || baseUri.host.isEmpty) {
          baseUri = Uri.parse(
              'https://${cleaned.replaceAll(RegExp(r'^https?://'), '')}');
        }
        serverUrl = _buildXtreamServerUrl(baseUri);
        username ??= storedUser;
        password ??= storedPass;
      } catch (_) {
        return null;
      }
    }

    return {
      'serverUrl': serverUrl,
      'username': username,
      'password': password,
    };
  }

  Future<void> _primeXtreamLiveMetadata(String m3uUrl) async {
    final creds = await _resolveXtreamCredentials(m3uUrl);
    if (creds == null) return;

    final serverUrl = creds['serverUrl'];
    final username = creds['username'];
    final password = creds['password'];

    if (serverUrl == null || username == null || password == null) return;
    final metadataKey = '$serverUrl|$username';

    if (_xtreamLiveMetadataLoaded && _xtreamLiveMetadataKey == metadataKey) {
      return;
    }
    _xtreamLiveMetadataKey = metadataKey;

    try {
      // Canonical Xtream XMLTV endpoint using supplied credentials
      try {
        final epgUri = Uri.parse(serverUrl).replace(
          path: (Uri.parse(serverUrl).path.trim().isEmpty)
              ? 'xmltv.php'
              : '${Uri.parse(serverUrl).path.replaceAll(RegExp(r'^/'), '')}/xmltv.php',
          queryParameters: {
            'username': username.replaceAll(' ', ''),
            'password': password.replaceAll(' ', ''),
          },
        );
        final prefs = await SharedPreferences.getInstance();
        final previous = prefs.getString('epg_url');
        if (previous != epgUri.toString()) {
          await prefs.setString('epg_url', epgUri.toString());
          await prefs.setString('custom_epg_url', epgUri.toString());
          debugLog(
              'ChannelProvider: Saved Xtream EPG URL from playlist: ${epgUri.toString()}');
          _scheduleEpgRefresh(forceRefresh: true);
        }
      } catch (e) {
        debugLog('ChannelProvider: Failed to derive Xtream EPG URL: $e');
      }

      final xtreamService = XtreamCodesService(
        serverUrl: serverUrl,
        username: username,
        password: password,
      );

      if (_epgService != null) {
        _epgService!.setXtreamCredentials(
          serverUrl: serverUrl,
          username: username,
          password: password,
        );
      }

      // Probe Xtream live streams for EPG information (best-effort)
      final liveStreams = await xtreamService.getAllLiveStreams();
      if (liveStreams.isEmpty) return;

      debugLog(
          'ChannelProvider: Retrieved ${liveStreams.length} live streams from Xtream API for EPG probing');

      // Fast preview: populate a small channel list so UI can render immediately.
      if (_channelMaps.isEmpty) {
        final previewLimit = 200;
        final categoryNameById = <String, String>{};
        try {
          final cats = await xtreamService.getLiveCategories();
          for (final c in cats) {
            final id = (c['category_id'] ?? '').toString();
            final name = (c['category_name'] ?? '').toString();
            if (id.isNotEmpty) categoryNameById[id] = name;
          }
        } catch (_) {}

        final preview = <Map<String, dynamic>>[];
        for (final s in liveStreams.take(previewLimit)) {
          final streamId = (s['stream_id'] ?? '').toString();
          if (streamId.isEmpty) continue;
          final name = (s['name'] ?? '').toString();
          final categoryId = (s['category_id'] ?? '').toString();
          final groupTitle = categoryNameById[categoryId] ?? 'Live';
          final logoUrl = (s['stream_icon'] ?? '').toString();
          final epgId = (s['epg_channel_id'] ?? s['epg_id'])?.toString();

          final url =
              '${serverUrl.replaceAll(RegExp(r'/$'), '')}/live/$username/$password/$streamId.ts';
          preview.add({
            'id': streamId,
            'name': name.isNotEmpty ? name : streamId,
            'url': url,
            'logoUrl': logoUrl.isNotEmpty ? logoUrl : null,
            'groupTitle': groupTitle,
            'tvgId': epgId,
          });
        }
        if (preview.isNotEmpty) {
          _channelMaps = preview;
          _channelCache.clear();
          _rebuildChannelCaches();
          _channelCountDb = _channelMaps.length;
          _cachedCategories = null;
          _updateEpgAllowedChannels();
          notifyListeners();
        }
      }

      // Collect potential EPG URL candidates and per-stream EPG IDs
      final Set<String> epgUrls = {};
      final Map<String, String> streamIdToEpgId = {};
      final Map<String, String> nameToEpgId = {};
      final Map<String, CatchupInfo> catchupConfig = {};
      int maxCatchupHours = 0;

      for (final s in liveStreams) {
        final streamId = (s['stream_id'] ?? '').toString();
        final archiveFlag = s['tv_archive'];
        final archiveEnabled = archiveFlag == 1 ||
            archiveFlag == '1' ||
            archiveFlag == true ||
            archiveFlag == 'true';
        final durationDays = int.tryParse(
                (s['tv_archive_duration'] ?? s['archive_duration'] ?? '')
                    .toString()) ??
            0;
        if (archiveEnabled && streamId.isNotEmpty && durationDays > 0) {
          final durationHours = durationDays * 24;
          if (durationHours > maxCatchupHours) {
            maxCatchupHours = durationHours;
          }
          final candidates = <String>[
            (s['epg_channel_id'] ?? s['epg_id'] ?? '').toString(),
            (s['name'] ?? '').toString(),
            streamId,
          ];
          for (final candidate in candidates) {
            if (candidate.isEmpty) continue;
            final normalized =
                IncrementalEpgService.normalizeForFilter(candidate);
            if (normalized.isEmpty) continue;
            catchupConfig.putIfAbsent(
                normalized,
                () => CatchupInfo(
                    streamId: streamId, durationHours: durationHours));
          }
        }
        final epgCandidate =
            (s['epg'] ?? s['stream_epg'] ?? s['epg_channel_id'] ?? s['epg_url'])
                ?.toString();
        if (epgCandidate != null && epgCandidate.isNotEmpty) {
          if (epgCandidate.startsWith('http')) {
            epgUrls.add(epgCandidate);
          } else if (epgCandidate.startsWith('/') ||
              epgCandidate.contains('xmltv') ||
              epgCandidate.contains('.php')) {
            try {
              final resolved =
                  '${serverUrl.replaceAll(RegExp(r'/$'), '')}/${epgCandidate.replaceAll(RegExp(r'^/+'), '')}';
              epgUrls.add(resolved);
            } catch (_) {}
          } else {
            if (streamId.isNotEmpty) {
              streamIdToEpgId[streamId] = epgCandidate;
            }
          }
        }
        final epgId = (s['epg_channel_id'] ?? s['epg_id'])?.toString();
        if (epgId != null && epgId.isNotEmpty) {
          if (streamId.isNotEmpty) streamIdToEpgId[streamId] = epgId;
          final rawName = (s['name'] ?? '').toString();
          final normalizedName =
              IncrementalEpgService.normalizeForFilter(rawName);
          if (normalizedName.isNotEmpty) {
            nameToEpgId[normalizedName] = epgId;
          }
        }
      }

      if (catchupConfig.isNotEmpty && _epgService != null) {
        debugLog(
            'ChannelProvider: Catch-up enabled for ${catchupConfig.length} channels (max ${maxCatchupHours}h)');
        _epgService!.setCatchupConfig(catchupConfig, triggerRefresh: true);
      }

      final sharedPrefs = await SharedPreferences.getInstance();

      // If we found a URL candidate, probe it (short GET) and auto-save it.
      String? accepted;
      if (epgUrls.isNotEmpty) {
        final client = http.Client();
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
              final preview = <int>[];
              await for (final chunk in streamed.stream) {
                preview.addAll(chunk);
                if (preview.length >= 4096) break;
              }
              final textPreview =
                  utf8.decode(preview, allowMalformed: true).trimLeft();
              if (textPreview.startsWith('<?xml') ||
                  textPreview.startsWith('<tv') ||
                  streamed.headers['content-type']?.contains('xml') == true) {
                accepted = candidate;
                break;
              }
            }
          } catch (_) {}
        }
        client.close();
      }

      // If still not accepted, and we have Xtream credentials, try probing
      // same-host candidates with username/password appended.
      if (accepted == null && epgUrls.isNotEmpty) {
        try {
          if (username.isNotEmpty && password.isNotEmpty) {
            debugLog(
                'ChannelProvider: Attempting credentialed probes using Xtream creds');
            final baseUri = Uri.parse(serverUrl);
            final client = http.Client();
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
                      'username=${Uri.encodeComponent(username)}&password=${Uri.encodeComponent(password)}');
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
                    final textPreview =
                        utf8.decode(preview, allowMalformed: true).trimLeft();
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
            client.close();
          }
        } catch (e) {
          debugLog('ChannelProvider: Error during credentialed probes: $e');
        }
      }

      if (accepted != null) {
        debugLog(
            'ChannelProvider: Found EPG URL via Xtream API: $accepted (auto-saving)');
        await sharedPrefs.setString('custom_epg_url', accepted);
        try {
          await sharedPrefs.setString('epg_url', accepted);
        } catch (_) {}
        try {
          final enc = base64Url.encode(utf8.encode(m3uUrl));
          await sharedPrefs.setString('xtream_epg_url_$enc', accepted);
          await sharedPrefs.setString('xtream_epg_url_$serverUrl', accepted);
        } catch (_) {}
        try {
          await _epgService?.initialize(forceRefresh: true);
          debugLog(
              'ChannelProvider: EPG initialized after Xtream probe. Available: ${_epgService?.availableChannels.length}, Error: ${_epgService?.error}');
        } catch (e) {
          debugLog(
              'ChannelProvider: EPG initialization failed after Xtream probe: $e');
        }
      }

      // Map per-stream epg IDs into channel maps by matching stream id or name.
      if ((streamIdToEpgId.isNotEmpty || nameToEpgId.isNotEmpty) &&
          _channelMaps.isNotEmpty) {
        var mapped = 0;
        for (int i = 0; i < _channelMaps.length; i++) {
          final map = _channelMaps[i];
          final url = (map['url'] as String?) ?? '';
          final name = (map['name'] as String?) ?? '';

          final streamIdFromUrl = _extractStreamIdFromUrl(url);
          final normalizedName = IncrementalEpgService.normalizeForFilter(name);

          final epgId = (streamIdFromUrl != null
                  ? streamIdToEpgId[streamIdFromUrl]
                  : null) ??
              (normalizedName.isNotEmpty ? nameToEpgId[normalizedName] : null);

          if (epgId != null) {
            map['tvgId'] = epgId;
            mapped++;
          }
        }
        if (mapped > 0) {
          debugLog(
              'ChannelProvider: Mapped $mapped channels to EPG IDs from Xtream API');
          _channelCache.clear();
          _updateEpgAllowedChannels();
          notifyListeners();
          unawaited(_saveXtreamEpgMap(streamIdToEpgId, nameToEpgId));
          _scheduleEpgRefresh(forceRefresh: true);
          final service = _epgService;
          if (service != null &&
              (service.isLoading ||
                  service.isDownloading ||
                  service.isParsing)) {
            if (!_epgRefreshPending) {
              _epgRefreshPending = true;
              Future.delayed(const Duration(seconds: 3), () {
                _epgRefreshPending = false;
                if (_epgService != null) {
                  _epgService!.initialize(forceRefresh: false);
                }
              });
            }
          }
        }
      }
    } catch (e) {
      debugLog(
          'ChannelProvider: Error probing Xtream live streams for EPG: $e');
    } finally {
      _xtreamLiveMetadataLoaded = true;
    }
  }

  // Set the IncrementalEpgService reference for EPG loading
  void setEpgService(IncrementalEpgService service) {
    if (_epgService == service) return;
    _epgService = service;
    unawaited(() async {
      final prefs = await SharedPreferences.getInstance();
      await _ensureStablePlaylistIdentity(prefs);
    }());
    // Trigger EPG initialization when service is set
    if (_channelMaps.isNotEmpty) {
      _updateEpgAllowedChannels();
      _scheduleEpgRefresh(forceRefresh: false);
    }
  }

  void _scheduleEpgRefresh({bool forceRefresh = false}) {
    final service = _epgService;
    if (service == null) return;
    if (service.isLoading || service.isDownloading || service.isParsing) return;

    unawaited(service.initialize(forceRefresh: forceRefresh).catchError((e) {
      debugLog('ChannelProvider: EPG refresh failed: $e');
    }));
  }

  /// Build and persist channel->EPG mapping in the background (full scan)
  Future<void> _buildEpgMapping() async {
    if (_epgService == null) return;
    if (_channelMaps.isEmpty) return;
    if (await _tryReuseEpgMapping()) {
      return;
    }

    // Wait briefly for EPG availability
    for (int i = 0; i < 5; i++) {
      if (!_epgService!.isLoading &&
          !_epgService!.isParsing &&
          _epgService!.availableChannels.isNotEmpty) {
        break;
      }
      await Future.delayed(const Duration(seconds: 1));
    }
    if (_epgService!.availableChannels.isEmpty) {
      debugLog('ChannelProvider: Skipping EPG mapping - no EPG channels');
      return;
    }

    const int batchSize = 500;
    const int yieldEvery = 50; // Increased frequency to prevent UI jank
    final Map<String, String> batch = {};
    int totalChannels = 0;
    int channelsWithTvgId = 0;
    int idBasedMatches = 0;
    _epgService?.resetMatchDiagnostics();

    for (int i = 0; i < _channelMaps.length; i++) {
      final map = _channelMaps[i];
      totalChannels++;
      final tvgId = (map['tvgId'] as String?)?.trim() ?? '';
      final id = (map['id'] as String?)?.trim() ?? '';
      final url = (map['url'] as String?)?.trim() ?? '';
      final channelId = tvgId.isNotEmpty ? tvgId : (id.isNotEmpty ? id : url);
      final name = (map['name'] as String?) ?? '';
      if (channelId.isEmpty) continue;

      // Always provide the name as a fallback for fuzzy logic
      final channelNameForLookup = name.trim();
      if (tvgId.isNotEmpty) {
        channelsWithTvgId++;
      }

      final epgId = _epgService!.resolveEpgId(
        channelId,
        channelName: channelNameForLookup,
        cache: true,
        allowLoose: true,
      );
      if (epgId != null) {
        batch[channelId] = epgId;
        if (tvgId.isNotEmpty) {
          idBasedMatches++;
        }
      }

      if (_dbReady && batch.length >= batchSize) {
        try {
          await _db.upsertEpgMapping(Map<String, String>.from(batch));
          batch.clear();
        } catch (e) {
          debugLog('ChannelProvider: Failed to persist EPG mapping batch: $e');
          _handleDbError(e);
        }
        await Future.delayed(Duration.zero);
      }

      if (!_dbReady && i > 0 && i % yieldEvery == 0) {
        await Future.delayed(Duration.zero);
      }
    }

    if (_dbReady && batch.isNotEmpty) {
      try {
        await _db.upsertEpgMapping(batch);
      } catch (e) {
        debugLog(
            'ChannelProvider: Failed to persist final EPG mapping batch: $e');
        _handleDbError(e);
      }
    }

    debugLog('ChannelProvider: Completed EPG mapping build');
    debugLog(
        'ChannelProvider: EPG mapping stats - total=$totalChannels tvgId=$channelsWithTvgId idMatches=$idBasedMatches');
    _epgService?.logMatchDiagnostics();
    if (_dbReady) {
      try {
        await _epgService?.loadMappingsFromDb();
      } catch (e) {
        debugLog(
            'ChannelProvider: Failed to load mappings into EPG service: $e');
        _handleDbError(e);
      }
    }

    await _persistEpgMappingSignature();
  }

  Future<bool> _tryReuseEpgMapping() async {
    if (!_dbReady) return false;
    if (_currentEpgMapSignature == null || _currentEpgMapSignatureKey == null) {
      return false;
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      final stored = prefs.getString(_currentEpgMapSignatureKey!);
      if (stored == null || stored != _currentEpgMapSignature) {
        return false;
      }
      final count = await _db.mappingCount();
      if (count <= 0) return false;
      _currentEpgMapCountKey ??= _currentEpgMapSignatureKey!
          .replaceFirst(_epgMapSignaturePrefix, _epgMapCountPrefix);
      debugLog(
          'ChannelProvider: Reusing persisted EPG mapping ($count entries)');
      await _epgService?.loadMappingsFromDb();
      return true;
    } catch (e) {
      debugLog('ChannelProvider: Failed to reuse EPG mapping: $e');
      _handleDbError(e);
      return false;
    }
  }

  Future<void> _persistEpgMappingSignature() async {
    if (_currentEpgMapSignature == null ||
        _currentEpgMapSignatureKey == null ||
        !_dbReady) {
      return;
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      final count = await _db.mappingCount();
      _currentEpgMapCountKey ??= _currentEpgMapSignatureKey!
          .replaceFirst(_epgMapSignaturePrefix, _epgMapCountPrefix);
      await prefs.setString(
          _currentEpgMapSignatureKey!, _currentEpgMapSignature!);
      await prefs.setInt(_currentEpgMapCountKey!, count);
    } catch (e) {
      debugLog('ChannelProvider: Failed to persist EPG map signature: $e');
      _handleDbError(e);
    }
  }

  Future<void> _setCurrentEpgMapSignature({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required String? epgUrl,
    required int channelCount,
    String? channelsFile,
  }) async {
    await _ensureStablePlaylistIdentity(prefs, playlistUrl: playlistUrl);
    final keySource = prefs.getString('active_playlist_id')?.trim();
    final keyBase = (keySource != null && keySource.isNotEmpty)
        ? keySource
        : (playlistUrl?.trim().isNotEmpty == true
            ? playlistUrl!.trim()
            : 'default');
    final signatureKey =
        '$_epgMapSignaturePrefix${Uri.encodeComponent(keyBase)}';
    _currentEpgMapSignatureKey = signatureKey;
    _currentEpgMapCountKey =
        '$_epgMapCountPrefix${Uri.encodeComponent(keyBase)}';
    _categoryCacheKey = '$_categoryCachePrefix${Uri.encodeComponent(keyBase)}';
    _categoryCacheLoaded = false;
    _currentEpgMapSignature = await _computeEpgMapSignature(
      playlistUrl: playlistUrl,
      epgUrl: epgUrl,
      channelCount: channelCount,
      channelsFile: channelsFile,
    );
  }

  Future<void> _loadCachedCategoriesFromPrefs() async {
    if (_categoryCacheLoaded || _categoryCacheKey == null) return;
    _categoryCacheLoaded = true;
    try {
      final prefs = await SharedPreferences.getInstance();
      final cached = prefs.getStringList(_categoryCacheKey!);
      if (cached != null && cached.isNotEmpty) {
        _cachedCategories = _normalizeCategories(cached);
        _notifyListenersSafe();
      }
    } catch (e) {
      debugLog('ChannelProvider: Failed to load cached categories: $e');
    }
  }

  Future<void> _persistCachedCategories() async {
    if (_categoryCacheKey == null || _cachedCategories == null) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_categoryCacheKey!, _cachedCategories!);
    } catch (e) {
      debugLog('ChannelProvider: Failed to persist cached categories: $e');
    }
  }

  Future<String> _computeEpgMapSignature({
    required String? playlistUrl,
    required String? epgUrl,
    required int channelCount,
    String? channelsFile,
  }) async {
    final buffer = StringBuffer();
    buffer.write(playlistUrl?.trim() ?? '');
    buffer.write('|');
    buffer.write(epgUrl?.trim() ?? '');
    buffer.write('|');
    buffer.write(channelCount);
    if (channelsFile != null && channelsFile.isNotEmpty) {
      final file = File(channelsFile);
      if (await file.exists()) {
        try {
          final stat = await file.stat();
          buffer.write('|');
          buffer.write(stat.size);
          buffer.write('|');
          buffer.write(stat.modified.millisecondsSinceEpoch);
        } catch (_) {}
      }
    }
    return buffer.toString();
  }

  /// Public API to cancel any in-progress playlist load.
  void cancelPlaylistLoad() {
    try {
      _playlistLoader.cancelCurrent();
    } catch (_) {}
    _loadingStatus = 'Cancelled';
    _loadingProgress = 0.0;
    _isLoading = false;
    unawaited(_setWakeLock(false));
    notifyListeners();
  }

  // Watch count tracking (channelId -> count)
  Map<String, int> _watchCounts = {};

  /// Get channel count without converting all channels
  int get channelCount => _dbReady ? _channelCountDb : _channelMaps.length;
  int _channelCountDb = 0;
  Future<int> getChannelCountAsync() async {
    if (!_dbReady && !_dbDisabled) {
      try {
        await _ensureDb();
      } catch (_) {}
    }
    if (_dbReady) {
      try {
        final dbCount = await _db.channelCount();
        _channelCountDb = dbCount;
        if (_channelMaps.isNotEmpty && _channelCountDb < _channelMaps.length) {
          _channelCountDb = _channelMaps.length;
        }
        return _channelCountDb;
      } catch (e) {
        debugLog('ChannelProvider: DB channel count failed: $e');
        _handleDbError(e);
      }
    }
    return _channelMaps.length;
  }


  /// Quick check if there are any channels (no conversion needed)
  bool get hasChannels => _dbReady
      ? (_channelCountDb > 0 || _channelMaps.isNotEmpty)
      : _channelMaps.isNotEmpty;

  /// Public accessor for virtualized lists
  Channel getChannelAt(int index) => _getChannelAt(index);

  /// Async paged channels for UI (DB-backed when available)
  Future<List<Channel>> getChannelsPage(
      {int offset = 0, int limit = 50}) async {
    if (_dbReady) {
      try {
        final rows = await _db.getChannelsPage(offset: offset, limit: limit);
        if (rows.isNotEmpty) {
          return rows.map((m) => Channel.fromMap(m)).toList();
        }
        if (_channelMaps.isNotEmpty) {
          final slice = _channelMaps.skip(offset).take(limit).toList();
          return slice.map((m) => Channel.fromMap(m)).toList();
        }
        return const [];
      } catch (e) {
        debugLog('ChannelProvider: DB channel page failed: $e');
        _handleDbError(e);
      }
    }

    final slice = _channelMaps.skip(offset).take(limit).toList();
    return slice.map((m) => Channel.fromMap(m)).toList();
  }

  Future<Map<String, List<Channel>>> getGroupedChannelsAsync(
      {int categoryLimit = 15, int channelLimit = 30}) async {
    if (_dbReady) {
      try {
        final categories = await _db.getCategories(limit: categoryLimit);
        final result = <String, List<Channel>>{};
        for (final c in categories) {
          final rows = await _db.getChannelsForCategoryPage(
            c,
            offset: 0,
            limit: channelLimit,
          );
          result[c] = rows.map((m) => Channel.fromMap(m)).toList();
        }
        return result;
      } catch (e) {
        debugLog('ChannelProvider: DB grouped channels failed: $e');
        _handleDbError(e);
      }
    }

    // Fallback to existing in-memory method
    return getGroupedChannels();
  }

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

    final channel = _channelCache.putIfAbsent(index, () {
      return Channel.fromMap(_channelMaps[index]);
    });

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
    final lowerCategory = category.toLowerCase();
    final indices = _channelIndicesByGroup[lowerCategory] ?? const [];
    for (final i in indices) {
      if (result.length >= limit) break;
      result.add(_channelMaps[i]);
    }
    return result;
  }

  /// Find a channel by ID (lazy conversion)
  Channel? getChannelById(String id) {
    final index = _channelIndexById[id];
    if (index != null) {
      return _getChannelAt(index);
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
    final lowerCategory = category?.toLowerCase();
    Iterable<int> indices;

    if (lowerCategory != null) {
      final grouped = _channelIndicesByGroup[lowerCategory];
      if ((grouped == null || grouped.isEmpty) && _channelMaps.isNotEmpty) {
        return _scanCategoryFallback(
          category!,
          offset: 0,
          limit: limit,
        );
      }
      indices = grouped ?? const [];
    } else {
      indices = Iterable<int>.generate(_channelMaps.length);
    }

    for (final i in indices) {
      if (excludeHidden &&
          i < _channelMaps.length &&
          _channelMaps[i]['isHidden'] == true) {
        continue;
      }
      if (favoriteIds != null) {
        final channelId = _channelMaps[i]['id'] as String?;
        if (channelId == null || !favoriteIds.contains(channelId)) {
          continue;
        }
      }
      if (result.length >= limit) break;
      result.add(_getChannelAt(i));
    }
    return result;
  }

  Future<List<Channel>> getFilteredChannelsAsync({
    String? category,
    Set<String>? favoriteIds,
    bool excludeHidden = true,
    int limit = 500,
    int offset = 0,
  }) async {
    // Fallback to isolate filtering when DB not ready or favorites filtering
    if (!_dbReady || favoriteIds != null) {
      try {
        final indices = await compute(_filterChannelIndicesInIsolate, {
          'titles': _getCategoryTitleCache(),
          'ids': _getChannelIdCache(),
          'hidden': _getHiddenFlagCache(),
          'category': category,
          'favoriteIds': favoriteIds?.toList() ?? const [],
          'excludeHidden': excludeHidden,
          'limit': limit,
          'offset': offset,
        });
        if (indices.isEmpty) return const [];
        return indices.map(_getChannelAt).toList();
      } catch (e) {
        debugLog('ChannelProvider: compute(_filterChannelIndicesInIsolate) failed: $e');
        return const [];
      }
    }

    // Use category paging or general paging
    if (category != null) {
      return getChannelsForCategoryAsync(
        category,
        offset: offset,
        limit: limit,
      );
    }

    try {
      final rows = await _db.getChannelsPage(offset: offset, limit: limit);
      final result = <Channel>[];
      for (final m in rows) {
        if (excludeHidden && m['isHidden'] == true) continue;
        result.add(Channel.fromMap(m));
      }
      return result;
    } catch (e) {
      debugLog('ChannelProvider: DB filtered fetch failed: $e');
      return getFilteredChannels(
          category: category,
          favoriteIds: favoriteIds,
          excludeHidden: excludeHidden,
          limit: limit);
    }
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
  double get loadingProgress => _loadingProgress;
  String get loadingStatus => _loadingStatus;
  bool get isColdStartLoad => _isColdStartLoad;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get noPlaylistConfigured => _noPlaylistConfigured;
  bool get hasLoadedPlaylist => _hasLoadedPlaylist;
  String? get lastM3UContent => _lastM3UContent; // Expose for debugging
  bool get isDbReady => _dbReady;
  bool get isDbDisabled => _dbDisabled;
  bool get isDbReadOnlyRecoveryInFlight => _dbReadOnlyRecoveryInFlight;
  int get dbChannelCount => _channelCountDb;

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
    logToSystem('=== autoLoadPlaylist START ===', name: 'ChannelProvider');
    if (_hasLoadedPlaylist) return; // Already loaded
    if (_autoLoadInProgress || _isLoading) {
      debugLog('ChannelProvider: Auto-load already in progress, skipping');
      return;
    }
    // If we have no channels, treat this as a cold start load so we show the overlay status
    _isColdStartLoad = _channelMaps.isEmpty;
    _autoLoadInProgress = true;
    bool wakeLockEnabled = false;

    // Set loading immediately so UI shows loading state
    _isLoading = true;
    _noPlaylistConfigured = false;
    _loadingStatus = 'Checking local cache...';
    _loadingProgress = 0.05;
    notifyListenersThrottled();

    StartupProbe.mark('ChannelProvider.autoLoadPlaylist invoked');
    try {
      wakeLockEnabled = await _setWakeLock(true);
      await _loadWatchCounts();
      debugLog('ChannelProvider: Auto-loading playlist...');
      try {
        _loadingStatus = 'Opening local database...';
        _loadingProgress = 0.1;
        notifyListenersThrottled();
        // Increased timeout to 15s to handle large WAL files or slow storage
        await _ensureDb().timeout(const Duration(seconds: 15));
      } catch (e) {
        debugLog('ChannelProvider: DB init timeout or failure: $e');
        _dbReady = false;
      }
      final prefs = await SharedPreferences.getInstance();
      String? playlistType = prefs.getString('playlist_type');
      // If no legacy playlist type, fall back to saved playlists (active or first)
      if (playlistType == null) {
        final savedJson = prefs.getString('saved_playlists');
        if (savedJson != null && savedJson.trim().isNotEmpty) {
          try {
            final List<dynamic> decoded = await compute(jsonDecode, savedJson) as List<dynamic>;
            final saved = decoded
              .map(
                (j) => SavedPlaylist.fromJson(Map<String, dynamic>.from(j)))
              .toList();
            if (saved.isNotEmpty) {
              final activeId = prefs.getString('active_playlist_id');
              final chosen = saved.firstWhere((p) => p.id == activeId,
                  orElse: () => saved.first);
              playlistType = chosen.type;
              await prefs.setString('playlist_type', chosen.type);
              await prefs.setString('active_playlist_id', chosen.id);
              if (chosen.type == 'm3u') {
                await prefs.setString('m3u_url', chosen.url);
              } else {
                await prefs.setString('xtream_server', chosen.server ?? '');
                await prefs.setString('xtream_username', chosen.username ?? '');
                await prefs.setString('xtream_password', chosen.password ?? '');
              }
              if (chosen.epgUrl != null && chosen.epgUrl!.isNotEmpty) {
                await prefs.setString('epg_url', chosen.epgUrl!);
                await prefs.setString('custom_epg_url', chosen.epgUrl!);
              } else {
                await prefs.remove('custom_epg_url');
              }
              if (chosen.epgUrlSecondary != null &&
                  chosen.epgUrlSecondary!.isNotEmpty) {
                await prefs.setString(
                    'secondary_epg_url', chosen.epgUrlSecondary!);
              } else {
                await prefs.remove('secondary_epg_url');
              }
              final playlistKey = chosen.type == 'xtream'
                  ? (chosen.server ?? '')
                  : chosen.url;
              unawaited(
                _ensureStablePlaylistIdentity(
                  prefs,
                  playlistUrl: playlistKey,
                ),
              );
            }
          } catch (_) {
            // ignore malformed saved playlists
          }
        }
      }

      if (playlistType == null) {
        _isLoading = false;
        _noPlaylistConfigured = true;
        notifyListeners();
        StartupProbe.mark(
            'ChannelProvider.autoLoadPlaylist: no saved playlist');
        debugLog('ChannelProvider: No saved playlist found');
        if (_channelMaps.isNotEmpty) {
          _channelMaps = [];
          _channelCache.clear();
          _rebuildChannelCaches();
          _cachedCategories = null;
          notifyListeners();
        }
        // Ensure stale cache does not resurrect old playlists when none are saved
        await prefs.remove('cached_playlist');
        await prefs.remove('cache_timestamp');
        return; // No saved playlist
      }

      // Load from file-based cache (handles large playlists via streaming)
      final cacheVersion = prefs.getInt('playlist_cache_version') ?? 0;
      if (cacheVersion != _playlistCacheVersion) {
        debugLog(
            'ChannelProvider: Cache version changed ($cacheVersion -> $_playlistCacheVersion), clearing caches');
        await clearPlaylistCache();
      }
      final cacheTimestamp = prefs.getInt('cache_timestamp');
      final cacheFilePath = prefs.getString(_playlistCacheFilePathKey);
      final cacheAge = cacheTimestamp != null
          ? DateTime.now().millisecondsSinceEpoch - cacheTimestamp
          : null;
      final String? playlistUrlForCounts;
      if (playlistType == 'm3u') {
        playlistUrlForCounts = prefs.getString('m3u_url');
      } else if (playlistType == 'xtream') {
        playlistUrlForCounts = prefs.getString('xtream_server');
      } else {
        playlistUrlForCounts = null;
      }
      final storedCounts =
          _loadPlaylistCounts(prefs: prefs, playlistUrl: playlistUrlForCounts);
      int? expectedChannels;
      expectedChannels ??= storedCounts?['channels'];
      final cachedPlaylistUrl = playlistType == 'm3u'
          ? prefs.getString('m3u_url')
          : prefs.getString('xtream_server');
      final cachedEpgUrl =
          prefs.getString('custom_epg_url') ?? prefs.getString('epg_url');

      // First, try to load from SQLite DB (the fastest for large playlists)
      if (_dbReady) {
        bool skipDbLoad = false;
        int count = 0;
        try {
          _loadingStatus = 'Loading from database...';
          _loadingProgress = 0.15;
          notifyListeners();
          count = await _db.channelCount().timeout(const Duration(seconds: 4));
          if (expectedChannels != null && expectedChannels > 0) {
            final minExpected = (expectedChannels * 0.9).round();
            if (count > 0 && count < minExpected) {
              // skipDbLoad = true; // CHANGED: Allow partial loads for faster startup
              debugLog(
                  'ChannelProvider: DB cache incomplete ($count/$expectedChannels), but loading anyway to prevent placeholder');
            }
          }
        } catch (e) {
          skipDbLoad = true;
          debugLog('ChannelProvider: DB load timeout/failure: $e');
        }
        if (skipDbLoad) {
          _loadingStatus = 'Cache incomplete, reloading playlist...';
          _loadingProgress = 0.2;
          notifyListeners();
        }
        if (!skipDbLoad && count > 0) {
          logToSystem('Found $count channels in DB, loading first chunk...', name: 'ChannelProvider');
          final initialLimit = 1000;
          List<Map<String, dynamic>> channels = const [];
          try {
            channels = await _db
                .getChannelsPage(offset: 0, limit: initialLimit)
                .timeout(const Duration(seconds: 6));
            logToSystem('DB returned ${channels.length} channels', name: 'ChannelProvider');
          } catch (e) {
            logToSystem('DB initial page load timeout/failure: $e', name: 'ChannelProvider');
            channels = const [];
            skipDbLoad = true;
          }
          
          if (channels.isNotEmpty) {
            logToSystem('DB load successful, setting up channels...', name: 'ChannelProvider');
            _channelMaps = channels;
            _channelCountDb = count;
            _rebuildChannelCaches();

            await _setCurrentEpgMapSignature(
              prefs: prefs,
              playlistUrl: cachedPlaylistUrl,
              epgUrl: cachedEpgUrl,
              channelCount: count,
            );

            _invalidateCategoryCaches();

            // Compute categories before showing UI
            await _loadCachedCategoriesFromPrefs();
            try {
              if (_cachedCategories == null || _cachedCategories!.isEmpty) {
                logToSystem('Computing categories...', name: 'ChannelProvider');
                await _computeCategoriesAsync();
                logToSystem('Categories: ${_cachedCategories?.length ?? 0}', name: 'ChannelProvider');
              }
            } catch (e) {
              logToSystem('Category error: $e', name: 'ChannelProvider');
              _cachedCategories = [];
            }
            
            // If we have channels, show them and sync in background
            _isLoading = false;
            _hasLoadedPlaylist = true;
            _isColdStartLoad = false;
            notifyListeners();

            _updateEpgAllowedChannels();
            _scheduleEpgRefresh(forceRefresh: false); // Refresh EPG based on existing data
            
            unawaited(SmartCacheService.instance
                .markChannelCacheFresh(channelCount: count));
            StartupProbe.mark('ChannelProvider.autoLoadPlaylist: initial chunk loaded from DB');

            unawaited(() async {
              await _computeCategoriesAsync();
              notifyListeners();
            }());
            
            // Finish loading the rest of the DB if needed
            if (count > initialLimit) {
               // ... existing pagination loading ...
               unawaited(() async {
                 // ...
                 await Future.delayed(const Duration(milliseconds: 500));
                  final more = await _db.getChannelsPage(
                    offset: initialLimit, 
                    limit: count - initialLimit
                  );
                  _channelMaps.addAll(more);
                  _rebuildChannelCaches();
                  _invalidateCategoryCaches();
                  unawaited(_computeCategoriesAsync());
                  _updateEpgAllowedChannels();
                  _refreshSmartChannelCache();
                  notifyListeners();
               }());
            }
            
            // TRIGGER BACKGROUND SYNC to check for updates
            // pass full playlist details if available
            unawaited(_backgroundSync(prefs: prefs, url: cachedPlaylistUrl));
            
            return;
          } else {
            // DB query returned empty, strictly fall through
            logToSystem('DB query returned empty, falling through to M3U cache', name: 'ChannelProvider');
          }
        } else {
           // SkipDbLoad was true (shouldn't happen with our fix) or count was 0
           logToSystem('Skipping DB load (skipDbLoad=$skipDbLoad, count=$count)', name: 'ChannelProvider');
        }
      } else {
        logToSystem('DB not ready, falling through to M3U cache', name: 'ChannelProvider');
      }

      // Fallback: Try file-based M3U cache if present and fresh - use streaming parser
      if (cacheFilePath != null && cacheAge != null && cacheAge < 21600000) {
        try {
          final file = File(cacheFilePath);
          if (await file.exists()) {
            debugLog(
                'ChannelProvider: Loading from M3U file cache (streaming parser)...');
            _loadingStatus = 'Loading cached playlist...';
            _loadingProgress = 0.3;
            notifyListeners();
            final cacheLoadStart = DateTime.now();

            // Parse from file in isolate to avoid blocking main thread and OOM
            final parseStart = DateTime.now();
            final List<Map<String, dynamic>> allChannels = [];
            DateTime lastCacheUiUpdate = DateTime.now();
            final parsed = await parsePlaylistCancelable(
              filePath: cacheFilePath,
              onProgress: (count) {
                _loadingStatus = 'Parsing cached playlist: $count channels';
                _loadingProgress = 0.3 + (count / 20000).clamp(0.0, 0.6);
                final now = DateTime.now();
                if (now.difference(lastCacheUiUpdate).inMilliseconds > 500) {
                  lastCacheUiUpdate = now;
                  notifyListeners();
                }
              },
              onChannelsChunk: (chunk) => allChannels.addAll(chunk),
            );
            final parseDuration = DateTime.now().difference(parseStart);
            debugLog(
                'ChannelProvider: Cache isolate parsing took ${parseDuration.inMilliseconds}ms. Found ${allChannels.length} channels.');

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

            final mapStart = DateTime.now();
            _channelMaps = allChannels;
            _channelCache.clear();
            _rebuildChannelCaches();
            _channelCountDb = _channelMaps.length;
            _updateEpgAllowedChannels();
            await _setCurrentEpgMapSignature(
              prefs: prefs,
              playlistUrl: _lastPlaylistUrl,
              epgUrl: parsed['epgUrl'] as String?,
              channelCount:
                  parsed['channelCount'] as int? ?? _channelMaps.length,
              channelsFile: parsed['channelsFile'] as String?,
            );
            if (_dbReady) {
              _loadingStatus = 'Saving to database... don\'t close the app.';
              _loadingProgress = 0.6;
              notifyListeners();
              try {
                await _db.clearChannels();
                await _db.insertChannels(_channelMaps);
                debugLog(
                    'ChannelProvider: Persisted ${_channelMaps.length} channels to DB (cache load)');
              } catch (e) {
                debugLog(
                    'ChannelProvider: Failed to persist channels to DB: $e');
              }
            }

            final mapDuration = DateTime.now().difference(mapStart);
            debugLog(
                'ChannelProvider: Cache map conversion took ${mapDuration.inMilliseconds}ms');

            _invalidateCategoryCaches();
            unawaited(_computeCategoriesAsync());

            _isLoading = false;
            _hasLoadedPlaylist = true;
            _isColdStartLoad = false;
            notifyListeners();
            _refreshSmartChannelCache();
            final totalCacheLoad = DateTime.now().difference(cacheLoadStart);
            debugLog(
                'ChannelProvider: File cache loaded in ${totalCacheLoad.inMilliseconds}ms with ${_channelMaps.length} channels');
            StartupProbe.mark(
                'ChannelProvider.autoLoadPlaylist: file cache load finished');
            _scheduleEpgRefresh(forceRefresh: false);
            
            // Trigger background sync anyway to ensure freshness
            unawaited(_backgroundSync(prefs: prefs, url: cachedPlaylistUrl));
            return;
          }
        } catch (e) {
          debugLog(
              'ChannelProvider: File cache load failed: $e, loading from network');
          // Don't set isLoading=false yet, fall through to network
        }
        debugLog(
            'ChannelProvider: File cache expired or not found, loading from network');
      }

      debugLog('ChannelProvider: Playlist type: $playlistType');
      _noPlaylistConfigured = false;
      
      // If we are here, we have no DB data and no File cache. This is a true Cold Start.
      // We must block until we have something to show.
      
      // String? playlistUrl; // Unused
      // if (playlistType == 'm3u') {
      //   playlistUrl = prefs.getString('m3u_url');
      // } else if (playlistType == 'xtream') {
      //   playlistUrl = prefs.getString('xtream_server');
      //   // ... (URL construction logic moved to helper or kept inline if simple)
      // }
      
      // Re-use logic to resolve Xtream URL... for brevity, assuming we can extract the URL resolution 
      // or just keep the existing block but conceptually this is now "performInitialSync"
      // For minimal code change, we will let the existing logic flow but ensure isLoading stays true
      // until we have data.


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
          if (!_isColdStartLoad) {
            _isColdStartLoad = true;
            notifyListeners();
          }
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
    } catch (e) {
      debugLog('ChannelProvider: Auto-load playlist failed: $e');
      StartupProbe.mark('ChannelProvider.autoLoadPlaylist: failed ($e)');
      _isLoading = false;
      notifyListeners();
    } finally {
      if (wakeLockEnabled) {
        await _setWakeLock(false);
      }
      _autoLoadInProgress = false;
      // Ensure loading state is cleared if we exited abnormally without setting it
      if (_isLoading && !_hasLoadedPlaylist) { 
         _isLoading = false;
         notifyListeners();
      }
    }
  }

  // NOTE: Background cache refresh removed - file-based caching is now used exclusively
  // The cache is refreshed when the user loads a playlist from network

  /// Load channels from M3U URL
  Future<void> loadPlaylistFromUrl(String url) async {
    PerformanceMonitor.start('PLAYLIST_LOAD_TOTAL');
    PerformanceMonitor.trackMemoryUsage('Before playlist load');
    _lastPlaylistUrl = url;
    _noPlaylistConfigured = false;

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
  Future<void> _loadPlaylistFromUrlImpl(String url, {bool isBackground = false}) async {
    PerformanceMonitor.start('PLAYLIST_LOAD_TOTAL');

    if (!isBackground) {
      _isLoading = true;
      _isColdStartLoad = true;
      _errorMessage = null;
      _lastM3UContent = null; // Clear old content
      notifyListeners();
      _errorMessage = null;
      _lastM3UContent = null; // Clear old content
      notifyListeners();
    } else {
       _isBackgroundSyncing = true;
       notifyListeners(); // Notify so UI can show the indicator
       debugLog('ChannelProvider: Running background playlist update...');
    }

    try {
      await _setWakeLock(true);
      debugLog(
          'ChannelProvider: Loading playlist from URL: $url (using PlaylistLoader)');
      // Cancel any prior loader job
      _playlistLoader.cancelCurrent();
      _playlistLoader = PlaylistLoader();

      final List<Map<String, dynamic>> loadingTarget = isBackground ? [] : _channelMaps;
      
      if (!isBackground) {
        _loadingStatus = 'Starting download...';
        _loadingProgress = 0.0;
        notifyListeners();
        
        _channelMaps.clear();
        _channelCache.clear();
        _invalidateCategoryCaches();
        _channelCountDb = 0;
      }

      DateTime lastUiUpdate = DateTime.now();
      
      final parsed =
          await _playlistLoader.loadFromUrl(url, onProgress: (count) {
        if (!isBackground) {
          _loadingStatus = 'Parsing playlist: $count channels';
          _loadingProgress = 0.5 + (count / 20000).clamp(0.0, 0.45);
          // Progress updates also throttle
          final now = DateTime.now();
          if (now.difference(lastUiUpdate).inMilliseconds > 500) {
             lastUiUpdate = now;
             notifyListeners();
          }
        }
      }, onChannelsChunk: (chunk) {
        // Use a new list to avoid concurrent modification issues if UI is reading _channelMaps
        loadingTarget.addAll(chunk);
        
        // Critical: Update UI immediately if this is the first "page" of content
        // But do NOT set _isLoading=false yet, or the UI might think we are fully done!
        // We only start showing content, but keep the loading spinner/progress bar active if desired.
        // Actually, for "progressive loading", we want to switch to the main view but keep a small indicator.
        // For now, let's just notify.

        // Timer-based throttling for subsequent updates to prevent UI freezing
        // Updates at most twice per second
        final now = DateTime.now();
        final bool shouldUpdate = now.difference(lastUiUpdate).inMilliseconds > 500;
        
        if (loadingTarget.length >= 200 && (shouldUpdate || loadingTarget.length % 2000 == 0)) {
           // Invalidating caches ensures getAllCategoryNames() sees new groups from this chunk
           if (!isBackground) {
              _channelCountDb = loadingTarget.length;
              _invalidateCategoryCaches();
              lastUiUpdate = now;
              notifyListeners();
           } else {
             // For background, we don't update UI progressively to avoid jank/flash
             // We swill swap at the end.
           }
        }
        
        // NOTE: DB writes are now DEFERRED to after UI is shown for faster startup
        // See _deferredDbInsert() call after playlist load completes
      });

      var channelsFile = parsed['channelsFile'] as String?;

      if (channelsFile != null && channelsFile.isNotEmpty) {
        final staged = await _stageChannelsJsonl(channelsFile);
        if (staged != null && staged.isNotEmpty) {
          channelsFile = staged;
          parsed['channelsFile'] = staged;
        }
      }

      // Validate parsed result
      if ((channelsFile == null || channelsFile.isEmpty) &&
          (parsed['channels'] == null ||
              (parsed['channels'] as List).isEmpty)) {
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

      if (!isBackground) {
        _loadingStatus = 'Finishing up...';
        _loadingProgress = 0.8;
        notifyListeners();
      }

      // M3U channels are already loaded via onChannelsChunk
      // Just ensure DB is up to date and set the signature
      await _setCurrentEpgMapSignature(
        prefs: prefs,
        playlistUrl: url,
        epgUrl: epgUrl,
        channelCount: parsed['channelCount'] as int? ?? loadingTarget.length,
        channelsFile: channelsFile,
      );
      await _applyXtreamEpgMapFromCache();
      // _updateEpgAllowedChannels(); // MOVED: Must be called after _channelMaps is finalized (swapped)
      unawaited(_primeXtreamLiveMetadata(url));

      // Android Auto Cache: Skip if playlist is massive to avoid UI freezes.
      // Copying 50k+ items to an isolate or encoding them on the main thread is too expensive.
      if (loadingTarget.length < 15000) {
        try {
          final playlistJson = json.encode(loadingTarget);
          await prefs.setString('flutter.cached_playlist', playlistJson);
        } catch (_) {}
      } else {
        debugLog('ChannelProvider: Playlist too large for SharedPreferences cache (Android Auto), skipping string encode.');
      }

      _cachedCategories = null;
      unawaited(_computeCategoriesAsync());

      debugLog(
          'ChannelProvider: Parsed ${loadingTarget.length} channels (isolate)');

      // Use async cache rebuild for large playlists (runs in isolate)
      unawaited(_rebuildChannelCachesAsync());

      if (!isBackground) {
        _loadingStatus = 'Finalizing...';
        _loadingProgress = 0.95;
        notifyListeners();
      } else {
        // SWAP the list now that we are done!
        _channelMaps.clear();
        _channelMaps.addAll(loadingTarget);
        _channelCountDb = _channelMaps.length;
        _invalidateCategoryCaches();
        notifyListeners();
      }

      final dir = await getApplicationDocumentsDirectory();
      final now = DateTime.now().millisecondsSinceEpoch;
      final cacheFile = File('${dir.path}/$_playlistCacheFileName');
      // PlaylistLoader stores temp files internally; we just write cache metadata
      if (loadingTarget.isNotEmpty) {
        await prefs.setString(_playlistCacheFilePathKey, cacheFile.path);
        await prefs.setInt('cache_timestamp', now);
        await prefs.setInt('playlist_cache_version', _playlistCacheVersion);
      }

      if (!isBackground) {
        _loadingProgress = 1.0;
        _isLoading = false;
        _hasLoadedPlaylist = true;
        _isColdStartLoad = false;
      } else {
        _isBackgroundSyncing = false;
      }
      
      notifyListeners();
      
      // DEFERRED: Write all channels to DB in background AFTER UI is shown
      // This dramatically improves perceived startup time
      unawaited(_deferredDbInsert());
      
      // Update EPG allowed channels only now that _channelMaps is fully settled (swapped/populated)
      _updateEpgAllowedChannels();
      
      _refreshSmartChannelCache();

      PerformanceMonitor.end('PLAYLIST_LOAD_TOTAL');
      PerformanceMonitor.trackMemoryUsage('After playlist load');
      debugLog(
          'ChannelProvider: Loaded ${loadingTarget.length} channels, cache size: ${_channelCache.length}');

      _scheduleEpgRefresh(forceRefresh: false);
      unawaited(_buildEpgMapping());
      // Persist playlist entry for Manage Playlists
      unawaited(_upsertSavedPlaylist(sourceUrl: url, epgUrl: epgUrl));
      unawaited(_persistPlaylistCounts(
        prefs: prefs,
        playlistUrl: url,
        channelCount: loadingTarget.length,
      ));
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
        _errorMessage = e.toString();
        if (!isBackground) {
          _isLoading = false;
          _isColdStartLoad = false;
        } else {
          _isBackgroundSyncing = false;
        }
        notifyListeners();
        rethrow; // Re-throw so UI can handle it
      }
    } finally {
      await _setWakeLock(false);
    }
  }

  /// Background Sync: Updates channel list without blocking UI
  Future<void> _backgroundSync({required SharedPreferences prefs, required String? url}) async {
    if (url == null || url.isEmpty) return;
    debugLog('ChannelProvider: Starting background sync for $url');
    
    // Use a separate lock/flag to avoid conflicting with initial load?
    // reuse loadPlaylistFromUrl but we need to be careful about not resetting UI state
    // if _isLoading is false (which it is, since we showed DB data).
    
    // Ideally we want a "silent" load.
    // For now, let's call loadPlaylistFromUrl but modify it to handle "silent" updates?
    // Or just copy the logic.
    
    // A better approach for this strict architecture:
    // 1. Download to temp file
    // 2. Parse isolate
    // 3. Diff with DB (or just replace if simpler)
    // 4. Update DB
    // 5. Notify "Channels updated" (Toast/Snackbar) instead of full UI refresh?
    // For TiviMate style, we just refresh the list view.
    
    // Re-use _loadPlaylistFromUrlImpl but set a flag?
    // Let's create `_reloadPlaylistBackground(String url)`
    
    await _reloadPlaylistBackground(url);
  }

  Future<void> _reloadPlaylistBackground(String url) async {
    // Non-blocking update
    debugLog('ChannelProvider: _reloadPlaylistBackground started');
    try {
      // Use existing loader but don't set _isLoading = true if we already have content
      // We will rely on _hasLoadedPlaylist to keep UI showing content.
      
      // ... logic similar to _loadPlaylistFromUrlImpl but carefully ...
      
      // For now, to keep it safe, let's just do a standard load but suppress the loading overlay 
      // if we already have data. 
      // The current UI shows Skeleton if isLoading is true. 
      // We need to NOT set _isLoading = true if _hasLoadedPlaylist is true.
      
      await _loadPlaylistFromUrlImpl(url, isBackground: true);
      
    } catch (e) {
       debugLog('ChannelProvider: Background sync failed: $e');
    }
  }

  /// Load playlist using direct HttpClient with SSL bypass (fallback for handshake errors)
  Future<void> _loadPlaylistWithDirectClient(String url) async {
    _isLoading = true;
    _isColdStartLoad = true;
    _errorMessage = null;
    _noPlaylistConfigured = false;
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
      await _setWakeLock(true);
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
      final List<Map<String, dynamic>> allChannels = [];
      final parsed = await parsePlaylistCancelable(
        filePath: tempFile.path,
        onChannelsChunk: (chunk) => allChannels.addAll(chunk),
      );

      // Store raw maps - don't convert to Channel objects on main thread!
      _channelMaps = allChannels;
      _channelCache.clear();
      _rebuildChannelCaches();
      _channelCountDb = _channelMaps.length;
      _updateEpgAllowedChannels();
      unawaited(_primeXtreamLiveMetadata(url));
      if (_dbReady) {
        try {
          _loadingStatus = 'Saving to database... don\'t close the app.';
          _loadingProgress = 0.7;
          notifyListeners();
          await _db.clearChannels();
          await _db.insertChannels(_channelMaps);
          debugLog(
              'ChannelProvider: Persisted ${_channelMaps.length} channels to DB (direct client)');
        } catch (e) {
          debugLog('ChannelProvider: Failed to persist channels to DB: $e');
        }
      }

      _cachedCategories = null; // Clear cache when channels change
      // Trigger async category extraction in background (non-blocking)
      unawaited(_computeCategoriesAsync());

      debugLog(
          'ChannelProvider: Parsed ${_channelMaps.length} channels (direct client)');
      await _applyXtreamEpgMapFromCache();
      _updateEpgAllowedChannels();

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
        await prefs.setInt('playlist_cache_version', _playlistCacheVersion);
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

      _isLoading = false;
      _hasLoadedPlaylist = true;
      _isColdStartLoad = false;
      notifyListeners();
      _refreshSmartChannelCache();

      _scheduleEpgRefresh(forceRefresh: false);
      unawaited(_persistPlaylistCounts(
        prefs: prefs,
        playlistUrl: url,
        channelCount: _channelMaps.length,
      ));
    } catch (e, stackTrace) {
      debugLog('ChannelProvider: Error with direct client: $e');
      debugLog('ChannelProvider: Stack trace: $stackTrace');
      _errorMessage = e.toString();
      _isLoading = false;
      _isColdStartLoad = false;
      notifyListeners();
      _refreshSmartChannelCache();
      rethrow;
    } finally {
      await _setWakeLock(false);
      httpClient.close();
    }
  }

  /// Load channels from M3U content string without blocking the UI isolate
  Future<void> loadPlaylistFromString(String content) async {
    _isLoading = true;
    _isColdStartLoad = true;
    _errorMessage = null;
    _noPlaylistConfigured = false;
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
      _rebuildChannelCaches();
      _channelCountDb = _channelMaps.length;
      await _applyXtreamEpgMapFromCache();
      _updateEpgAllowedChannels();

      _cachedCategories = null; // Clear cache when channels change

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
      _isColdStartLoad = false;
      notifyListeners();

      _scheduleEpgRefresh(forceRefresh: false);
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
      if (_cachedCategories!.isNotEmpty || _channelMaps.isEmpty) {
        return _cachedCategories!;
      }
      _invalidateCategoryCaches();
    }
    if (_cachedCategories != null) {
      return _cachedCategories!;
    }
    if (!_categoryCacheLoaded) {
      unawaited(_loadCachedCategoriesFromPrefs());
    }
    if (_isGroupingChannels) {
      return [];
    }
    // Trigger async computation
    unawaited(_computeCategoriesAsync());
    return [];
  }

  /// Get channels for a specific category (on-demand, limited, lazy conversion)
  Future<List<Channel>> getChannelsForCategoryAsync(String category,
      {int offset = 0, int limit = 20}) async {
    if (_dbReady) {
      try {
        final rows = await _db.getChannelsForCategoryPage(category,
            offset: offset, limit: limit);
        if (rows.isNotEmpty) {
          return rows.map((m) => Channel.fromMap(m)).toList();
        }
        if (_channelMaps.isNotEmpty) {
          final byIndex = filterByCategory(
            category,
            offset: offset,
            limit: limit,
          );
          if (byIndex.isNotEmpty) {
            return byIndex;
          }
          return _scanCategoryFallback(
            category,
            offset: offset,
            limit: limit,
          );
        }
        return const [];
      } catch (e) {
        debugLog('ChannelProvider: DB category page failed: $e');
        _handleDbError(e);
      }
    }

    final titles = _getCategoryTitleCache();
    try {
      final indices = await compute(_filterCategoryIndicesInIsolate, {
        'titles': titles,
        'category': category,
        'offset': offset,
        'limit': limit,
      });
      if (indices.isNotEmpty) {
        return indices.map(_getChannelAt).toList();
      }
      if (_channelMaps.isNotEmpty) {
        return _scanCategoryFallback(
          category,
          offset: offset,
          limit: limit,
        );
      }
      return const [];
    } catch (e) {
      debugLog('ChannelProvider: compute(_filterCategoryIndicesInIsolate) failed: $e');
      if (_channelMaps.isNotEmpty) {
        return _scanCategoryFallback(
          category,
          offset: offset,
          limit: limit,
        );
      }
      return const [];
    }
  }

  Future<Map<String, List<Channel>>> getCategoryPreviewBatch(
    List<String> categories, {
    int limit = 20,
  }) async {
    if (categories.isEmpty) return {};
    if (_dbReady) {
      try {
        final rowsByCategory = await _db.getChannelsForCategoriesPage(
          categories,
          limit: limit,
        );
        final result = <String, List<Channel>>{};
        for (final category in categories) {
          final rows = rowsByCategory[category] ?? const [];
          result[category] = rows.map((m) => Channel.fromMap(m)).toList();
        }
        return result;
      } catch (e) {
        debugLog('ChannelProvider: DB category batch failed: $e');
        _handleDbError(e);
      }
    }

    final result = <String, List<Channel>>{};
    for (final category in categories) {
      result[category] = await getChannelsForCategoryAsync(
        category,
        limit: limit,
      );
    }
    return result;
  }

  /// Deferred DB insert - runs AFTER UI is shown for faster perceived startup
  /// Uses microtask scheduling to avoid blocking the main thread
  Future<void> _deferredDbInsert() async {
    // Retry DB init if it failed earlier (persistence is critical!)
    if (!_dbReady) {
      debugLog('ChannelProvider: _deferredDbInsert found DB not ready, retrying init...');
      await _ensureDb();
    }
    
    if (!_dbReady || _channelMaps.isEmpty) {
      debugLog('ChannelProvider: _deferredDbInsert skipped. Ready: $_dbReady, Channels: ${_channelMaps.length}');
      return;
    }
    
    final start = DateTime.now();
    debugLog('ChannelProvider: Starting deferred DB insert for ${_channelMaps.length} channels');
    final epgService = _epgService;
    epgService?.setExternalDbBusy(true);
    _db.beginBulkWrite();
    
    try {
      // Clear existing channels first
      await _db.clearChannels();
      
      // Insert all channels in one batch - happens entirely in background
      // The DB service uses a write queue so this won't block
      await _db.insertChannels(_channelMaps);
      
      final duration = DateTime.now().difference(start);
      debugLog('ChannelProvider: Deferred DB insert completed in ${duration.inMilliseconds}ms');
    } catch (e) {
      debugLog('ChannelProvider: Deferred DB insert failed: $e');
      _handleDbError(e);
    } finally {
      _db.endBulkWrite();
      epgService?.setExternalDbBusy(false);
    }
  }

  Future<String?> _stageChannelsJsonl(String source) async {
    final dir = await getApplicationDocumentsDirectory();
    final target = File('${dir.path}/channels_cache.jsonl');
    final sourceFile = File(source);
    if (!await sourceFile.exists()) return null;
    try {
      if (await target.exists()) {
        await target.delete();
      }
      await sourceFile.rename(target.path);
    } catch (_) {
      await sourceFile.copy(target.path);
      try {
        await sourceFile.delete();
      } catch (_) {}
    }
    return target.path;
  }

  Future<void> _upsertSavedPlaylist({
    required String sourceUrl,
    String? epgUrl,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final type = prefs.getString('playlist_type') ?? 'm3u';
      final existingJson = prefs.getString('saved_playlists');
      List<SavedPlaylist> list = [];
      if (existingJson != null && existingJson.trim().isNotEmpty) {
        try {
          final decoded = jsonDecode(existingJson) as List<dynamic>;
          list = decoded
              .map((j) => SavedPlaylist.fromJson(Map<String, dynamic>.from(j)))
              .toList();
        } catch (_) {}
      }

      String? name;
      String? server;
      String? username;
      String? password;
      String url = sourceUrl;

      if (type == 'xtream') {
        server = prefs.getString('xtream_server') ?? '';
        username = prefs.getString('xtream_username') ?? '';
        password = prefs.getString('xtream_password') ?? '';
        name = server.isNotEmpty
            ? (Uri.tryParse(server)?.host ?? server)
            : 'Xtream';
      } else {
        name = Uri.tryParse(sourceUrl)?.host ?? 'M3U Playlist';
      }

      final primaryEpg = epgUrl ??
          prefs.getString('custom_epg_url') ??
          prefs.getString('epg_url');
      final secondaryEpg = prefs.getString('secondary_epg_url');

      int existingIndex = -1;
      if (type == 'm3u') {
        existingIndex = list
            .indexWhere((p) => p.type == 'm3u' && p.url.trim() == url.trim());
      } else {
        existingIndex = list.indexWhere((p) =>
            p.type == 'xtream' &&
            (p.server ?? '').trim() == (server ?? '').trim() &&
            (p.username ?? '').trim() == (username ?? '').trim());
      }

      final now = DateTime.now();
      final stableId = stablePlaylistId(
        type: type,
        url: url,
        server: server,
        username: username,
      );
      final existingId =
          existingIndex >= 0 ? list[existingIndex].id : null;
      final id = (existingId != null && existingId.isNotEmpty)
          ? existingId
          : stableId;

      final normalized = SavedPlaylist(
        id: id,
        name: name,
        type: type,
        url: url,
        server: server,
        username: username,
        password: password,
        epgUrl: primaryEpg,
        epgUrlSecondary: secondaryEpg,
        addedDate: existingIndex >= 0 ? list[existingIndex].addedDate : now,
      );

      if (existingIndex >= 0) {
        list[existingIndex] = normalized.id == stableId
            ? normalized
            : SavedPlaylist(
                id: stableId,
                name: normalized.name,
                type: normalized.type,
                url: normalized.url,
                server: normalized.server,
                username: normalized.username,
                password: normalized.password,
                epgUrl: normalized.epgUrl,
                epgUrlSecondary: normalized.epgUrlSecondary,
                addedDate: normalized.addedDate,
              );
      } else {
        list.add(normalized.id == stableId
            ? normalized
            : SavedPlaylist(
                id: stableId,
                name: normalized.name,
                type: normalized.type,
                url: normalized.url,
                server: normalized.server,
                username: normalized.username,
                password: normalized.password,
                epgUrl: normalized.epgUrl,
                epgUrlSecondary: normalized.epgUrlSecondary,
                addedDate: normalized.addedDate,
              ));
      }

      await prefs.setString(
          'saved_playlists', jsonEncode(list.map((p) => p.toJson()).toList()));
      await prefs.setString('active_playlist_id', stableId);
      _epgService?.setPlaylistIdentity(stableId);
    } catch (e) {
      debugLog('ChannelProvider: Failed to upsert saved playlist: $e');
    }
  }

  /// Compute categories in isolate (lightweight - just strings)
  Future<void> _computeCategoriesAsync() async {
    if (_cachedCategories != null || _isGroupingChannels) return;
    _isGroupingChannels = true;
    _categoriesCompleter = Completer<List<String>>();
    // _notifyListenersSafe(); // Removed to prevent setState triggers during build
    final start = DateTime.now();

    try {
      if (_dbReady && _db.isReady) {
        final dbStart = DateTime.now();
        try {
          _cachedCategories = _normalizeCategories(await _db.getCategories());
          debugLog(
              'ChannelProvider: Category DB load took ${DateTime.now().difference(dbStart).inMilliseconds}ms');
        } catch (e) {
          debugLog('ChannelProvider: DB category load failed: $e, falling back to memory');
          _dbReady = false;
        }
        if ((_cachedCategories?.isEmpty ?? true) && _channelMaps.isNotEmpty) {
          final groupTitles = _getCategoryTitleCache();
          final isolateStart = DateTime.now();
          _cachedCategories = _normalizeCategories(
              await compute(_extractCategoriesInIsolate, groupTitles));
          debugLog(
              'ChannelProvider: Category isolate compute took ${DateTime.now().difference(isolateStart).inMilliseconds}ms');
        }
        debugLog(
            'ChannelProvider: Loaded ${_cachedCategories!.length} categories from DB');
      } else {
        // CRITICAL: Always fall back to in-memory computation if DB unavailable
        // This ensures categories load even if DB is closed
        final groupTitles = _getCategoryTitleCache();

        // Run category extraction in isolate
        final isolateStart = DateTime.now();
        _cachedCategories = _normalizeCategories(
            await compute(_extractCategoriesInIsolate, groupTitles));
        debugLog(
            'ChannelProvider: Category isolate compute took ${DateTime.now().difference(isolateStart).inMilliseconds}ms');

        debugLog(
            'ChannelProvider: Found ${_cachedCategories!.length} categories from ${_channelMaps.length} channels');
      }
    } catch (e) {
      debugLog('ChannelProvider: Error extracting categories: $e');
      _cachedCategories = [];
    }

    debugLog(
        'ChannelProvider: Category compute total ${DateTime.now().difference(start).inMilliseconds}ms');
    _isGroupingChannels = false;
    if (_categoriesCompleter != null && !_categoriesCompleter!.isCompleted) {
      _categoriesCompleter!.complete(_cachedCategories ?? []);
    }
    unawaited(_persistCachedCategories());
    _notifyListenersSafe();
  }

  List<String?> _getCategoryTitleCache() {
    if (_categoryTitleCache == null ||
        _categoryTitleCache!.length != _channelMaps.length) {
      _categoryTitleCache =
          _channelMaps.map((m) => m['groupTitle'] as String?).toList();
    }
    return _categoryTitleCache ?? const [];
  }

  List<String> _normalizeCategories(List<String> categories) {
    final normalized = <String>[];
    bool hasUncategorized = false;
    for (final raw in categories) {
      final trimmed = raw.trim();
      if (trimmed.isEmpty) {
        hasUncategorized = true;
        continue;
      }
      if (trimmed == 'Uncategorized') {
        hasUncategorized = true;
        continue;
      }
      normalized.add(trimmed);
    }
    if (hasUncategorized) {
      normalized.add('Uncategorized');
    }
    return normalized;
  }

  List<String?> _getChannelIdCache() {
    if (_channelIdCache == null ||
        _channelIdCache!.length != _channelMaps.length) {
      _channelIdCache = _channelMaps.map((m) => m['id'] as String?).toList();
    }
    return _channelIdCache ?? const [];
  }

  List<bool> _getHiddenFlagCache() {
    if (_hiddenFlagCache == null ||
        _hiddenFlagCache!.length != _channelMaps.length) {
      _hiddenFlagCache = _channelMaps
          .map((m) => m['isHidden'] == true)
          .toList(growable: false);
    }
    return _hiddenFlagCache ?? const [];
  }

  Future<List<String>> getAllCategoryNamesAsync() async {
    if (_cachedCategories != null) {
      if (_cachedCategories!.isNotEmpty || _channelMaps.isEmpty) {
        return _cachedCategories!;
      }
      _invalidateCategoryCaches();
    }
    if (!_categoryCacheLoaded) {
      await _loadCachedCategoriesFromPrefs();
      if (_cachedCategories != null && _cachedCategories!.isNotEmpty) {
        return _cachedCategories!;
      }
    }
    if (_categoriesCompleter != null) {
      return _categoriesCompleter!.future;
    }
    unawaited(_computeCategoriesAsync());
    if (_categoriesCompleter != null) {
      return _categoriesCompleter!.future;
    }
    return [];
  }

  void _invalidateCategoryCaches() {
    _cachedCategories = null;
    _categoryTitleCache = null;
    _channelIdCache = null;
    _hiddenFlagCache = null;
    _categoriesCompleter = null;
    _categoryCacheLoaded = false;
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
    final visibleCategories = categories.take(15).toList();
    for (final category in visibleCategories) {
      result[category] = [];
    }

    if (_channelMaps.isEmpty) return result;

    int filledCategories = 0;
    for (int i = 0; i < _channelMaps.length; i++) {
      final channelMap = _channelMaps[i];
      final channelCategory =
          (channelMap['groupTitle'] as String?) ?? 'Uncategorized';
      final bucket = result[channelCategory];
      if (bucket == null) continue;
      if (bucket.length >= 30) continue;
      bucket.add(_getChannelAt(i));
      if (bucket.length == 30) {
        filledCategories++;
        if (filledCategories >= visibleCategories.length) {
          break;
        }
      }
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

    if (_dbReady) {
      // Use async API for DB search; fallback to sync if needed
      debugLog(
          'ChannelProvider: searchChannels called while DB ready; consider using searchChannelsAsync');
    }

    final lowerQuery = query.toLowerCase();
    final result = <Channel>[];
    for (int i = 0; i < _channelMaps.length && result.length < limit; i++) {
      if (i < _channelLowerNames.length &&
          _channelLowerNames[i].contains(lowerQuery)) {
        result.add(_getChannelAt(i));
      }
    }
    return result;
  }

  Future<List<Channel>> searchChannelsAsync(String query,
      {int limit = 100}) async {
    if (query.isEmpty) return channels;
    if (_dbReady) {
      try {
        final rows = await _db.searchChannels(query, limit: limit);
        return rows.map((m) => Channel.fromMap(m)).toList();
      } catch (e) {
        debugLog('ChannelProvider: DB search failed: $e');
      }
    }
    return searchChannels(query, limit: limit);
  }

  /// Filter channels by category with pagination support
  List<Channel> filterByCategory(String category,
      {int offset = 0, int limit = 100}) {
    final result = <Channel>[];
    final lowerCategory = category.toLowerCase();
    final indices = _channelIndicesByGroup[lowerCategory] ?? const [];
    for (int i = offset; i < indices.length && result.length < limit; i++) {
      result.add(_getChannelAt(indices[i]));
    }
    return result;
  }

  /// Get count of channels in a category (no conversion needed)
  int getChannelCountForCategory(String category) {
    final lowerCategory = category.toLowerCase();
    final cached = _channelIndicesByGroup[lowerCategory];
    if (cached != null) return cached.length;
    if (_channelMaps.isNotEmpty) {
      return _scanCategoryCountFallback(category);
    }
    return 0;
  }

  /// Get a channel at a specific index within a category (for lazy loading)
  Channel? getChannelInCategoryAtIndex(String category, int index) {
    final lowerCategory = category.toLowerCase();
    final indices = _channelIndicesByGroup[lowerCategory];
    if (indices == null ||
        index < 0 ||
        index >= indices.length ||
        indices[index] < 0 ||
        indices[index] >= _channelMaps.length) {
      if (_channelMaps.isNotEmpty) {
        return _scanChannelInCategoryAtIndexFallback(category, index);
      }
      return null;
    }
    return _getChannelAt(indices[index]);
  }

  List<Channel> _scanCategoryFallback(
    String category, {
    int offset = 0,
    int limit = 20,
  }) {
    if (limit <= 0 || _channelMaps.isEmpty) return const [];
    final target = category.trim().isEmpty ? 'uncategorized' : category.trim();
    final targetLower = target.toLowerCase();
    final result = <Channel>[];
    int matched = 0;
    for (int i = 0; i < _channelMaps.length; i++) {
      final map = _channelMaps[i];
      if (map['isHidden'] == true) continue;
      final rawGroup = (map['groupTitle'] ?? '').toString().trim();
      final group = rawGroup.isEmpty ? 'uncategorized' : rawGroup;
      if (group.toLowerCase() != targetLower) continue;
      if (matched < offset) {
        matched++;
        continue;
      }
      result.add(_getChannelAt(i));
      matched++;
      if (result.length >= limit) break;
    }
    return result;
  }

  int _scanCategoryCountFallback(String category) {
    if (_channelMaps.isEmpty) return 0;
    final target = category.trim().isEmpty ? 'uncategorized' : category.trim();
    final targetLower = target.toLowerCase();
    var count = 0;
    for (final map in _channelMaps) {
      if (map['isHidden'] == true) continue;
      final rawGroup = (map['groupTitle'] ?? '').toString().trim();
      final group = rawGroup.isEmpty ? 'uncategorized' : rawGroup;
      if (group.toLowerCase() == targetLower) {
        count++;
      }
    }
    return count;
  }

  Channel? _scanChannelInCategoryAtIndexFallback(
    String category,
    int index,
  ) {
    if (_channelMaps.isEmpty || index < 0) return null;
    final target = category.trim().isEmpty ? 'uncategorized' : category.trim();
    final targetLower = target.toLowerCase();
    var matched = 0;
    for (int i = 0; i < _channelMaps.length; i++) {
      final map = _channelMaps[i];
      if (map['isHidden'] == true) continue;
      final rawGroup = (map['groupTitle'] ?? '').toString().trim();
      final group = rawGroup.isEmpty ? 'uncategorized' : rawGroup;
      if (group.toLowerCase() != targetLower) continue;
      if (matched == index) {
        return _getChannelAt(i);
      }
      matched++;
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
      return {'matched': 0, 'scanned': cappedTotal, 'total': total};
    }

    int matched = 0;
    for (int i = 0; i < cappedTotal; i++) {
      final map = _channelMaps[i];
      final tvgId = (map['tvgId'] as String?)?.trim() ?? '';
      final id = (map['id'] as String?)?.trim() ?? '';
      final url = (map['url'] as String?)?.trim() ?? '';
      final channelId = tvgId.isNotEmpty ? tvgId : (id.isNotEmpty ? id : url);
      final name = (map['name'] as String?) ?? '';
      // Always provide the name as a fallback for fuzzy logic
      final channelNameForLookup = name.trim();

      if (channelId.isNotEmpty &&
          epgService.hasEpgMatch(channelId, channelName: channelNameForLookup)) {
        matched++;
      }

      // Yield periodically to keep UI responsive on large playlists
      if (i % 400 == 0) {
        await Future.delayed(Duration.zero);
      }
    }

    return {'matched': matched, 'scanned': cappedTotal, 'total': total};
  }

}
