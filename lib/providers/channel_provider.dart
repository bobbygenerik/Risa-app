import 'dart:convert';
import '../providers/playlist_isolate.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:iptv_player/utils/startup_probe.dart';
import 'package:iptv_player/utils/performance_monitor.dart';
import '../models/channel.dart';
import '../models/content.dart';
import 'package:iptv_player/models/saved_playlist.dart';
// M3U parsing is handled via `playlist_isolate.dart` (streaming/isolate helpers).
// Keep the local import commented out to avoid unused-import warnings while
// migration completes.
// import '../services/m3u_parser_service.dart';
import '../services/xtream_codes_service.dart';
import 'package:http/http.dart' as http;
import 'content_provider.dart';
import '../services/tmdb_enrichment_service.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
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
  final dir = await getApplicationDocumentsDirectory();
  final jsonCacheFile = File('${dir.path}/parsed_playlist_cache.json');
  if (await jsonCacheFile.exists()) {
    await jsonCacheFile.delete();
  }
  debugLog('ChannelProvider: Playlist cache cleared');
}

class ChannelProvider with ChangeNotifier {
  static const String _playlistCacheFileName = 'playlist_cache.m3u';
  static const String _playlistCacheFilePathKey = 'cached_playlist_file';
  static const int _playlistCacheVersion = 3;
  static const String _epgMapSignaturePrefix = 'epg_map_signature_';
  static const String _epgMapCountPrefix = 'epg_map_count_';
  static const int _vodInitialPageSize = 500;
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
  String? _moviesJsonlPath;
  String? _seriesJsonlPath;
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
  final bool _vodLazyStartup = true;
  bool _vodLoadRequested = false;
  bool _vodLoading = false;
  String? _lastPlaylistUrl;
  String? _currentEpgMapSignature;
  String? _currentEpgMapSignatureKey;
  String? _currentEpgMapCountKey;
  bool _hydratingVod = false;
  bool _xtreamEpgMapLoaded = false;
  static const String _xtreamEpgMapFileName = 'xtream_epg_map.json';
  bool _dbReady = false;
  bool _dbDisabled = false;
  bool _autoLoadInProgress = false;
  bool _dbReadOnlyRecoveryInFlight = false;
  bool _xtreamLiveMetadataLoaded = false;
  String? _xtreamLiveMetadataKey;
  bool _epgRefreshPending = false;
  String? _channelsJsonlPath;
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
  final TMDBEnrichmentService _enrichmentService = TMDBEnrichmentService();
  bool _isEnriching = false;
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
    final count = limit.clamp(0, total);
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

  // Playlist loader manages download+isolate parsing and supports cancellation
  PlaylistLoader _playlistLoader = PlaylistLoader();

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

  void _notifyListenersSafe() {
    if (_disposed) return;
    final phase = SchedulerBinding.instance.schedulerPhase;
    if (phase == SchedulerPhase.persistentCallbacks ||
        phase == SchedulerPhase.midFrameMicrotasks) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!_disposed) {
          super.notifyListeners();
        }
      });
      return;
    }
    super.notifyListeners();
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
    debugLog('ChannelProvider: Detected read-only DB, disabling DB for session');
    unawaited(() async {
      _dbDisabled = true;
      _dbReady = false;
      _dbReadOnlyRecoveryInFlight = false;
    }());
  }

  // Set the ContentProvider reference for VOD sync
  void setContentProvider(ContentProvider provider) {
    _contentProvider = provider;
  }

  void _updateEpgAllowedChannels() {
    final service = _epgService;
    if (service == null) return;
    if (_channelMaps.isEmpty) {
      unawaited(_loadAllowedChannelsFromDb());
      return;
    }
    final allowed = <String>{};
    for (final map in _channelMaps) {
      final tvgId = (map['tvgId'] as String?) ?? '';
      final id = (map['id'] as String?) ?? '';
      final name = (map['name'] as String?) ?? '';
      if (tvgId.isNotEmpty) {
        allowed.add(IncrementalEpgService.normalizeForFilter(tvgId));
      }
      if (id.isNotEmpty) {
        allowed.add(IncrementalEpgService.normalizeForFilter(id));
      }
      if (name.isNotEmpty) {
        allowed.add(IncrementalEpgService.normalizeForFilter(name));
      }
    }
    service.setAllowedChannelIds(allowed, triggerRefresh: true);
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
          final tvgId = (row['tvgId'] as String?) ?? '';
          final id = (row['id'] as String?) ?? '';
          final name = (row['name'] as String?) ?? '';
          if (tvgId.isNotEmpty) {
            allowed.add(IncrementalEpgService.normalizeForFilter(tvgId));
          }
          if (id.isNotEmpty) {
            allowed.add(IncrementalEpgService.normalizeForFilter(id));
          }
          if (name.isNotEmpty) {
            allowed.add(IncrementalEpgService.normalizeForFilter(name));
          }
        }
        if (rows.length < pageSize) break;
        offset += pageSize;
      }
      if (allowed.isNotEmpty) {
        service.setAllowedChannelIds(allowed, triggerRefresh: true);
      }
    } catch (e) {
      debugLog('ChannelProvider: Failed to load EPG allowed channels from DB: $e');
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
      final byStreamId = Map<String, String>.from(
          (decoded['byStreamId'] as Map? ?? const {}));
      final byName = Map<String, String>.from(
          (decoded['byName'] as Map? ?? const {}));
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
      final normalizedName =
          IncrementalEpgService.normalizeForFilter(name);

      final epgId = (streamIdFromUrl != null
              ? byStreamId[streamIdFromUrl]
              : null) ??
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
    final portSegment =
        (uri.hasPort && uri.port != 80 && uri.port != 443) ? ':${uri.port}' : '';
    return '${uri.scheme}://${uri.host}$portSegment';
  }

  Future<Map<String, String>?> _resolveXtreamCredentials(
      String m3uUrl) async {
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

    final serverUrl = creds['serverUrl']!;
    final username = creds['username']!;
    final password = creds['password']!;
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
          final groupTitle =
              categoryNameById[categoryId] ?? 'Live';
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
        final epgCandidate = (s['epg'] ??
                s['stream_epg'] ??
                s['epg_channel_id'] ??
                s['epg_url'])
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

      final prefs = await SharedPreferences.getInstance();

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
        await prefs.setString('custom_epg_url', accepted);
        try {
          await prefs.setString('epg_url', accepted);
        } catch (_) {}
        try {
          final enc = base64Url.encode(utf8.encode(m3uUrl));
          await prefs.setString('xtream_epg_url_$enc', accepted);
          await prefs.setString('xtream_epg_url_$serverUrl', accepted);
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
          final normalizedName =
              IncrementalEpgService.normalizeForFilter(name);

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
              (service.isLoading || service.isDownloading || service.isParsing)) {
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

  Future<void> ensureVodLoaded({bool force = false}) async {
    if (_vodLoading) return;
    final contentProvider = _contentProvider;
    final hasContent = contentProvider != null &&
        (contentProvider.movies.isNotEmpty || contentProvider.series.isNotEmpty);
    final hasCache = _moviesCachePath != null ||
        _seriesCachePath != null ||
        _moviesJsonlPath != null ||
        _seriesJsonlPath != null;
    final url = _lastPlaylistUrl;

    if (_vodLoadRequested && !force) {
      if (!hasContent && contentProvider != null) {
        contentProvider.setLoading(true);
        unawaited(_hydrateContentProviderFromCache(
            maxItems: _vodInitialPageSize));
      }
      if (hasContent || hasCache || _vodHydrated) {
        return;
      }
      if (url == null || url.isEmpty) {
        if (contentProvider != null) {
          contentProvider.setLoading(false);
        }
        return;
      }
    } else {
      _vodLoadRequested = true;

      if (contentProvider != null) {
        if (!hasContent) {
          contentProvider.setLoading(true);
        }
        unawaited(_hydrateContentProviderFromCache(
            maxItems: _vodInitialPageSize));
      }
      if (hasCache || _vodHydrated) {
        if (contentProvider != null && hasContent) {
          contentProvider.setLoading(false);
        }
        return;
      }
      if (url == null || url.isEmpty) {
        if (contentProvider != null) {
          contentProvider.setLoading(false);
        }
        return;
      }
    }

    _vodLoading = true;
    try {
      await _loadXtreamVOD(url);
    } finally {
      _vodLoading = false;
      if (contentProvider != null) {
        contentProvider.setLoading(false);
      }
    }
  }

  // Set the IncrementalEpgService reference for EPG loading
  void setEpgService(IncrementalEpgService service) {
    if (_epgService == service) return;
    _epgService = service;
  }

  void _scheduleEpgRefresh({bool forceRefresh = false}) {
    final service = _epgService;
    if (service == null) return;
    if (service.isLoading || service.isDownloading || service.isParsing) return;

    unawaited(service.initialize(forceRefresh: forceRefresh).catchError((e) {
      debugLog('ChannelProvider: EPG refresh failed: $e');
    }));
  }

  Future<void> _hydrateContentProviderFromCache({int maxItems = 4000}) async {
    if (_contentProvider == null || _vodHydrated || _hydratingVod) return;
    if (!_dbReady &&
        _moviesCachePath == null &&
        _seriesCachePath == null &&
        _moviesJsonlPath == null &&
        _seriesJsonlPath == null) {
      return;
    }

    _hydratingVod = true;
    _contentProvider!.setLoading(true);
    try {
      // Use DB paging when available to avoid massive JSON loads
      List<Content> movies = [];
      List<Content> series = [];
      if (_dbReady) {
        const int pageSize = 500;
        int offset = 0;
        while (true) {
          final page = await _db.getMoviesPage(offset: offset, limit: pageSize);
          if (page.isEmpty) break;
          final remaining = maxItems - movies.length;
          if (remaining <= 0) break;
          final slice = page.take(remaining).toList();
          movies.addAll(slice
              .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
              .toList());
          offset += pageSize;
          if (movies.length >= maxItems) break;
        }

        offset = 0;
        while (true) {
          final page =
              await _db.getSeriesPage(offset: offset, limit: pageSize);
          if (page.isEmpty) break;
          final remaining = maxItems - series.length;
          if (remaining <= 0) break;
          final slice = page.take(remaining).toList();
          series.addAll(slice
              .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
              .toList());
          offset += pageSize;
          if (series.length >= maxItems) break;
        }

        _moviesCount = await _db.movieCount();
        _seriesCount = await _db.seriesCount();
      }

      final shouldFallbackToJsonl = (movies.isEmpty && series.isEmpty) &&
          (_moviesJsonlPath != null || _seriesJsonlPath != null);
      final shouldFallbackToCache = (movies.isEmpty && series.isEmpty) &&
          _moviesCachePath != null &&
          _seriesCachePath != null;

      if (shouldFallbackToJsonl) {
        const int pageSize = 500;
        int offset = 0;
        while (true) {
          if (_moviesJsonlPath == null) break;
          final page = await _loadJsonlPage(_moviesJsonlPath!, offset, pageSize);
          if (page.isEmpty) break;
          final remaining = maxItems - movies.length;
          if (remaining <= 0) break;
          movies.addAll(page.take(remaining));
          offset += pageSize;
          if (movies.length >= maxItems) break;
        }

        offset = 0;
        while (true) {
          if (_seriesJsonlPath == null) break;
          final page = await _loadJsonlPage(_seriesJsonlPath!, offset, pageSize);
          if (page.isEmpty) break;
          final remaining = maxItems - series.length;
          if (remaining <= 0) break;
          series.addAll(page.take(remaining));
          offset += pageSize;
          if (series.length >= maxItems) break;
        }
      } else if (!_dbReady || shouldFallbackToCache) {
        // Offload heavy JSON decoding to an isolate and cap in-memory hydration
        final result = await compute(_parseVodCachesInIsolate, {
          'moviesPath': _moviesCachePath!,
          'seriesPath': _seriesCachePath!,
          'maxItems': maxItems,
        });

        movies = (result['movies'] as List<dynamic>)
            .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
            .toList();
        series = (result['series'] as List<dynamic>)
            .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
            .toList();

        // Preserve full counts even though we hydrate a capped subset
        _moviesCount = result['moviesCount'] as int? ?? _moviesCount;
        _seriesCount = result['seriesCount'] as int? ?? _seriesCount;
      }

      if (_disposed) return;
      _contentProvider!.loadMovies(movies);
      _contentProvider!.loadSeries(series);
      final moviesComplete =
          _moviesCount > 0 && movies.length >= _moviesCount;
      final seriesComplete =
          _seriesCount > 0 && series.length >= _seriesCount;
      _vodHydrated = moviesComplete && seriesComplete;
      debugLog(
          'ChannelProvider: Hydrated ContentProvider with ${movies.length}/$_moviesCount movies and ${series.length}/$_seriesCount series (capped for performance)');
    } catch (e) {
      debugLog('ChannelProvider: Failed to hydrate VOD cache: $e');
    } finally {
      _hydratingVod = false;
      _contentProvider!.setLoading(false);
    }
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
    const int yieldEvery = 1000;
    final Map<String, String> batch = {};

    for (int i = 0; i < _channelMaps.length; i++) {
      final map = _channelMaps[i];
      final channelId = (map['tvgId'] as String?) ??
          (map['id'] as String?) ??
          (map['url'] as String? ?? '');
      final name = (map['name'] as String?) ?? '';
      if (channelId.isEmpty) continue;

      final epgId = _epgService!.resolveEpgId(
        channelId,
        channelName: name,
        cache: true,
        allowLoose: false,
      );
      if (epgId != null) {
        batch[channelId] = epgId;
      }

      if (_dbReady && batch.length >= batchSize) {
        try {
          await _db.upsertEpgMapping(Map<String, String>.from(batch));
          batch.clear();
        } catch (e) {
          debugLog('ChannelProvider: Failed to persist EPG mapping batch: $e');
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
        debugLog('ChannelProvider: Failed to persist final EPG mapping batch: $e');
      }
    }

    debugLog('ChannelProvider: Completed EPG mapping build');
    if (_dbReady) {
      try {
        await _epgService?.loadMappingsFromDb();
      } catch (e) {
        debugLog('ChannelProvider: Failed to load mappings into EPG service: $e');
      }
    }

    await _persistEpgMappingSignature();
  }

  Future<bool> _tryReuseEpgMapping() async {
    if (!_dbReady) return false;
    if (_currentEpgMapSignature == null ||
        _currentEpgMapSignatureKey == null) {
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
      _currentEpgMapCountKey ??=
          _currentEpgMapSignatureKey!.replaceFirst(
              _epgMapSignaturePrefix, _epgMapCountPrefix);
      debugLog(
          'ChannelProvider: Reusing persisted EPG mapping ($count entries)');
      await _epgService?.loadMappingsFromDb();
      return true;
    } catch (e) {
      debugLog('ChannelProvider: Failed to reuse EPG mapping: $e');
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
      _currentEpgMapCountKey ??=
          _currentEpgMapSignatureKey!.replaceFirst(
              _epgMapSignaturePrefix, _epgMapCountPrefix);
      await prefs.setString(
          _currentEpgMapSignatureKey!, _currentEpgMapSignature!);
      await prefs.setInt(_currentEpgMapCountKey!, count);
    } catch (e) {
      debugLog('ChannelProvider: Failed to persist EPG map signature: $e');
    }
  }

  Future<void> _setCurrentEpgMapSignature({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required String? epgUrl,
    required int channelCount,
    String? channelsFile,
  }) async {
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
    _currentEpgMapSignature = await _computeEpgMapSignature(
      playlistUrl: playlistUrl,
      epgUrl: epgUrl,
      channelCount: channelCount,
      channelsFile: channelsFile,
    );
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
    notifyListeners();
  }

  // Watch count tracking (channelId -> count)
  Map<String, int> _watchCounts = {};

  /// Get channel count without converting all channels
  int get channelCount => _dbReady ? _channelCountDb : _channelMaps.length;
  int _channelCountDb = 0;
  Future<int> getChannelCountAsync() async {
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
        _recoverReadOnlyDb(e);
      }
    }
    return _channelMaps.length;
  }

  Future<int> getMoviesCountAsync() async {
    if (_dbReady) {
      try {
        final dbCount = await _db.movieCount();
        if (dbCount > _moviesCount) {
          _moviesCount = dbCount;
        }
        final contentCount = _contentProvider?.movies.length ?? 0;
        if (contentCount > _moviesCount) {
          _moviesCount = contentCount;
        }
        return _moviesCount;
      } catch (e) {
        debugLog('ChannelProvider: DB movie count failed: $e');
        _recoverReadOnlyDb(e);
      }
    }
    return _moviesCount;
  }

  Future<int> getSeriesCountAsync() async {
    if (_dbReady) {
      try {
        final dbCount = await _db.seriesCount();
        if (dbCount > _seriesCount) {
          _seriesCount = dbCount;
        }
        final contentCount = _contentProvider?.series.length ?? 0;
        if (contentCount > _seriesCount) {
          _seriesCount = contentCount;
        }
        return _seriesCount;
      } catch (e) {
        debugLog('ChannelProvider: DB series count failed: $e');
        _recoverReadOnlyDb(e);
      }
    }
    return _seriesCount;
  }

  /// Quick check if there are any channels (no conversion needed)
  bool get hasChannels =>
      _dbReady ? (_channelCountDb > 0 || _channelMaps.isNotEmpty) : _channelMaps.isNotEmpty;

  /// Public accessor for virtualized lists
  Channel getChannelAt(int index) => _getChannelAt(index);

  /// Async paged channels for UI (DB-backed when available)
  Future<List<Channel>> getChannelsPage({int offset = 0, int limit = 50}) async {
    if (_dbReady) {
      try {
        final rows =
            await _db.getChannelsPage(offset: offset, limit: limit);
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
        _recoverReadOnlyDb(e);
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
        _recoverReadOnlyDb(e);
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

  Future<List<Channel>> getFilteredChannelsAsync({
    String? category,
    Set<String>? favoriteIds,
    bool excludeHidden = true,
    int limit = 500,
    int offset = 0,
  }) async {
    // Fallback to isolate filtering when DB not ready or favorites filtering
    if (!_dbReady || favoriteIds != null) {
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
    }

    // Use category paging or general paging
    if (category != null) {
      return getChannelsForCategoryAsync(category,
          offset: offset, limit: limit,);
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
  int get moviesCount => _moviesCount;
  int get seriesCount => _seriesCount;
  double get loadingProgress => _loadingProgress;
  String get loadingStatus => _loadingStatus;

  /// Load movies on-demand (paginated)
  Future<List<Content>> getMovies({int offset = 0, int limit = 50}) async {
    // Prefer DB-backed paging when available
    if (_dbReady) {
      try {
        final rows = await _db.getMoviesPage(offset: offset, limit: limit);
        return rows
            .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
            .toList();
      } catch (e) {
        debugLog('ChannelProvider: DB movie page failed, falling back: $e');
      }
    }

    if (_moviesJsonlPath != null) {
      return _loadJsonlPage(_moviesJsonlPath!, offset, limit);
    }
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
    // Prefer DB-backed paging when available
    if (_dbReady) {
      try {
        final rows = await _db.getSeriesPage(offset: offset, limit: limit);
        return rows
            .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
            .toList();
      } catch (e) {
        debugLog('ChannelProvider: DB series page failed, falling back: $e');
      }
    }

    if (_seriesJsonlPath != null) {
      return _loadJsonlPage(_seriesJsonlPath!, offset, limit);
    }
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
    if (_autoLoadInProgress || _isLoading) {
      debugLog('ChannelProvider: Auto-load already in progress, skipping');
      return;
    }
    _autoLoadInProgress = true;

    // Set loading immediately so UI shows loading state
    _isLoading = true;
    notifyListeners();

    StartupProbe.mark('ChannelProvider.autoLoadPlaylist invoked');
    try {
      await _loadWatchCounts();
      debugLog('ChannelProvider: Auto-loading playlist...');
      await _ensureDb();
      final prefs = await SharedPreferences.getInstance();
      String? playlistType = prefs.getString('playlist_type');
      // If no legacy playlist type, fall back to saved playlists (active or first)
      if (playlistType == null) {
        final savedJson = prefs.getString('saved_playlists');
        if (savedJson != null && savedJson.trim().isNotEmpty) {
          try {
            final List<dynamic> decoded = jsonDecode(savedJson);
            final saved = decoded
                .map((j) => SavedPlaylist.fromJson(Map<String, dynamic>.from(j)))
                .toList();
            if (saved.isNotEmpty) {
              final activeId = prefs.getString('active_playlist_id');
              final chosen = saved.firstWhere(
                  (p) => p.id == activeId,
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
            }
          } catch (_) {
            // ignore malformed saved playlists
          }
        }
      }

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
      final cacheVersion =
          prefs.getInt('playlist_cache_version') ?? 0;
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

            final cachedChannels = (parsed['channels'] as List<dynamic>)
                .map((c) => Map<String, dynamic>.from(c as Map))
                .toList();
            if (cachedChannels.isEmpty) {
              debugLog(
                  'ChannelProvider: JSON cache contains metadata only; falling back to M3U cache');
              throw const FormatException('JSON cache metadata only');
            }
            final totalChannels = parsed['channelCount'] as int? ?? cachedChannels.length;
            final channelsFile = parsed['channelsFile'] as String?;
            if (totalChannels > cachedChannels.length) {
              if (channelsFile == null ||
                  channelsFile.isEmpty ||
                  !await File(channelsFile).exists()) {
                debugLog(
                    'ChannelProvider: JSON cache missing channel file; falling back to M3U cache');
                throw const FormatException('JSON cache missing channel file');
              }
            }
            _channelMaps = cachedChannels;
            _vodHydrated = false;
            _channelCache.clear();
            _channelCountDb = _channelMaps.length;
            _invalidateCategoryCaches();
            await _applyXtreamEpgMapFromCache();
            _updateEpgAllowedChannels();
            await _setCurrentEpgMapSignature(
              prefs: prefs,
              playlistUrl: _lastPlaylistUrl,
              epgUrl: parsed['epgUrl'] as String?,
              channelCount: totalChannels,
              channelsFile: channelsFile,
            );

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

            // If JSON cache only has the preview list, hydrate full channels
            // from the cached JSONL file in the background.
            if (channelsFile != null && channelsFile.isNotEmpty) {
              _channelsJsonlPath = channelsFile;
            }
            if (channelsFile != null &&
                channelsFile.isNotEmpty &&
                totalChannels > _channelMaps.length) {
              unawaited(_hydrateChannelsFromCacheFile(
                channelsFile,
                totalChannels: totalChannels,
              ));
            }

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

            _invalidateCategoryCaches();
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
            _scheduleEpgRefresh(forceRefresh: false);
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
            _channelCountDb = _channelMaps.length;
            _updateEpgAllowedChannels();
            await _setCurrentEpgMapSignature(
              prefs: prefs,
              playlistUrl: _lastPlaylistUrl,
              epgUrl: parsed['epgUrl'] as String?,
              channelCount: parsed['channelCount'] as int? ?? _channelMaps.length,
              channelsFile: parsed['channelsFile'] as String?,
            );
            if (_dbReady) {
              try {
                await _db.clearChannels();
                await _db.insertChannels(_channelMaps);
                debugLog(
                    'ChannelProvider: Persisted ${_channelMaps.length} channels to DB (cache load)');
              } catch (e) {
                debugLog('ChannelProvider: Failed to persist channels to DB: $e');
              }
            }

            final List<Content> movies = (parsed['movies'] as List<dynamic>)
                .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
                .toList();
            final List<Content> series = (parsed['series'] as List<dynamic>)
                .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
                .toList();

            if (_dbReady) {
              try {
                await _db.clearVod();
                await _db.insertMovies(
                    movies.map((m) => m.toMap()).toList());
                await _db.insertSeries(
                    series.map((s) => s.toMap()).toList());
                debugLog(
                    'ChannelProvider: Persisted ${movies.length} movies and ${series.length} series to DB (cache load)');
              } catch (e) {
                debugLog('ChannelProvider: Failed to persist VOD to DB: $e');
              }
            }

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

            _invalidateCategoryCaches();
            // Trigger async category extraction in background (non-blocking)
            unawaited(_computeCategoriesAsync());

            if (_contentProvider != null && !_vodLazyStartup) {
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
            _scheduleEpgRefresh(forceRefresh: false);
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
    } catch (e) {
      debugLog('ChannelProvider: Auto-load playlist failed: $e');
      StartupProbe.mark('ChannelProvider.autoLoadPlaylist: failed ($e)');
    } finally {
      _autoLoadInProgress = false;
    }
  }

  // NOTE: Background cache refresh removed - file-based caching is now used exclusively
  // The cache is refreshed when the user loads a playlist from network

  /// Load channels from M3U URL
  Future<void> loadPlaylistFromUrl(String url) async {
    PerformanceMonitor.start('PLAYLIST_LOAD_TOTAL');
    PerformanceMonitor.trackMemoryUsage('Before playlist load');
    _lastPlaylistUrl = url;
    _vodLoadRequested = false;
    _vodLoading = false;

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

      var channelsFile = parsed['channelsFile'] as String?;
      final moviesFile = parsed['moviesFile'] as String?;
      final seriesFile = parsed['seriesFile'] as String?;

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

      _loadingStatus = 'Processing channels...';
      _loadingProgress = 0.7;
      notifyListeners();

      final mapStart = DateTime.now();
      _channelMaps.clear();
      _channelCache.clear();
      _invalidateCategoryCaches();
      if (_dbReady) {
        await _db.clearChannels();
      }
      _channelCountDb = 0;

      if (channelsFile != null && channelsFile.isNotEmpty) {
        final file = File(channelsFile);
        if (await file.exists()) {
          final stream =
              file.openRead().transform(utf8.decoder).transform(const LineSplitter());
          final List<Map<String, dynamic>> batch = [];
          int processed = 0;
          await for (final line in stream) {
            if (line.trim().isEmpty) continue;
            final map = Map<String, dynamic>.from(json.decode(line));
            _channelMaps.add(map);
            batch.add(map);
            processed++;
            if (batch.length >= 500) {
              if (_dbReady) {
                try {
                  await _db.insertChannels(
                      batch.map((e) => Map<String, dynamic>.from(e)).toList());
                } catch (e) {
                  debugLog('ChannelProvider: DB channel batch insert failed: $e');
                }
              }
              batch.clear();
            }
            if (processed % 2000 == 0) {
              _loadingStatus = 'Processing channels... $processed';
              _loadingProgress = 0.7 +
                  (0.1 *
                      (processed.toDouble() /
                          (parsed['channelCount'] as int? ?? processed)));
              notifyListeners();
              await Future.delayed(Duration(milliseconds: 1));
            }
          }
          if (batch.isNotEmpty && _dbReady) {
            try {
              await _db.insertChannels(
                  batch.map((e) => Map<String, dynamic>.from(e)).toList());
            } catch (e) {
              debugLog('ChannelProvider: DB channel batch insert failed: $e');
            }
          }
          _channelCountDb = _channelMaps.length;
          await _setCurrentEpgMapSignature(
            prefs: prefs,
            playlistUrl: url,
            epgUrl: epgUrl,
            channelCount: parsed['channelCount'] as int? ?? _channelMaps.length,
            channelsFile: channelsFile,
          );
          if (_channelsJsonlPath == null || file.path != _channelsJsonlPath) {
            try {
              await file.delete();
            } catch (_) {}
          }
        }
      } else {
        final rawChannels = parsed['channels'] as List<dynamic>;
        const chunkSize = 1000;
        for (int i = 0; i < rawChannels.length; i += chunkSize) {
          final end = (i + chunkSize).clamp(0, rawChannels.length);
          final chunk = rawChannels.sublist(i, end);

          for (final c in chunk) {
            _channelMaps.add(Map<String, dynamic>.from(c));
          }

          if (_dbReady) {
            try {
              await _db.insertChannels(
                  chunk.map((e) => Map<String, dynamic>.from(e)).toList());
            } catch (e) {
              debugLog('ChannelProvider: DB channel batch insert failed: $e');
            }
          }

          if (rawChannels.length > 5000 && i % (chunkSize * 2) == 0) {
            _loadingStatus =
                'Processing channels... ${i + end}/${rawChannels.length}';
            _loadingProgress = 0.7 + (0.1 * (i + end) / rawChannels.length);
            notifyListeners();
            await Future.delayed(Duration.zero);
          }
        }
        _channelCountDb = _channelMaps.length;
        await _setCurrentEpgMapSignature(
          prefs: prefs,
          playlistUrl: url,
          epgUrl: epgUrl,
          channelCount: parsed['channelCount'] as int? ?? _channelMaps.length,
          channelsFile: channelsFile,
        );
      }
      await _applyXtreamEpgMapFromCache();
      _updateEpgAllowedChannels();
      unawaited(_primeXtreamLiveMetadata(url));

      try {
        final playlistJson = json.encode(_channelMaps);
        await prefs.setString('flutter.cached_playlist', playlistJson);
        debugLog(
            'ChannelProvider: Saved playlist to flutter.cached_playlist for Android Auto');
      } catch (e) {
        debugLog(
            'ChannelProvider: Failed to save playlist for Android Auto: $e');
      }

      _loadingStatus = 'Saving VOD content...';
      _loadingProgress = 0.8;
      notifyListeners();

      final List<Content> moviesPreview = [];
      final List<Content> seriesPreview = [];
      _moviesCount = 0;
      _seriesCount = 0;
      _moviesCachePath = null;
      _seriesCachePath = null;

      if (moviesFile != null || seriesFile != null) {
        await _stageVodJsonl(
          moviesFile: moviesFile,
          seriesFile: seriesFile,
          movieCount: parsed['movieCount'] as int? ?? 0,
          seriesCount: parsed['seriesCount'] as int? ?? 0,
        );
      } else {
        final List<Content> movies = (parsed['movies'] as List<dynamic>)
            .map((m) => Content.fromMap(Map<String, dynamic>.from(m)))
            .toList();
        final List<Content> series = (parsed['series'] as List<dynamic>)
            .map((s) => Content.fromMap(Map<String, dynamic>.from(s)))
            .toList();

        _moviesCount = movies.length;
        _seriesCount = series.length;

        final dir = await getApplicationDocumentsDirectory();
        _moviesCachePath = '${dir.path}/movies_cache.json';
        _seriesCachePath = '${dir.path}/series_cache.json';
        await File(_moviesCachePath!)
            .writeAsString(json.encode(movies.map((m) => m.toMap()).toList()));
        await File(_seriesCachePath!)
            .writeAsString(json.encode(series.map((s) => s.toMap()).toList()));

        if (_dbReady) {
          try {
            await _db.clearVod();
            await _db.insertMovies(movies.map((m) => m.toMap()).toList());
            await _db.insertSeries(series.map((s) => s.toMap()).toList());
            debugLog(
                'ChannelProvider: Persisted VOD to DB (${movies.length} movies, ${series.length} series)');
          } catch (e) {
            debugLog('ChannelProvider: Failed to persist VOD to DB: $e');
          }
        }
        moviesPreview.addAll(movies.take(100));
        seriesPreview.addAll(series.take(100));
      }
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

      if (_contentProvider != null && !_vodLazyStartup) {
        _contentProvider!.loadMovies(moviesPreview);
        _contentProvider!.loadSeries(seriesPreview);
        unawaited(_hydrateContentProviderFromCache());
      }

      _loadingStatus = 'Finalizing...';
      _loadingProgress = 0.95;
      notifyListeners();

      final dir = await getApplicationDocumentsDirectory();
      final now = DateTime.now().millisecondsSinceEpoch;
      final cacheFile = File('${dir.path}/$_playlistCacheFileName');
      // PlaylistLoader stores temp files internally; we just write cache metadata
      if (_channelMaps.isNotEmpty) {
        await prefs.setString(_playlistCacheFilePathKey, cacheFile.path);
        await prefs.setInt('cache_timestamp', now);
        await prefs.setInt('playlist_cache_version', _playlistCacheVersion);
      }

      unawaited(_saveJsonCache(parsed));
      if (!_vodLazyStartup) {
        unawaited(_loadXtreamVOD(url));
      }

      _loadingProgress = 1.0;
      _loadingStatus = 'Complete!';
      _isLoading = false;
      _hasLoadedPlaylist = true;
      notifyListeners();

      PerformanceMonitor.end('PLAYLIST_LOAD_TOTAL');
      PerformanceMonitor.trackMemoryUsage('After playlist load');
      debugLog(
          'ChannelProvider: Loaded ${_channelMaps.length} channels, cache size: ${_channelCache.length}');

      _scheduleEpgRefresh(forceRefresh: false);
      unawaited(_buildEpgMapping());
      unawaited(_startBackgroundEnrichment());
      // Persist playlist entry for Manage Playlists
      unawaited(_upsertSavedPlaylist(sourceUrl: url, epgUrl: epgUrl));
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
      _channelCountDb = _channelMaps.length;
      _updateEpgAllowedChannels();
      unawaited(_primeXtreamLiveMetadata(url));
      if (_dbReady) {
        try {
          await _db.clearChannels();
          await _db.insertChannels(_channelMaps);
          debugLog(
              'ChannelProvider: Persisted ${_channelMaps.length} channels to DB (direct client)');
        } catch (e) {
          debugLog('ChannelProvider: Failed to persist channels to DB: $e');
        }
      }

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

      if (_dbReady) {
        try {
          await _db.clearVod();
          await _db.insertMovies(movies.map((m) => m.toMap()).toList());
          await _db.insertSeries(series.map((s) => s.toMap()).toList());
          debugLog(
              'ChannelProvider: Persisted VOD to DB (${movies.length} movies, ${series.length} series)');
        } catch (e) {
          debugLog('ChannelProvider: Failed to persist VOD to DB: $e');
        }
      }

      _cachedCategories = null; // Clear cache when channels change
      // Trigger async category extraction in background (non-blocking)
      unawaited(_computeCategoriesAsync());

      debugLog(
          'ChannelProvider: Parsed ${_channelMaps.length} channels (direct client)');
      await _applyXtreamEpgMapFromCache();
      _updateEpgAllowedChannels();

      if (_contentProvider != null && !_vodLazyStartup) {
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

      if (!_vodLazyStartup) {
        unawaited(_loadXtreamVOD(url));
      }

      _isLoading = false;
      _hasLoadedPlaylist = true;
      notifyListeners();

      _scheduleEpgRefresh(forceRefresh: false);
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
      _channelCountDb = _channelMaps.length;
      await _applyXtreamEpgMapFromCache();
      _updateEpgAllowedChannels();

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

      if (_dbReady) {
        try {
          await _db.clearVod();
          await _db.insertMovies(movies.map((m) => m.toMap()).toList());
          await _db.insertSeries(series.map((s) => s.toMap()).toList());
          debugLog(
              'ChannelProvider: Persisted VOD to DB (${movies.length} movies, ${series.length} series)');
        } catch (e) {
          debugLog('ChannelProvider: Failed to persist VOD to DB: $e');
        }
      }

      _cachedCategories = null; // Clear cache when channels change

      // Sync VOD content to ContentProvider (first batch only)
      if (_contentProvider != null && !_vodLazyStartup) {
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

      _scheduleEpgRefresh(forceRefresh: false);
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
          return filterByCategory(category, offset: offset, limit: limit);
        }
        return const [];
      } catch (e) {
        debugLog('ChannelProvider: DB category page failed: $e');
        _recoverReadOnlyDb(e);
      }
    }

    final titles = _getCategoryTitleCache();
    final indices = await compute(_filterCategoryIndicesInIsolate, {
      'titles': titles,
      'category': category,
      'offset': offset,
      'limit': limit,
    });
    if (indices.isEmpty) return const [];
    return indices.map(_getChannelAt).toList();
  }

  /// Save parsed playlist data to JSON cache for fast loading
  /// Save parsed playlist data to JSON cache for fast loading (chunked to avoid OOM)
  Future<void> _saveJsonCache(Map<String, dynamic> parsed) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final jsonCacheFile = File('${dir.path}/parsed_playlist_cache.json');

      // Store a small preview list for instant UI, plus metadata for full load.
      final previewLimit = 200;
      final previewChannels = <Map<String, dynamic>>[];
      try {
        final parsedChannels = parsed['channels'] as List<dynamic>?;
        if (parsedChannels != null && parsedChannels.isNotEmpty) {
          for (final c in parsedChannels.take(previewLimit)) {
            previewChannels.add(Map<String, dynamic>.from(c as Map));
          }
        } else if (_channelMaps.isNotEmpty) {
          for (final c in _channelMaps.take(previewLimit)) {
            previewChannels.add(Map<String, dynamic>.from(c));
          }
        }
      } catch (_) {}

      final cacheData = {
        'channels': previewChannels,
        'movies': [],
        'series': [],
        'epgUrl': parsed['epgUrl'],
        'channelCount': parsed['channelCount'],
        'movieCount': parsed['movieCount'],
        'seriesCount': parsed['seriesCount'],
        'channelsFile': parsed['channelsFile'],
        'moviesFile': parsed['moviesFile'],
        'seriesFile': parsed['seriesFile'],
      };

      final jsonData = json.encode(cacheData);
      await jsonCacheFile.writeAsString(jsonData);
      debugLog('ChannelProvider: Saved JSON cache metadata only');
    } catch (e) {
      debugLog('ChannelProvider: Failed to save JSON cache: $e');
      // Non-fatal - cache is optional
    }
  }

  Future<void> _hydrateChannelsFromCacheFile(String channelsFile,
      {required int totalChannels}) async {
    final file = File(channelsFile);
    if (!await file.exists()) return;
    debugLog(
        'ChannelProvider: Hydrating full channel list from cache file ($totalChannels)');
    final List<Map<String, dynamic>> hydrated = [];
    try {
      final stream =
          file.openRead().transform(utf8.decoder).transform(const LineSplitter());
      await for (final line in stream) {
        if (line.trim().isEmpty) continue;
        hydrated.add(Map<String, dynamic>.from(json.decode(line)));
      }
    } catch (e) {
      debugLog('ChannelProvider: Failed to hydrate channels from cache: $e');
      return;
    }
    if (hydrated.isEmpty) return;
    _channelMaps = hydrated;
    _channelCache.clear();
    _channelCountDb = _channelMaps.length;
    _invalidateCategoryCaches();
    _updateEpgAllowedChannels();
    _scheduleEpgRefresh(forceRefresh: true);
    unawaited(_computeCategoriesAsync());
    if (!_disposed) notifyListeners();
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
    _channelsJsonlPath = target.path;
    return target.path;
  }

  Future<void> _stageVodJsonl({
    required String? moviesFile,
    required String? seriesFile,
    required int movieCount,
    required int seriesCount,
  }) async {
    final dir = await getApplicationDocumentsDirectory();
    _moviesCount = movieCount;
    _seriesCount = seriesCount;
    _moviesCachePath = null;
    _seriesCachePath = null;

    if (_dbReady) {
      try {
        await _db.clearVod();
      } catch (e) {
        debugLog('ChannelProvider: Failed to clear VOD tables: $e');
      }
    }

    Future<void> moveJsonl(String? source, String name,
        void Function(String path) assign) async {
      if (source == null || source.isEmpty) return;
      final target = File('${dir.path}/$name');
      final sourceFile = File(source);
      if (!await sourceFile.exists()) return;
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
      assign(target.path);
    }

    await moveJsonl(moviesFile, 'movies_cache.jsonl', (path) {
      _moviesJsonlPath = path;
    });
    await moveJsonl(seriesFile, 'series_cache.jsonl', (path) {
      _seriesJsonlPath = path;
    });

    if (_contentProvider != null) {
      final moviesPreview = _moviesJsonlPath == null
          ? <Content>[]
          : await _loadJsonlPage(_moviesJsonlPath!, 0, 100);
      final seriesPreview = _seriesJsonlPath == null
          ? <Content>[]
          : await _loadJsonlPage(_seriesJsonlPath!, 0, 100);
      _contentProvider!.loadMovies(moviesPreview);
      _contentProvider!.loadSeries(seriesPreview);
    }
  }

  Future<List<Content>> _loadJsonlPage(
      String path, int offset, int limit) async {
    if (limit <= 0) return [];
    final file = File(path);
    if (!await file.exists()) return [];
    final stream =
        file.openRead().transform(utf8.decoder).transform(const LineSplitter());
    final results = <Content>[];
    int index = 0;
    await for (final line in stream) {
      if (line.trim().isEmpty) continue;
      if (index >= offset) {
        try {
          final map = Map<String, dynamic>.from(json.decode(line));
          results.add(Content.fromMap(map));
        } catch (_) {}
        if (results.length >= limit) break;
      }
      index++;
      if (index >= offset + limit) break;
    }
    return results;
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
        name = server.isNotEmpty ? (Uri.tryParse(server)?.host ?? server) : 'Xtream';
      } else {
        name = Uri.tryParse(sourceUrl)?.host ?? 'M3U Playlist';
      }

      final primaryEpg =
          epgUrl ?? prefs.getString('custom_epg_url') ?? prefs.getString('epg_url');
      final secondaryEpg = prefs.getString('secondary_epg_url');

      int existingIndex = -1;
      if (type == 'm3u') {
        existingIndex = list.indexWhere(
            (p) => p.type == 'm3u' && p.url.trim() == url.trim());
      } else {
        existingIndex = list.indexWhere((p) =>
            p.type == 'xtream' &&
            (p.server ?? '').trim() == (server ?? '').trim() &&
            (p.username ?? '').trim() == (username ?? '').trim());
      }

      final now = DateTime.now();
      final id = existingIndex >= 0
          ? list[existingIndex].id
          : prefs.getString('active_playlist_id') ??
              now.millisecondsSinceEpoch.toString();

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
        list[existingIndex] = normalized;
      } else {
        list.add(normalized);
      }

      await prefs.setString(
          'saved_playlists', jsonEncode(list.map((p) => p.toJson()).toList()));
      await prefs.setString('active_playlist_id', id);
    } catch (e) {
      debugLog('ChannelProvider: Failed to upsert saved playlist: $e');
    }
  }

  /// Compute categories in isolate (lightweight - just strings)
  Future<void> _computeCategoriesAsync() async {
    if (_cachedCategories != null || _isGroupingChannels) return;
    _isGroupingChannels = true;
    _categoriesCompleter = Completer<List<String>>();
    _notifyListenersSafe();

    try {
      if (_dbReady) {
        _cachedCategories = await _db.getCategories();
        if ((_cachedCategories?.isEmpty ?? true) && _channelMaps.isNotEmpty) {
          final groupTitles = _getCategoryTitleCache();
          _cachedCategories =
              await compute(_extractCategoriesInIsolate, groupTitles);
        }
        debugLog(
            'ChannelProvider: Loaded ${_cachedCategories!.length} categories from DB');
      } else {
        // Just extract groupTitle strings from maps - very lightweight
        final groupTitles = _getCategoryTitleCache();

        // Run category extraction in isolate
        _cachedCategories =
            await compute(_extractCategoriesInIsolate, groupTitles);

        debugLog(
            'ChannelProvider: Found ${_cachedCategories!.length} categories from ${_channelMaps.length} channels');
      }
    } catch (e) {
      debugLog('ChannelProvider: Error extracting categories: $e');
      _cachedCategories = [];
    }

    _isGroupingChannels = false;
    if (_categoriesCompleter != null &&
        !_categoriesCompleter!.isCompleted) {
      _categoriesCompleter!.complete(_cachedCategories ?? []);
    }
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
    if (_cachedCategories != null) return _cachedCategories!;
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

  /// Load VOD content using Xtream Codes API
  Future<void> _loadXtreamVOD(String m3uUrl) async {
    try {
      _vodHydrated = false;
      if (_contentProvider != null) {
        _contentProvider!.setLoading(true);
      }
      unawaited(_primeXtreamLiveMetadata(m3uUrl));

      final creds = await _resolveXtreamCredentials(m3uUrl);
      if (creds == null) {
        debugLog(
          'ChannelProvider: Cannot load VOD - missing credentials in URL',
        );
        return;
      }

      final serverUrl = creds['serverUrl']!;
      final username = creds['username']!;
      final password = creds['password']!;

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

      // Merge with existing VOD counts (avoid duplicates in count)
      _moviesCount += xtreamMovies.length;
      _seriesCount += xtreamSeries.length;

      // Append to lazy-load cache files
      final dir = await getApplicationDocumentsDirectory();
      if (_moviesCachePath == null) {
        _moviesCachePath = '${dir.path}/movies_cache.json';
        _seriesCachePath = '${dir.path}/series_cache.json';
      }

      // Persist XTREAM VOD without loading all existing rows into memory
      if (_dbReady) {
        try {
          await _db.insertMovies(xtreamMovies.map((m) => m.toMap()).toList());
          await _db.insertSeries(xtreamSeries.map((s) => s.toMap()).toList());
          debugLog(
              'ChannelProvider: Persisted XTREAM VOD to DB (${xtreamMovies.length} movies, ${xtreamSeries.length} series)');
        } catch (e) {
          debugLog('ChannelProvider: Failed to persist XTREAM VOD to DB: $e');
        }
      }

      // Cache only lightweight previews for hydration when DB not ready
      try {
        final moviesPreview = xtreamMovies.take(200).toList();
        final seriesPreview = xtreamSeries.take(200).toList();
        final dir = await getApplicationDocumentsDirectory();
        _moviesCachePath = '${dir.path}/movies_cache.json';
        _seriesCachePath = '${dir.path}/series_cache.json';
        await File(_moviesCachePath!)
            .writeAsString(json.encode(moviesPreview.map((m) => m.toMap()).toList()));
        await File(_seriesCachePath!)
            .writeAsString(json.encode(seriesPreview.map((s) => s.toMap()).toList()));
      } catch (_) {
        // best-effort
      }

      // Sync only first batch to ContentProvider
      if (_contentProvider != null) {
        _contentProvider!.loadMovies(xtreamMovies.take(100).toList());
        _contentProvider!.loadSeries(xtreamSeries.take(100).toList());
        unawaited(_hydrateContentProviderFromCache());
      }

      _scheduleEpgRefresh(forceRefresh: false);
    } catch (e) {
      debugLog('ChannelProvider: Error loading Xtream VOD: $e');
      // Don't fail the whole playlist load if VOD fails
    } finally {
      if (_contentProvider != null) {
        _contentProvider!.setLoading(false);
      }
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
      debugLog('ChannelProvider: searchChannels called while DB ready; consider using searchChannelsAsync');
    }

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

  Future<List<Channel>> searchChannelsAsync(String query, {int limit = 100}) async {
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
      return {'matched': 0, 'scanned': cappedTotal, 'total': total};
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

    return {'matched': matched, 'scanned': cappedTotal, 'total': total};
  }

  /// Start background TMDB enrichment for movies and series
  /// Runs asynchronously without blocking UI
  Future<void> _startBackgroundEnrichment() async {
    if (_vodLazyStartup && !_vodLoadRequested) {
      debugLog(
          'ChannelProvider: Skipping TMDB enrichment (VOD not requested)');
      return;
    }
    if (_moviesJsonlPath != null || _seriesJsonlPath != null) {
      debugLog(
          'ChannelProvider: Skipping TMDB enrichment (VOD deferred in JSONL)');
      return;
    }
    if (_moviesCount > 50000 || _seriesCount > 20000) {
      debugLog(
          'ChannelProvider: Skipping TMDB enrichment (VOD too large for startup)');
      return;
    }
    if (_isEnriching || _contentProvider == null) return;

    _isEnriching = true;
    debugLog(
        'ChannelProvider: Starting background TMDB enrichment for $_moviesCount movies and $_seriesCount series');

    // Run in background without awaiting
    unawaited(Future.microtask(() async {
      try {
        // Load capped set for enrichment to avoid OOM
        const int enrichCap = 1500;
        const int pageSize = 300;
        final allMovies = <Content>[];
        final allSeries = <Content>[];

        for (int offset = 0;
            offset < enrichCap && allMovies.length < enrichCap;
            offset += pageSize) {
          final page = await getMovies(offset: offset, limit: pageSize);
          if (page.isEmpty) break;
          allMovies.addAll(page);
          if (allMovies.length >= enrichCap) break;
        }
        for (int offset = 0;
            offset < enrichCap && allSeries.length < enrichCap;
            offset += pageSize) {
          final page = await getSeries(offset: offset, limit: pageSize);
          if (page.isEmpty) break;
          allSeries.addAll(page);
          if (allSeries.length >= enrichCap) break;
        }

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

/// Isolate helper to parse cached VOD JSON files without blocking UI.
Future<Map<String, dynamic>> _parseVodCachesInIsolate(
    Map<String, dynamic> args) async {
  final moviesPath = args['moviesPath'] as String?;
  final seriesPath = args['seriesPath'] as String?;
  final maxItems = (args['maxItems'] as int?) ?? 4000;

  int moviesCount = 0;
  int seriesCount = 0;
  List<dynamic> movies = [];
  List<dynamic> series = [];

  if (moviesPath != null) {
    try {
      final file = File(moviesPath);
      if (await file.exists()) {
        final jsonStr = await file.readAsString();
        if (jsonStr.trim().isNotEmpty) {
          final List<dynamic> decoded = json.decode(jsonStr);
          moviesCount = decoded.length;
          movies = decoded.take(maxItems).toList();
        }
      }
    } catch (_) {}
  }

  if (seriesPath != null) {
    try {
      final file = File(seriesPath);
      if (await file.exists()) {
        final jsonStr = await file.readAsString();
        if (jsonStr.trim().isNotEmpty) {
          final List<dynamic> decoded = json.decode(jsonStr);
          seriesCount = decoded.length;
          series = decoded.take(maxItems).toList();
        }
      }
    } catch (_) {}
  }

  return {
    'movies': movies,
    'series': series,
    'moviesCount': moviesCount,
    'seriesCount': seriesCount,
  };
}
