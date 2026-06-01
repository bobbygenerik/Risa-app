import 'dart:async';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/channel.dart';
// M3U parsing is handled via `playlist_isolate.dart` (streaming/isolate helpers).
// Keep the local import commented out to avoid unused-import warnings while
// migration completes.
// import '../services/m3u_parser_service.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import '../utils/throttled_notifier.dart';
import 'channel/channel_category_cache.dart';
import 'channel/channel_db_recovery.dart';
import 'channel/channel_epg_integration.dart';
import 'channel/channel_xtream_epg_map.dart';
import 'channel/channel_xtream_service.dart';
import 'channel/channel_xtream_service_deps.dart';
import 'channel/channel_auto_load.dart';
import 'channel/channel_auto_load_deps.dart';
import 'channel/channel_playlist_loader.dart';
import 'channel/channel_playlist_loader_deps.dart';
import 'channel/channel_query_service.dart';
import 'channel/channel_query_service_deps.dart';
import 'channel/channel_playlist_persistence.dart';
import 'channel/channel_playlist_persistence_deps.dart';
import 'channel/channel_index_cache.dart';
import 'channel/channel_index_cache_deps.dart';
import 'channel/channel_access.dart';
import 'channel/channel_access_deps.dart';

export 'channel/channel_playlist_cache.dart' show clearPlaylistCache;

part 'channel/channel_provider_bindings.dart';
part 'channel/channel_provider_api.dart';
part 'channel/channel_provider_glue.dart';

class ChannelProvider extends ChangeNotifier with ThrottledNotifier {
  static final RegExp _httpPrefixRe = RegExp(r'^https?://');
  static final RegExp _leadingSlashRe = RegExp(r'^/');

  // Debug preview capture size (unused after refactor)

  // Store raw channel data as maps to avoid expensive conversion on main thread
  final List<Map<String, dynamic>> _channelMaps = [];
  // Cache of converted Channel objects (populated on-demand)
  final Map<int, Channel> _channelCache = {};
  final Map<String, int> _channelIndexById = {};
  final Map<String, List<int>> _channelIndicesByGroup = {};
  final List<String> _channelLowerNames = [];
  final List<String> _channelLowerGroups = [];

  final List<Channel> _favoriteChannels = [];
  bool get isBackgroundSyncing => _isBackgroundSyncing;
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
  final ChannelCategoryCache _categoryCache = ChannelCategoryCache();
  final ChannelXtreamEpgMapStore _xtreamEpgMapStore = ChannelXtreamEpgMapStore();
  late final ChannelDbRecovery _dbRecovery =
      ChannelDbRecovery(_createDbRecoveryDeps());
  late final ChannelEpgIntegration _epgIntegration =
      ChannelEpgIntegration(_createEpgIntegrationDeps());
  late final ChannelXtreamService _xtreamService =
      ChannelXtreamService(_createXtreamServiceDeps());
  bool _dbReady = false;
  bool _dbDisabled = false;
  bool _autoLoadInProgress = false;
  bool _dbReadOnlyRecoveryInFlight = false;
  DateTime? _lastDbRecoveryTime;
  bool _dbClosedRecoveryInFlight = false;
  bool _noPlaylistConfigured = false;
  bool _epgAllowedChannelsFromDbInFlight = false;
  final LocalDbService _db = LocalDbService.instance;

  // TMDB enrichment service for background genre enrichment
  final bool _isEnriching = false;
  bool get isEnriching => _isEnriching;

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

  late final ChannelQueryService _channelQueryService =
      ChannelQueryService(_createQueryServiceDeps());

  late final ChannelPlaylistLoader _channelPlaylistLoader =
      ChannelPlaylistLoader(_createPlaylistLoaderDeps());
  late final ChannelAutoLoad _channelAutoLoad =
      ChannelAutoLoad(_createAutoLoadDeps());
  late final ChannelPlaylistPersistence _channelPlaylistPersistence =
      ChannelPlaylistPersistence(_createPlaylistPersistenceDeps());
  late final ChannelIndexCache _channelIndexCache =
      ChannelIndexCache(_createIndexCacheDeps());
  late final ChannelAccess _channelAccess =
      ChannelAccess(_createChannelAccessDeps());

  Future<void> _ensureDb() => _dbRecovery.ensureDb();

  // Throttle notifyListeners for performance - max once per 250ms
  // Increased from 100ms to reduce UI jank on large playlists
  DateTime? _lastNotifyTime;
  bool _notifyPending = false;
  static const Duration _notifyThrottleInterval = Duration(milliseconds: 250);

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

  void _handleDbError(Object error) => _dbRecovery.handleDbError(error);

  void _recoverReadOnlyDb(Object error) {
    if (!_isReadOnlyDbError(error) || _dbReadOnlyRecoveryInFlight) {
      return;
    }
    // Rate-limit: skip recovery if one happened within the last 30 seconds
    final now = DateTime.now();
    if (_lastDbRecoveryTime != null &&
        now.difference(_lastDbRecoveryTime!).inSeconds < 30) {
      debugLog('ChannelProvider: read-only recovery skipped — cooldown active '
          '(${now.difference(_lastDbRecoveryTime!).inSeconds}s since last)');
      return;
    }
    _dbReadOnlyRecoveryInFlight = true;
    _lastDbRecoveryTime = now;
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
          // Delay re-insert to let the freshly-created DB stabilize
          await Future.delayed(const Duration(seconds: 2));
          unawaited(_deferredDbInsert());
          _updateEpgAllowedChannels();
          _scheduleEpgRefresh(forceRefresh: true);
        }
      } else {
        debugLog(
            'ChannelProvider: Failed to recover DB, disabling for session');
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

    // Offload heavy string normalization to isolate
    try {
      final allowed = <String>{};
      const batchSize = 20000;
      for (var start = 0; start < _channelMaps.length; start += batchSize) {
        final end = math.min(start + batchSize, _channelMaps.length);
        final batch = List<Map<String, dynamic>>.from(
          _channelMaps.sublist(start, end),
        );
        final partial = await compute(_buildAllowedSet, batch);
        allowed.addAll(partial);
      }
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
      final tvgNameRaw = _extractTvgNameFromAttributes(attrs);
      final tvgIdRaw = (map['tvgId'] as String?) ??
          (attrs is Map ? (attrs['tvg-id'] as String?) : null) ??
          (map['tvg-id'] as String?) ??
          '';
      final tvgId = tvgIdRaw.trim();
      final id = (map['id'] as String?)?.trim() ?? '';
      final name = (map['name'] as String?)?.trim() ?? '';
      if (tvgId.isNotEmpty) {
        allowed.add(IncrementalEpgService.normalizeForAllowedId(tvgId));
      } else if (id.isNotEmpty) {
        allowed.add(IncrementalEpgService.normalizeForAllowedId(id));
      }
      final tvgName = tvgNameRaw?.trim() ?? '';
      if (tvgName.isNotEmpty) {
        allowed.add(IncrementalEpgService.normalizeForAllowedId(tvgName));
      } else if (tvgId.isEmpty) {
        if (id.isNotEmpty) {
          allowed.add(IncrementalEpgService.normalizeForAllowedId(name));
        } else if (name.isNotEmpty) {
          allowed.add(IncrementalEpgService.normalizeForAllowedId(name));
        }
      }
    }
    return allowed;
  }

  static String? _extractTvgNameFromAttributes(dynamic attrs) {
    if (attrs is! Map) return null;
    for (final entry in attrs.entries) {
      final key = entry.key.toString().toLowerCase();
      if (key == 'tvg-name' || key == 'tvg_name') {
        final value = entry.value?.toString().trim() ?? '';
        if (value.isNotEmpty) return value;
      }
    }
    return null;
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
        allowed.addAll(_buildAllowedSet(rows));
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
    } catch (e) {
      debugLog('ChannelProvider: loadXtreamEpgMap failed: $e');
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
    } catch (e) {
      debugLog('ChannelProvider: saveXtreamEpgMap failed: $e');
    }
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

  Future<bool> _restoreChannelsFromPrefsCache({
    required SharedPreferences prefs,
    String? playlistUrl,
    String? epgUrl,
    String? reason,
  }) =>
      _channelAccess.restoreChannelsFromPrefsCache(
        prefs: prefs,
        playlistUrl: playlistUrl,
        epgUrl: epgUrl,
        reason: reason,
      );

      _invalidateCategoryCaches();
      unawaited(_computeCategoriesAsync());
      _updateEpgAllowedChannels();
      _refreshSmartChannelCache();

      _isLoading = false;
      _isColdStartLoad = false;
      _hasLoadedPlaylist = true;
      _noPlaylistConfigured = false;
      notifyListeners();
      _scheduleEpgRefresh(forceRefresh: false);

      final reasonSuffix =
          (reason == null || reason.isEmpty) ? '' : ' ($reason)';
      debugLog(
          'ChannelProvider: Restored ${_channelMaps.length} channels from SharedPreferences cache$reasonSuffix');
      return true;
    } catch (e) {
      debugLog(
          'ChannelProvider: Failed to restore channels from SharedPreferences cache: $e');
      return false;
    }
  }

  String? _resolveXtreamLogoUrl(String? rawLogoUrl, String serverUrl) {
    final raw = rawLogoUrl?.trim() ?? '';
    if (raw.isEmpty || raw.toLowerCase() == 'null') {
      return null;
    }
    if (raw.startsWith('data:')) {
      return raw;
    }
    if (raw.startsWith('//')) {
      final scheme = Uri.tryParse(serverUrl)?.scheme;
      final safeScheme =
          (scheme != null && scheme.isNotEmpty) ? scheme : 'https';
      return '$safeScheme:$raw';
    }
    try {
      final parsed = Uri.parse(raw);
      if (parsed.hasScheme && parsed.host.isNotEmpty) {
        return parsed.toString();
      }
      final base = Uri.parse(serverUrl);
      return base.resolve(raw).toString();
    } catch (e) {
      debugLog('ChannelProvider: resolveXtreamLogoUrl failed: $e');
      return raw;
    }
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
          baseUri =
              Uri.parse('https://${cleaned.replaceAll(_httpPrefixRe, '')}');
        }
        serverUrl = _buildXtreamServerUrl(baseUri);
        username ??= storedUser;
        password ??= storedPass;
      } catch (e) {
        debugLog('ChannelProvider: resolveXtreamCredentials parse failed: $e');
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
        final parsedServerUri = Uri.parse(serverUrl);
        final epgUri = parsedServerUri.replace(
          path: (parsedServerUri.path.trim().isEmpty)
              ? 'xmltv.php'
              : '${parsedServerUri.path.replaceAll(_leadingSlashRe, '')}/xmltv.php',
          queryParameters: {
            'username': username.replaceAll(' ', ''),
            'password': password.replaceAll(' ', ''),
          },
        );
        final prefs = await SharedPreferences.getInstance();
        final previous = prefs.getString('epg_url');
        if (previous != epgUri.toString()) {
          await prefs.setString('epg_url', epgUri.toString());
          final existingCustom = prefs.getString('custom_epg_url') ?? '';
          if (existingCustom.isEmpty) {
            await prefs.setString('custom_epg_url', epgUri.toString());
          }
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
        } catch (e) {
          debugLog('ChannelProvider: fetching live categories failed: $e');
        }

        final preview = <Map<String, dynamic>>[];
        for (final s in liveStreams.take(previewLimit)) {
          final streamId = (s['stream_id'] ?? '').toString();
          if (streamId.isEmpty) continue;
          final name = (s['name'] ?? '').toString();
          final categoryId = (s['category_id'] ?? '').toString();
          final groupTitle = categoryNameById[categoryId] ?? 'Live';
          final logoUrl =
              _resolveXtreamLogoUrl(s['stream_icon']?.toString(), serverUrl);
          final epgId = (s['epg_channel_id'] ?? s['epg_id'])?.toString();

          final url =
              '${serverUrl.replaceAll(_trailingSlashRe, '')}/live/$username/$password/$streamId.ts';
          preview.add({
            'id': streamId,
            'name': name.isNotEmpty ? name : streamId,
            'url': url,
            'logoUrl': logoUrl,
            'groupTitle': groupTitle,
            'tvgId': epgId,
          });
        }
        if (preview.isNotEmpty) {
          _channelMaps = preview;
          _channelCache.clear();
          await _rebuildChannelCachesAsync();
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
                  '${serverUrl.replaceAll(_trailingSlashRe, '')}/${epgCandidate.replaceAll(_leadingSlashesRe, '')}';
              epgUrls.add(resolved);
            } catch (e) {
              debugLog('ChannelProvider: EPG URL resolve failed: $e');
            }
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
          } catch (e) {
            debugLog('ChannelProvider: EPG URL probe failed: $e');
          }
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
        try {
          await sharedPrefs.setString('epg_url', accepted);
        } catch (e) {
          debugLog('ChannelProvider: set epg_url failed: $e');
        }
        final existingCustom = sharedPrefs.getString('custom_epg_url') ?? '';
        if (existingCustom.isEmpty) {
          await sharedPrefs.setString('custom_epg_url', accepted);
        }
        try {
          final enc = base64Url.encode(utf8.encode(m3uUrl));
          await sharedPrefs.setString('xtream_epg_url_$enc', accepted);
          await sharedPrefs.setString('xtream_epg_url_$serverUrl', accepted);
        } catch (e) {
          debugLog('ChannelProvider: save per-playlist EPG URL failed: $e');
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

  Future<void> _loadCachedCategoriesFromPrefs() =>
      _channelQueryService.loadCachedCategoriesFromPrefs();

  /// Public API to cancel any in-progress playlist load.
  void cancelPlaylistLoad() {
    try {
      _channelPlaylistLoader.cancelCurrent();
    } catch (e) {
      debugLog('ChannelProvider: cancelPlaylistLoad failed: $e');
    }
    _loadingStatus = 'Cancelled';
    _loadingProgress = 0.0;
    _isLoading = false;
    unawaited(_setWakeLock(false));
    notifyListeners();
  }

  // Watch count tracking (channelId -> count)
  final Map<String, int> _watchCounts = {};
  int _channelCountDb = 0;

  /// Get specific channel by index
  Channel _getChannelAt(int index) => _channelAccess.getChannelAt(index);

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
    // Skip if already loaded AND have channels in memory
    if (_hasLoadedPlaylist && _channelMaps.isNotEmpty) {
      debugLog(
          'ChannelProvider: Playlist already loaded (${_channelMaps.length} channels), skipping');
      return;
    }
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

      // PRE-SEED CREDENTIALS FOR USER COLD START
      if (prefs.getString('playlist_type') == null &&
          (prefs.getString('saved_playlists') == null ||
              prefs.getString('saved_playlists')!.trim().isEmpty)) {
        debugLog('ChannelProvider: Pre-seeding user playlist credentials...');
        final seedPlaylist = SavedPlaylist(
          id: 'pl_f74e5558',
          name: 'opop.pro',
          type: 'm3u',
          url: 'https://opop.pro/mpjJUXrysJKL',
          server: null,
          username: null,
          password: null,
          epgUrl: 'https://opop.pro/epNCvfgjsYe9JC',
          epgUrlSecondary: null,
          addedDate: DateTime.parse('2026-03-14T02:56:10.561798'),
        );
        final list = [seedPlaylist];
        await prefs.setString(
            'saved_playlists', jsonEncode(list.map((p) => p.toJson()).toList()));
        await prefs.setString('active_playlist_id', 'pl_f74e5558');
        await prefs.setString('playlist_type', 'm3u');
        await prefs.setString('m3u_url', 'https://opop.pro/mpjJUXrysJKL');
        await prefs.setString('epg_url', 'https://opop.pro/epNCvfgjsYe9JC');
        await prefs.setString(
            'custom_epg_url', 'https://opop.pro/epNCvfgjsYe9JC');
        debugLog('ChannelProvider: Pre-seeding completed.');
      }

      String? playlistType = prefs.getString('playlist_type');
      // If no legacy playlist type, fall back to saved playlists (active or first)
      if (playlistType == null) {
        final savedJson = prefs.getString('saved_playlists');
        if (savedJson != null && savedJson.trim().isNotEmpty) {
          try {
            final List<dynamic> decoded =
                await compute(jsonDecode, savedJson) as List<dynamic>;
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
              final playlistKey =
                  chosen.type == 'xtream' ? (chosen.server ?? '') : chosen.url;
              unawaited(
                _ensureStablePlaylistIdentity(
                  prefs,
                  playlistUrl: playlistKey,
                ),
              );
            }
          } catch (e) {
            debugLog('ChannelProvider: malformed saved playlist: $e');
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
          await _rebuildChannelCachesAsync();
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
          logToSystem('Found $count channels in DB, loading first chunk...',
              name: 'ChannelProvider');
          final initialLimit = 1000;
          List<Map<String, dynamic>> channels = const [];
          try {
            channels = await _db
                .getChannelsPage(offset: 0, limit: initialLimit)
                .timeout(const Duration(seconds: 6));
            logToSystem('DB returned ${channels.length} channels',
                name: 'ChannelProvider');
          } catch (e) {
            logToSystem('DB initial page load timeout/failure: $e',
                name: 'ChannelProvider');
            channels = const [];
            skipDbLoad = true;
          }

          if (channels.isNotEmpty) {
            logToSystem('DB load successful, setting up channels...',
                name: 'ChannelProvider');
            _channelMaps = channels;
            _channelCountDb = count;
            await _rebuildChannelCachesAsync();

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
                logToSystem('Categories: ${_cachedCategories?.length ?? 0}',
                    name: 'ChannelProvider');
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
            _scheduleEpgRefresh(
                forceRefresh: false); // Refresh EPG based on existing data

            unawaited(SmartCacheService.instance
                .markChannelCacheFresh(channelCount: count));
            StartupProbe.mark(
                'ChannelProvider.autoLoadPlaylist: initial chunk loaded from DB');

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
                    offset: initialLimit, limit: count - initialLimit);
                _channelMaps.addAll(more);
                await _rebuildChannelCachesAsync();
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
            logToSystem('DB query returned empty, falling through to M3U cache',
                name: 'ChannelProvider');
          }
        } else {
          // SkipDbLoad was true (shouldn't happen with our fix) or count was 0
          logToSystem('Skipping DB load (skipDbLoad=$skipDbLoad, count=$count)',
              name: 'ChannelProvider');
        }
      } else {
        logToSystem('DB not ready, falling through to M3U cache',
            name: 'ChannelProvider');
      }

      // Fallback: Try file-based cache if present - use streaming parser
      // Removed the 6 hour limitation (cacheAge < 21600000) so we can always load instantly
      // and let the _backgroundSync handle freshness.
      if (cacheFilePath != null && cacheAge != null) {
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
            String? epgUrlFromCache; // Legacy M3U cache extracted EPG URL

            try {
              final randomAccessFile = await file.open();
              final firstByte = await randomAccessFile.readByte();
              await randomAccessFile.close();

              if (firstByte == 91) {
                // '[' character indicates JSON array
                debugLog(
                    'ChannelProvider: Cache file is JSON array, parsing via compute...');
                final jsonString = await file.readAsString();
                final List<dynamic> decoded =
                    await compute(jsonDecode, jsonString) as List<dynamic>;
                allChannels
                    .addAll(decoded.map((e) => Map<String, dynamic>.from(e)));
              } else {
                debugLog(
                    'ChannelProvider: Cache file is M3U, parsing via Streaming Parser...');
                DateTime lastCacheUiUpdate = DateTime.now();
                final parsed = await parsePlaylistCancelable(
                  filePath: cacheFilePath,
                  onProgress: (count) {
                    _loadingStatus = 'Parsing cached playlist: $count channels';
                    _loadingProgress = 0.3 + (count / 20000).clamp(0.0, 0.6);
                    final now = DateTime.now();
                    if (now.difference(lastCacheUiUpdate).inMilliseconds >
                        500) {
                      lastCacheUiUpdate = now;
                      notifyListeners();
                    }
                  },
                  onChannelsChunk: (chunk) => allChannels.addAll(chunk),
                );
                epgUrlFromCache = parsed['epgUrl'];
              }
            } catch (e) {
              debugLog('ChannelProvider: Failed to parse cache file: $e');
            }

            final parseDuration = DateTime.now().difference(parseStart);
            debugLog(
                'ChannelProvider: Cache isolate parsing took ${parseDuration.inMilliseconds}ms. Found ${allChannels.length} channels.');

            // Extract and save EPG URL from cache if found
            final epgUrl =
                epgUrlFromCache; // Only M3U parsing used to return this. Json doesn't cache it inside the file.
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
            await _rebuildChannelCachesAsync();
            _channelCountDb = _channelMaps.length;
            _updateEpgAllowedChannels();
            await _setCurrentEpgMapSignature(
              prefs: prefs,
              playlistUrl: _lastPlaylistUrl,
              epgUrl: epgUrlFromCache,
              channelCount: allChannels.length,
              channelsFile: null,
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

      // Last local fallback: restore channels from SharedPreferences cache.
      final restoredFromPrefs = await _restoreChannelsFromPrefsCache(
        prefs: prefs,
        playlistUrl: cachedPlaylistUrl,
        epgUrl: cachedEpgUrl,
        reason: 'startup fallback',
      );
      if (restoredFromPrefs) {
        unawaited(_backgroundSync(prefs: prefs, url: cachedPlaylistUrl));
        return;
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
                    'https://${cleaned.replaceAll(_httpPrefixRe, '')}');
              }

              final playlistUri = baseUri.replace(
                path: (baseUri.path.trim().isEmpty)
                    ? 'get.php'
                    : '${baseUri.path.replaceAll(_leadingSlashRe, '')}/get.php',
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
                    : '${baseUri.path.replaceAll(_leadingSlashRe, '')}/xmltv.php',
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
          if (!_isColdStartLoad && _channelMaps.isEmpty) {
            _isColdStartLoad = true;
            notifyListeners();
          }
          debugLog('ChannelProvider: Loading playlist URL: $playlistUrl');
          StartupProbe.mark(
              'ChannelProvider.autoLoadPlaylist: downloading playlist');
          await loadPlaylistFromUrl(playlistUrl);
          if (_channelMaps.isNotEmpty) {
            _hasLoadedPlaylist = true;
            debugLog(
                'ChannelProvider: Auto-load completed successfully (${_channelMaps.length} channels)');
            StartupProbe.mark(
                'ChannelProvider.autoLoadPlaylist: network load finished');
          } else {
            _hasLoadedPlaylist = false;
            debugLog(
                'ChannelProvider: Auto-load finished without channels (error: $_errorMessage)');
            StartupProbe.mark(
                'ChannelProvider.autoLoadPlaylist: no channels loaded');
          }
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

  /// Background Sync: Updates channel list without blocking UI
  Future<void> _backgroundSync({
    required SharedPreferences prefs,
    required String? url,
  }) =>
      _channelPlaylistLoader.backgroundSync(prefs: prefs, url: url);

  Future<void> _computeCategoriesAsync() =>
      _channelQueryService.computeCategoriesAsync();

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
    _isColdStartLoad = _channelMaps.isEmpty;
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
      await _rebuildChannelCachesAsync();
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
        await prefs.setString('epg_url', epgUrl);
        final existingCustom = prefs.getString('custom_epg_url') ?? '';
        if (existingCustom.isEmpty) {
          await prefs.setString('custom_epg_url', epgUrl);
        }
        try {
          final enc = base64Url.encode(utf8.encode(url));
          await prefs.setString('m3u_epg_url_$enc', epgUrl);
          await prefs.remove('m3u_epg_url_$url');
        } catch (e) {
          debugLog('ChannelProvider: per-playlist EPG URL save failed: $e');
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
    _isColdStartLoad = _channelMaps.isEmpty;
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
      await _rebuildChannelCachesAsync();
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
        await prefs.setString('epg_url', epgUrl);
        final existingCustom = prefs.getString('custom_epg_url') ?? '';
        if (existingCustom.isEmpty) {
          await prefs.setString('custom_epg_url', epgUrl);
        }
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
      debugLog(
          'ChannelProvider: compute(_filterCategoryIndicesInIsolate) failed: $e');
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
      debugLog(
          'ChannelProvider: _deferredDbInsert found DB not ready, retrying init...');
      await _ensureDb();
    }

    if (!_dbReady || _channelMaps.isEmpty) {
      debugLog(
          'ChannelProvider: _deferredDbInsert skipped. Ready: $_dbReady, Channels: ${_channelMaps.length}');
      return;
    }

    final start = DateTime.now();
    debugLog(
        'ChannelProvider: Starting deferred DB insert for ${_channelMaps.length} channels');
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
      debugLog(
          'ChannelProvider: Deferred DB insert completed in ${duration.inMilliseconds}ms');
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
    } catch (e) {
      debugLog('ChannelProvider: cache file rename failed: $e');
      await sourceFile.copy(target.path);
      try {
        await sourceFile.delete();
      } catch (e) {
        debugLog('ChannelProvider: cleanup source file failed: $e');
      }
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
        } catch (e) {
          debugLog('ChannelProvider: decode saved playlists failed: $e');
        }
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
      final existingId = existingIndex >= 0 ? list[existingIndex].id : null;
      final id =
          (existingId != null && existingId.isNotEmpty) ? existingId : stableId;

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
          debugLog(
              'ChannelProvider: DB category load failed: $e, falling back to memory');
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
      final channelNameForLookup =
          (_extractTvgNameFromAttributes(map['attributes']) ??
                  (map['name'] as String?) ??
                  '')
              .trim();

      if (channelId.isNotEmpty &&
          epgService.hasEpgMatch(channelId,
              channelName: channelNameForLookup.isNotEmpty
                  ? channelNameForLookup
                  : null)) {
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
