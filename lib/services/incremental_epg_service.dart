import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:xml/xml_events.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/services/smart_cache_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';

// Helper to fire and forget futures
void unawaited(Future<void> future) {
  future.catchError((error) {
    debugLog('Unawaited future error: $error');
  });
}

// Provider-block exception type removed — provider HTML cases are handled
// via graceful aborts and user-facing `_error` messages to preserve
// last-known-good EPG state.

class CatchupInfo {
  final String streamId;
  final int durationHours;
  const CatchupInfo({required this.streamId, required this.durationHours});
}

class IncrementalEpgService extends ChangeNotifier with WidgetsBindingObserver {
  final Set<String> _availableChannels = {};
  final Map<String, String?> _internalToEpgIdMapping = {};
  Map<String, List<String>>?
      _normalizedAvailableChannels; // normalizedId -> [originalId1, originalId2]
  final Set<String> _epgIdsRaw = {};
  final Map<String, String> _epgIdsLowerToRaw = {};
  Map<String, List<String>> _epgDisplayNamesById = {};

  final bool _enableMatchingDiagnostics = kDebugMode;
  final Map<String, String> _normalizeCache = {};
  bool _isLoading = false;
  bool _isDownloading = false;
  bool _isParsing = false;
  bool _externalDbBusy = false;
  String? _error;
  String? _epgUrl;
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
  DateTime? _lastMappingsLoad;
  DateTime? _lastInitAttempt;
  DateTime? _lastDownloadTime; // Track when last download completed
  Set<String> _allowedChannelIdsNormalized = {};
  int _allowedChannelCount = 0;
  int _epgFutureHours = 8;
  static const int _initialFutureHours = 6;
  static const int _fullFutureHours = 24;
  static const int _epgPastWindowHours = 24;
  static const int _epgFutureWindowHours = 24;
  bool _extendedWindowScheduled = false;
  bool _extendingWindow = false;
  Map<String, CatchupInfo> _catchupByNormalizedId = {};
  Map<String, int> _catchupHoursByNormalizedId = {};
  String? _xtreamServer;
  String? _xtreamUsername;
  String? _xtreamPassword;
  bool _disposed = false; // Track if provider is disposed
  
  // Throttle notifyListeners for performance - max once per 100ms
  DateTime? _lastNotifyTime;
  bool _notifyPending = false;
  static const Duration _notifyThrottleInterval = Duration(milliseconds: 100);

  /// Override notifyListeners to prevent "setState after dispose" crashes
  /// and throttle notifications for performance
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

  // Storage for all parsed programs
  final Map<String, List<Program>> _programsByChannel = {};
  final Map<String, int> _lastProgramIndexByChannel = {};
  static const int _channelFailureThreshold = 3;
  final Map<String, int> _channelFailureCounts = {};
  final Set<String> _loggedMissingEpgIds = {};
  final Set<String> _loggedMissingProgramChannels = {};
  final LocalDbService _db = LocalDbService.instance;
  final Map<String, String> _manualMappings = {};
  static const String _manualMappingsKey = 'epg_manual_mappings';
  String? _playlistIdentity;
  // FIX: Don't suspend DB reads during parsing/loading since we use WAL mode.
  // Blocking reads causes UI to show no data for ~7s during parse.
  bool get _suspendDbReads => _dbDisabled;

  IncrementalEpgService() {
    WidgetsBinding.instance.addObserver(this);
  }

  // Provider-style alias map (normalized) to bridge common naming drift
  // Regexes moved to EPGMatchingUtils
  static final RegExp _httpSchemeRe = RegExp(r'https?://', caseSensitive: false);
  static final RegExp _schemeValidRe = RegExp(r'^[A-Za-z]');
  static final RegExp _programmeStartRe =
      RegExp(r'<(?:\w+:)?programme\b', caseSensitive: false);
  static final RegExp _programmeEndRe =
      RegExp(r'</(?:\w+:)?programme\s*>', caseSensitive: false);
  static final RegExp _channelStartRe =
      RegExp(r'<(?:\w+:)?channel\b', caseSensitive: false);
  static final RegExp _channelEndRe =
      RegExp(r'</(?:\w+:)?channel\s*>', caseSensitive: false);

  // Word replacements moved to EPGMatchingUtils

  static const int _fnvOffsetBasis = 0xcbf29ce484222325;
  static const int _fnvPrime = 0x100000001b3;

  // legacy prefs keys removed: do not store large EPG data in SharedPreferences
  static const String _epgCacheTimeKey = 'epg_cache_time';
  static const String _epgCacheUrlKey = 'epg_cache_url';
  static const String _epgCacheBackupFileName = 'epg_cache_backup.xml.gz';
  static const String _normalizedMapFileName = 'epg_normalized.json';
  static const int _channelsPerBatch = 50;
  static const int _maxRetries = 3;
  static const int _defaultCacheHours = 6;
  Duration _cacheDuration = const Duration(hours: _defaultCacheHours);

  bool get isLoading => _isLoading;
  bool get isDownloading => _isDownloading;
  bool get isParsing => _isParsing;
  void setExternalDbBusy(bool busy) {
    if (_externalDbBusy == busy) return;
    _externalDbBusy = busy;
    debugLog(
        'EPG: External DB busy ${busy ? "enabled" : "cleared"} - suspending reads');
  }
  String? get error => _error;
  Set<String> get availableChannels => _availableChannels;
  int get loadedChannelCount => _availableChannels.length;
  bool get isDbReady => _db.isReady;
  bool get isDbDisabled => _dbDisabled;
  bool get isDbClosedDetected => _dbClosedDetected;
  Duration get cacheDuration => _cacheDuration;
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
  bool get isBatchLoading => _pendingBatch.isNotEmpty || _batchTimer != null;

  /// Returns true if we have any loaded programs
  bool get hasLoadedPrograms =>
      _programsByChannel.values.any((list) => list.isNotEmpty);
  double get epgProgress => _epgProgress;
  String? get epgProgressLabel =>
      _epgProgressLabel.isNotEmpty ? _epgProgressLabel : null;

  static String normalizeForFilter(String input) {
    return EPGMatchingUtils.normalizeChannelName(input);
  }

  /// Allowed-set normalization: trim + lowercase only.
  static String normalizeForAllowedId(String input) {
    return input.trim().toLowerCase();
  }

  void _handleDbError(Object error) {
    final message = error.toString().toLowerCase();
    if (message.contains('read-only') ||
        message.contains('read only') ||
        message.contains('readonly') ||
        message.contains('locked')) {
      _dbDisabled = true;
    }
    if (message.contains('database_closed') ||
        message.contains('database closed')) {
      _dbClosedDetected = true;
    }
  }

  Future<void> _restoreDbIfClosed() async {
    if (!_dbClosedDetected) return;
    try {
      await _db.init().timeout(const Duration(seconds: 5));
      _dbDisabled = false;
      _dbClosedDetected = false;
      debugLog('EPG: DB reopened after close');
    } catch (e) {
      debugLog('EPG: DB reopen failed: $e');
    }
  }

  /// Reset all loading states to ensure clean state
  void _resetLoadingState() {
    _isLoading = false;
    _isDownloading = false;
    _isParsing = false;
    _stopParseProgressTimer();
    _epgProgress = 0.0;
    _epgProgressLabel = '';
  }

  void _setEpgProgress(double value, {String? label}) {
    final clamped = value.clamp(0.0, 1.0);
    final labelChanged = label != null && label != _epgProgressLabel;
    if ((clamped - _epgProgress).abs() < 0.01 && !labelChanged) {
      return;
    }
    _epgProgress = clamped;
    if (label != null) {
      _epgProgressLabel = label;
    }
    notifyListeners();
  }

  void _startParseProgressTimer() {
    _stopParseProgressTimer();
    final parseStart = DateTime.now();
    _setEpgProgress(0.35, label: 'Parsing EPG');
    _parseProgressTimer =
        Timer.periodic(const Duration(milliseconds: 500), (_) {
      final elapsed = DateTime.now().difference(parseStart).inMilliseconds;
      final estimate = _lastParseDurationMs > 0 ? _lastParseDurationMs : 60000;
      final ratio = (elapsed / estimate).clamp(0.0, 0.98);
      final progress = 0.35 + (0.35 * ratio);
      _setEpgProgress(progress);
    });
  }

  void _stopParseProgressTimer() {
    _parseProgressTimer?.cancel();
    _parseProgressTimer = null;
  }

  void _invalidateProgramIndexCache() {
    _lastProgramIndexByChannel.clear();
  }

  /// Quick startup initialization that prioritizes cached data
  Future<void> quickStart() async {
    if (_isLoading || _isDownloading || _isParsing || _initInFlight) {
      return; // Already initializing
    }

    debugLog('EPG: Quick start initialization');

    try {
      // Try to load cached normalized mapping immediately for fast channel matching
      await _loadNormalizedMappingFromPrefs();

      // Initialize with progressive loading for fast startup
      await _initializeProgressively(forceRefresh: false);
    } catch (e) {
      debugLog('EPG: Quick start failed: $e');
    }
  }

  /// Force refresh EPG data with improved error handling
  Future<void> forceRefresh() async {
    debugLog('EPG: Force refresh requested');
    await _initializeProgressively(forceRefresh: true);
  }

  /// Progressive initialization: load current day first, then remaining days in background
  Future<void> _initializeProgressively({bool forceRefresh = false}) async {
    await _restoreDbIfClosed();
    if (!forceRefresh &&
        (_isLoading || _isDownloading || _isParsing || _initInFlight)) {
      debugLog('EPG: Progressive init skipped (already loading or in flight)');
      return;
    }

    final now = DateTime.now();
    if (!forceRefresh &&
        _lastInitAttempt != null &&
        now.difference(_lastInitAttempt!).inSeconds < 3) {
      debugLog('EPG: Progressive init skipped (throttled)');
      return;
    }
    _lastInitAttempt = now;
    _initInFlight = true;

    try {
      debugLog('EPG: Starting progressive EPG initialization...');

      // Initialize DB with timeout
      try {
        await _db.init().timeout(const Duration(seconds: 5));
      } catch (e) {
        debugLog('EPG: DB init failed (continuing without DB cache): $e');
        _handleDbError(e);
      }

      final prefs = await SharedPreferences.getInstance();

      // Load user's EPG cache duration preference
      final userCacheHours =
          prefs.getInt('epg_cache_duration') ?? _defaultCacheHours;
      _cacheDuration = Duration(hours: userCacheHours);
      debugLog('EPG: Using cache duration of $userCacheHours hours');

      // Get EPG URL
      final customEpgUrl = prefs.getString('custom_epg_url');
      final storedEpgUrl = prefs.getString('epg_url');
      _epgUrl = customEpgUrl;
      if (_epgUrl == null || _epgUrl!.isEmpty) {
        _epgUrl = storedEpgUrl;
      }
      _epgUrl = _epgUrl?.trim();

      if (_epgUrl != null && _epgUrl!.isNotEmpty) {
        final normalized = _normalizeEpgUrl(_epgUrl!);
        if (normalized != _epgUrl) {
          _epgUrl = normalized;
          if (customEpgUrl != null && customEpgUrl.isNotEmpty) {
            await prefs.setString('custom_epg_url', normalized);
          } else if (storedEpgUrl != null && storedEpgUrl.isNotEmpty) {
            await prefs.setString('epg_url', normalized);
          }
        }

        final uri = Uri.tryParse(_epgUrl!);
        final scheme = uri?.scheme ?? '';
        final schemeValid =
            scheme.isNotEmpty && _schemeValidRe.hasMatch(scheme);
        if (uri == null || !schemeValid) {
          _error = 'Invalid EPG URL';
          debugLog('EPG: Invalid URL configured: $_epgUrl');
          _resetLoadingState();
          notifyListeners();
          return;
        }
      }

      await _handleCacheUrlChange(prefs);
      await _loadManualMappings(prefs);
      _applyManualMappings();
      _epgFutureHours = _initialFutureHours;
      _extendedWindowScheduled = false;
      _extendingWindow = false;

      if (_epgUrl != null && _epgUrl!.isNotEmpty) {
        debugLog('EPG: Progressive initialization with URL: $_epgUrl');

        // Try loading persisted normalized mapping early
        await _loadNormalizedMappingFromPrefs();
        await loadMappingsFromDb();

        // Skip current-day-only parse; go straight to full-window parsing
        // to avoid under-matching feeds that are future-dated or shifted.
        await _loadChannelList(
          forceRefresh: forceRefresh,
          allowStaleCache: !forceRefresh,
          currentDayOnly: false,
        );

        // Load remaining days in background
        unawaited(_loadRemainingDaysInBackground());
      } else {
        debugLog('EPG: No URL configured (checked custom_epg_url and epg_url)');
        _error = 'No EPG URL configured';
        _resetLoadingState();
        notifyListeners();
      }

      debugLog(
          'EPG: Progressive init complete - URL: $_epgUrl, Available channels: ${_availableChannels.length}, Loaded channels: ${_programsByChannel.length}');
    } catch (e) {
      debugLog('EPG: Progressive initialization error: $e');
      _error = 'Failed to initialize EPG service: $e';
      _resetLoadingState();
      notifyListeners();
    } finally {
      _initInFlight = false;
      if (_pendingAllowedRefresh &&
          _allowedChannelIdsNormalized.isNotEmpty &&
          !_isLoading &&
          !_isDownloading &&
          !_isParsing) {
        _pendingAllowedRefresh = false;
        unawaited(_initializeProgressively(forceRefresh: false));
      }
    }
  }

  /// Load remaining days in background (non-blocking)
  Future<void> _loadRemainingDaysInBackground() async {
    try {
      debugLog('EPG: Loading remaining EPG days in background...');

      // Small delay to let current day render first
      await Future.delayed(const Duration(milliseconds: 500));

      final start = DateTime.now();
      await _loadChannelList(
        forceRefresh: false,
        allowStaleCache: true,
        fromBackgroundRefresh: true,
        currentDayOnly: false,
      );
      debugLog(
          'EPG: Background EPG load took ${DateTime.now().difference(start).inMilliseconds}ms');

      debugLog('EPG: ✓ Full EPG loaded in background');
      // CRITICAL: Notify listeners so UI knows EPG data is ready
      notifyListeners();
    } catch (e) {
      debugLog('EPG: Background EPG loading error: $e');
      // Don't update error state as current day is already loaded
    }
  }

  /// Check if EPG service has usable data available
  bool get hasUsableData {
    return hasLoadedPrograms ||
        (_normalizedAvailableChannels?.isNotEmpty == true) ||
        _availableChannels.isNotEmpty;
  }

  String _normalizeEpgUrl(String input) {
    var url = input.trim();
    url = url.replaceAll('\uFEFF', '');
    while (url.startsWith('"') || url.startsWith("'")) {
      url = url.substring(1);
    }
    while (url.endsWith('"') || url.endsWith("'")) {
      url = url.substring(0, url.length - 1);
    }
    final httpIndex = url.indexOf(_httpSchemeRe);
    if (httpIndex > 0) {
      url = url.substring(httpIndex);
    }
    if (url.startsWith('//')) {
      url = 'https:$url';
    }
    if (!url.contains('://')) {
      url = 'https://$url';
    }
    return url;
  }

  bool _looksLikeGzip(List<int> bytes) {
    return bytes.length >= 2 && bytes[0] == 0x1f && bytes[1] == 0x8b;
  }

  Future<String> _readDecodedPrefix(File file, {int maxBytes = 16384}) async {
    final buffer = <int>[];
    final stream = file.openRead();
    final decoded = file.path.toLowerCase().endsWith('.gz')
        ? stream.transform(gzip.decoder)
        : stream;
    await for (final chunk in decoded) {
      buffer.addAll(chunk);
      if (buffer.length >= maxBytes) break;
    }
    return utf8.decode(buffer, allowMalformed: true).trimLeft().toLowerCase();
  }

  void setAllowedChannelIds(Set<String> channelIds,
      {bool triggerRefresh = false}) {
    // Standardize IDs for filtering - helps with targeted EPG parsing
    _allowedChannelIdsNormalized =
        channelIds.map((id) => normalizeForAllowedId(id)).toSet();
    _allowedChannelCount = _allowedChannelIdsNormalized.length;
    debugLog(
        'EPG: Allowed channel set size: ${_allowedChannelIdsNormalized.length}');
    _internalToEpgIdMapping.clear(); // Clear cache when selection changes
    if (triggerRefresh) {
      if (_isLoading || _isDownloading || _isParsing || _initInFlight) {
        _pendingAllowedRefresh = true;
      } else {
        unawaited(initialize(forceRefresh: false));
      }
    }
  }

  void setCatchupConfig(Map<String, CatchupInfo> config,
      {bool triggerRefresh = false}) {
    _catchupByNormalizedId = config;
    _catchupHoursByNormalizedId =
        config.map((key, value) => MapEntry(key, value.durationHours));
    if (triggerRefresh) {
      if (_isLoading || _isDownloading || _isParsing || _initInFlight) {
        _pendingAllowedRefresh = true;
      } else {
        unawaited(initialize(forceRefresh: false));
      }
    }
  }

  void setXtreamCredentials(
      {required String serverUrl,
      required String username,
      required String password}) {
    _xtreamServer = serverUrl;
    _xtreamUsername = username;
    _xtreamPassword = password;
  }

  void setPlaylistIdentity(String? identity) {
    final normalized = identity?.trim();
    final next = (normalized != null && normalized.isNotEmpty) ? normalized : null;
    if (next == _playlistIdentity) return;
    _playlistIdentity = next;
    _manualMappings.clear();
    unawaited(() async {
      final prefs = await SharedPreferences.getInstance();
      await _loadManualMappings(prefs);
      _applyManualMappings();
      notifyListeners();
    }());
  }

  Future<void> initialize({bool forceRefresh = false}) async {
    // Use progressive initialization for better startup performance
    await _initializeProgressively(forceRefresh: forceRefresh);
  }

  Future<void> clearAllData(
      {bool clearUrls = true, bool clearSavedPlaylists = true}) async {
    _resetLoadingState();
    _error = null;
    _hasParsed = false;
    _epgUrl = null;
    _pendingAllowedRefresh = false;
    _extendedWindowScheduled = false;
    _extendingWindow = false;
    _lastDownloadTime = null; // Reset download timestamp to allow fresh download
    _availableChannels.clear();
    _resetEpgIdIndex();
    _internalToEpgIdMapping.clear();
    _normalizedAvailableChannels = null;
    
    _normalizeCache.clear();
    _manualMappings.clear();
    _programsByChannel.clear();
    _lastProgramIndexByChannel.clear();
    _channelFailureCounts.clear();
    _loggedMissingEpgIds.clear();
    _loggedMissingProgramChannels.clear();
    _invalidateProgramIndexCache();
    _resetMatchDiagnostics();
    notifyListeners();

    try {
      await _db.clearEpg();
    } catch (e) {
      debugLog('EPG: Failed to clear DB cache: $e');
    }

    try {
      final cacheFile = await _getCacheFile();
      if (await cacheFile.exists()) await cacheFile.delete();
    } catch (e) {
      debugLog('EPG: Failed to delete cache file: $e');
    }

    try {
      final backupFile = await _getCacheBackupFile();
      if (await backupFile.exists()) await backupFile.delete();
    } catch (e) {
      debugLog('EPG: Failed to delete cache backup: $e');
    }

    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/${_normalizedMapFileNameForPlaylist()}');
      if (await file.exists()) await file.delete();
      if (_normalizedMapFileNameForPlaylist() != _normalizedMapFileName) {
        final legacy = File('${dir.path}/$_normalizedMapFileName');
        if (await legacy.exists()) await legacy.delete();
      }
    } catch (e) {
      debugLog('EPG: Failed to delete normalized mapping file: $e');
    }

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_epgCacheTimeKey);
      await prefs.remove(_epgCacheUrlKey);
      await prefs.remove(_manualMappingsKey);
      final scopedKey = _manualMappingsStorageKey();
      if (scopedKey != _manualMappingsKey) {
        await prefs.remove(scopedKey);
      }
      if (clearUrls) {
        await prefs.remove('custom_epg_url');
        await prefs.remove('epg_url');
        await prefs.remove('secondary_epg_url');
      }

      final keys = prefs.getKeys();
      for (final key in keys) {
        if (key.startsWith('m3u_epg_url_') ||
            key.startsWith('m3u_secondary_epg_') ||
            key.startsWith('xtream_epg_url_') ||
            key.startsWith('xtream_secondary_epg_')) {
          await prefs.remove(key);
        }
      }

      if (clearSavedPlaylists) {
        final playlistsJson = prefs.getString('saved_playlists');
        if (playlistsJson != null && playlistsJson.trim().isNotEmpty) {
          final List<dynamic> decoded = jsonDecode(playlistsJson);
          final updated = decoded.map((entry) {
            final map = Map<String, dynamic>.from(entry as Map);
            map['epgUrl'] = null;
            map['epgUrlSecondary'] = null;
            return map;
          }).toList();
          await prefs.setString('saved_playlists', jsonEncode(updated));
        }
      }
    } catch (e) {
      debugLog('EPG: Failed to clear EPG prefs: $e');
    }
  }

  Future<void> _handleCacheUrlChange(SharedPreferences prefs) async {
    final currentUrl = _epgUrl ?? '';
    final cachedUrl = prefs.getString(_epgCacheUrlKey) ?? '';
    if (currentUrl.isEmpty) return;
    if (cachedUrl.isNotEmpty && cachedUrl != currentUrl) {
      debugLog(
          'EPG: URL changed; clearing cache (old=$cachedUrl, new=$currentUrl)');
      await prefs.remove(_epgCacheTimeKey);
      await prefs.setString(_epgCacheUrlKey, currentUrl);
      try {
        final cacheFile = await _getCacheFile();
        if (await cacheFile.exists()) await cacheFile.delete();
      } catch (e) {
        debugLog('EPG: Failed to delete cache file: $e');
      }
      await _saveNormalizedMappingToPrefs(null);
      _normalizedAvailableChannels = null;
      
      _availableChannels.clear();
      _resetEpgIdIndex();
      _internalToEpgIdMapping.clear();
      _programsByChannel.clear();
      _invalidateProgramIndexCache();
      _hasParsed = false;
    } else if (cachedUrl.isEmpty) {
      await prefs.setString(_epgCacheUrlKey, currentUrl);
    }
  }

  Future<void> _loadManualMappings(SharedPreferences prefs) async {
    try {
      final key = _manualMappingsStorageKey();
      var jsonStr = prefs.getString(key);
      if (jsonStr == null || jsonStr.trim().isEmpty) {
        if (key != _manualMappingsKey) {
          jsonStr = prefs.getString(_manualMappingsKey);
        }
      }
      if (jsonStr == null || jsonStr.trim().isEmpty) return;
      final Map<String, dynamic> decoded = jsonDecode(jsonStr);
      _manualMappings
        ..clear()
        ..addAll(decoded.map(
          (key, value) => MapEntry(key, value.toString()),
        ));
      if (key != _manualMappingsKey) {
        await prefs.setString(key, jsonEncode(_manualMappings));
      }
    } catch (e) {
      debugLog('EPG: Failed to load manual mappings: $e');
    }
  }

  Future<void> _saveManualMappings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        _manualMappingsStorageKey(),
        jsonEncode(_manualMappings),
      );
    } catch (e) {
      debugLog('EPG: Failed to save manual mappings: $e');
    }
  }

  void _applyManualMappings() {
    if (_manualMappings.isEmpty) return;
    _manualMappings.forEach((channelId, epgId) {
      if (channelId.isEmpty || epgId.isEmpty) return;
      _internalToEpgIdMapping[channelId] = epgId;
      _registerAvailableChannel(epgId);
    });
  }

  Future<void> _saveNormalizedMappingToPrefs(
      Map<String, List<String>>? mapping) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/${_normalizedMapFileNameForPlaylist()}');
      if (mapping == null || mapping.isEmpty) {
        if (await file.exists()) await file.delete();
        return;
      }
      final jsonStr = await compute(json.encode, mapping);
      await file.writeAsString(jsonStr);
      debugLog(
          'EPG: Saved normalized mapping (${mapping.length} entries) to ${file.path}');
    } catch (e) {
      debugLog('EPG: Failed to save normalized mapping: $e');
    }
  }

  String _manualMappingsStorageKey() {
    final identity = _playlistIdentity?.trim();
    if (identity == null || identity.isEmpty) {
      return _manualMappingsKey;
    }
    return '${_manualMappingsKey}_$identity';
  }

  String _normalizedMapFileNameForPlaylist() {
    final identity = _playlistIdentity?.trim();
    if (identity == null || identity.isEmpty) {
      return _normalizedMapFileName;
    }
    return 'epg_normalized_$identity.json';
  }

  void _queueMappingPersist(String channelId, String epgId) {
    if (channelId.isEmpty || epgId.isEmpty) return;
    if (_dbDisabled || !_db.isReady) return;
    unawaited(
      _db.upsertEpgMapping({channelId: epgId}).catchError((e) {
        _handleDbError(e);
      }),
    );
  }

  String? _cacheResolvedMapping(String channelId, String? epgId) {
    _internalToEpgIdMapping[channelId] = epgId;
    if (epgId != null) {
      _queueMappingPersist(channelId, epgId);
    }
    return epgId;
  }

  Future<void> _loadNormalizedMappingFromPrefs() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/${_normalizedMapFileNameForPlaylist()}');
      File? legacyFile;
      if (!await file.exists()) {
        final legacy = File('${dir.path}/$_normalizedMapFileName');
        if (await legacy.exists()) {
          legacyFile = legacy;
        } else {
          return;
        }
      }
      final sourceFile = await file.exists() ? file : legacyFile!;
      final jsonStr = await sourceFile.readAsString();
      if (jsonStr.isEmpty) return;
      final data = await compute(json.decode, jsonStr) as Map<String, dynamic>;
      _normalizedAvailableChannels = data.map((k, v) =>
          MapEntry(k, (v as List<dynamic>).map((e) => e.toString()).toList()));
      
      _availableChannels
          .addAll(_normalizedAvailableChannels!.values.expand((list) => list));
      _rebuildEpgIdIndexFromIds(_availableChannels);
      debugLog(
          'EPG: Loaded normalized mapping from file (${_normalizedAvailableChannels!.length} entries)');
      if (sourceFile.path != file.path) {
        await _saveNormalizedMappingToPrefs(_normalizedAvailableChannels);
      }
    } catch (e) {
      debugLog('EPG: Failed to load normalized mapping from file: $e');
    }
  }

  Future<File> _getCacheFile() async {
    final dir = await getTemporaryDirectory();
    return File('${dir.path}/epg_cache.xml.gz');
  }

  Future<File> _getCacheBackupFile() async {
    final dir = await getApplicationSupportDirectory();
    return File('${dir.path}/$_epgCacheBackupFileName');
  }

  Future<void> _purgeCacheFiles() async {
    try {
      final cacheFile = await _getCacheFile();
      if (await cacheFile.exists()) {
        await cacheFile.delete();
      }
    } catch (_) {}
    try {
      final backupFile = await _getCacheBackupFile();
      if (await backupFile.exists()) {
        await backupFile.delete();
      }
    } catch (_) {}
  }

  Future<void> _restoreCacheFromBackupIfMissing() async {
    try {
      final cacheFile = await _getCacheFile();
      if (await cacheFile.exists()) return;
      final backupFile = await _getCacheBackupFile();
      if (!await backupFile.exists()) return;
      await backupFile.copy(cacheFile.path);
      debugLog('EPG: Restored cache from backup.');
    } catch (e) {
      debugLog('EPG: Failed to restore cache backup: $e');
    }
  }

  Future<void> _backupCacheFile() async {
    try {
      final cacheFile = await _getCacheFile();
      if (!await cacheFile.exists()) return;
      final backupFile = await _getCacheBackupFile();
      await backupFile.parent.create(recursive: true);
      await cacheFile.copy(backupFile.path);
      debugLog('EPG: Saved cache backup to ${backupFile.path}');
    } catch (e) {
      debugLog('EPG: Failed to backup cache file: $e');
    }
  }

  Future<bool> _isCacheValid({bool allowStale = false}) async {
    try {
      final file = await _getCacheFile();
      if (!await file.exists()) {
        debugLog('EPG: Cache file does not exist.');
        return false;
      }

      final modified = await file.lastModified();
      final length = await file.length();
      if (length == 0) {
        debugLog('EPG: Cache file is empty.');
        return false;
      }

      // If allowStale is true, always return true if file exists and has content
      if (allowStale) {
        debugLog(
            'EPG: Allowing stale cache. Age: ${DateTime.now().difference(modified).inMinutes} minutes. Size: ${(length / 1024 / 1024).toStringAsFixed(2)} MB');
        return true;
      }

      final age = DateTime.now().difference(modified);
      final isValid = age < _cacheDuration;
      debugLog(
          'EPG: Cache is ${isValid ? 'valid' : 'stale'}. Age: ${age.inMinutes} minutes. Size: ${(length / 1024 / 1024).toStringAsFixed(2)} MB');
      return isValid;
    } catch (e) {
      debugLog('EPG: Error checking cache validity: $e');
      return false;
    }
  }

  Future<void> _downloadEpgIfNeeded({bool forceRefresh = false}) async {
    if (_epgUrl == null || _epgUrl!.isEmpty) {
      debugLog('EPG: Download skipped, no EPG URL configured.');
      _isDownloading = false;
      _isParsing = false;
      _isLoading = false;
      _epgProgress = 0.0;
      _epgProgressLabel = '';
      notifyListeners();
      return;
    }
    if (_epgUrl == null) {
      debugLog('EPG: Download skipped, no EPG URL.');
      return;
    }

    await _restoreCacheFromBackupIfMissing();

    // CRITICAL: On force refresh, clear cache timestamp to force re-download
    if (forceRefresh) {
      debugLog('EPG: Force refresh - clearing cache timestamp');
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove(_epgCacheTimeKey);
        await SmartCacheService.instance.clearCache(forceRefresh: true);
      } catch (e) {
        debugLog('EPG: Failed to clear cache timestamp: $e');
      }
    }

    // Skip download if we just downloaded recently (within 30 seconds)
    // This prevents redundant downloads when loading current day then full EPG
    if (!forceRefresh && _lastDownloadTime != null) {
      final timeSinceLastDownload = DateTime.now().difference(_lastDownloadTime!);
      if (timeSinceLastDownload.inSeconds < 30) {
        final cacheFile = await _getCacheFile();
        if (await cacheFile.exists() && await cacheFile.length() > 0) {
          debugLog('EPG: Skipping download - just downloaded ${timeSinceLastDownload.inSeconds}s ago.');
          return;
        }
      }
    }

    // Check cache validity - if we have stale cache and no force refresh,
    // use the stale cache for immediate loading and refresh in background
    if (!forceRefresh) {
      final hasCache = await _isCacheValid(allowStale: true);
      // CRITICAL: Check hasLoadedPrograms, not just isNotEmpty
      if (hasCache && hasLoadedPrograms) {
        debugLog('EPG: Using existing cached data for immediate load.');
        return;
      }
      final isValidCache = await _isCacheValid(allowStale: false);
      if (isValidCache) {
        debugLog('EPG: Using valid cached file, skipping download.');
        return;
      }
    }

    // Single-flight: prevent overlapping downloads
    if (_isDownloading) {
      debugLog(
          'EPG: Download already in progress, skipping concurrent request.');
      return;
    }

    _isDownloading = true;
    _error = null;
    notifyListeners();
    _setEpgProgress(0.05, label: 'Downloading EPG');
    debugLog('EPG: Starting EPG download from $_epgUrl...');
    final downloadStart = DateTime.now();

    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 60)
      // Manage decompression ourselves so we can inspect headers/body and
      // avoid accidental double-decompression by the HttpClient.
      ..autoUncompress = false
      ..badCertificateCallback = (cert, host, port) => true;

    try {
      final request = await client.getUrl(Uri.parse(_epgUrl!));
      request.headers.add('Accept-Encoding', 'gzip, deflate');

      final response = await request.close();
      final contentLength = response.contentLength;

      // 1) HTTP status check — abort gracefully on non-200
      if (response.statusCode != 200) {
        _error = 'EPG fetch failed: HTTP ${response.statusCode}';
        debugLog('EPG: $_error');
        // Ensure no partial cache remains
        final cf = await _getCacheFile();
        if (await cf.exists()) await cf.delete();
        debugLog(
            'EPG: Download aborted in ${DateTime.now().difference(downloadStart).inMilliseconds}ms');
        return;
      }

      // 2) Content-Type sanity check
      final contentTypeHeader =
          response.headers.value('content-type')?.toLowerCase();
      final isXml =
          contentTypeHeader != null && contentTypeHeader.contains('xml');
      final isGzip = contentTypeHeader != null &&
          (contentTypeHeader.contains('gzip') ||
              contentTypeHeader.contains('application/x-gzip'));
      final isAttachment =
          contentTypeHeader != null && contentTypeHeader.contains('attachment');
      final isOctetStream = contentTypeHeader != null &&
          contentTypeHeader.contains('application/octet-stream');
      if (!isXml && !isGzip && !isAttachment && !isOctetStream) {
        _error =
            'EPG response is not XML (Content-Type: ${contentTypeHeader ?? 'unknown'})';
        debugLog('EPG: $_error');
        throw Exception(_error);
      }
      if (isAttachment || isOctetStream) {
        debugLog(
            'EPG: Content-Type is $contentTypeHeader; will sniff body for XML/GZIP.');
      }

      final file = await _getCacheFile();
      var received = 0;
      var writeRawGzip = false;

      // Respect Content-Encoding header and avoid double-decompress.
      final encHeader =
          response.headers.value('content-encoding')?.toLowerCase() ?? '';
      final isGzipHeader = encHeader.contains('gzip');
      final isDeflateHeader =
          encHeader.contains('deflate') || encHeader.contains('zlib');
      final isGzipExt = _epgUrl!.toLowerCase().split('?').first.endsWith('.gz');

      debugLog(
          'EPG: Downloading content (Content-Encoding: $encHeader, Ext GZIP: $isGzipExt)...');

      final sink = file.openWrite();
      ByteConversionSink? gzipSink;

      try {
        Stream<List<int>> stream = response;

        // Apply decompression only when the response body is encoded.
        if (isGzipHeader || isGzipExt) {
          stream = stream.transform(gzip.decoder);
        } else if (isDeflateHeader) {
          stream = stream.transform(zlib.decoder);
        }

        // We'll inspect the first decoded chunk(s) to ensure the response
        // looks like XML (starts with '<'). If it looks like an HTML error
        // page, surface a clear error and abort.
        final firstBuffer = <int>[];
        bool headerChecked = false;
        const int requiredInspectBytes = 4096;

        late StreamSubscription<List<int>> sub;
        sub = stream.listen((data) {
          try {
            if (!headerChecked) {
              firstBuffer.addAll(data);
              // If we have enough or this is the last chunk, inspect.
              if (firstBuffer.length >= requiredInspectBytes) {
                if (!isGzipHeader &&
                    !isGzipExt &&
                    !isDeflateHeader &&
                    _looksLikeGzip(firstBuffer)) {
                  writeRawGzip = true;
                  sink.add(firstBuffer);
                  headerChecked = true;
                  return;
                }

                final preview = utf8
                    .decode(firstBuffer, allowMalformed: true)
                    .trimLeft()
                    .toLowerCase();
                if (preview.isEmpty) {
                  _error = 'EPG response body is empty or unreadable';
                  debugLog('EPG: $_error');
                  sub.cancel();
                  sink.close();
                  // cleanup
                  try {
                    if (file.existsSync()) file.deleteSync();
                  } catch (_) {}
                  return;
                }

                if (!preview.startsWith('<')) {
                  _error = 'EPG response does not start with XML';
                  debugLog('EPG: $_error');
                  sub.cancel();
                  sink.close();
                  try {
                    if (file.existsSync()) file.deleteSync();
                  } catch (_) {}
                  return;
                }

                if (preview.startsWith('<!doctype html') ||
                    preview.startsWith('<html')) {
                  _error = 'EPG unavailable from provider';
                  debugLog('EPG: Provider returned HTML error page');
                  sub.cancel();
                  sink.close();
                  try {
                    if (file.existsSync()) file.deleteSync();
                  } catch (_) {}
                  return;
                }

                // Looks like XML — write the buffered bytes and continue
                gzipSink ??= gzip.encoder.startChunkedConversion(sink);
                gzipSink!.add(firstBuffer);
                headerChecked = true;
              }
            } else {
              if (writeRawGzip) {
                sink.add(data);
              } else {
                gzipSink ??= gzip.encoder.startChunkedConversion(sink);
                gzipSink!.add(data);
              }
            }

            received += data.length;
            if (contentLength > 0 &&
                !isGzipHeader &&
                !isGzipExt &&
                !isDeflateHeader) {
              final ratio = (received / contentLength).clamp(0.0, 1.0);
              _setEpgProgress(0.05 + (0.25 * ratio));
            }
            if (received % (5 * 1024 * 1024) < 100000) {
              debugLog(
                  'EPG: Downloaded ${(received / (1024 * 1024)).toStringAsFixed(1)} MB');
              // Don't notifyListeners here to prevent UI jank/freeze during download
            }
          } catch (e) {
            debugLog('EPG: Stream chunk handling error: $e');
            try {
              sink.close();
            } catch (_) {}
            try {
              if (file.existsSync()) file.deleteSync();
            } catch (_) {}
            return;
          }
        }, onDone: () async {
          // If header wasn't checked yet (small content), check now
          if (!headerChecked) {
            if (!isGzipHeader &&
                !isGzipExt &&
                !isDeflateHeader &&
                _looksLikeGzip(firstBuffer)) {
              writeRawGzip = true;
              sink.add(firstBuffer);
              headerChecked = true;
              await sink.close();
              return;
            }

            final preview = utf8
                .decode(firstBuffer, allowMalformed: true)
                .trimLeft()
                .toLowerCase();
            if (preview.isEmpty) {
              _error = 'EPG response body is empty or unreadable';
              debugLog('EPG: $_error');
              await sink.close();
              try {
                if (file.existsSync()) await file.delete();
              } catch (_) {}
              return;
            }

            if (!preview.startsWith('<')) {
              _error = 'EPG response does not start with XML';
              debugLog('EPG: $_error');
              await sink.close();
              try {
                if (file.existsSync()) await file.delete();
              } catch (_) {}
              return;
            }

            if (preview.startsWith('<!doctype html') ||
                preview.startsWith('<html')) {
              _error = 'EPG unavailable from provider';
              debugLog('EPG: Provider returned HTML error page');
              await sink.close();
              try {
                if (file.existsSync()) await file.delete();
              } catch (_) {}
              return;
            }

            // Looks like XML — write buffer
            gzipSink ??= gzip.encoder.startChunkedConversion(sink);
            gzipSink!.add(firstBuffer);
            headerChecked = true;
          }

          if (writeRawGzip) {
            await sink.close();
          } else {
            gzipSink ??= gzip.encoder.startChunkedConversion(sink);
            gzipSink!.close();
            await sink.close();
          }
        });
        await sub.asFuture();
      } catch (e) {
        debugLog('EPG: Error during download/decompression/check: $e');
        try {
          if (await file.exists()) await file.delete();
        } catch (_) {}
        _error = 'EPG download failed: $e';
        return;
      }

      final fileSize = await file.length();
      debugLog(
          'EPG: Download complete. Saved to ${file.path} (${(fileSize / 1024).toStringAsFixed(2)} KB)');
      debugLog(
          'EPG: Download finished in ${DateTime.now().difference(downloadStart).inMilliseconds}ms');

      // Minimal sanity checks on final file
      if (fileSize == 0 || fileSize < 100) {
        _error = 'Downloaded EPG file is too small';
        debugLog('EPG: $_error');
        try {
          if (await file.exists()) await file.delete();
        } catch (_) {}
        return;
      }

      // Read a small prefix to validate structure (avoid loading full file)
      try {
        final prefix = await _readDecodedPrefix(file, maxBytes: 16384);
        if (!prefix.startsWith('<')) {
          _error = 'EPG response does not start with XML';
          debugLog('EPG: $_error');
          try {
            if (await file.exists()) await file.delete();
          } catch (_) {}
          return;
        }
        if (prefix.startsWith('<!doctype html') || prefix.startsWith('<html')) {
          _error = 'EPG unavailable from provider';
          debugLog('EPG: Provider returned HTML error page');
          try {
            if (await file.exists()) await file.delete();
          } catch (_) {}
          return;
        }
        if (!prefix.contains('<tv')) {
          _error = 'EPG does not appear to be XMLTV (missing <tv)';
          debugLog('EPG: $_error');
          try {
            if (await file.exists()) await file.delete();
          } catch (_) {}
          return;
        }
        // Download completed and validated successfully
        _lastDownloadTime = DateTime.now();
      } catch (e) {
        debugLog('EPG: Post-download content check failed: $e');
        try {
          if (await file.exists()) await file.delete();
        } catch (_) {}
        _error = 'EPG content validation failed';
        return;
      }
    } catch (e) {
      debugLog('EPG: Download failed: $e');
      _error = 'Download failed: $e';
      try {
        final f = await _getCacheFile();
        if (await f.exists()) await f.delete();
      } catch (_) {}
      return;
    } finally {
      debugLog(
          'EPG: Download flow total ${DateTime.now().difference(downloadStart).inMilliseconds}ms');
      client.close();
      _isDownloading = false;
      notifyListeners();
    }
  }

  Future<void> _loadChannelList({
    bool forceRefresh = false,
    bool allowStaleCache = false,
    bool fromBackgroundRefresh = false,
    bool skipDbLoad = false,
    bool currentDayOnly = false,
  }) async {
    await _restoreDbIfClosed();
    if (_epgUrl == null || _epgUrl!.isEmpty) return;

    // Prevent overlapping loads
    if (_isLoading || _isDownloading || _isParsing) {
      debugLog('EPG: Load already in progress, skipping concurrent request.');
      return;
    }

    final loadStart = DateTime.now();
    _isLoading = true;
    _error = null;
    notifyListeners();
    _resetMatchDiagnostics();

    int retryCount = 0;
    var forceRefreshAfterParseFailure = false;
    while (retryCount < _maxRetries) {
      try {
        var deferRefresh = false;
        if (!forceRefresh && allowStaleCache) {
          final cacheFile = await _getCacheFile();
          if (await cacheFile.exists() && await cacheFile.length() > 0) {
            // Use improved cache validation that allows stale cache for immediate loading
            final hasAnyCache = await _isCacheValid(allowStale: true);
            if (hasAnyCache) {
              final isFreshCache = await _isCacheValid(allowStale: false);
              if (!isFreshCache) {
                deferRefresh = true;
                debugLog(
                    'EPG: Using stale cache for fast load; refresh in background.');
              }
            }
          }
        }

        if (!deferRefresh) {
          final downloadStart = DateTime.now();
          final effectiveForceRefresh =
              forceRefresh || forceRefreshAfterParseFailure;
          await _downloadEpgIfNeeded(forceRefresh: effectiveForceRefresh);
          debugLog(
              'EPG: Download phase took ${DateTime.now().difference(downloadStart).inMilliseconds}ms');
        }

        // OPTIMIZATION: Try loading programs from DB before parsing XML
        if (!forceRefresh && !_dbDisabled && !skipDbLoad && _db.isReady) {
          try {
            final dbCountStart = DateTime.now();
            final programCount = await _db.programCount();
            debugLog(
                'EPG: DB programCount took ${DateTime.now().difference(dbCountStart).inMilliseconds}ms');
            if (programCount > 0) {
              debugLog('EPG: Found $programCount programs in DB, loading...');
              final dbLoadStart = DateTime.now();
              final dbPrograms = await _db.getAllProgramsByChannel(
                pastHours: 12,
                futureHours: _epgFutureHours,
              );
              debugLog(
                  'EPG: DB getAllProgramsByChannel took ${DateTime.now().difference(dbLoadStart).inMilliseconds}ms');
              if (dbPrograms.isNotEmpty) {
                // Populate in-memory cache from DB
                _programsByChannel.clear();
                _invalidateProgramIndexCache();
                for (final entry in dbPrograms.entries) {
                  final epgId = entry.key;
                  final programs = entry.value
                      .map((row) => Program(
                            id: '${epgId}_${row['startTs']}',
                            channelId: epgId,
                            title: row['title'] as String? ?? '',
                            description: row['description'] as String?,
                            startTime: DateTime.fromMillisecondsSinceEpoch(
                                row['startTs'] as int),
                            endTime: DateTime.fromMillisecondsSinceEpoch(
                                row['endTs'] as int),
                            imageUrl: row['imageUrl'] as String?,
                          ))
                      .toList();
                  _programsByChannel[epgId] = programs;
                }

                // Also ensure availableChannels is populated
                _availableChannels.clear();
                _availableChannels.addAll(_programsByChannel.keys);
                // CRITICAL: Ensure normalized mapping is loaded before hydrating availableChannels
                if (_normalizedAvailableChannels == null || _normalizedAvailableChannels!.isEmpty) {
                   debugLog('EPG: Normalized mapping missing during DB load, attempting reload...');
                   await _loadNormalizedMappingFromPrefs();
                }

                if (_normalizedAvailableChannels != null) {
                  _availableChannels.addAll(_normalizedAvailableChannels!.values
                      .expand((list) => list));
                  debugLog('EPG: Added ${_normalizedAvailableChannels!.length} normalized entries to availableChannels. Total now: ${_availableChannels.length}');
                } else {
                  debugLog('EPG: _normalizedAvailableChannels is null even after reload attempt');
                }
                _rebuildEpgIdIndexFromIds(_availableChannels);
                _internalToEpgIdMapping.clear();

                // CRITICAL: Rebuild normalized mapping from DB keys if STILL missing (fallback)
                if (_normalizedAvailableChannels == null ||
                    _normalizedAvailableChannels!.isEmpty) {
                  debugLog(
                      'EPG: Rebuilding normalized mapping from DB keys...');
                  _normalizedAvailableChannels = {};
                  
                  for (final epgId in _programsByChannel.keys) {
                    final normalized = _normalize(epgId);
                    if (normalized.isNotEmpty) {
                      _normalizedAvailableChannels!
                          .putIfAbsent(normalized, () => [])
                          .add(epgId);
                    }
                  }
                  debugLog(
                      'EPG: Built normalized mapping with ${_normalizedAvailableChannels!.length} entries from ${_programsByChannel.length} channels');
                }

                final loadedChannels = _programsByChannel.length;
                debugLog(
                    'EPG: Loaded $loadedChannels channels from DB cache (${dbPrograms.values.fold<int>(0, (sum, list) => sum + list.length)} programs)');
                debugLog(
                    'EPG: EPG channel ids count (DB load): ${_availableChannels.length}');
                if (_enableMatchingDiagnostics) {
                  debugLog(
                      'EPG: Diagnostics - dbChannels=$loadedChannels rawIds=${_epgIdsRaw.length}');
                }
                debugLog(
                    'EPG: Load from DB total ${DateTime.now().difference(loadStart).inMilliseconds}ms');

                final allowedCount = _allowedChannelIdsNormalized.length;
                final expectedCount =
                    _allowedChannelCount > 0 ? _allowedChannelCount : 0;
                final cacheTooSmall =
                    (allowedCount >= 500 && loadedChannels * 5 < allowedCount) ||
                    (expectedCount >= 1000 && loadedChannels * 5 < expectedCount) ||
                    (expectedCount == 0 && loadedChannels < 1000);
                if (!cacheTooSmall) {
                  _hasParsed = true;
                  _isLoading = false;
                  _isParsing = false;
                  _error = null;
                  notifyListeners();

                  unawaited(SmartCacheService.instance.cacheEpgData(
                    _programsByChannel,
                    overwriteDb: false,
                  ));

                  _scheduleEpgWindowExtension(
                    fromBackgroundRefresh: fromBackgroundRefresh,
                  );

                  // Schedule background refresh if cache is stale
                  if (deferRefresh) {
                    unawaited(_refreshFromNetwork());
                  }
                  return;
                } else {
                  debugLog(
                      'EPG: DB cache too small ($loadedChannels/$allowedCount); falling through to XML parse.');
                }
              }
            }
          } catch (e) {
            debugLog('EPG: Failed to load programs from DB: $e');
            _handleDbError(e);
            // Fall through to XML parsing
          }
        }

        // Legacy optimization for mappings only (fallback)
        if (!forceRefresh &&
            _normalizedAvailableChannels != null &&
            _normalizedAvailableChannels!.isNotEmpty &&
            !_dbDisabled &&
            _db.isReady) {
          try {
            final mappingCount = await _db.mappingCount();
            // CRITICAL: Check hasLoadedPrograms, not just isNotEmpty
            // _programsByChannel may have keys with empty lists from failed batch loads
            final allowedCount = _allowedChannelIdsNormalized.length;
            final loadedChannels = _programsByChannel.length;
            final expectedCount =
                _allowedChannelCount > 0 ? _allowedChannelCount : 0;
            final cacheTooSmall =
                (allowedCount >= 500 && loadedChannels * 5 < allowedCount) ||
                (expectedCount >= 1000 && loadedChannels * 5 < expectedCount) ||
                (expectedCount == 0 && loadedChannels < 1000);
            if (mappingCount > 0 && hasLoadedPrograms && !cacheTooSmall) {
              debugLog(
                  'EPG: Skipping XML parse - using ${_normalizedAvailableChannels!.length} cached channels and $mappingCount DB mappings.');

              _availableChannels.addAll(
                  _normalizedAvailableChannels!.values.expand((list) => list));
              _rebuildEpgIdIndexFromIds(_availableChannels);

              _hasParsed = true;
              _isLoading = false;
              _isParsing = false;
              _error = null;
              notifyListeners();
              debugLog(
                  'EPG: EPG channel ids count (mapping-only): ${_availableChannels.length}');
              return;
            }
          } catch (e) {
            debugLog('EPG: Failed to read mapping count: $e');
            _handleDbError(e);
          }
        }

        final file = await _getCacheFile();
        if (!await file.exists()) {
          debugLog(
              'EPG: No cache file available after download; aborting load.');
          // _error should already be set by downloader with a user-friendly message
          _resetLoadingState();
          notifyListeners();
          return;
        }

        Map<String, String> existingHashes = <String, String>{};
        if (!_dbDisabled && _db.isReady) {
          try {
            existingHashes = await _db.getEpgChannelHashes();
          } catch (e) {
            debugLog('EPG: Failed to load channel hashes: $e');
            _handleDbError(e);
          }
        }

        debugLog('EPG: Starting background parsing...');
        _isParsing = true;
        notifyListeners();
        _startParseProgressTimer();

        // Parse full EPG (no channel filtering). Matching is handled later.
        final Set<String> effectiveAllowedChannels = <String>{};
        debugLog('EPG: Parsing full EPG (no channel filter).');

        // Pass file path to isolate instead of content string to save memory
        Future<Map<String, dynamic>> parseEpg(
            Set<String> allowedChannels, {
            required bool dayOnly,
            required int futureHours,
          }) async {
          final now = DateTime.now();
          // Widen time window significantly to catch programs
          // Past: 24 hours back (to catch stale EPG data or timezone issues)
          // Future: configurable hours
          final windowStart = dayOnly
              ? DateTime(now.year, now.month, now.day)
              : now.subtract(const Duration(hours: _epgPastWindowHours));
          final windowEnd = dayOnly
              ? DateTime(now.year, now.month, now.day)
                  .add(const Duration(days: 1))
              : now.add(Duration(hours: futureHours));

          return compute(_parseEpgInIsolate, {
            'filePath': file.path,
            'allowedChannels': allowedChannels.toList(),
            'nowMs': windowStart.millisecondsSinceEpoch,
            'futureEndMs': windowEnd.millisecondsSinceEpoch,
            'catchupHoursByChannel': _catchupHoursByNormalizedId,
            'currentDayOnly': dayOnly,
          });
        }

        final parseStart = DateTime.now();
        var effectiveDayOnly = currentDayOnly;
        var effectiveFutureHours = _epgFutureWindowHours;
        var parseResult = await parseEpg(
          effectiveAllowedChannels,
          dayOnly: effectiveDayOnly,
          futureHours: effectiveFutureHours,
        );
        _stopParseProgressTimer();
        _lastParseDurationMs =
            DateTime.now().difference(parseStart).inMilliseconds;
        debugLog(
            'EPG: Parse compute took ${DateTime.now().difference(parseStart).inMilliseconds}ms');
        var initialProgramCount = parseResult['programCount'] as int? ?? 0;
        var initialChannelIds =
            (parseResult['channelIds'] as List<dynamic>).cast<String>();
        debugLog(
            'EPG: Initial parse result: $initialProgramCount programs, ${initialChannelIds.length} channels');

        final allowedCount = _allowedChannelIdsNormalized.length;
        if (effectiveDayOnly &&
            _allowedChannelIdsNormalized.isNotEmpty &&
            allowedCount >= 500 &&
            initialChannelIds.length * 5 < allowedCount) {
          debugLog(
              'EPG: Current-day parse matched only ${initialChannelIds.length}/$allowedCount channels; expanding window.');
          effectiveDayOnly = false;
          parseResult = await parseEpg(
            effectiveAllowedChannels,
            dayOnly: effectiveDayOnly,
            futureHours: effectiveFutureHours,
          );
          initialProgramCount = parseResult['programCount'] as int? ?? 0;
          initialChannelIds =
              (parseResult['channelIds'] as List<dynamic>).cast<String>();
        }

        final programFilePath = parseResult['programFilePath'] as String?;
        final parsedProgramCount = parseResult['programCount'] as int? ?? 0;
        final hadXmlErrors = parseResult['hadXmlErrors'] as bool? ?? false;
        final channelIds =
            (parseResult['channelIds'] as List<dynamic>).cast<String>();
        final channelHashes = (parseResult['channelHashes'] as Map?)
                ?.map((k, v) => MapEntry(k.toString(), v.toString())) ??
            <String, String>{};

        if (programFilePath == null ||
            programFilePath.isEmpty ||
            parsedProgramCount == 0) {
          debugLog(
              'EPG: Parse produced no programs; checking if we should use fallback data.');

          // If we have existing data and this is just an empty filtered result, keep existing data
          // CRITICAL: Check hasLoadedPrograms, not just isNotEmpty
          if (hasLoadedPrograms && _allowedChannelIdsNormalized.isNotEmpty) {
            debugLog('EPG: Keeping existing data due to filtered empty result');
            _isParsing = false;
            _error = null;
            break;
          }

          if (hadXmlErrors && !forceRefreshAfterParseFailure) {
            debugLog(
                'EPG: Parse failed with XML errors; purging cache and retrying download.');
            await _purgeCacheFiles();
            forceRefreshAfterParseFailure = true;
            retryCount++;
            continue;
          }

          _isParsing = false;
          _error = 'No EPG data available.';
          debugLog('EPG: Parse produced no programs; clearing data.');
          if (programFilePath != null && programFilePath.isNotEmpty) {
            try {
              final tempFile = File(programFilePath);
              if (await tempFile.exists()) {
                await tempFile.delete();
              }
            } catch (_) {}
          }
          break;
        }

        final normalizedChannels = (parseResult['normalizedChannels'] as Map)
            .map((k, v) => MapEntry(k.toString(),
                (v as List<dynamic>).map((e) => e.toString()).toList()));
        final displayNamesById = (parseResult['displayNamesById'] as Map?)
                ?.map((k, v) =>
                    MapEntry(k.toString(), (v as List).cast<String>())) ??
            <String, List<String>>{};
        final stagedPrograms = <String, List<Program>>{};
        final skipChannels = <String>{};
        if (channelHashes.isNotEmpty && existingHashes.isNotEmpty) {
          for (final entry in channelHashes.entries) {
            final existingHash = existingHashes[entry.key];
            if (existingHash != null &&
                existingHash.isNotEmpty &&
                existingHash == entry.value) {
              final existingPrograms = _programsByChannel[entry.key];
              if (existingPrograms != null && existingPrograms.isNotEmpty) {
                skipChannels.add(entry.key);
                stagedPrograms[entry.key] = existingPrograms;
              }
            }
          }
        }

        // Update mapping index immediately so UI can match incoming programs
        _availableChannels
          ..clear()
          ..addAll(channelIds);
        _normalizedAvailableChannels = normalizedChannels;
        _epgDisplayNamesById = displayNamesById;
        _rebuildFuzzyCandidates();
        _rebuildEpgIdIndexFromIds(channelIds);
        debugLog(
            'EPG: Total EPG channel IDs collected: ${_availableChannels.length}');
        if (_enableMatchingDiagnostics) {
          debugLog(
              'EPG: Diagnostics - parsedChannels=${_availableChannels.length} rawIds=${_epgIdsRaw.length}');
        }
        

        // Stream programs from the temp file into memory (capped) and DB in batches
        // For background refresh, use double-buffering (stagedPrograms) to avoid UI flicker.
        // For foreground load, write directly to _programsByChannel so UI updates live.
        final ingestStart = DateTime.now();
        _setEpgProgress(0.7, label: 'Ingesting EPG');
        await _ingestProgramsFromFile(
          programFilePath,
          target: fromBackgroundRefresh ? stagedPrograms : _programsByChannel,
          skipChannels: skipChannels,
          totalPrograms: parsedProgramCount,
          onProgress: (processed, total) {
            if (total <= 0) return;
            final ratio = (processed / total).clamp(0.0, 1.0);
            _setEpgProgress(0.7 + (0.3 * ratio));
          },
        );
        debugLog(
            'EPG: Program ingest took ${DateTime.now().difference(ingestStart).inMilliseconds}ms');

        // Only swap if we used a staging buffer (Double Buffering)
        if (fromBackgroundRefresh) {
          _programsByChannel
            ..clear()
            ..addAll(stagedPrograms);
        }

        _hasParsed = true;
        _isParsing = false;
        _setEpgProgress(1.0, label: 'EPG ready');
        _error = null;
        debugLog(
            'EPG: Load (parse+ingest) total ${DateTime.now().difference(loadStart).inMilliseconds}ms');

        // Persist cache timestamp (do NOT store full EPG or channel lists in prefs)
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(
            _epgCacheTimeKey, DateTime.now().toIso8601String());
        if (_epgUrl != null && _epgUrl!.isNotEmpty) {
          await prefs.setString(_epgCacheUrlKey, _epgUrl!);
        }
        // Clear mapping cache on successful fresh parse to allow re-matching with new data
        _internalToEpgIdMapping.clear();

        // Persist normalized mapping to file for faster startup
        await _saveNormalizedMappingToPrefs(_normalizedAvailableChannels);
        await _backupCacheFile();

        debugLog(
            'EPG: Successfully parsed ${_programsByChannel.length} channels and ${_availableChannels.length} IDs with ~$parsedProgramCount programs');
        debugLog(
            'EPG: EPG channel ids count (parsed): ${_availableChannels.length}');

        unawaited(SmartCacheService.instance.cacheEpgData(
          _programsByChannel,
          overwriteDb: false,
        ));

        if (channelHashes.isNotEmpty && !_dbDisabled) {
          try {
            await _db.upsertEpgChannelHashes(channelHashes);
          } catch (e) {
            debugLog('EPG: Failed to persist channel hashes: $e');
          }
        }

        // PERSIST: Save parsed programs to DB for fast future loads
        // CRITICAL: Check hasLoadedPrograms, not just isNotEmpty
        if (!_dbDisabled && hasLoadedPrograms) {
          try {
            debugLog('EPG: Persisting programs to DB...');
            final dbPayload = <String, List<Map<String, dynamic>>>{};
            for (final entry in _programsByChannel.entries) {
              dbPayload[entry.key] = entry.value
                  .map((p) => {
                        'startTs': p.startTime.millisecondsSinceEpoch,
                        'endTs': p.endTime.millisecondsSinceEpoch,
                        'title': p.title,
                        'description': p.description,
                        'imageUrl': p.imageUrl,
                      })
                  .toList();
            }
            _db.beginBulkWrite();
            try {
              await _db.clearPrograms();
              await _db.insertAllPrograms(dbPayload);
            } finally {
              _db.endBulkWrite();
            }
            debugLog(
                'EPG: Persisted ${_programsByChannel.length} channels to DB.');
          } catch (e) {
            debugLog('EPG: Failed to persist programs to DB: $e');
            // Non-fatal, continue
          }
        }

        if (deferRefresh && !fromBackgroundRefresh) {
          unawaited(_refreshFromNetwork());
        }
        _scheduleEpgWindowExtension(
          fromBackgroundRefresh: fromBackgroundRefresh,
        );
        break;
      } catch (e, stack) {
        retryCount++;
        debugLog('EPG: Error loading (attempt $retryCount): $e');
        debugLog(stack.toString());
        _stopParseProgressTimer();

        if (retryCount >= _maxRetries) {
          _error = 'Failed to load EPG: $e';
          _isParsing = false;
          _isLoading = false;

          // Fallback: try to load normalized mapping file to repopulate channel list
          await _loadNormalizedMappingFromPrefs();
          if (_normalizedAvailableChannels != null &&
              _normalizedAvailableChannels!.isNotEmpty) {
            _availableChannels.addAll(
                _normalizedAvailableChannels!.values.expand((list) => list));
            _rebuildEpgIdIndexFromIds(_availableChannels);
          }
          break;
        }
        await Future.delayed(Duration(seconds: retryCount * 2));
      }
    }

    _resetLoadingState();
    notifyListeners();
  }

  Future<void> _refreshFromNetwork() async {
    if (_refreshInFlight) return;
    if (_epgUrl == null || _epgUrl!.isEmpty) return;
    _refreshInFlight = true;
    try {
      await _downloadEpgIfNeeded(forceRefresh: true);
      await _loadChannelList(
        forceRefresh: false,
        allowStaleCache: false,
        fromBackgroundRefresh: true,
      );
    } catch (_) {
      // Keep existing cached data if refresh fails.
    } finally {
      _refreshInFlight = false;
    }
  }

  void _scheduleEpgWindowExtension({required bool fromBackgroundRefresh}) {
    if (fromBackgroundRefresh) return;
    if (_extendedWindowScheduled || _extendingWindow) return;
    if (_epgFutureHours >= _fullFutureHours) return;
    _extendedWindowScheduled = true;
    Future.delayed(const Duration(milliseconds: 800), () async {
      if (_extendingWindow) return;
      _extendingWindow = true;
      try {
        _epgFutureHours = _fullFutureHours;
        await _loadChannelList(
          forceRefresh: false,
          allowStaleCache: true,
          fromBackgroundRefresh: true,
          skipDbLoad: true,
        );
      } catch (_) {
        // Ignore extension failures; keep initial window data.
      } finally {
        _extendingWindow = false;
      }
    });
  }

  // Optimized streaming parser running in an isolate
  static bool _shouldIncludeProgramme(
    String channelId,
    int startMs,
    int endMs,
    Set<String> allowedNormalized,
    Map<String, int> catchupHoursByChannel,
    int nowMs,
    int futureEndMs,
    String? normalizedChannelId, {
    Map<String, int>? rejectStats,
  }) {
    final normalized = normalizedChannelId ?? normalizeForFilter(channelId);
    final allowedKey = normalizeForAllowedId(channelId);
    if (allowedNormalized.isNotEmpty &&
        (allowedKey.isEmpty || !allowedNormalized.contains(allowedKey))) {
      if (rejectStats != null) {
        rejectStats['notAllowed'] = (rejectStats['notAllowed'] ?? 0) + 1;
      }
      return false;
    }

    // Reject programs that start after our future window
    if (startMs > futureEndMs) {
      if (rejectStats != null) {
        rejectStats['tooFarFuture'] = (rejectStats['tooFarFuture'] ?? 0) + 1;
      }
      return false;
    }

    // Include any program that overlaps with current time or is in the future
    // Also include past programs within 24 hours for timezone tolerance
    final pastCutoff = nowMs - (24 * 3600000); // 24 hours back
    if (endMs < pastCutoff) {
      // Very old program - only include if catchup is enabled
      final catchupHours = catchupHoursByChannel[normalized] ?? 0;
      if (catchupHours <= 0) {
        if (rejectStats != null) {
          rejectStats['tooOld'] = (rejectStats['tooOld'] ?? 0) + 1;
        }
        return false;
      }
      final earliest = nowMs - (catchupHours * 3600000);
      if (endMs < earliest) {
        if (rejectStats != null) {
          rejectStats['beforeCatchup'] = (rejectStats['beforeCatchup'] ?? 0) + 1;
        }
        return false;
      }
    }

    return true;
  }

  static Future<Map<String, dynamic>> _parseEpgInIsolate(
      Map<String, dynamic> args) async {
    final filePath = args['filePath'] as String? ?? '';
    final allowedList = (args['allowedChannels'] as List<dynamic>? ?? const [])
        .map((e) => e.toString())
        .toSet();
    final nowMs = args['nowMs'] as int? ?? 0;
    final futureEndMs = args['futureEndMs'] as int? ?? 0;
    final currentDayOnly = args['currentDayOnly'] as bool? ?? false;
    final catchupMapRaw =
        (args['catchupHoursByChannel'] as Map<String, dynamic>? ?? {});
    final catchupHoursByChannel = catchupMapRaw
        .map((key, value) => MapEntry(key.toString(), (value as num).toInt()));
    final file = File(filePath);
    if (!await file.exists()) {
      throw Exception('EPG cache file not found in isolate');
    }

    final normalizeCache = <String, String>{};
    String normalizeCached(String input) {
      final cached = normalizeCache[input];
      if (cached != null) return cached;
      if (normalizeCache.length > 50000) {
        normalizeCache.clear();
      }
      final normalized = normalizeForFilter(input);
      normalizeCache[input] = normalized;
      return normalized;
    }

    final channelIds = <String>{};
    final normalizedChannels = <String, List<String>>{};
    final displayNamesById = <String, List<String>>{};
    final channelHashes = <String, int>{};
    var tempFile = File(
        '${Directory.systemTemp.path}/epg_programs_${DateTime.now().millisecondsSinceEpoch}.jsonl');
    int programCount = 0;
    var hadXmlErrors = false;

    // Log the time window being processed
    final startTime = DateTime.fromMillisecondsSinceEpoch(nowMs);
    final endTime = DateTime.fromMillisecondsSinceEpoch(futureEndMs);
    debugLog(
        'EPG: Parsing ${currentDayOnly ? "current day" : "full"} programs from ${startTime.toString()} to ${endTime.toString()}');

    // Try parsing using UTF-8 but allow malformed sequences (many EPGs
    // contain stray bytes). If that fails with a FormatException from the
    // XML parser, retry with Latin1 which is more permissive for single-byte
    // encodings commonly found in XMLTV feeds.
    Stream<List<int>> rawStreamProvider() {
      final base = file.openRead();
      if (file.path.toLowerCase().endsWith('.gz')) {
        return base.transform(gzip.decoder);
      }
      return base;
    }

    String sanitizeXmlChunk(String input) {
      // Remove invalid control characters and escape broken entities.
      var out = input.replaceAll(EPGMatchingUtils.invalidXmlCharRe, '');
      out = out.replaceAll(EPGMatchingUtils.unbrokenEntityRe, '&amp;');
      return out;
    }

    StreamTransformer<String, String> sanitizeXmlStream() {
      const int tailKeep = 16;
      var buffer = '';
      return StreamTransformer<String, String>.fromHandlers(
        handleData: (chunk, sink) {
          buffer += chunk;
          if (buffer.length <= tailKeep) {
            return;
          }
          final emit = buffer.substring(0, buffer.length - tailKeep);
          buffer = buffer.substring(buffer.length - tailKeep);
          sink.add(sanitizeXmlChunk(emit));
        },
        handleDone: (sink) {
          if (buffer.isNotEmpty) {
            sink.add(sanitizeXmlChunk(buffer));
          }
          sink.close();
        },
      );
    }

    String decodeXmlEntities(String input) {
      return input
          .replaceAll('&amp;', '&')
          .replaceAll('&lt;', '<')
          .replaceAll('&gt;', '>')
          .replaceAll('&quot;', '"')
          .replaceAll('&apos;', "'");
    }

    String? extractAttribute(String block, String name) {
      final doubleQuoted =
          RegExp('$name\\s*=\\s*"([^"]*)"', caseSensitive: false);
      final singleQuoted =
          RegExp("$name\\s*=\\s*'([^']*)'", caseSensitive: false);
      final match =
          doubleQuoted.firstMatch(block) ?? singleQuoted.firstMatch(block);
      if (match == null) return null;
      return match.group(1);
    }

    String? extractTagText(String block, String tag) {
      final regex = RegExp(
        '<$tag[^>]*>(.*?)</$tag>',
        caseSensitive: false,
        dotAll: true,
      );
      final match = regex.firstMatch(block);
      if (match == null) return null;
      final raw = match.group(1) ?? '';
      final cleaned =
          raw.replaceAll('<![CDATA[', '').replaceAll(']]>', '').trim();
      return decodeXmlEntities(cleaned);
    }

    List<String> extractTagTexts(String block, String tag) {
      final regex = RegExp(
        '<$tag[^>]*>(.*?)</$tag>',
        caseSensitive: false,
        dotAll: true,
      );
      final matches = regex.allMatches(block);
      if (matches.isEmpty) return const [];
      final results = <String>[];
      for (final match in matches) {
        final raw = match.group(1) ?? '';
        final cleaned =
            raw.replaceAll('<![CDATA[', '').replaceAll(']]>', '').trim();
        final decoded = decodeXmlEntities(cleaned);
        if (decoded.isNotEmpty) {
          results.add(decoded);
        }
      }
      return results;
    }

    String drainBlocks(
      String buffer,
      RegExp startRe,
      RegExp endRe,
      void Function(String block) onBlock,
    ) {
      int cursor = 0;
      while (true) {
        // Find start match at or after cursor without substring allocation
        final startMatches = startRe.allMatches(buffer, cursor);
        if (startMatches.isEmpty) break;
        final startMatch = startMatches.first;
        final absoluteStart = startMatch.start;

        // Find end match after start
        final endMatches = endRe.allMatches(buffer, absoluteStart);
        if (endMatches.isEmpty) {
          // Keep from start to allow block to complete in next chunk.
          return buffer.substring(absoluteStart);
        }
        final endMatch = endMatches.first;
        final absoluteEnd = endMatch.end;

        final block = buffer.substring(absoluteStart, absoluteEnd);
        onBlock(block);
        cursor = absoluteEnd;
      }

      var tail = buffer.substring(cursor);
      if (tail.length > 65536) {
        tail = tail.substring(tail.length - 65536);
      }
      return tail;
    }

    Future<void> runParseWithDecoder(
        StreamTransformer<List<int>, String> decoder,
        {bool useSanitizer = false}) async {
      final sink = tempFile.openWrite();
      final channelIcons = <String, String>{};
      var charStream = rawStreamProvider().transform(decoder);
      if (useSanitizer) {
        charStream = charStream.transform(sanitizeXmlStream());
      }
      
      // OPTIMIZATION: Removed .withParentEvents() as it's expensive and unused
      final events = charStream.toXmlEvents();
      final elements = events.selectSubtreeEvents((event) =>
          event.name.endsWith('programme') || event.name.endsWith('channel'));

      await for (final subtreeEvents in elements) {
        if (subtreeEvents.isEmpty) continue;
        final startEvent = subtreeEvents.first;
        if (startEvent is! XmlStartElementEvent) continue;

        if (startEvent.name.endsWith('programme')) {
          _processProgramme(
            subtreeEvents,
            channelIds,
            normalizedChannels,
            sink,
            () {
              programCount++;
            },
            allowedList,
            catchupHoursByChannel,
            nowMs,
            futureEndMs,
            normalizeCached,
            channelIcons: channelIcons,
            channelHashes: channelHashes,
          );
        } else if (startEvent.name.endsWith('channel')) {
          _processChannel(
            subtreeEvents,
            channelIds,
            normalizedChannels,
            allowedNormalized: allowedList,
            normalize: normalizeCached,
            channelIcons: channelIcons,
            displayNamesById: displayNamesById,
          );
        }
      }

      await sink.flush();
      await sink.close();
    }

    Future<void> runLenientParse() async {
      final sink = tempFile.openWrite();
      final stream = rawStreamProvider()
          .transform(const Utf8Decoder(allowMalformed: true));
      var buffer = '';
      final programmeStart = _programmeStartRe;
      final programmeEnd = _programmeEndRe;
      final channelStart = _channelStartRe;
      final channelEnd = _channelEndRe;
      final channelIcons = <String, String>{};
      final rejectStats = <String, int>{};
      int totalProgrammes = 0;

      await for (final chunk in stream) {
        buffer += sanitizeXmlChunk(chunk);

        buffer = drainBlocks(buffer, channelStart, channelEnd, (block) {
          final id = extractAttribute(block, 'id')?.trim() ?? '';
          if (id.isEmpty) return;
          final normalizedId = normalizeCached(id);
          if (id.isNotEmpty) {
            channelIds.add(id);
            if (normalizedId.isNotEmpty) {
              normalizedChannels.putIfAbsent(normalizedId, () => []).add(id);
            }
            final displays = extractTagTexts(block, 'display-name');
            if (displays.isNotEmpty) {
              displayNamesById[id] = List<String>.from(displays);
            }
            for (final display in displays) {
              final normalizedDisplay = normalizeCached(display);
              if (normalizedDisplay.isNotEmpty) {
                normalizedChannels
                    .putIfAbsent(normalizedDisplay, () => [])
                    .add(id);
              }
            }
            final icon = extractAttribute(block, 'src');
            if (icon != null && icon.isNotEmpty) {
              channelIcons[id] = icon;
            }
          }
        });

        buffer = drainBlocks(buffer, programmeStart, programmeEnd, (block) {
          final channelId = extractAttribute(block, 'channel')?.trim() ?? '';
          final startStr = extractAttribute(block, 'start')?.trim() ?? '';
          final stopStr = extractAttribute(block, 'stop')?.trim() ?? '';
          if (channelId.isEmpty || startStr.isEmpty || stopStr.isEmpty) {
            return;
          }
          totalProgrammes++;
          final start = _staticParseTime(startStr).millisecondsSinceEpoch;
          final end = _staticParseTime(stopStr).millisecondsSinceEpoch;
          final normalizedChannelId = normalizeCached(channelId);
          if (!_shouldIncludeProgramme(channelId, start, end, allowedList,
              catchupHoursByChannel, nowMs, futureEndMs, normalizedChannelId,
              rejectStats: rejectStats)) {
            return;
          }
          channelIds.add(channelId);
          if (normalizedChannelId.isNotEmpty) {
            normalizedChannels
                .putIfAbsent(normalizedChannelId, () => [])
                .add(channelId);
          }
          final title = extractTagText(block, 'title') ?? 'Unknown';
          final description = extractTagText(block, 'desc');
          final category = extractTagText(block, 'category');
          var icon = extractAttribute(block, 'src');
          if ((icon == null || icon.isEmpty) &&
              channelIcons.containsKey(channelId)) {
            icon = channelIcons[channelId];
          }

          final payload = {
            'epgId': channelId,
            'startTs': start,
            'endTs': end,
            'title': title,
            'description': description,
            'imageUrl': icon,
            'category': category,
          };
          _updateChannelHash(
            channelHashes,
            channelId,
            start,
            end,
            title,
            description,
            icon,
            category,
          );
          sink.writeln(jsonEncode(payload));
          programCount++;
        });
      }

      await sink.flush();
      await sink.close();
      
      // Log diagnostic stats
      debugLog('EPG: Lenient parse stats - total programmes in file: $totalProgrammes, accepted: $programCount');
      debugLog('EPG: Reject stats: $rejectStats');
      if (totalProgrammes > 0 && programCount == 0) {
        debugLog('EPG: All programs rejected! nowMs=$nowMs, futureEndMs=$futureEndMs');
      }
    }

    var usedLenient = false;
    try {
      // First attempt: UTF-8, NO SANITIZATION (Fastest)
      // Most files are clean UTF-8, so avoiding regex sanitization saves huge CPU
      await runParseWithDecoder(const Utf8Decoder(allowMalformed: true),
          useSanitizer: false);
    } catch (e) {
      // Don't log full stack for expected dirty XML errors to reduce noise
      final msg = e.toString().toLowerCase();
      final isXmlFormatError = msg.contains('format') || msg.contains('xml');
      
      if (isXmlFormatError) {
        debugLog('EPG: Fast parse failed ($e) - retrying with sanitization...');
      } else {
        debugLog('EPG: Fast parse failed: $e');
      }
      
      hadXmlErrors = true;
      channelIds.clear();
      normalizedChannels.clear();
      programCount = 0;
      
      try {
        // Second attempt: UTF-8 WITH SANITIZATION
        await runParseWithDecoder(const Utf8Decoder(allowMalformed: true),
            useSanitizer: true);
      } catch (e2) {
        debugLog('EPG: Sanitized UTF-8 failed ($e2) - retrying Latin1...');
        channelIds.clear();
        normalizedChannels.clear();
        programCount = 0;
        
        try {
          // Third attempt: Latin1 WITH SANITIZATION
          await runParseWithDecoder(latin1.decoder, useSanitizer: true);
        } catch (e3, s3) {
          debugLog('EPG: Latin1 retry also failed: $e3');
          debugLog(s3.toString());
          debugLog('EPG: Falling back to lenient parser after XML errors.');
          channelIds.clear();
          normalizedChannels.clear();
          channelHashes.clear();
          programCount = 0;
          tempFile = File(
              '${Directory.systemTemp.path}/epg_programs_${DateTime.now().millisecondsSinceEpoch}_lenient.jsonl');
          usedLenient = true;
          await runLenientParse();
        }
      }
    }

    if (!usedLenient && (programCount == 0 || (hadXmlErrors && programCount < 1000))) {
      debugLog(
          'EPG: Low program count ($programCount). Falling back to lenient parser.');
      channelIds.clear();
      normalizedChannels.clear();
      channelHashes.clear();
      programCount = 0;
      tempFile = File(
          '${Directory.systemTemp.path}/epg_programs_${DateTime.now().millisecondsSinceEpoch}_lenient.jsonl');
      await runLenientParse();
    }

    final channelHashStrings = channelHashes.map(
      (key, value) => MapEntry(key, value.toRadixString(16)),
    );

    return {
      'programFilePath': tempFile.path,
      'programCount': programCount,
      'channelIds': channelIds.toList(),
      'normalizedChannels': normalizedChannels,
      'displayNamesById': displayNamesById,
      'channelHashes': channelHashStrings,
      'hadXmlErrors': hadXmlErrors,
    };
  }

  static String? _extractTagContent(List<XmlEvent> events, int startIndex) {
    if (startIndex >= events.length) return null;
    final startNode = events[startIndex];
    if (startNode is! XmlStartElementEvent) return null;
    if (startNode.isSelfClosing) return '';

    final sb = StringBuffer();
    var depth = 1;
    for (var i = startIndex + 1; i < events.length; i++) {
      final node = events[i];
      if (node is XmlStartElementEvent) {
        if (!node.isSelfClosing) {
          depth++;
        }
      } else if (node is XmlEndElementEvent) {
        depth--;
        if (depth == 0) break;
      } else if (node is XmlTextEvent) {
        sb.write(node.value);
      } else if (node is XmlCDATAEvent) {
        sb.write(node.value);
      }
    }
    return sb.toString().trim();
  }

  static void _processChannel(
    List<XmlEvent> events,
    Set<String> channelIds,
    Map<String, List<String>> normalizedChannels, {
    Set<String> allowedNormalized = const {},
    required String Function(String input) normalize,
    Map<String, String>? channelIcons,
    Map<String, List<String>>? displayNamesById,
  }) {
    // Basic parsing of channel tag to get ID and display-name
    // <channel id="BBC1"> <display-name>BBC One</display-name> </channel>
    final startEvent = events.first as XmlStartElementEvent;
    final rawId = startEvent.attributes
        .firstWhere((a) => a.name == 'id',
            orElse: () =>
                XmlEventAttribute('id', '', XmlAttributeType.DOUBLE_QUOTE))
        .value;
    final id = rawId.trim();
    if (id.isNotEmpty) {
      final normalizedId = normalize(id);
      channelIds.add(id);
      if (normalizedId.isNotEmpty) {
        normalizedChannels.putIfAbsent(normalizedId, () => []).add(id);
      }

      // Parse <icon> and <display-name> elements
      final displayNames = <String>[];
      String? channelIcon;
      // Index-based iteration to pass to extractTagContent
      for (var i = 0; i < events.length; i++) {
        final event = events[i];
        if (event is XmlStartElementEvent) {
          if (event.name == 'display-name') {
            final val = _extractTagContent(events, i);
            if (val != null && val.isNotEmpty) {
              displayNames.add(val);
            } else {
              debugLog('EPG: Failed to extract display-name content for ID=$id');
            }
          }
          } else if (event.name == 'icon') {
            channelIcon = event.attributes
                .firstWhere((a) => a.name == 'src',
                    orElse: () => XmlEventAttribute(
                        'src', '', XmlAttributeType.DOUBLE_QUOTE))
                .value;
            if (channelIcon.isNotEmpty) {
              channelIcons?[id] = channelIcon;
            }
          }
        }
      }

      if (displayNames.isNotEmpty) {
        displayNamesById?[id] = List<String>.from(displayNames);
      }
      for (final displayName in displayNames) {
        final normalizedDisplay = normalize(displayName);
        if (normalizedDisplay.isNotEmpty) {
          normalizedChannels.putIfAbsent(normalizedDisplay, () => []).add(id);
        }
      }
    }
  }

  static void _processProgramme(
    List<XmlEvent> events,
    Set<String> channelIds,
    Map<String, List<String>> normalizedChannels,
    IOSink sink,
    void Function() onProgram,
    Set<String> allowedNormalized,
    Map<String, int> catchupHoursByChannel,
    int nowMs,
    int futureEndMs,
    String Function(String input) normalize, {
    Map<String, String>? channelIcons,
    Map<String, int>? channelHashes,
  }) {
    // Parse programme subtree
    final startEvent = events.first as XmlStartElementEvent;

    final rawChannelId = startEvent.attributes
        .firstWhere((a) => a.name == 'channel',
            orElse: () =>
                XmlEventAttribute('channel', '', XmlAttributeType.DOUBLE_QUOTE))
        .value;
    final channelId = rawChannelId.trim();
    final startStr = startEvent.attributes
        .firstWhere((a) => a.name == 'start',
            orElse: () =>
                XmlEventAttribute('start', '', XmlAttributeType.DOUBLE_QUOTE))
        .value;
    final stopStr = startEvent.attributes
        .firstWhere((a) => a.name == 'stop',
            orElse: () =>
                XmlEventAttribute('stop', '', XmlAttributeType.DOUBLE_QUOTE))
        .value;

    if (channelId.isEmpty || startStr.isEmpty || stopStr.isEmpty) return;

    final start = _staticParseTime(startStr).millisecondsSinceEpoch;
    final end = _staticParseTime(stopStr).millisecondsSinceEpoch;
    final normalizedChannelId = normalize(channelId);

    channelIds.add(channelId);
    if (normalizedChannelId.isNotEmpty) {
      normalizedChannels
          .putIfAbsent(normalizedChannelId, () => [])
          .add(channelId);
    }

    if (!_shouldIncludeProgramme(channelId, start, end, allowedNormalized,
        catchupHoursByChannel, nowMs, futureEndMs, normalizedChannelId)) {
      return;
    }

    String title = 'Unknown';
    String? description;
    String? category;
    String? icon;

    // Index-based iteration
    for (var i = 0; i < events.length; i++) {
      final event = events[i];
      if (event is XmlStartElementEvent) {
        if (event.name == 'title') {
          title = _extractTagContent(events, i) ?? 'Unknown';
        } else if (event.name == 'desc') {
          description = _extractTagContent(events, i);
        } else if (event.name == 'category') {
          category = _extractTagContent(events, i);
        } else if (event.name == 'icon') {
          // Icon is an empty tag usually, check attributes
          icon = event.attributes
              .firstWhere((a) => a.name == 'src',
                  orElse: () => XmlEventAttribute(
                      'src', '', XmlAttributeType.DOUBLE_QUOTE))
              .value;
        }
      }
    }
    
    // Fallback icon from channel if missing
    if ((icon == null || icon.isEmpty) && channelIcons != null) {
      icon = channelIcons[channelId];
    }


    if ((icon == null || icon.isEmpty) &&
        channelIcons != null &&
        channelIcons.containsKey(channelId)) {
      icon = channelIcons[channelId];
    }

    final payload = {
      'epgId': channelId,
      'startTs': start,
      'endTs': end,
      'title': title,
      'description': description,
      'imageUrl': icon,
      'category': category,
    };
    if (channelHashes != null) {
      _updateChannelHash(
        channelHashes,
        channelId,
        start,
        end,
        title,
        description,
        icon,
        category,
      );
    }
    sink.writeln(jsonEncode(payload));
    onProgram();
  }

  static void _updateChannelHash(
    Map<String, int> hashes,
    String channelId,
    int start,
    int end,
    String title,
    String? description,
    String? icon,
    String? category,
  ) {
    var hash = hashes[channelId] ?? _fnvOffsetBasis;
    final data =
        '$start|$end|$title|${description ?? ''}|${icon ?? ''}|${category ?? ''}';
    final bytes = utf8.encode(data);
    for (final b in bytes) {
      hash ^= b;
      hash = (hash * _fnvPrime) & 0xFFFFFFFFFFFFFFFF;
    }
    hashes[channelId] = hash;
  }

  static DateTime _staticParseTime(String timeStr) {
    try {
      final trimmed = timeStr.trim();
      // Match base datetime and optional offset like +0100 or -0500
      final m = EPGMatchingUtils.timeParseRe.firstMatch(trimmed);
      if (m == null) return DateTime.now();

      final g1 = m.group(1);
      final g2 = m.group(2);
      final g3 = m.group(3);
      final g4 = m.group(4);
      final g5 = m.group(5);
      final g6 = m.group(6);

      if (g1 == null ||
          g2 == null ||
          g3 == null ||
          g4 == null ||
          g5 == null ||
          g6 == null) {
        return DateTime.now();
      }

      final year = int.parse(g1);
      final month = int.parse(g2);
      final day = int.parse(g3);
      final hour = int.parse(g4);
      final minute = int.parse(g5);
      final second = int.parse(g6);

      DateTime dt = DateTime.utc(year, month, day, hour, minute, second);

      final offset = m.group(7);
      if (offset != null && offset.length == 5) {
        // offset like +HHMM or -HHMM
        final sign = offset.startsWith('+') ? 1 : -1;
        final offH = int.tryParse(offset.substring(1, 3)) ?? 0;
        final offM = int.tryParse(offset.substring(3, 5)) ?? 0;
        // XMLTV offset means local = UTC + offset, so to get UTC subtract offset
        final delta = Duration(hours: offH, minutes: offM);
        dt = dt.subtract(sign == 1 ? delta : -delta);
      }

      return dt.toLocal();
    } catch (e) {
      return DateTime.now();
    }
  }

  String? _buildCatchupUrl(String epgId, int startTs, int endTs,
      {required int nowMs}) {
    final normalized = normalizeForFilter(epgId);
    final info = _catchupByNormalizedId[normalized];
    if (info == null || info.durationHours <= 0) return null;
    if (endTs >= nowMs) return null;
    final earliest = nowMs - (info.durationHours * 3600000);
    if (endTs < earliest) return null;

    final server = _xtreamServer;
    final username = _xtreamUsername;
    final password = _xtreamPassword;
    if (server == null ||
        server.isEmpty ||
        username == null ||
        username.isEmpty ||
        password == null ||
        password.isEmpty) {
      return null;
    }

    final durationMinutes = ((endTs - startTs) / 60000).ceil();
    if (durationMinutes <= 0) return null;

    final startUtc =
        DateTime.fromMillisecondsSinceEpoch(startTs, isUtc: false).toUtc();
    final startStr = _formatCatchupTime(startUtc);
    final base = server.endsWith('/') ? server.substring(0, server.length - 1) : server;
    return '$base/timeshift.php?username=$username&password=$password&stream=${info.streamId}&start=$startStr&duration=$durationMinutes';
  }

  String _formatCatchupTime(DateTime dtUtc) {
    String pad(int v) => v.toString().padLeft(2, '0');
    final year = dtUtc.year.toString().padLeft(4, '0');
    final month = pad(dtUtc.month);
    final day = pad(dtUtc.day);
    final hour = pad(dtUtc.hour);
    final minute = pad(dtUtc.minute);
    final second = pad(dtUtc.second);
    return '$year-$month-$day:$hour-$minute-$second';
  }

  Future<void> loadChannelBatch(List<String> channelIds) async {
    // No-op in optimized version as all programs are loaded during init
    // but we can ensure they are available in _programsByChannel
    if (!_hasParsed) {
      await initialize();
    } else {
      // Small delay to allow batching if caller expects it
      await Future.delayed(Duration.zero);
      notifyListeners();
    }
  }

  String _normalize(String text) {
    final cached = _normalizeCache[text];
    if (cached != null) return cached;
    if (_normalizeCache.length > 50000) {
      _normalizeCache.clear();
    }
    final normalized = EPGMatchingUtils.normalizeChannelName(text);
    _normalizeCache[text] = normalized;
    return normalized;
  }



  List<EpgMatchCandidate> _matchCandidates = [];
  
  // ... (keep existing fields)

  void _rebuildFuzzyCandidates() {
    final candidates = <EpgMatchCandidate>[];
    
    // 1. Add candidates from Display Names (preferred)
    if (_epgDisplayNamesById.isNotEmpty) {
      for (final entry in _epgDisplayNamesById.entries) {
        final epgId = entry.key;
        if (epgId.isEmpty) continue;

        // Add the ID itself as a candidate (often generic but useful fallback)
        candidates.add(EpgMatchCandidate(
          id: epgId,
          displayName: epgId,
        ));

        // Add all <display-name> entries from XML
        for (final name in entry.value) {
          if (name.trim().isNotEmpty) {
            candidates.add(EpgMatchCandidate(
              id: epgId,
              displayName: name,
            ));
          }
        }
      }
    } 
    // 2. Fallback: If no display names recorded, use available channel IDs
    else if (_availableChannels.isNotEmpty) {
      for (final id in _availableChannels) {
         if (id.isEmpty) continue;
         candidates.add(EpgMatchCandidate(
           id: id,
           displayName: id,
         ));
      }
    } else {
        // Last resort: use normalized mapping keys
        if (_normalizedAvailableChannels != null) {
            for (final entry in _normalizedAvailableChannels!.entries) {
                for (final id in entry.value) {
                    candidates.add(EpgMatchCandidate(
                        id: id,
                        displayName: id, 
                    ));
                }
            }
        }
    }

    _matchCandidates = candidates;
    debugLog(
        'EPG: Rebuilt fuzzy match index with ${_matchCandidates.length} candidates.');
  }

  void _resetEpgIdIndex() {
    _epgIdsRaw.clear();
    _epgIdsLowerToRaw.clear();
    _epgDisplayNamesById.clear();
    _matchCandidates = [];
  }

  // ... (keep _indexEpgIdRaw, _rebuildEpgIdIndexFromIds etc) ...

  String? _matchRawEpgId(String channelId) {
    final trimmed = channelId.trim();
    if (trimmed.isEmpty || _epgIdsRaw.isEmpty) return null;
    if (_epgIdsRaw.contains(trimmed)) return trimmed;
    return _epgIdsLowerToRaw[trimmed.toLowerCase()];
  }

  void _resetMatchDiagnostics() {} // Keep empty for now
  void _logMatchDiagnostics({String context = 'EPG'}) {}

  String? _findBestEpgId(
    String channelId,
    String? channelName, {
    bool logIfMissing = true,
    bool allowLoose = true,
    String? countryHint,
  }) {
    // ------------------------------------------
    // TIER 1: Manual Constraints & Overrides
    // ------------------------------------------
    final manual = _manualMappings[channelId];
    if (manual != null && manual.isNotEmpty) {
      return manual;
    }

    // ------------------------------------------
    // TIER 2: Exact ID Match (Authoritative)
    // ------------------------------------------
    // Check strict ID equality (case-sensitive then insensitive)
    final rawMatch = _matchRawEpgId(channelId);
    if (rawMatch != null) {
      return _cacheResolvedMapping(channelId, rawMatch);
    }
    
    // Also try normalizing the ID itself (common XMLTV convention changes)
    if (_normalizedAvailableChannels != null) {
         final normId = EPGMatchingUtils.normalizeChannelName(channelId);
         // Lookup directly in normalized index
         if (normId.isNotEmpty && _normalizedAvailableChannels!.containsKey(normId)) {
             return _cacheResolvedMapping(channelId, _normalizedAvailableChannels![normId]!.first);
         }
    }
    
    if (!allowLoose) return null;

    final searchName = channelName?.trim() ?? '';
    if (searchName.isEmpty) return null;

    // ------------------------------------------
    // TIER 3-5: The "Matching Pipeline"
    // ------------------------------------------
    if (_matchCandidates.isEmpty) return null;

    final searchNameNorm = EPGMatchingUtils.normalizeChannelName(searchName);
    // OPTIMIZATION: If aggressive normalization yields empty string, abort
    if (searchNameNorm.isEmpty) return null;
    
    final searchTokens = EPGMatchingUtils.tokenize(searchName);

    double bestScore = 0.0;
    EpgMatchCandidate? bestCandidate;

    for (final candidate in _matchCandidates) {
      final score = EPGMatchingUtils.calculateMatchScore(
        searchName,
        candidate,
        playlistTokens: searchTokens,
      );

      if (score > bestScore) {
        bestScore = score;
        bestCandidate = candidate;
        // Optimization: Early exit on perfect match
        if (bestScore >= 99.0) break;
      }
    }

    // Thresholds
    // 90+: Excellent match
    // 70-90: Good match (usually missing minor words or typo)
    // <70: Risky
    if (bestCandidate != null && bestScore >= 65.0) {
        if (_enableMatchingDiagnostics && bestScore < 85.0) {
           debugLog(
               'EPG: Fuzzy Match "$searchName" -> "${bestCandidate.displayName}" (Score: ${bestScore.toStringAsFixed(1)})');
        }
        return _cacheResolvedMapping(channelId, bestCandidate.id);
    }

    return null;
  }
  
  List<Program> getProgramsForChannel(String channelId,
      {String? channelName, String? groupTitle}) {
    // First try strict matching for fast exact lookups
    var epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName,
            countryHint: groupTitle, allowLoose: false);
    // If strict matching fails but we have a channel name, try loose matching
    if (epgId == null && channelName != null && channelName.trim().isNotEmpty) {
      epgId = _findBestEpgId(channelId, channelName,
          countryHint: groupTitle, allowLoose: true);
    }
    if (epgId != null) {
      return _programsByChannel[epgId] ?? [];
    }

    // Try direct lookup with channel ID
    if (_programsByChannel.containsKey(channelId)) {
      _cacheResolvedMapping(channelId, channelId);
      return _programsByChannel[channelId] ?? [];
    }

    if (!_isParsing && !_isLoading && _allowedChannelIdsNormalized.isNotEmpty) {
      _maybeLogMissingPrograms(channelId, channelName: channelName);
    }
    return [];
  }

  void applyProgramSnapshot(
    Map<String, List<Program>> snapshot, {
    bool overrideExisting = false,
  }) {
    if (snapshot.isEmpty) return;
    var changed = false;
    for (final entry in snapshot.entries) {
      final epgId = entry.key;
      if (epgId.isEmpty) continue;
      final programs = entry.value;
      if (programs.isEmpty) continue;
      if (!overrideExisting && _programsByChannel.containsKey(epgId)) {
        continue;
      }
      _programsByChannel[epgId] = programs;
      _registerAvailableChannel(epgId);
      final normalized = _normalize(epgId);
      if (normalized.isNotEmpty) {
        _normalizedAvailableChannels ??= {};
        _normalizedAvailableChannels!
            .putIfAbsent(normalized, () => [])
            .add(epgId);
      }
      changed = true;
    }
    if (changed && !_isParsing && !_isLoading) {
      notifyListeners();
    }
  }

  bool hasProgramsForChannel(String channelId,
      {String? channelName, String? groupTitle}) {
    // Try matching with loose matching enabled by default for better coverage
    var epgId = _internalToEpgIdMapping[channelId];
    if (epgId == null && channelName != null && channelName.trim().isNotEmpty) {
      // Use loose matching first for better coverage
      epgId = _findBestEpgId(channelId, channelName,
          countryHint: groupTitle, allowLoose: true);
    }
    // Fallback to strict if loose didn't work and we have an ID
    if (epgId == null && channelId.isNotEmpty) {
      epgId = _findBestEpgId(channelId, channelName,
          countryHint: groupTitle, allowLoose: false);
    }
    if (epgId != null) {
      final programs = _programsByChannel[epgId];
      if (programs != null && programs.isNotEmpty) {
        _clearChannelFailures(channelId);
        return true;
      }
      // Don't record failure here; data might just be loading
      _maybeLogMissingPrograms(channelId, epgId: epgId);
      return false;
    }

    final directPrograms = _programsByChannel[channelId];
    if (directPrograms != null && directPrograms.isNotEmpty) {
      _cacheResolvedMapping(channelId, channelId);
      _clearChannelFailures(channelId);
      return true;
    }

    // Don't record failure here; data might just be loading
    _maybeLogMissingEpgId(channelId, channelName);
    return false;
  }

  void _recordChannelFailure(String channelId) {
    if (channelId.isEmpty) return;
    _channelFailureCounts[channelId] =
        (_channelFailureCounts[channelId] ?? 0) + 1;
  }

  void _clearChannelFailures(String channelId) {
    if (channelId.isEmpty) return;
    _channelFailureCounts.remove(channelId);
    _loggedMissingEpgIds.remove(channelId);
    _loggedMissingProgramChannels.remove(channelId);
  }

  bool shouldHideChannel(String channelId, {String? channelName}) {
    if (_isUnknownChannelName(channelName)) return true;
    return (_channelFailureCounts[channelId] ?? 0) >= _channelFailureThreshold;
  }

  bool _isUnknownChannelName(String? channelName) {
    if (channelName == null || channelName.trim().isEmpty) return false;
    return channelName.toLowerCase().contains('unknown');
  }

  void _maybeLogMissingEpgId(String channelId, String? channelName) {
    if (!_loggedMissingEpgIds.add(channelId)) return;
    debugLog(
        'EPG: getCurrentProgram - No EPG ID found for "$channelId" (name: "${channelName ?? 'none'}", available: ${_availableChannels.length}, normalized: ${_normalizedAvailableChannels?.length ?? 0}, programs: ${_programsByChannel.length})');
  }

  void _maybeLogMissingPrograms(String channelId,
      {String? epgId, String? channelName}) {
    if (!_loggedMissingProgramChannels.add(channelId)) return;
    if (epgId != null) {
      debugLog(
          'EPG: getCurrentProgram - No programs for epgId "$epgId" (channelId: "$channelId", total program channels: ${_programsByChannel.length})');
    } else {
      debugLog(
          'EPG: No programs found for channel "$channelId" (name: "${channelName ?? 'none'}")');
    }
  }

  bool hasEpgData(String channelId) {
    return _epgIdsRaw.contains(channelId.trim());
  }

  /// Debug helper: logs match counts (guarded by debug flag).
  void logMatchDiagnostics() {
    _logMatchDiagnostics(context: 'EPG');
  }

  /// Debug helper: resets match counters (guarded by debug flag).
  void resetMatchDiagnostics() {
    if (_enableMatchingDiagnostics) {
      _resetMatchDiagnostics();
    }
  }

  /// Resolve and optionally cache the EPG id for a playlist channel
  String? resolveEpgId(
    String channelId, {
    String? channelName,
    bool cache = true,
    bool allowLoose = true,
  }) {
    final cached = _internalToEpgIdMapping[channelId];
    if (cached != null) {
      if (_epgIdsRaw.isEmpty || _epgIdsRaw.contains(cached)) {
        return cached;
      }
      _internalToEpgIdMapping.remove(channelId);
    }
    final found = _findBestEpgId(
      channelId,
      channelName,
      logIfMissing: false,
      allowLoose: allowLoose,
    );
    if (cache && found != null) {
      _cacheResolvedMapping(channelId, found);
    }
    return found;
  }

  bool hasEpgMatch(String channelId, {String? channelName}) {
    return _findBestEpgId(
          channelId,
          channelName,
          logIfMissing: false,
        ) !=
        null;
  }

  void _registerAvailableChannel(String epgId) {
    if (epgId.isEmpty) return;
    _availableChannels.add(epgId);
    _indexEpgIdRaw(epgId);
  }

  void _registerAvailableChannels(Iterable<String> ids) {
    for (final id in ids) {
      _registerAvailableChannel(id);
    }
  }

  void _indexEpgIdRaw(String id) {
    final trimmed = id.trim();
    if (trimmed.isEmpty) return;
    _epgIdsRaw.add(trimmed);
    _epgIdsLowerToRaw.putIfAbsent(trimmed.toLowerCase(), () => trimmed);
  }

  void _rebuildEpgIdIndexFromIds(Iterable<String> ids) {
    _resetEpgIdIndex();
    for (final id in ids) {
      _indexEpgIdRaw(id);
    }
  }


  /// Fast match estimator for diagnostics using the new pipeline
  int estimateMatchesFast(List<Map<String, dynamic>> channelMaps) {
    if (_availableChannels.isEmpty && _matchCandidates.isEmpty) {
        // Fallback: simple mapping count if no EPG loaded
        return _internalToEpgIdMapping.length;
    }
    
    int matched = 0;
    // We only sample for performance in diagnostics if list is huge
    final sample = channelMaps.length > 500 ? channelMaps.take(500) : channelMaps;
    
    for (final map in sample) {
      final tvgId = (map['tvgId'] as String?) ?? '';
      final id = (map['id'] as String?) ?? '';
      final name = (map['name'] as String?) ?? '';
      
      // 1. Try ID Match
      final primary = tvgId.trim().isNotEmpty ? tvgId : id;
      if (primary.isNotEmpty && _matchRawEpgId(primary) != null) {
        matched++;
        continue;
      }
      
      // 2. Try Fuzzy Match (Pipeline)
      if (name.isNotEmpty && _matchCandidates.isNotEmpty) {
         final searchTokens = EPGMatchingUtils.tokenize(name);
         bool found = false;
         for (final candidate in _matchCandidates) {
             final score = EPGMatchingUtils.calculateMatchScore(
                 name, candidate, playlistTokens: searchTokens
             );
             if (score >= 65.0) {
                 found = true;
                 break; 
             }
         }
         if (found) {
             matched++;
             continue;
         }
      }
    }
    
    // Extrapolate if sampled
    if (channelMaps.length > 500) {
        return (matched * (channelMaps.length / 500)).round();
    }
    return matched;
  }


  Program? getCurrentProgram(String channelId,
      {String? channelName, String? groupTitle}) {
    // Do not return null just because we are loading/parsing.
    // Return potentially stale data if available to prevent UI flickering.

    var epgId = _findBestEpgId(channelId, channelName,
        countryHint: groupTitle, logIfMissing: false, allowLoose: false);

    // Fallback 1: Try direct lookup in _programsByChannel
    if (epgId == null) {
      final directPrograms = _programsByChannel[channelId];
      if (directPrograms != null && directPrograms.isNotEmpty) {
        epgId = channelId;
        _cacheResolvedMapping(channelId, channelId);
      }
    }

    // Fallback 2: Try fuzzy name match (same as hasProgramsForChannel / getProgramsForChannel)
    if (epgId == null &&
        channelName != null &&
        channelName.trim().isNotEmpty) {
      epgId = _findBestEpgId(channelId, channelName,
          countryHint: groupTitle, logIfMissing: false, allowLoose: true);
    }

    if (epgId == null) {
      _maybeLogMissingEpgId(channelId, channelName);
      _recordChannelFailure(channelId);
      return null;
    }

    final programs = getProgramsForChannel(epgId);
    if (programs.isEmpty) {
      _maybeLogMissingPrograms(channelId, epgId: epgId);
      _recordChannelFailure(channelId);
      return null;
    }

    _clearChannelFailures(channelId);
    final now = DateTime.now();
    return _findCurrentOrNextProgram(epgId, programs, now);
  }

  /// Convenience method: resolve a playlist channel to an EPG id and return its current program.
  Program? getProgramForChannel(String channelId,
      {String? channelName, String? groupTitle}) {
    // Try to resolve mapping first
    final epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName, countryHint: groupTitle);
    if (epgId != null) {
      _cacheResolvedMapping(channelId, epgId);
      // Use programs for resolved EPG id
      var programs = getProgramsForChannel(epgId, channelName: channelName);

      // If no in-memory programs, try to lazy load from DB
      if (programs.isEmpty) {
        _loadProgramsFromDb(epgId);
        programs = getProgramsForChannel(epgId, channelName: channelName);
      }

      final now = DateTime.now();
      return _findCurrentOrNextProgram(epgId, programs, now);
    }

    // Fall back to existing behaviour
    return getCurrentProgram(channelId, channelName: channelName);
  }

  /// Async version that will await DB fetch if needed
  Future<Program?> getProgramForChannelAsync(String channelId,
      {String? channelName}) async {
    final epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName);
    if (epgId != null) {
      _cacheResolvedMapping(channelId, epgId);
      var programs = getProgramsForChannel(epgId, channelName: channelName);
      if (programs.isEmpty) {
        await _loadProgramsFromDb(epgId);
        programs = getProgramsForChannel(epgId, channelName: channelName);
      }
      final now = DateTime.now();
      return _findCurrentOrNextProgram(epgId, programs, now);
    }
    await loadMappingsFromDb();
    return null;
  }

  Program? _findCurrentOrNextProgram(
      String epgId, List<Program> programs, DateTime now) {
    if (programs.isEmpty) return null;
    final cachedIndex = _lastProgramIndexByChannel[epgId];
    if (cachedIndex != null &&
        cachedIndex >= 0 &&
        cachedIndex < programs.length) {
      final cachedProgram = programs[cachedIndex];
      if (now.isAfter(cachedProgram.startTime) &&
          now.isBefore(cachedProgram.endTime)) {
        return cachedProgram;
      }
    }

    Program? nextProgram;
    int nextIndex = -1;
    for (int i = 0; i < programs.length; i++) {
      final program = programs[i];
      if (now.isAfter(program.startTime) && now.isBefore(program.endTime)) {
        _lastProgramIndexByChannel[epgId] = i;
        return program;
      }
      if (nextProgram == null && program.startTime.isAfter(now)) {
        nextProgram = program;
        nextIndex = i;
      }
    }

    if (nextProgram != null) {
      _lastProgramIndexByChannel[epgId] = nextIndex;
    }
    return nextProgram;
  }

  final List<String> _pendingBatch = [];
  Timer? _batchTimer;

  void _scheduleBatchRetry() {
    _batchTimer?.cancel();
    _batchTimer = Timer(const Duration(milliseconds: 500), () async {
      if (_pendingBatch.isEmpty) {
        _batchTimer?.cancel();
        _batchTimer = null;
        return;
      }
      final retryBatch = List<String>.from(_pendingBatch);
      debugLog(
          'EPG: Batch timer retry after suspend, loading ${retryBatch.length} channels');
      await _loadProgramsFromDbBatch(retryBatch);
      if (!_suspendDbReads) {
        _pendingBatch.removeWhere((id) => retryBatch.contains(id));
        if (_pendingBatch.isEmpty) {
          _batchTimer?.cancel();
          _batchTimer = null;
        }
      } else {
        _scheduleBatchRetry();
      }
    });
  }

  Future<void> ensureChannelLoaded(String channelId,
      {String? channelName}) async {
    final epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName);
    if (epgId == null) {
      return;
    }

    _registerAvailableChannel(epgId);

    // Cache the mapping
    _cacheResolvedMapping(channelId, epgId);

    // Check if we have ACTUAL programs, not just an empty array
    final existingPrograms = _programsByChannel[epgId];
    final hasPrograms = existingPrograms != null && existingPrograms.isNotEmpty;

    if (hasPrograms || _pendingBatch.contains(epgId)) {
      return;
    }

    _pendingBatch.add(epgId);

    _batchTimer?.cancel();
    _batchTimer = Timer(const Duration(milliseconds: 300), () {
      final batch = List<String>.from(_pendingBatch);
      _pendingBatch.clear();
      loadChannelBatch(batch);
    });

    // Ensure programs are populated from DB if not already
    if (!hasPrograms) {
      // Use the batch loader for single items too for consistency
      unawaited(_loadProgramsFromDbBatch([epgId]));
    }
  }

  Future<void> ensureChannelsLoadedBatch(
    List<String> channelIds, {
    List<String?>? channelNames,
  }) async {
    if (channelIds.isEmpty) return;
    debugLog(
        'EPG: ensureChannelsLoadedBatch called with ${channelIds.length} channels');
    final effectiveNames =
        channelNames != null && channelNames.length == channelIds.length
            ? channelNames
            : null;
    final List<String> epgIdsToLoad = [];
    final Set<String> seen = {};

    for (var i = 0; i < channelIds.length; i++) {
      final channelId = channelIds[i];
      final name = effectiveNames != null ? effectiveNames[i] : null;
      final epgId =
          _internalToEpgIdMapping[channelId] ?? _findBestEpgId(channelId, name);
      if (epgId == null) continue;

      _cacheResolvedMapping(channelId, epgId);

      // Check if we have ACTUAL programs, not just an empty array
      final existingPrograms = _programsByChannel[epgId];
      final hasPrograms =
          existingPrograms != null && existingPrograms.isNotEmpty;

      if (hasPrograms || _pendingBatch.contains(epgId)) {
        continue;
      }
      if (!seen.add(epgId)) continue;
      _registerAvailableChannel(epgId);
      epgIdsToLoad.add(epgId);
    }

    if (epgIdsToLoad.isEmpty) {
      debugLog(
          'EPG: ensureChannelsLoadedBatch - no new channels to load (all already loaded or pending)');
      return;
    }
    debugLog(
        'EPG: ensureChannelsLoadedBatch - queueing ${epgIdsToLoad.length} channels for batch load');
    _pendingBatch.addAll(epgIdsToLoad);
    _batchTimer?.cancel();
    _batchTimer = Timer(const Duration(milliseconds: 300), () async {
      final batch = List<String>.from(_pendingBatch);
      debugLog('EPG: Batch timer fired, loading ${batch.length} channels');
      await _loadProgramsFromDbBatch(batch);
      // Only clear if load succeeded (not suspended)
      if (!_suspendDbReads) {
        _pendingBatch.removeWhere((id) => batch.contains(id));
        if (_pendingBatch.isEmpty) {
          _batchTimer?.cancel();
          _batchTimer = null;
        }
      } else {
        // Reschedule for later until parsing completes.
        _scheduleBatchRetry();
      }
    });
  }

  Future<void> loadChannelsForBatch(List<String> channelIds) async {
    final batches = <List<String>>[];
    for (int i = 0; i < channelIds.length; i += _channelsPerBatch) {
      batches.add(channelIds.sublist(
          i, (i + _channelsPerBatch).clamp(0, channelIds.length)));
    }

    for (final batch in batches) {
      await loadChannelBatch(batch);
    }
  }

  // Stub methods for EPG screen compatibility
  bool hasManualMapping(String channelId) =>
      _manualMappings.containsKey(channelId);
  String? getManualMapping(String channelId) => _manualMappings[channelId];
  List<String> getEpgChannelIds() {
    final ids = _availableChannels.toList();
    ids.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
    return ids;
  }

  List<MapEntry<String, double>> getSuggestedMatches(
      String channelId, String? channelName,
      {int limit = 10}) {
    if (_matchCandidates.isEmpty || channelName == null || channelName.isEmpty) return [];
    
    final searchTokens = EPGMatchingUtils.tokenize(channelName);
    final results = <MapEntry<String, double>>[];

    for (final candidate in _matchCandidates) {
      final score = EPGMatchingUtils.calculateMatchScore(
        channelName,
        candidate,
        playlistTokens: searchTokens,
      );
      if (score > 30.0) {
        results.add(MapEntry(candidate.id, score));
      }
    }

    results.sort((a, b) => b.value.compareTo(a.value));
    return results.take(limit).toList();
  }

  String? getChannelPreview(String epgChannelId) {
    final programs = _programsByChannel[epgChannelId];
    if (programs == null || programs.isEmpty) return null;
    final now = DateTime.now();
    for (final program in programs) {
      if (program.endTime.isAfter(now)) {
        return program.title;
      }
    }
    return programs.first.title;
  }

  Future<void> setManualMapping(String channelId, String epgChannelId) async {
    if (channelId.isEmpty || epgChannelId.isEmpty) return;
    _manualMappings[channelId] = epgChannelId;
    _internalToEpgIdMapping[channelId] = epgChannelId;
    _queueMappingPersist(channelId, epgChannelId);
    await _saveManualMappings();
    notifyListeners();
  }

  Future<void> removeManualMapping(String channelId) async {
    if (channelId.isEmpty) return;
    _manualMappings.remove(channelId);
    _internalToEpgIdMapping.remove(channelId);
    unawaited(_db.deleteEpgMapping(channelId).catchError((e) {
      _handleDbError(e);
    }));
    await _saveManualMappings();
    notifyListeners();
  }

  Future<void> loadMappingsFromDb() async {
    try {
      if (_dbDisabled) {
        return;
      }
      if (_suspendDbReads) {
        return;
      }
      if (!_db.isReady) {
        return;
      }
      final now = DateTime.now();
      if (_internalToEpgIdMapping.isNotEmpty &&
          _lastMappingsLoad != null &&
          now.difference(_lastMappingsLoad!).inSeconds < 30) {
        return;
      }
      final mappings = await _db.getAllMappings();
      _internalToEpgIdMapping.addAll(mappings);
      _registerAvailableChannels(mappings.values);
      _applyManualMappings();
      _lastMappingsLoad = now;
      debugLog('EPG: Loaded ${mappings.length} mappings from DB');
      notifyListeners();
    } catch (e) {
      debugLog('EPG: Failed to load mappings from DB: $e');
      _handleDbError(e);
    }
  }

  Future<void> _ingestProgramsFromFile(
    String? path, {
    Map<String, List<Program>>? target,
    Set<String>? skipChannels,
    int? totalPrograms,
    void Function(int processed, int total)? onProgress,
  }) async {
    if (path == null || path.isEmpty) {
      debugLog('EPG: No program temp file path provided');
      return;
    }
    final file = File(path);
    if (!await file.exists()) {
      debugLog('EPG: Program temp file missing at $path');
      return;
    }

    const int batchSize = 500;
    final Map<String, List<Map<String, dynamic>>> buffer = {};
    final Map<String, bool> cleared = {};

    // We use the class-level map by default to ensure UI updates during ingest
    // If target is provided, we respect it (e.g. for background double-buffering)
    final programsByChannel = target ?? _programsByChannel;
    try {
      int processed = 0;
      final yieldClock = Stopwatch()..start();
      await for (final line in file
          .openRead()
          .transform(utf8.decoder)
          .transform(const LineSplitter())) {
        if (line.trim().isEmpty) continue;
        Map<String, dynamic> data;
        try {
          data = jsonDecode(line) as Map<String, dynamic>;
        } catch (_) {
          continue;
        }

        final epgId =
            (data['epgId'] ?? data['channelId'] ?? '')?.toString() ?? '';
        if (epgId.isEmpty) continue;
        if (skipChannels != null && skipChannels.contains(epgId)) {
          continue;
        }

        final startTs = data['startTs'] as int? ?? 0;
        final endTs = data['endTs'] as int? ?? 0;
        final title = (data['title'] as String?) ?? 'Unknown';

        final nowMs = DateTime.now().millisecondsSinceEpoch;
        final catchupUrl =
            _buildCatchupUrl(epgId, startTs, endTs, nowMs: nowMs);
        final program = Program(
          id: '${epgId}_$startTs',
          channelId: epgId,
          title: title,
          description: data['description'] as String?,
          startTime: DateTime.fromMillisecondsSinceEpoch(startTs),
          endTime: DateTime.fromMillisecondsSinceEpoch(endTs),
          imageUrl: data['imageUrl'] as String?,
          category: data['category'] as String?,
          isLive: false,
          canRecord: true,
          catchupUrl: catchupUrl,
        );

        // Add to chosen target map (class-level or staging) so UI/staging is consistent
        final list = programsByChannel.putIfAbsent(epgId, () => []);
        if (list.length < 80) {
          list.add(program);
        }

        final payload = buffer.putIfAbsent(epgId, () => []);
        payload.add({
          'startTs': startTs,
          'endTs': endTs,
          'title': title,
          'description': data['description'],
          'imageUrl': data['imageUrl'],
        });
        if (payload.length >= batchSize && !_dbDisabled) {
          try {
            await _db.insertPrograms(epgId, payload,
                clearExisting: cleared[epgId] != false);
          } catch (e) {
            _handleDbError(e);
          }
          payload.clear();
          cleared[epgId] = false;
        }

        processed++;
        if (onProgress != null &&
            totalPrograms != null &&
            totalPrograms > 0 &&
            (processed == 500 || processed % 5000 == 0)) {
          onProgress(processed, totalPrograms);
        }
        // Optimized throttling: Notify early for initial view, then throttle.
        // Notify at 500, then more frequently to ensure UI stays responsive.
        if (processed == 500 ||
            (processed > 500 &&
                processed % 1000 == 0 &&
                yieldClock.elapsedMilliseconds >= 100)) {
          // Brief yield to allow UI frame rendering
          await Future.delayed(const Duration(milliseconds: 0));
          notifyListeners();
          yieldClock.reset();
        }
      }

      for (final entry in buffer.entries) {
        if (entry.value.isEmpty) continue;
        if (_dbDisabled) {
          continue;
        }
        try {
          await _db.insertPrograms(entry.key, entry.value,
              clearExisting: cleared[entry.key] != false);
        } catch (e) {
          _handleDbError(e);
        }
      }
      if (onProgress != null &&
          totalPrograms != null &&
          totalPrograms > 0) {
        onProgress(processed, totalPrograms);
      }
    } catch (e) {
      debugLog('EPG: Failed to ingest programs from temp file: $e');
    } finally {
      try {
        await file.delete();
      } catch (_) {}
    }
  }

  Future<void> _loadProgramsFromDb(String epgId) async {
    try {
      if (_dbDisabled) {
        return;
      }
      if (_suspendDbReads) {
        return;
      }
      if (!_db.isReady) {
        return;
      }
      final nowMs = DateTime.now().millisecondsSinceEpoch;
      final normalized = normalizeForFilter(epgId);
      final catchupHours = _catchupHoursByNormalizedId[normalized] ?? 0;
      final startMs =
          catchupHours > 0 ? nowMs - (catchupHours * 3600000) : nowMs;
      final endMs = nowMs + (_epgFutureWindowHours * 3600000);
      final rows = await _db.getProgramsForEpgId(epgId,
          startMs: startMs, endMs: endMs, limit: 400);
      if (rows.isEmpty) return;
      final programs = rows.map((r) {
        final startTs = r['startTs'] as int? ?? 0;
        final endTs = r['endTs'] as int? ?? 0;
        final catchupUrl =
            _buildCatchupUrl(epgId, startTs, endTs, nowMs: nowMs);
        return Program(
          id: '${epgId}_$startTs',
          channelId: epgId,
          title: (r['title'] as String?) ?? '',
          description: r['description'] as String?,
          startTime: DateTime.fromMillisecondsSinceEpoch(startTs),
          endTime: DateTime.fromMillisecondsSinceEpoch(endTs),
          imageUrl: r['imageUrl'] as String?,
          category: null,
          isLive: null,
          canRecord: null,
          catchupUrl: catchupUrl,
        );
      }).toList();
      _programsByChannel[epgId] = programs;
      debugLog('EPG: Loaded ${programs.length} programs for $epgId from DB');
      if (programs.isNotEmpty) {
        _registerAvailableChannel(epgId);
        notifyListeners();
      }
    } catch (e) {
      debugLog('EPG: Failed to load programs from DB for $epgId: $e');
      _handleDbError(e);
    }
  }

  Future<void> _loadProgramsFromDbBatch(List<String> epgIds) async {
    try {
      debugLog(
          'EPG: _loadProgramsFromDbBatch called with ${epgIds.length} epgIds, dbReady=${_db.isReady}, dbDisabled=$_dbDisabled, suspendReads=$_suspendDbReads');
      // If suspended due to parsing, let it retry. Only cancel timer on permanent failures.
      if (_dbDisabled || epgIds.isEmpty || !_db.isReady) {
        debugLog(
            'EPG: _loadProgramsFromDbBatch returning early - dbReady=${_db.isReady}, dbDisabled=$_dbDisabled, suspendReads=$_suspendDbReads, emptyIds=${epgIds.isEmpty}');
        _batchTimer?.cancel();
        _batchTimer = null;
        return;
      }
      // If suspended for parsing, just return - timer will retry automatically
      if (_suspendDbReads) {
        debugLog(
            'EPG: _loadProgramsFromDbBatch suspended (parsing in progress), timer will retry');
        return;
      }

      final nowMs = DateTime.now().millisecondsSinceEpoch;
      final endMs = nowMs + (_epgFutureWindowHours * 3600000);

      // Calculate start time based on max catchup to be safe, or just nowMs
      // For batch, we'll use a conservative start time
      final maxCatchupMs = 7 * 24 * 3600000; // 7 days max catchup assumption
      final startMs = nowMs - maxCatchupMs;

      final rows = await _db.getProgramsForEpgIds(epgIds,
          startMs: startMs, endMs: endMs);

      debugLog(
          'EPG: DB query returned ${rows.length} program rows for ${epgIds.length} channels');
      if (rows.isEmpty) {
        debugLog('EPG: No programs found in DB for requested channels');
        // Only mark as empty if we're NOT currently parsing/loading
        // Otherwise, data might still be coming in
        if (!_isParsing && !_isDownloading && !_isLoading) {
          for (final epgId in epgIds) {
            if (!_programsByChannel.containsKey(epgId)) {
              _programsByChannel[epgId] = [];
            }
          }
          notifyListeners();
        }
        return;
      }

      final byId = <String, List<Program>>{};

      for (final r in rows) {
        final epgId = r['epgId'] as String;
        final startTs = r['startTs'] as int? ?? 0;
        final endTs = r['endTs'] as int? ?? 0;

        // Filter out expired catchup if needed per channel
        final normalized = normalizeForFilter(epgId);
        final catchupHours = _catchupHoursByNormalizedId[normalized] ?? 0;
        final safeStart =
            catchupHours > 0 ? nowMs - (catchupHours * 3600000) : nowMs;

        if (endTs < safeStart) continue;

        final catchupUrl =
            _buildCatchupUrl(epgId, startTs, endTs, nowMs: nowMs);

        byId.putIfAbsent(epgId, () => []).add(Program(
              id: '${epgId}_$startTs',
              channelId: epgId,
              title: (r['title'] as String?) ?? '',
              description: r['description'] as String?,
              startTime: DateTime.fromMillisecondsSinceEpoch(startTs),
              endTime: DateTime.fromMillisecondsSinceEpoch(endTs),
              imageUrl: r['imageUrl'] as String?,
              category: null,
              isLive: null,
              canRecord: null,
              catchupUrl: catchupUrl,
            ));
      }

      var added = false;
      for (final entry in byId.entries) {
        _programsByChannel[entry.key] = entry.value;
        _registerAvailableChannel(entry.key);
        added = true;
      }

      if (added) {
        debugLog('EPG: Batch loaded programs for ${byId.length} channels');
        notifyListeners();
      }
    } catch (e) {
      debugLog('EPG: Failed to load batch programs from DB: $e');
      // Stop the timer on error to prevent error spam
      _batchTimer?.cancel();
      _batchTimer = null;
      _handleDbError(e);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(_restoreDbIfClosed());
    } else if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      // Cancel timers when app is backgrounded to prevent errors
      _batchTimer?.cancel();
      _batchTimer = null;
    }
  }

  @override
  void dispose() {
    _disposed = true;
    _batchTimer?.cancel();
    _stopParseProgressTimer();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
