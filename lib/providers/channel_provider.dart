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

  Future<void> _primeXtreamLiveMetadata(String m3uUrl) =>
      _xtreamService.primeLiveMetadata(m3uUrl);

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
  Future<void> _loadWatchCounts() => _channelAccess.loadWatchCounts();

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

  void _invalidateCategoryCaches() =>
      _channelQueryService.invalidateCategoryCaches();
}
