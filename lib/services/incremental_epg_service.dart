import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:iptv_player/models/epg/catchup_info.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/epg/epg_channel_batch_loader.dart';
import 'package:iptv_player/services/epg/epg_channel_list_loader.dart';
import 'package:iptv_player/services/epg/epg_channel_matcher.dart';
import 'package:iptv_player/services/epg/epg_file_cache.dart';
import 'package:iptv_player/services/epg/epg_manual_mapping_facade.dart';
import 'package:iptv_player/services/epg/epg_manual_mapping_facade_deps.dart';
import 'package:iptv_player/services/epg/epg_manual_mappings_store.dart';
import 'package:iptv_player/services/epg/epg_normalize_cache.dart';
import 'package:iptv_player/services/epg/epg_display_names_store.dart';
import 'package:iptv_player/services/epg/epg_normalized_mapping_store.dart';
import 'package:iptv_player/services/epg/epg_public_api.dart';
import 'package:iptv_player/services/epg/epg_refresh_coordinator.dart';
import 'package:iptv_player/services/epg/epg_program_db_loader.dart';
import 'package:iptv_player/services/epg/epg_program_ingest.dart';
import 'package:iptv_player/services/epg/epg_program_query.dart';
import 'package:iptv_player/services/epg/epg_secondary_loader.dart';
import 'package:iptv_player/services/epg/epg_service_init.dart';
import 'package:iptv_player/services/epg/epg_service_init_deps.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'epg/epg_service_bindings.dart';
part 'epg/epg_service_runtime.dart';
part 'epg/epg_service_api.dart';

// dart:async already provides unawaited()

// Provider-block exception type removed — provider HTML cases are handled
// via graceful aborts and user-facing `_error` messages to preserve
// last-known-good EPG state.

class IncrementalEpgService extends ChangeNotifier with WidgetsBindingObserver {
  final Set<String> _availableChannels = {};
  final Map<String, String?> _internalToEpgIdMapping = {};
  Map<String, List<String>>?
      _normalizedAvailableChannels; // normalizedId -> [originalId1, originalId2]
  late final EpgChannelMatcher _channelMatcher;
  final EpgFileCache _fileCache = EpgFileCache();

  final bool _enableMatchingDiagnostics = kDebugMode;
  bool _isLoading = false;
  bool _isDownloading = false;
  bool _isParsing = false;
  bool _externalDbBusy = false;
  String? _error;
  String? _epgUrl;
  String? _secondaryEpgUrl;
  bool _hasParsed = false;
  bool _initInFlight = false;
  bool _refreshInFlight = false;
  bool _dbDisabled = false;
  bool _dbClosedDetected = false;
  bool _pendingAllowedRefresh = false;
  double _epgProgress = 0.0;
  String _epgProgressLabel = '';
  int _lastParseDurationMs = 60000;
  Timer? _parseProgressTimer;
  DateTime? _lastDownloadTime; // Track when last download completed
  DateTime? _lastSecondaryDownloadTime;
  bool _secondaryMergeInFlight = false;
  Set<String> _allowedChannelIdsNormalized = {};
  int _allowedChannelCount = 0;
  int _epgFutureHours = _initialFutureHours;
  // Wide window so a single parse covers more than a full day; the cached
  // window no longer ages out before the next download/parse cycle. Initial
  // equals full so the legacy window-extension re-parse stays a no-op — the
  // freshness timer handles staleness instead.
  static const int _initialFutureHours = 36;
  static const int _fullFutureHours = 36;
  // Past/future windows kept on disk so DB reads (which re-slice with a fresh
  // `now`) keep finding the current program well past parse time.
  static const int _epgPastWindowHours = 6;
  static const int _epgFutureWindowHours = 36;
  bool _extendedWindowScheduled = false;
  bool _extendingWindow = false;
  // Freshness tracking so the cached EPG window is re-sliced after a day
  // rollover or long idle, keeping "current program" resolution accurate.
  DateTime? _lastInitCompletedAt;
  Timer? _freshnessTimer;
  static const Duration _freshnessCheckInterval = Duration(minutes: 15);
  static const Duration _freshnessMaxAge = Duration(hours: 6);
  Map<String, CatchupInfo> _catchupByNormalizedId = {};
  Map<String, int> _catchupHoursByNormalizedId = {};
  String? _xtreamServer;
  String? _xtreamUsername;
  String? _xtreamPassword;
  bool _disposed = false; // Track if provider is disposed

  // Throttle notifyListeners for performance - max once per 250ms
  // Increased from 100ms to reduce UI jank during EPG parsing
  DateTime? _lastNotifyTime;
  bool _notifyPending = false;
  static const Duration _notifyThrottleInterval = Duration(milliseconds: 250);
  // Wider throttle during heavy EPG parsing to reduce UI rebuild churn
  static const Duration _notifyThrottleIntervalParsing =
      Duration(milliseconds: 1000);

  // Playback mode: suspend all notifications during video to prevent jitter
  bool _playbackActive = false;

  EpgManualMappingFacade get _mappingFacade =>
      _manualMappingFacade ??= EpgManualMappingFacade(
        deps: EpgManualMappingFacadeDeps(
          manualMappingsStore: _manualMappingsStore,
          internalToEpgIdMapping: _internalToEpgIdMapping,
          programsByChannel: _programsByChannel,
          availableChannels: _availableChannels,
          isDbDisabled: () => _dbDisabled,
          db: _db,
          publicApi: _publicApi,
          handleDbError: _handleDbError,
          notifyListeners: notifyListeners,
          ensureChannelLoaded: (channelId, {channelName}) =>
              _channelBatchLoader.ensureChannelLoaded(
                channelId,
                channelName: channelName,
              ),
          catchupByNormalizedId: () => _catchupByNormalizedId,
          xtreamServer: () => _xtreamServer,
          xtreamUsername: () => _xtreamUsername,
          xtreamPassword: () => _xtreamPassword,
          channelBatchLoader: _channelBatchLoader,
          stopParseProgressTimer: _stopParseProgressTimer,
          restoreDbIfClosed: _restoreDbIfClosed,
          getPrefs: SharedPreferences.getInstance,
        ),
      );

  /// Monotonic counter bumped each time a notification is actually delivered.
  /// Lets listeners that clear derived caches (program-type rows, hero
  /// candidates) distinguish "EPG data may have changed" from their own
  /// rebuild echoes — without it the Live TV invalidate->setState->rebuild
  /// cycle re-armed itself every 600ms forever.
  int _dataRevision = 0;
  int get dataRevision => _dataRevision;

  /// Override notifyListeners to prevent "setState after dispose" crashes
  /// and throttle notifications for performance
  @override
  void notifyListeners() {
    if (_disposed) return;
    if (_playbackActive) return;

    final interval =
        _isParsing ? _notifyThrottleIntervalParsing : _notifyThrottleInterval;

    final now = DateTime.now();
    if (_lastNotifyTime != null &&
        now.difference(_lastNotifyTime!) < interval) {
      if (!_notifyPending) {
        _notifyPending = true;
        Future.delayed(interval, () {
          _notifyPending = false;
          if (!_disposed) {
            _lastNotifyTime = DateTime.now();
            _dataRevision++;
            super.notifyListeners();
          }
        });
      }
      return;
    }

    _lastNotifyTime = now;
    _dataRevision++;
    super.notifyListeners();
  }

  // Storage for all parsed programs
  final Map<String, List<Program>> _programsByChannel = {};
  final LocalDbService _db = LocalDbService.instance;
  late final EpgProgramDbLoader _programDbLoader;
  late final EpgProgramIngest _programIngest;
  late final EpgProgramQuery _programQuery;
  late final EpgChannelBatchLoader _channelBatchLoader;
  late final EpgChannelListLoader _channelListLoader;
  late final EpgRefreshCoordinator _refreshCoordinator;
  late final EpgSecondaryLoader _secondaryLoader;
  late final EpgServiceInit _serviceInit;
  late final EpgPublicApi _publicApi;
  final EpgManualMappingsStore _manualMappingsStore =
      EpgManualMappingsStore(db: LocalDbService.instance);
  final EpgNormalizedMappingStore _normalizedMappingStore =
      EpgNormalizedMappingStore();
  final EpgDisplayNamesStore _displayNamesStore = EpgDisplayNamesStore();
  String? _playlistIdentity;
  EpgManualMappingFacade? _manualMappingFacade;

  IncrementalEpgService() {
    wireEpgServiceModules(this);
  }

  // legacy prefs keys removed: do not store large EPG data in SharedPreferences
  static const int _channelsPerBatch = 50;
  static const int _maxRetries = 3;

  bool get isLoading => _isLoading;
  bool get isDownloading => _isDownloading;
  bool get isParsing => _isParsing;
  void setExternalDbBusy(bool busy) {
    if (_externalDbBusy == busy) return;
    _externalDbBusy = busy;
    debugLog(
        'EPG: External DB busy ${busy ? "enabled" : "cleared"} - suspending reads');
  }

  /// Set playback mode to suspend all notifyListeners during video playback.
  /// This prevents LiveTV screen rebuilds that cause video jitter (70-328ms per frame).
  void setPlaybackActive(bool active) {
    if (_playbackActive == active) return;
    _playbackActive = active;
    debugLog('EPG: Playback mode ${active ? "enabled" : "disabled"}');
    // When exiting playback, notify listeners to refresh the UI
    if (!active && !_disposed) {
      super.notifyListeners();
    }
  }

  String? get error => _error;
  Set<String> get availableChannels => _availableChannels;
  int get loadedChannelCount => _availableChannels.length;
  bool get isDbReady => _db.isReady;
  bool get isDbDisabled => _dbDisabled;
  bool get isDbClosedDetected => _dbClosedDetected;
  Duration get cacheDuration => _fileCache.cacheDuration;
  bool get hasEpgUrl => _epgUrl != null && _epgUrl!.isNotEmpty;
  bool get isReady =>
      _hasParsed &&
      !_isLoading &&
      !_isDownloading &&
      !(_isParsing && _programsByChannel.isEmpty) &&
      _availableChannels.isNotEmpty;
  String? get currentUrl => _epgUrl;
  int get allowedChannelCount => _allowedChannelCount;
  int get catchupChannelCount => _catchupByNormalizedId.length;

  /// Returns true if programs are actively being loaded from DB
  bool get isBatchLoading => _channelBatchLoader.isBatchLoading;

  /// Returns true if we have any loaded programs
  bool get hasLoadedPrograms =>
      _programsByChannel.values.any((list) => list.isNotEmpty);

  /// Number of channels that have at least one program loaded.
  int get loadedProgramChannelCount =>
      _programsByChannel.values.where((list) => list.isNotEmpty).length;

  double get epgProgress => _epgProgress;
  String? get epgProgressLabel =>
      _epgProgressLabel.isNotEmpty ? _epgProgressLabel : null;

  static String normalizeForFilter(String input) =>
      EpgNormalizeCache.normalizeForFilter(input);

  /// Allowed-set normalization: trim + lowercase only.
  static String normalizeForAllowedId(String input) =>
      EpgNormalizeCache.normalizeForAllowedId(input);

  void _invalidateProgramIndexCache() {
    _programQuery.invalidateIndexCache();
  }

  /// Quick startup initialization that prioritizes cached data
  Future<void> quickStart() => _serviceInit.quickStart();

  /// Force refresh EPG data with improved error handling
  Future<void> forceRefresh() => _serviceInit.forceRefresh();

  /// Check if EPG service has usable data available
  bool get hasUsableData {
    return hasLoadedPrograms ||
        (_normalizedAvailableChannels?.isNotEmpty == true) ||
        _availableChannels.isNotEmpty;
  }

  Future<void> initialize({bool forceRefresh = false}) async {
    await _serviceInit.initialize(forceRefresh: forceRefresh);
    _lastInitCompletedAt = DateTime.now();
    _startFreshnessTimer();
  }

  void _startFreshnessTimer() {
    _freshnessTimer ??=
        Timer.periodic(_freshnessCheckInterval, (_) => _maybeRefreshForFreshness());
  }

  /// Re-slice the cached EPG window after a day rollover or long idle so the
  /// current program stays accurate without a full network re-download. A DB
  /// reload recomputes its window from a fresh `now`, so this is cheap unless
  /// the on-disk cache itself has expired.
  void _maybeRefreshForFreshness() {
    if (_disposed) return;
    final last = _lastInitCompletedAt;
    if (last == null) return;
    if (_initInFlight || _isLoading || _isDownloading || _isParsing) return;
    if (_playbackActive) return;
    final now = DateTime.now();
    final dayChanged = now.day != last.day ||
        now.month != last.month ||
        now.year != last.year;
    final tooOld = now.difference(last) >= _freshnessMaxAge;
    if (!dayChanged && !tooOld) return;
    debugLog(
        'EPG: Freshness refresh (dayChanged=$dayChanged tooOld=$tooOld, lastInit=$last)');
    unawaited(initialize(forceRefresh: false));
  }

  Future<void> clearAllData(
      {bool clearUrls = true, bool clearSavedPlaylists = true}) =>
      _serviceInit.clearAllData(
        clearUrls: clearUrls,
        clearSavedPlaylists: clearSavedPlaylists,
      );

  Future<File> _getCacheFile() => _fileCache.getCacheFile();

  Future<void> _purgeCacheFiles() => _fileCache.purgeCacheFiles();

  Future<void> _backupCacheFile() => _fileCache.backupCacheFile();

  Future<bool> _isCacheValid({bool allowStale = false}) =>
      _fileCache.isCacheValid(allowStale: allowStale);

  Future<void> _loadChannelList({
    bool forceRefresh = false,
    bool allowStaleCache = false,
    bool fromBackgroundRefresh = false,
    bool skipDbLoad = false,
    bool currentDayOnly = false,
  }) =>
      _channelListLoader.loadChannelList(
        forceRefresh: forceRefresh,
        allowStaleCache: allowStaleCache,
        fromBackgroundRefresh: fromBackgroundRefresh,
        skipDbLoad: skipDbLoad,
        currentDayOnly: currentDayOnly,
      );

  String? _buildCatchupUrl(String epgId, int startTs, int endTs,
          {required int nowMs}) =>
      _mappingFacade.buildCatchupUrl(epgId, startTs, endTs, nowMs: nowMs);

  String _normalize(String text) => EpgManualMappingFacade.normalize(text);

  void _resetMatchDiagnostics() {} // Keep empty for now
  void _logMatchDiagnostics({String context = 'EPG'}) {}

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _mappingFacade.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      _maybeRefreshForFreshness();
    }
  }

  @override
  void dispose() {
    _disposed = true;
    _freshnessTimer?.cancel();
    _freshnessTimer = null;
    _publicApi.flushPendingMappingPersists();
    _mappingFacade.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
