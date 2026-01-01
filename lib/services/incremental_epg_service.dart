import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:xml/xml_events.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

// Provider-block exception type removed — provider HTML cases are handled
// via graceful aborts and user-facing `_error` messages to preserve
// last-known-good EPG state.

class CatchupInfo {
  final String streamId;
  final int durationHours;
  const CatchupInfo({required this.streamId, required this.durationHours});
}

class IncrementalEpgService extends ChangeNotifier {
  final Set<String> _availableChannels = {};
  final Set<String> _loadedChannels = {};
  final Map<String, String?> _internalToEpgIdMapping = {};
  Map<String, List<String>>?
      _normalizedAvailableChannels; // normalizedId -> [originalId1, originalId2]
  final Map<String, String> _normalizeCache = {};
  bool _isLoading = false;
  bool _isDownloading = false;
  bool _isParsing = false;
  String? _error;
  String? _epgUrl;
  bool _hasParsed = false;
  bool _initInFlight = false;
  bool _refreshInFlight = false;
  bool _dbDisabled = false;
  bool _pendingAllowedRefresh = false;
  DateTime? _lastMappingsLoad;
  DateTime? _lastInitAttempt;
  Set<String> _allowedChannelIdsNormalized = {};
  int _allowedChannelCount = 0;
  int _epgFutureHours = 8;
  Map<String, CatchupInfo> _catchupByNormalizedId = {};
  Map<String, int> _catchupHoursByNormalizedId = {};
  String? _xtreamServer;
  String? _xtreamUsername;
  String? _xtreamPassword;

  // Storage for all parsed programs
  final Map<String, List<Program>> _programsByChannel = {};
  final LocalDbService _db = LocalDbService.instance;
  bool get _suspendDbReads => _isParsing || _isDownloading || _isLoading;

  // Provider-style alias map (normalized) to bridge common naming drift
  static const Map<String, List<String>> _aliasMap = {
    'bbcone': ['bbc1', 'bbcone', 'bbc1hd', 'bbconehd'],
    'bbctwo': ['bbc2', 'bbctwo', 'bbc2hd', 'bbctwohd'],
    'itv1': ['itv', 'itvhd', 'itv1hd'],
    'skysportsmainevent': [
      'skysportmainevent',
      'ssmainevent',
      'mainevent',
      'skysportsmaineventhd'
    ],
    'skysportsnews': ['ssnews', 'skysportnews', 'skysportsnewshd'],
    'foxsports1': ['fs1', 'foxsport1', 'foxsportsone'],
    'foxsports2': ['fs2', 'foxsport2', 'foxsportstwo'],
    'espn': ['espnusa', 'espn us', 'espnhd'],
    'tsn1': ['tsn 1', 'tsn one'],
    'tsn2': ['tsn 2', 'tsn two'],
    'canalplus': ['canal+', 'canal plus', 'canal plus hd'],
  };

  static final RegExp _httpSchemeRe =
      RegExp(r'https?://', caseSensitive: false);
  static final RegExp _schemeValidRe = RegExp(r'^[A-Za-z]');
  static final RegExp _invalidXmlCharRe =
      RegExp(r'[\x00-\x08\x0B\x0C\x0E-\x1F]');
  static final RegExp _unbrokenEntityRe =
      RegExp(r'&(?![a-zA-Z]+;|#\d+;|#x[0-9a-fA-F]+;)');
  static final RegExp _timeParseRe = RegExp(
      r'^(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})(?:\s*([+-]\d{4}))?');
  static final RegExp _trailingSlashRe = RegExp(r'/+$');
  static final RegExp _bracketsRe = RegExp(r'[\[\(\{].*?[\]\)\}]');
  static final RegExp _commonPrefixRe =
      RegExp(r'^[A-Z]{2,3}[:|]\s*', caseSensitive: false);
  static final RegExp _leadingNumberRe = RegExp(r'^([0-9]+)[\s\-_.]+(.*)$');
  static final RegExp _noiseTokensRe = RegExp(
      r'(\bvip\b|\btrial\b|\btest\b|\bbackup\b|\bstable\b|\badult\b|\bxxx\b|\bpromo\b|\bpreview\b|\b24\/7\b)',
      caseSensitive: false);
  static final RegExp _techLabelsRe = RegExp(
      r'(\bh264\b|\bh265\b|\bhevc\b|\bhdr\b|\bdolby\b|\batmos\b|\b5\.1\b|\b7\.1\b|\bac3\b|\baac\b|\bddp\b|\bdd\b|\bstereo\b|\bsurround\b|\b4k\b|\buhd\b|\bfhd\b|\bhd\b|\bsd\b|\b720p\b|\b1080p\b|\bhb\b|\blb\b)',
      caseSensitive: false);
  static final RegExp _langSufRe = RegExp(
      r'(\ben\b|\bes\b|\bfr\b|\bar\b|\bit\b|\bde\b|\bru\b|\bpt\b|\btr\b|\bpl\b|\bnl\b|\bse\b|\bno\b|\bdk\b|\bfi\b|\bcz\b|\bsk\b)$',
      caseSensitive: false);
  static final RegExp _catchupMarkersRe = RegExp(
      r'(catchup|timeshift|timeshifted|shifted|rebroadcast)',
      caseSensitive: false);
  static final RegExp _sepRe = RegExp(r'[|._]+');
  static final RegExp _multiSpaceRe = RegExp(r'\s+');
  static final RegExp _qualitySufRe = RegExp(
      r'[|]\s*(hd|fhd|uhd|4k|sd|720p|1080p)',
      caseSensitive: false);
  static final RegExp _nonAlphaNumRe = RegExp(r'[^a-z0-9]');
  static final RegExp _techChPrefixRe =
      RegExp(r'^(ch|channel)([0-9a-f]{6,}|\d{3,})$');
  static final RegExp _countryCodeSufRe =
      RegExp(r'(uk|us|ca|au|ie|pt|hk|fr|de|it|es)$');
  static final RegExp _regionSufRe = RegExp(
      r'(london|scotland|wales|ireland|ni|manchester|birmingham|leeds|yorkshire|northwest|northeast|southwest|southeast|midlands|central|east|west|north|south)$');
  static final RegExp _plusOneSufRe = RegExp(r'(plus1|plusone|\+1|\+2)$');
  static final RegExp _programmeStartRe =
      RegExp(r'<(?:\w+:)?programme\b', caseSensitive: false);
  static final RegExp _programmeEndRe =
      RegExp(r'</(?:\w+:)?programme\s*>', caseSensitive: false);
  static final RegExp _channelStartRe =
      RegExp(r'<(?:\w+:)?channel\b', caseSensitive: false);
  static final RegExp _channelEndRe =
      RegExp(r'</(?:\w+:)?channel\s*>', caseSensitive: false);


  // legacy prefs keys removed: do not store large EPG data in SharedPreferences
  static const String _epgCacheTimeKey = 'epg_cache_time';
  static const String _epgCacheUrlKey = 'epg_cache_url';
  static const String _normalizedMapFileName = 'epg_normalized.json';
  static const int _channelsPerBatch = 50;
  static const int _maxRetries = 3;
  static const int _defaultCacheHours = 6;
  Duration _cacheDuration = const Duration(hours: _defaultCacheHours);

  bool get isLoading => _isLoading;
  bool get isDownloading => _isDownloading;
  bool get isParsing => _isParsing;
  String? get error => _error;
  Set<String> get availableChannels => _availableChannels;
  int get loadedChannelCount => _loadedChannels.length;
  bool get hasEpgUrl => _epgUrl != null && _epgUrl!.isNotEmpty;
  String? get currentUrl => _epgUrl;
  int get allowedChannelCount => _allowedChannelCount;
  int get catchupChannelCount => _catchupByNormalizedId.length;

  static String normalizeForFilter(String input) {
    return _normalizeForMatch(input);
  }

  void _handleDbError(Object error) {
    final message = error.toString().toLowerCase();
    if (message.contains('read-only') ||
        message.contains('read only') ||
        message.contains('readonly') ||
        message.contains('database_closed') ||
        message.contains('database closed') ||
        message.contains('locked')) {
      _dbDisabled = true;
    }
  }

  /// Reset all loading states to ensure clean state
  void _resetLoadingState() {
    _isLoading = false;
    _isDownloading = false;
    _isParsing = false;
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

      // Initialize with force refresh to get fresh data, but allow stale cache usage
      await initialize(forceRefresh: false);
    } catch (e) {
      debugLog('EPG: Quick start failed: $e');
    }
  }

  /// Force refresh EPG data with improved error handling
  Future<void> forceRefresh() async {
    debugLog('EPG: Force refresh requested');
    await initialize(forceRefresh: true);
  }

  /// Check if EPG service has usable data available
  bool get hasUsableData {
    return _programsByChannel.isNotEmpty ||
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

  Future<bool> _maybeDecompressGzipFile(File file) async {
    try {
      final header = await file.openRead(0, 2).first;
      if (!_looksLikeGzip(header)) return false;
      final tempFile = File('${file.path}.xml');
      final sink = tempFile.openWrite();
      await file.openRead().transform(gzip.decoder).pipe(sink);
      if (await file.exists()) {
        await file.delete();
      }
      await tempFile.rename(file.path);
      return true;
    } catch (e) {
      debugLog('EPG: Failed to decompress gzip body: $e');
      return false;
    }
  }

  void setAllowedChannelIds(Set<String> channelIds,
      {bool triggerRefresh = false}) {
    _allowedChannelIdsNormalized = channelIds;
    _allowedChannelCount = channelIds.length;
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

  Future<void> initialize({bool forceRefresh = false}) async {
    // Allow multiple initialization attempts but prevent overlapping ones
    if (!forceRefresh &&
        (_isLoading || _isDownloading || _isParsing || _initInFlight)) {
      debugLog('EPG: Init skipped (already loading or in flight)');
      return;
    }

    final now = DateTime.now();
    if (!forceRefresh &&
        _lastInitAttempt != null &&
        now.difference(_lastInitAttempt!).inSeconds < 3) {
      debugLog('EPG: Init skipped (throttled)');
      return;
    }
    _lastInitAttempt = now;
    _initInFlight = true;

    try {
      debugLog('EPG: Initializing...');
      try {
        await _db.init();
      } catch (e) {
        debugLog('EPG: DB init failed (continuing without DB cache): $e');
        _handleDbError(e);
      }

      final prefs = await SharedPreferences.getInstance();
      
      // Load user's EPG cache duration preference (defaults to 6 hours)
      final userCacheHours = prefs.getInt('epg_cache_duration') ?? _defaultCacheHours;
      _cacheDuration = Duration(hours: userCacheHours);
      debugLog('EPG: Using cache duration of $userCacheHours hours');
      // Try both keys - custom_epg_url (set by user) and epg_url (auto-found in M3U)
      // custom_epg_url takes precedence
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
        } else {
          _epgUrl = normalized;
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
      _epgFutureHours = 24;

      if (_epgUrl != null && _epgUrl!.isNotEmpty) {
        debugLog('EPG: Initializing with URL: $_epgUrl');
        // Try loading persisted normalized mapping early to speed up matches
        await _loadNormalizedMappingFromPrefs();
        await loadMappingsFromDb();

        // CRITICAL FIX: Don't defer parse when no allowed channels are set.
        // Instead, load EPG data for all available channels and filter later.

        await _loadChannelList(
          forceRefresh: forceRefresh,
          allowStaleCache: !forceRefresh,
        );
      } else {
        debugLog('EPG: No URL configured (checked custom_epg_url and epg_url)');
        _error = 'No EPG URL configured';
        _resetLoadingState();
        notifyListeners();
      }

      // Debug: Log current state
      debugLog(
          'EPG: Service state - URL: $_epgUrl, Available channels: ${_availableChannels.length}, Loaded channels: ${_programsByChannel.length}');
    } catch (e) {
      debugLog('EPG: Initialization error: $e');
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
        unawaited(initialize(forceRefresh: false));
      }
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
      _internalToEpgIdMapping.clear();
      _programsByChannel.clear();
      _hasParsed = false;
    } else if (cachedUrl.isEmpty) {
      await prefs.setString(_epgCacheUrlKey, currentUrl);
    }
  }

  Future<void> _saveNormalizedMappingToPrefs(Map<String, String>? map) async {
    try {
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$_normalizedMapFileName');
      if (map == null || map.isEmpty) {
        if (await file.exists()) await file.delete();
        return;
      }
      final jsonStr = jsonEncode(map);
      await file.writeAsString(jsonStr);
      debugLog(
          'EPG: Saved normalized mapping (${map.length} entries) to ${file.path}');
    } catch (e) {
      debugLog('EPG: Failed to save normalized mapping: $e');
    }
  }

  void _queueMappingPersist(String channelId, String epgId) {
    if (channelId.isEmpty || epgId.isEmpty) return;
    if (_dbDisabled || !_db.isReady) return;
    unawaited(_db.upsertEpgMapping({channelId: epgId}));
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
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$_normalizedMapFileName');
      if (!await file.exists()) return;
      final jsonStr = await file.readAsString();
      if (jsonStr.isEmpty) return;
      final Map<String, dynamic> decoded = jsonDecode(jsonStr);
      _normalizedAvailableChannels =
          decoded.map((k, v) => MapEntry(k, v.toString()));
      _availableChannels.addAll(_normalizedAvailableChannels!.values);
      debugLog(
          'EPG: Loaded normalized mapping from file (${_normalizedAvailableChannels!.length} entries)');
    } catch (e) {
      debugLog('EPG: Failed to load normalized mapping from file: $e');
    }
  }

  Future<File> _getCacheFile() async {
    final dir = await getApplicationSupportDirectory();
    return File('${dir.path}/epg_cache.xml');
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
      notifyListeners();
      return;
    }
    if (_epgUrl == null) {
      debugLog('EPG: Download skipped, no EPG URL.');
      return;
    }

    // Check cache validity - if we have stale cache and no force refresh,
    // use the stale cache for immediate loading and refresh in background
    if (!forceRefresh) {
      final hasCache = await _isCacheValid(allowStale: true);
      if (hasCache && _programsByChannel.isNotEmpty) {
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
    debugLog('EPG: Starting EPG download from $_epgUrl...');

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

      // 1) HTTP status check — abort gracefully on non-200
      if (response.statusCode != 200) {
        _error = 'EPG fetch failed: HTTP ${response.statusCode}';
        debugLog('EPG: $_error');
        // Ensure no partial cache remains
        final cf = await _getCacheFile();
        if (await cf.exists()) await cf.delete();
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
      if (!isXml && !isGzip) {
        _error =
            'EPG response is not XML (Content-Type: ${contentTypeHeader ?? 'unknown'})';
        debugLog('EPG: $_error');
        throw Exception(_error);
      }

      final file = await _getCacheFile();
      var received = 0;
      var maybeGzipBody = false;

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
                if (_looksLikeGzip(firstBuffer)) {
                  maybeGzipBody = true;
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
                sink.add(firstBuffer);
                headerChecked = true;
              }
            } else {
              sink.add(data);
            }

            received += data.length;
            if (received % (2 * 1024 * 1024) < 100000) {
              debugLog(
                  'EPG: Downloaded ${(received / (1024 * 1024)).toStringAsFixed(1)} MB');
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
            if (_looksLikeGzip(firstBuffer)) {
              maybeGzipBody = true;
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
            sink.add(firstBuffer);
            headerChecked = true;
          }

          await sink.close();
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

      // Minimal sanity checks on final file
      if (fileSize == 0 || fileSize < 100) {
        _error = 'Downloaded EPG file is too small';
        debugLog('EPG: $_error');
        try {
          if (await file.exists()) await file.delete();
        } catch (_) {}
        return;
      }

      // If the body looks gzipped but no headers indicated it, decompress now.
      if (maybeGzipBody) {
        final decompressed = await _maybeDecompressGzipFile(file);
        if (!decompressed) {
          _error = 'EPG response does not start with XML';
          debugLog('EPG: $_error');
          try {
            if (await file.exists()) await file.delete();
          } catch (_) {}
          return;
        }
      }

      // Read a small prefix to validate structure (avoid loading full file)
      try {
        final prefixBytes =
            await file.openRead(0, 16384).reduce((a, b) => a + b);
        final prefix = utf8
            .decode(prefixBytes, allowMalformed: true)
            .trimLeft()
            .toLowerCase();
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
      client.close();
      _isDownloading = false;
      notifyListeners();
    }
  }

  Future<void> _loadChannelList({
    bool forceRefresh = false,
    bool allowStaleCache = false,
    bool fromBackgroundRefresh = false,
  }) async {
    if (_epgUrl == null || _epgUrl!.isEmpty) return;

    // Prevent overlapping loads
    if (_isLoading || _isDownloading || _isParsing) {
      debugLog('EPG: Load already in progress, skipping concurrent request.');
      return;
    }

    _isLoading = true;
    _error = null;
    notifyListeners();

    int retryCount = 0;
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
          await _downloadEpgIfNeeded(forceRefresh: forceRefresh);
        }

        // OPTIMIZATION: Try loading programs from DB before parsing XML
        if (!forceRefresh && !_dbDisabled) {
          final programCount = await _db.programCount();
          if (programCount > 0) {
            debugLog('EPG: Found $programCount programs in DB, loading...');
            try {
              final dbPrograms = await _db.getAllProgramsByChannel(
                pastHours: 12,
                futureHours: _epgFutureHours,
              );
              if (dbPrograms.isNotEmpty) {
                // Populate in-memory cache from DB
                _programsByChannel.clear();
                for (final entry in dbPrograms.entries) {
                  final epgId = entry.key;
                  final programs = entry.value.map((row) => Program(
                    id: '${epgId}_${row['startTs']}',
                    channelId: epgId,
                    title: row['title'] as String? ?? '',
                    description: row['description'] as String?,
                    startTime: DateTime.fromMillisecondsSinceEpoch(row['startTs'] as int),
                    endTime: DateTime.fromMillisecondsSinceEpoch(row['endTs'] as int),
                    imageUrl: row['imageUrl'] as String?,
                  )).toList();
                  _programsByChannel[epgId] = programs;
                }
                
                // Also ensure availableChannels is populated
                _availableChannels.clear();
                _availableChannels.addAll(_programsByChannel.keys);
                if (_normalizedAvailableChannels != null) {
                  _availableChannels.addAll(_normalizedAvailableChannels!.values);
                }
                
                debugLog('EPG: Loaded ${_programsByChannel.length} channels from DB cache (${dbPrograms.values.fold<int>(0, (sum, list) => sum + list.length)} programs)');
                _hasParsed = true;
                _isLoading = false;
                _isParsing = false;
                _error = null;
                notifyListeners();
                
                // Schedule background refresh if cache is stale
                if (deferRefresh) {
                  unawaited(_refreshFromNetwork());
                }
                return;
              }
            } catch (e) {
              debugLog('EPG: Failed to load programs from DB: $e');
              // Fall through to XML parsing
            }
          }
        }

        // Legacy optimization for mappings only (fallback)
        if (!forceRefresh &&
            _normalizedAvailableChannels != null &&
            _normalizedAvailableChannels!.isNotEmpty) {
          final mappingCount = await _db.mappingCount();
          if (mappingCount > 0 && _programsByChannel.isNotEmpty) {
            debugLog(
                'EPG: Skipping XML parse - using ${_normalizedAvailableChannels!.length} cached channels and $mappingCount DB mappings.');
            
            // Ensure availableChannels is populated from the normalized map
            _availableChannels.clear();
            _availableChannels.addAll(_normalizedAvailableChannels!.values);
            
            _hasParsed = true;
            _isLoading = false;
            _isParsing = false;
            _error = null;
            notifyListeners();
            return;
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

        debugLog('EPG: Starting background parsing...');
        _isParsing = true;
        notifyListeners();

        // CRITICAL FIX: If no allowed channels are set, load all available EPG data
        // and filter later when channels become available
        final effectiveAllowedChannels = _allowedChannelIdsNormalized.isNotEmpty
            ? _allowedChannelIdsNormalized
            : <String>{}; // Empty set means load all

        // Pass file path to isolate instead of content string to save memory
        Future<Map<String, dynamic>> parseEpg(
            Set<String> allowedChannels) async {
          final now = DateTime.now();
          final windowEnd = now.add(Duration(hours: _epgFutureHours));
          return compute(_parseEpgInIsolate, {
            'filePath': file.path,
            'allowedChannels': allowedChannels.toList(),
            'nowMs': now.millisecondsSinceEpoch,
            'futureEndMs': windowEnd.millisecondsSinceEpoch,
            'catchupHoursByChannel': _catchupHoursByNormalizedId,
          });
        }

        var parseResult = await parseEpg(effectiveAllowedChannels);
        final initialProgramCount = parseResult['programCount'] as int? ?? 0;
        final initialChannelIds =
            (parseResult['channelIds'] as List<dynamic>).cast<String>();
        bool noMatchingIdsForPlaylist = false;

        // If we have allowed channels but no results, try fallback strategies
        if (_allowedChannelIdsNormalized.isNotEmpty &&
            (initialProgramCount == 0 || initialChannelIds.isEmpty)) {
          debugLog(
              'EPG: Filtered parse returned no data; scanning channel IDs for targeted fallback.');
          final scanResult = await compute(_scanEpgChannelIdsInIsolate, {
            'filePath': file.path,
            'allowedNormalized': _allowedChannelIdsNormalized.toList(),
          });
          final normalizedIds = (scanResult['normalizedIds'] as List<dynamic>)
              .cast<String>()
              .toSet();
          final scannedChannelIds =
              (scanResult['channelIds'] as List<dynamic>).cast<String>();
          final matchedChannelIds =
              (scanResult['matchedChannelIds'] as List<dynamic>).cast<String>();
          final scannedNormalizedChannels = <String, String>{};
          for (final id in scannedChannelIds) {
            final normalized = normalizeForFilter(id);
            if (normalized.isNotEmpty &&
                !scannedNormalizedChannels.containsKey(normalized)) {
              scannedNormalizedChannels[normalized] = id;
            }
          }
          final targetedAllowed =
              _allowedChannelIdsNormalized.intersection(normalizedIds);
          if (targetedAllowed.isNotEmpty) {
            parseResult = await parseEpg(targetedAllowed);
          } else if (matchedChannelIds.isNotEmpty) {
            final matchedAllowed = matchedChannelIds
                .map((id) => normalizeForFilter(id))
                .where((id) => id.isNotEmpty)
                .toSet();
            parseResult = await parseEpg(matchedAllowed);
          } else {
            debugLog(
                'EPG: Targeted fallback found no matching IDs; using available data.');
            noMatchingIdsForPlaylist = true;
            parseResult = {
              'programFilePath': null,
              'programCount': 0,
              'channelIds': scannedChannelIds,
              'normalizedChannels': scannedNormalizedChannels,
            };
          }
        }

        final programFilePath = parseResult['programFilePath'] as String?;
        final parsedProgramCount = parseResult['programCount'] as int? ?? 0;
        final channelIds =
            (parseResult['channelIds'] as List<dynamic>).cast<String>();

        if (programFilePath == null ||
            programFilePath.isEmpty ||
            parsedProgramCount == 0) {
          debugLog(
              'EPG: Parse produced no programs; checking if we should use fallback data.');

          // If we have existing data and this is just an empty filtered result, keep existing data
          if (_programsByChannel.isNotEmpty &&
              _allowedChannelIdsNormalized.isNotEmpty) {
            debugLog('EPG: Keeping existing data due to filtered empty result');
            _isParsing = false;
            _error = null;
            break;
          }

          _isParsing = false;
          _error = noMatchingIdsForPlaylist
              ? 'No matching EPG IDs for this playlist. Check tvg-id or mapping.'
              : 'No EPG data available.';
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

        final normalizedChannels = Map<String, String>.from(
            parseResult['normalizedChannels'] as Map<String, String>);
        final stagedPrograms = <String, List<Program>>{};

        // Stream programs from the temp file into memory (capped) and DB in batches
        await _ingestProgramsFromFile(programFilePath, target: stagedPrograms);

        _programsByChannel
          ..clear()
          ..addAll(stagedPrograms);
        _availableChannels
          ..clear()
          ..addAll(channelIds);
        _normalizedAvailableChannels = normalizedChannels;

        _hasParsed = true;
        _isParsing = false;
        _error = noMatchingIdsForPlaylist
            ? 'No matching EPG IDs for this playlist. Check tvg-id or mapping.'
            : null;

        // Persist cache timestamp (do NOT store full EPG or channel lists in prefs)
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(
            _epgCacheTimeKey, DateTime.now().toIso8601String());
        if (_epgUrl != null && _epgUrl!.isNotEmpty) {
          await prefs.setString(_epgCacheUrlKey, _epgUrl!);
        }
        // Persist normalized mapping to file for faster startup
        await _saveNormalizedMappingToPrefs(_normalizedAvailableChannels);

        debugLog(
            'EPG: Successfully parsed ${_programsByChannel.length} channels and ${_availableChannels.length} IDs with ~$parsedProgramCount programs');
        
        // PERSIST: Save parsed programs to DB for fast future loads
        if (!_dbDisabled && _programsByChannel.isNotEmpty) {
          try {
            debugLog('EPG: Persisting programs to DB...');
            final dbPayload = <String, List<Map<String, dynamic>>>{};
            for (final entry in _programsByChannel.entries) {
              dbPayload[entry.key] = entry.value.map((p) => {
                'startTs': p.startTime.millisecondsSinceEpoch,
                'endTs': p.endTime.millisecondsSinceEpoch,
                'title': p.title,
                'description': p.description,
                'imageUrl': p.imageUrl,
              }).toList();
            }
            await _db.clearPrograms();
            await _db.insertAllPrograms(dbPayload);
            debugLog('EPG: Persisted ${_programsByChannel.length} channels to DB.');
          } catch (e) {
            debugLog('EPG: Failed to persist programs to DB: $e');
            // Non-fatal, continue
          }
        }
        
        if (deferRefresh && !fromBackgroundRefresh) {
          unawaited(_refreshFromNetwork());
        }
        break;
      } catch (e, stack) {
        retryCount++;
        debugLog('EPG: Error loading (attempt $retryCount): $e');
        debugLog(stack.toString());

        if (retryCount >= _maxRetries) {
          _error = 'Failed to load EPG: $e';
          _isParsing = false;
          _isLoading = false;

          // Fallback: try to load normalized mapping file to repopulate channel list
          await _loadNormalizedMappingFromPrefs();
          if (_normalizedAvailableChannels != null &&
              _normalizedAvailableChannels!.isNotEmpty) {
            _availableChannels.addAll(_normalizedAvailableChannels!.values);
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

  // Optimized streaming parser running in an isolate
  static bool _shouldIncludeProgramme(
    String channelId,
    int startMs,
    int endMs,
    Set<String> allowedNormalized,
    Map<String, int> catchupHoursByChannel,
    int nowMs,
    int futureEndMs,
    String? normalizedChannelId,
  ) {
    final normalized = normalizedChannelId ?? normalizeForFilter(channelId);
    if (allowedNormalized.isNotEmpty &&
        (normalized.isEmpty || !allowedNormalized.contains(normalized))) {
      return false;
    }

    if (startMs > futureEndMs) return false;

    if (endMs < nowMs) {
      final catchupHours = catchupHoursByChannel[normalized] ?? 0;
      if (catchupHours <= 0) return false;
      final earliest = nowMs - (catchupHours * 3600000);
      return endMs >= earliest;
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
    final normalizedChannels = <String, String>{};
    var tempFile = File(
        '${Directory.systemTemp.path}/epg_programs_${DateTime.now().millisecondsSinceEpoch}.jsonl');
    int programCount = 0;

    // Try parsing using UTF-8 but allow malformed sequences (many EPGs
    // contain stray bytes). If that fails with a FormatException from the
    // XML parser, retry with Latin1 which is more permissive for single-byte
    // encodings commonly found in XMLTV feeds.
    Stream<List<int>> rawStreamProvider() => file.openRead();

    String sanitizeXmlChunk(String input) {
      // Remove invalid control characters and escape broken entities.
      var out = input.replaceAll(_invalidXmlCharRe, '');
      out = out.replaceAll(_unbrokenEntityRe, '&amp;');
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
        StreamTransformer<List<int>, String> decoder) async {
      final sink = tempFile.openWrite();
      final charStream =
          rawStreamProvider().transform(decoder).transform(sanitizeXmlStream());
      final events = charStream.toXmlEvents().withParentEvents();
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
          );
        } else if (startEvent.name.endsWith('channel')) {
          _processChannel(subtreeEvents, channelIds, normalizedChannels,
              allowedNormalized: allowedList, normalize: normalizeCached);
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

      await for (final chunk in stream) {
        buffer += sanitizeXmlChunk(chunk);

        buffer = drainBlocks(buffer, channelStart, channelEnd, (block) {
          final id = extractAttribute(block, 'id')?.trim() ?? '';
          if (id.isEmpty) return;
          final normalizedId = normalizeCached(id);
          if (allowedList.isNotEmpty &&
              (normalizedId.isEmpty || !allowedList.contains(normalizedId))) {
            return;
          }
          if (id.isNotEmpty) {
            channelIds.add(id);
            if (normalizedId.isNotEmpty) {
              normalizedChannels.putIfAbsent(normalizedId, () => []).add(id);
            }
            final display = extractTagText(block, 'display-name');
            if (display != null && display.isNotEmpty) {
              final normalizedDisplay = normalizeCached(display);
              if (normalizedDisplay.isNotEmpty) {
                normalizedChannels.putIfAbsent(normalizedDisplay, () => []).add(id);
              }
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
          final start = _staticParseTime(startStr).millisecondsSinceEpoch;
          final end = _staticParseTime(stopStr).millisecondsSinceEpoch;
          final normalizedChannelId = normalizeCached(channelId);
          if (!_shouldIncludeProgramme(channelId, start, end, allowedList,
              catchupHoursByChannel, nowMs, futureEndMs, normalizedChannelId)) {
            return;
          }
          channelIds.add(channelId);
          if (normalizedChannelId.isNotEmpty) {
            normalizedChannels.putIfAbsent(normalizedChannelId, () => []).add(channelId);
          }
          final title = extractTagText(block, 'title') ?? 'Unknown';
          final description = extractTagText(block, 'desc');
          final category = extractTagText(block, 'category');
          final icon = extractAttribute(block, 'src');

          final payload = {
            'epgId': channelId,
            'startTs': start,
            'endTs': end,
            'title': title,
            'description': description,
            'imageUrl': icon,
            'category': category,
          };
          sink.writeln(jsonEncode(payload));
          programCount++;
        });
      }

      await sink.flush();
      await sink.close();
    }

    try {
      // First attempt: UTF-8 but be lenient about malformed sequences
      await runParseWithDecoder(const Utf8Decoder(allowMalformed: true));
    } on FormatException catch (e) {
      debugLog('EPG: UTF-8 parse failed (will retry with Latin1): $e');
      channelIds.clear();
      normalizedChannels.clear();
      programCount = 0;
      try {
        await runParseWithDecoder(latin1.decoder);
      } catch (e2, s2) {
        debugLog('EPG: Latin1 retry also failed: $e2');
        debugLog(s2.toString());
        // Re-throw the original to preserve context for callers
        throw FormatException(
            'EPG parsing failed after UTF8 and Latin1 attempts: $e2');
      }
    } catch (e) {
      // Pass through any other failures
      rethrow;
    }

    if (programCount < 1000) {
      debugLog(
          'EPG: Low program count ($programCount). Falling back to lenient parser.');
      channelIds.clear();
      normalizedChannels.clear();
      programCount = 0;
      tempFile = File(
          '${Directory.systemTemp.path}/epg_programs_${DateTime.now().millisecondsSinceEpoch}_lenient.jsonl');
      await runLenientParse();
    }

    return {
      'programFilePath': tempFile.path,
      'programCount': programCount,
      'channelIds': channelIds.toList(),
      'normalizedChannels': normalizedChannels,
    };
  }

  static Future<Map<String, dynamic>> _scanEpgChannelIdsInIsolate(
      Map<String, dynamic> args) async {
    final filePath = args['filePath'] as String? ?? '';
    final file = File(filePath);
    if (!await file.exists()) {
      throw Exception('EPG cache file not found in isolate');
    }

    final normalizedIds = <String>{};
    final channelIds = <String>{};
    final matchedChannelIds = <String>{};
    final allowedNormalized =
        (args['allowedNormalized'] as List<dynamic>? ?? const [])
            .map((e) => e.toString())
            .toSet();
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

    try {
      final stream =
          file.openRead().transform(const Utf8Decoder(allowMalformed: true));
      final events = stream.toXmlEvents().withParentEvents();
      final channelSubtrees =
          events.selectSubtreeEvents((event) => event.name.endsWith('channel'));

      await for (final subtree in channelSubtrees) {
        if (subtree.isEmpty) continue;
        final startEvent = subtree.first;
        if (startEvent is! XmlStartElementEvent) continue;
        final id = startEvent.attributes
            .firstWhere((a) => a.name == 'id',
                orElse: () =>
                    XmlEventAttribute('id', '', XmlAttributeType.DOUBLE_QUOTE))
            .value;
        if (id.isEmpty) continue;
        channelIds.add(id);
        final normalizedId = normalizeCached(id);
        if (normalizedId.isNotEmpty) {
          normalizedIds.add(normalizedId);
          if (allowedNormalized.contains(normalizedId)) {
            matchedChannelIds.add(id);
          }
        }

        String? displayName;
        for (final event in subtree) {
          if (event is XmlStartElementEvent && event.name == 'display-name') {
            final idx = subtree.indexOf(event);
            if (idx + 1 < subtree.length) {
              final next = subtree[idx + 1];
              if (next is XmlTextEvent) {
                displayName = next.value.trim();
                if (displayName.isNotEmpty) break;
              }
            }
          }
        }
        if (displayName != null && displayName.isNotEmpty) {
          final stripped = _stripSuffixes(displayName);
          String normalizedDisplay =
              stripped.toLowerCase().replaceAll(_nonAlphaNumRe, '');
          normalizedDisplay = _convertNumberWords(normalizedDisplay);
          if (normalizedDisplay.isNotEmpty) {
            normalizedIds.add(normalizedDisplay);
            if (allowedNormalized.contains(normalizedDisplay)) {
              matchedChannelIds.add(id);
            }
          }
        }
      }
    } catch (e) {
      debugLog('EPG: Channel ID scan failed: $e');
    }

    return {
      'channelIds': channelIds.toList(),
      'normalizedIds': normalizedIds.toList(),
      'matchedChannelIds': matchedChannelIds.toList(),
    };
  }

  static void _processChannel(
    List<XmlEvent> events,
    Set<String> channelIds,
    Map<String, String> normalizedChannels, {
    Set<String> allowedNormalized = const {},
    required String Function(String input) normalize,
  }) {
    // Basic parsing of channel tag to get ID and display-name
    // <channel id="BBC1"> <display-name>BBC One</display-name> </channel>
    final startEvent = events.first as XmlStartElementEvent;
    final id = startEvent.attributes
        .firstWhere((a) => a.name == 'id',
            orElse: () =>
                XmlEventAttribute('id', '', XmlAttributeType.DOUBLE_QUOTE))
        .value;

    if (id.isNotEmpty) {
      final normalizedId = normalize(id);
      if (allowedNormalized.isNotEmpty &&
          !allowedNormalized.contains(normalizedId)) {
        return;
      }
      channelIds.add(id);
      if (normalizedId.isNotEmpty) {
        normalizedChannels[normalizedId] = id;
      }

      // Parse <display-name> elements to improve name->id matching
      String? displayName;
      for (final event in events) {
        if (event is XmlStartElementEvent && event.name == 'display-name') {
          final idx = events.indexOf(event);
          if (idx + 1 < events.length) {
            final next = events[idx + 1];
            if (next is XmlTextEvent) {
              displayName = next.value.trim();
              if (displayName.isNotEmpty) break;
            }
          }
        }
      }

      if (displayName != null && displayName.isNotEmpty) {
        final normalizedDisplay = normalize(displayName);
        if (normalizedDisplay.isNotEmpty &&
            !normalizedChannels.containsKey(normalizedDisplay)) {
          normalizedChannels[normalizedDisplay] = id;
        }
      }
    }
  }

  static void _processProgramme(
    List<XmlEvent> events,
    Set<String> channelIds,
    Map<String, String> normalizedChannels,
    IOSink sink,
    void Function() onProgram,
    Set<String> allowedNormalized,
    Map<String, int> catchupHoursByChannel,
    int nowMs,
    int futureEndMs,
    String Function(String input) normalize,
  ) {
    // Parse programme subtree
    // <programme start="..." stop="..." channel="..."> ... </programme>
    final startEvent = events.first as XmlStartElementEvent;

    final channelId = startEvent.attributes
        .firstWhere((a) => a.name == 'channel',
            orElse: () =>
                XmlEventAttribute('channel', '', XmlAttributeType.DOUBLE_QUOTE))
        .value;
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
    if (!_shouldIncludeProgramme(channelId, start, end, allowedNormalized,
        catchupHoursByChannel, nowMs, futureEndMs, normalizedChannelId)) {
      return;
    }

    // Ensure we track this channel ID even if No <channel> tag exists for it in the XMLTV
    // This allows the UI to still match programs to the M3U channels.
    channelIds.add(channelId);

    String title = 'Unknown';
    String? description;
    String? category;
    String? icon;

    // Iterate events to find child tags
    for (final event in events) {
      if (event is XmlStartElementEvent) {
        if (event.name == 'title') {
          // The next event should be text
          final idx = events.indexOf(event);
          if (idx + 1 < events.length) {
            final next = events[idx + 1];
            if (next is XmlTextEvent) {
              title = next.value;
            }
          }
        } else if (event.name == 'desc') {
          final idx = events.indexOf(event);
          if (idx + 1 < events.length) {
            final next = events[idx + 1];
            if (next is XmlTextEvent) {
              description = next.value;
            }
          }
        } else if (event.name == 'category') {
          final idx = events.indexOf(event);
          if (idx + 1 < events.length) {
            final next = events[idx + 1];
            if (next is XmlTextEvent) {
              category = next.value;
            }
          }
        } else if (event.name == 'icon') {
          icon = event.attributes
              .firstWhere((a) => a.name == 'src',
                  orElse: () => XmlEventAttribute(
                      'src', '', XmlAttributeType.DOUBLE_QUOTE))
              .value;
        }
      }
    }

    // Ensure we track this channel ID even if no <channel> tag exists for it in the XMLTV
    // This allows the UI to still match programs to the M3U channels.
    channelIds.add(channelId);

    // Also track in normalized map for loose matching
    if (normalizedChannelId.isNotEmpty &&
        !normalizedChannels.containsKey(normalizedChannelId)) {
      normalizedChannels[normalizedChannelId] = channelId;
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
    sink.writeln(jsonEncode(payload));
    onProgram();
  }

  static DateTime _staticParseTime(String timeStr) {
    try {
      final trimmed = timeStr.trim();
      // Match base datetime and optional offset like +0100 or -0500
      final m = _timeParseRe.firstMatch(trimmed);
      if (m == null) return DateTime.now();

      final year = int.parse(m.group(1)!);
      final month = int.parse(m.group(2)!);
      final day = int.parse(m.group(3)!);
      final hour = int.parse(m.group(4)!);
      final minute = int.parse(m.group(5)!);
      final second = int.parse(m.group(6)!);

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
    final base = server.replaceAll(_trailingSlashRe, '');
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
    final normalized = _normalizeForMatch(text);
    _normalizeCache[text] = normalized;
    return normalized;
  }

  void _ensureNormalizedMap() {
    if (_availableChannels.isEmpty) return;
    _normalizedAvailableChannels ??= {};
    for (final id in _availableChannels) {
      final normalized = _normalize(id);
      if (normalized.isEmpty) continue;
      _normalizedAvailableChannels!.putIfAbsent(normalized, () => []).add(id);
    }
  }

  static String _removeDiacritics(String input) {
    const Map<String, String> map = {
      'á': 'a',
      'à': 'a',
      'ä': 'a',
      'â': 'a',
      'ã': 'a',
      'å': 'a',
      'č': 'c',
      'ç': 'c',
      'ď': 'd',
      'é': 'e',
      'è': 'e',
      'ë': 'e',
      'ê': 'e',
      'ě': 'e',
      'í': 'i',
      'ì': 'i',
      'ï': 'i',
      'î': 'i',
      'ľ': 'l',
      'ĺ': 'l',
      'ń': 'n',
      'ň': 'n',
      'ñ': 'n',
      'ó': 'o',
      'ò': 'o',
      'ö': 'o',
      'ô': 'o',
      'õ': 'o',
      'ř': 'r',
      'ŕ': 'r',
      'š': 's',
      'ś': 's',
      'ť': 't',
      'ú': 'u',
      'ù': 'u',
      'ü': 'u',
      'û': 'u',
      'ý': 'y',
      'ž': 'z',
      'ź': 'z',
    };
    final buffer = StringBuffer();
    for (final rune in input.runes) {
      final ch = String.fromCharCode(rune);
      final lower = ch.toLowerCase();
      buffer.write(map[lower] ?? ch);
    }
    return buffer.toString();
  }

  static String _translateCommonWords(String input) {
    if (input.isEmpty) return input;
    const replacements = <String, String>{
      'noticias': 'news',
      'newses': 'news',
      'cine': 'movies',
      'peliculas': 'movies',
      'filmes': 'movies',
      'canal': 'channel',
      'canale': 'channel',
      'sport': 'sports',
      'deportes': 'sports',
      'futbol': 'football',
      'fútbol': 'football',
      'musica': 'music',
      'musik': 'music',
      'kids': 'kids',
      'ninos': 'kids',
      'infantil': 'kids',
    };

    return input.toLowerCase().replaceAllMapped(
        RegExp(r'\b(' + replacements.keys.join('|') + r')\b'),
        (match) => replacements[match.group(0)!] ?? match.group(0)!);
  }

  /// Resolve normalized aliases to a canonical normalized key (if present).
  String? _resolveAliasNormalized(String normalized) {
    if (normalized.isEmpty) return null;
    if (_aliasMap.containsKey(normalized)) return normalized;
    for (final entry in _aliasMap.entries) {
      if (entry.value.contains(normalized)) {
        return entry.key;
      }
    }
    return null;
  }

  String? _matchAliasToAvailable(String normalized, {String? countryCode}) {
    final alias = _resolveAliasNormalized(normalized);
    if (alias != null &&
        _normalizedAvailableChannels != null &&
        _normalizedAvailableChannels!.containsKey(alias)) {
      final candidates = _normalizedAvailableChannels![alias]!;
      return _selectBestFromCandidates(candidates, countryCode, alias);
    }
    return null;
  }

  /// Select the best EPG ID from a list of candidates based on country and similarity.
  String? _selectBestFromCandidates(
      List<String> candidates, String? countryCode, String normalizedTarget) {
    if (candidates.isEmpty) return null;
    if (candidates.length == 1 && countryCode == null) return candidates.first;

    String? bestId;
    double bestScore = -1000.0;

    for (final id in candidates) {
      double score = 0.0;
      final normalizedId = _normalize(id);

      // 1. Exact normalized match is strong
      if (normalizedId == normalizedTarget) {
        score += 50.0;
      }

      // 2. Country match is strongest
      if (countryCode != null) {
        if (_epgIdMatchesCountry(id, countryCode)) {
          score += 100.0;
        } else if (_epgIdDisagreesWithCountry(id, countryCode)) {
          // HEAVY penalty if it explicitly matches a DIFFERENT country
          score -= 80.0;
        }
      }

      // 3. Length difference penalty (prefer closer names)
      final diff = (normalizedId.length - normalizedTarget.length).abs();
      score -= diff * 2.0;

      // 4. Prefer IDs that don't look like tech strings (uuid-like)
      if (id.length > 20 && RegExp(r'[0-9a-f-]{8,}').hasMatch(id)) {
        score -= 10.0;
      }

      if (score > bestScore) {
        bestScore = score;
        bestId = id;
      }
    }

    return bestId;
  }

  /// Check if an EPG ID explicitly belongs to a different country than the one requested.
  bool _epgIdDisagreesWithCountry(String epgId, String countryCode) {
    // Only check common IPTV country suffixes
    final suffixes = ['uk', 'us', 'ca', 'au', 'ie', 'fr', 'de', 'es', 'it', 'br', 'mx'];
    final normalizedId = epgId.toLowerCase();
    
    for (final code in suffixes) {
      if (code == countryCode) continue;
      if (_epgIdMatchesCountry(normalizedId, code)) return true;
    }
    return false;
  }

  static String _convertNumberWords(String text) {
    const conversions = {
      'zero': '0',
      'one': '1',
      'two': '2',
      'three': '3',
      'four': '4',
      'five': '5',
      'six': '6',
      'seven': '7',
      'eight': '8',
      'nine': '9',
      'ten': '10',
      'eleven': '11',
      'twelve': '12',
      'thirteen': '13',
      'fourteen': '14',
      'fifteen': '15',
      'sixteen': '16',
      'seventeen': '17',
      'eighteen': '18',
      'nineteen': '19',
      'twenty': '20',
      '1st': '1',
      '2nd': '2',
      '3rd': '3',
      '4th': '4',
      '5th': '5',
    };

    String result = text.toLowerCase();
    conversions.forEach((key, value) {
      if (result.contains(key)) {
        result = result.replaceAll(key, value);
      }
    });
    return result;
  }

  static String _stripSuffixes(String text) {
    return text
        .replaceAll(_qualitySufRe, '')
        .replaceAll(_regionSufRe, '')
        .trim();
  }

  /// Map of country/region names to ISO 2-letter codes for EPG matching
  static const Map<String, String> _countryNameToCode = {
    // Full country names
    'australia': 'au', 'australian': 'au',
    'united states': 'us', 'usa': 'us', 'american': 'us', 'america': 'us',
    'united kingdom': 'uk', 'uk': 'uk', 'british': 'uk', 'britain': 'uk', 'england': 'uk',
    'canada': 'ca', 'canadian': 'ca',
    'germany': 'de', 'german': 'de', 'deutschland': 'de',
    'france': 'fr', 'french': 'fr',
    'spain': 'es', 'spanish': 'es', 'espana': 'es',
    'italy': 'it', 'italian': 'it', 'italia': 'it',
    'portugal': 'pt', 'portuguese': 'pt',
    'brazil': 'br', 'brazilian': 'br', 'brasil': 'br',
    'mexico': 'mx', 'mexican': 'mx',
    'netherlands': 'nl', 'dutch': 'nl', 'holland': 'nl',
    'belgium': 'be', 'belgian': 'be',
    'ireland': 'ie', 'irish': 'ie',
    'new zealand': 'nz', 'kiwi': 'nz',
    'india': 'in', 'indian': 'in',
    'pakistan': 'pk', 'pakistani': 'pk',
    'turkey': 'tr', 'turkish': 'tr',
    'russia': 'ru', 'russian': 'ru',
    'poland': 'pl', 'polish': 'pl',
    'sweden': 'se', 'swedish': 'se',
    'norway': 'no', 'norwegian': 'no',
    'denmark': 'dk', 'danish': 'dk',
    'finland': 'fi', 'finnish': 'fi',
    'greece': 'gr', 'greek': 'gr',
    'japan': 'jp', 'japanese': 'jp',
    'korea': 'kr', 'korean': 'kr', 'south korea': 'kr',
    'china': 'cn', 'chinese': 'cn',
    'hong kong': 'hk',
    'taiwan': 'tw', 'taiwanese': 'tw',
    'philippines': 'ph', 'filipino': 'ph',
    'indonesia': 'id', 'indonesian': 'id',
    'malaysia': 'my', 'malaysian': 'my',
    'singapore': 'sg', 'singaporean': 'sg',
    'thailand': 'th', 'thai': 'th',
    'vietnam': 'vn', 'vietnamese': 'vn',
    'arab': 'ar', 'arabic': 'ar', 'middle east': 'ar',
    'israel': 'il', 'israeli': 'il', 'hebrew': 'il',
    'south africa': 'za', 'african': 'za',
    'latin': 'latam', 'latino': 'latam', 'latin america': 'latam',
  };

  /// Extract country code from a group/category name
  static String? _extractCountryCode(String? groupName) {
    if (groupName == null || groupName.isEmpty) return null;
    final normalized = groupName.toLowerCase().trim();
    
    // Direct lookup
    if (_countryNameToCode.containsKey(normalized)) {
      return _countryNameToCode[normalized];
    }
    
    // Check if group contains a country name
    for (final entry in _countryNameToCode.entries) {
      if (normalized.contains(entry.key)) {
        return entry.value;
      }
    }
    
    // Check for 2-letter codes at end (e.g., "Sports AU", "News UK")
    final parts = normalized.split(RegExp(r'[\s|_-]+'));
    if (parts.isNotEmpty) {
      final lastPart = parts.last;
      if (lastPart.length == 2 && _countryNameToCode.values.contains(lastPart)) {
        return lastPart;
      }
    }
    
    return null;
  }

  /// Check if an EPG ID contains a country code hint
  static bool _epgIdMatchesCountry(String epgId, String countryCode) {
    final normalizedId = epgId.toLowerCase();
    // Check for .au, _au, -au, or just ending with au
    return normalizedId.contains('.$countryCode') ||
           normalizedId.contains('_$countryCode') ||
           normalizedId.contains('-$countryCode') ||
           normalizedId.endsWith(countryCode);
  }

  // Conservative trigram-based similarity to use as a last-resort fallback.
  double _trigramSimilarity(String a, String b) {
    final sa = _normalize(a);
    final sb = _normalize(b);
    if (sa.isEmpty || sb.isEmpty) return 0.0;

    final aTr = <String>{};
    for (var i = 0; i + 3 <= sa.length; i++) {
      aTr.add(sa.substring(i, i + 3));
    }
    final bTr = <String>{};
    for (var i = 0; i + 3 <= sb.length; i++) {
      bTr.add(sb.substring(i, i + 3));
    }
    if (aTr.isEmpty || bTr.isEmpty) return 0.0;
    final inter = aTr.intersection(bTr).length;
    final union = aTr.length + bTr.length - inter;
    if (union == 0) return 0.0;
    return inter / union;
  }

  static String _normalizeForMatch(String text) {
    if (text.isEmpty) return '';

    // Remove diacritics (España -> espana) and bracketed clutter tags.
    var clean = _removeDiacritics(text);
    clean = clean.replaceAll(_bracketsRe, ' ');

    // Strip common prefixes like "UK:", "US|", and leading channel numbers "001-".
    clean = clean.replaceAll(_commonPrefixRe, '');
    // Strip leading channel numbers "001-", but only if not purely numeric.
    final numMatch = _leadingNumberRe.firstMatch(clean);
    if (numMatch != null) {
      final remainder = numMatch.group(2) ?? '';
      if (remainder.trim().isNotEmpty) {
        clean = remainder;
      }
    }

    // Strip promo/noise tokens and tech labels.
    clean = clean.replaceAll(_noiseTokensRe, ' ');
    clean = clean.replaceAll(_techLabelsRe, ' ');

    // Drop language/region suffix tokens (but keep the base).
    clean = clean.replaceAll(_langSufRe, '');

    // Remove common catchup/time-shift markers.
    clean = clean.replaceAll(_catchupMarkersRe, '');

    // Translate common non-English labels to English keywords.
    clean = _translateCommonWords(clean);

    // Normalize separators and trim.
    clean = clean.replaceAll(_sepRe, ' ');
    clean = clean.replaceAll(_multiSpaceRe, ' ').trim();

    // Strip quality suffixes after normalization.
    clean = clean.replaceAll(_qualitySufRe, '');

    String normalized = clean.toLowerCase().replaceAll(_nonAlphaNumRe, '');

    // Strip technical channel prefixes like "ch_" or "channel" when followed
    // by a long numeric/hex identifier (common in XMLTV ids).
    final match = _techChPrefixRe.firstMatch(normalized);
    if (match != null) {
      normalized = match.group(2) ?? normalized;
    }

    // Strip common country code suffixes.
    normalized = normalized.replaceAll(_countryCodeSufRe, '');

    // Remove regional/location tokens to collapse variants (e.g., bbc1manchester -> bbc1).
    normalized = normalized.replaceAll(_regionSufRe, '');

    // Collapse "plus1"/"plusone" and "+1/+2" variants.
    normalized = normalized.replaceAll(_plusOneSufRe, '');

    return _convertNumberWords(normalized);
  }

  String? _findBestEpgId(
    String channelId,
    String? channelName, {
    bool logIfMissing = true,
    bool allowLoose = true,
    String? countryHint,
  }) {
    if (_internalToEpgIdMapping.containsKey(channelId)) {
      final cached = _internalToEpgIdMapping[channelId];
      if (cached == null) {
        return null;
      }
      if (_availableChannels.isEmpty || _availableChannels.contains(cached)) {
        return cached;
      }
      _internalToEpgIdMapping.remove(channelId);
    }

    _ensureNormalizedMap();
    
    // Extract country code from hint (e.g., "Australia" -> "au")
    final countryCode = _extractCountryCode(countryHint);
    
    // 1. Exact match
    if (_availableChannels.contains(channelId)) {
      return _cacheResolvedMapping(channelId, channelId);
    }

    // 2. Normalized ID match (with country prioritization)
    final normalizedId = _normalize(channelId);
    if (normalizedId.isNotEmpty &&
        _normalizedAvailableChannels != null &&
        _normalizedAvailableChannels!.containsKey(normalizedId)) {
      final candidates = _normalizedAvailableChannels![normalizedId]!;
      final best = _selectBestFromCandidates(candidates, countryCode, normalizedId);
      if (best != null) return _cacheResolvedMapping(channelId, best);
    }

    final aliasId = _matchAliasToAvailable(normalizedId, countryCode: countryCode);
    if (aliasId != null) {
      return _cacheResolvedMapping(channelId, aliasId);
    }

    // Match without domain suffix (e.g., "BBC1.uk" -> "BBC1")
    if (channelId.contains('.')) {
      final withoutDomain = _normalize(channelId.split('.').first);
      if (withoutDomain.isNotEmpty &&
          _normalizedAvailableChannels != null &&
          _normalizedAvailableChannels!.containsKey(withoutDomain)) {
        final candidates = _normalizedAvailableChannels![withoutDomain]!;
        final best = _selectBestFromCandidates(candidates, countryCode, withoutDomain);
        if (best != null) return _cacheResolvedMapping(channelId, best);
      }

      final aliasWithoutDomain = _matchAliasToAvailable(withoutDomain, countryCode: countryCode);
      if (aliasWithoutDomain != null) {
        return _cacheResolvedMapping(channelId, aliasWithoutDomain);
      }
    }

    // 3. Name match (if provided)
    if (channelName != null && channelName.isNotEmpty) {
      final normalizedName = _normalize(channelName);
      if (normalizedName.isNotEmpty &&
          _normalizedAvailableChannels != null &&
          _normalizedAvailableChannels!.containsKey(normalizedName)) {
        final candidates = _normalizedAvailableChannels![normalizedName]!;
        final best = _selectBestFromCandidates(candidates, countryCode, normalizedName);
        if (best != null) return _cacheResolvedMapping(channelId, best);
      }

      final aliasFromName = _matchAliasToAvailable(normalizedName, countryCode: countryCode);
      if (aliasFromName != null) {
        return _cacheResolvedMapping(channelId, aliasFromName);
      }

      final strippedName = _normalize(_stripSuffixes(channelName));
      if (strippedName.isNotEmpty &&
          strippedName != normalizedName &&
          _normalizedAvailableChannels != null &&
          _normalizedAvailableChannels!.containsKey(strippedName)) {
        final candidates = _normalizedAvailableChannels![strippedName]!;
        final best = _selectBestFromCandidates(candidates, countryCode, strippedName);
        if (best != null) return _cacheResolvedMapping(channelId, best);
      }

      final aliasFromStripped = _matchAliasToAvailable(strippedName, countryCode: countryCode);
      if (aliasFromStripped != null) {
        return _cacheResolvedMapping(channelId, aliasFromStripped);
      }

      if (allowLoose) {
        // Try matching the name against exact EPG IDs if they look like names
        // Prioritize matches that contain our country code
        String? bestMatch;
        double bestScore = -1000.0;
        
        for (final epgId in _availableChannels) {
          final normalizedEpg = _normalize(epgId);
          if (normalizedEpg == normalizedName || normalizedEpg == strippedName) {
            double score = 0.0;
            if (countryCode != null) {
              if (_epgIdMatchesCountry(epgId, countryCode)) {
                score += 100.0;
              } else if (_epgIdDisagreesWithCountry(epgId, countryCode)) {
                score -= 80.0;
              }
            }
            if (score > bestScore) {
              bestScore = score;
              bestMatch = epgId;
            }
          }
        }
        if (bestMatch != null && (countryCode == null || bestScore > 0)) {
           return _cacheResolvedMapping(channelId, bestMatch);
        }

        // 4. Loose matching (starts with / contains)
        // Collect all potential matches first
        if (normalizedName.length >= 4 && _normalizedAvailableChannels != null) {
          final List<String> candidates = [];
          for (final entry in _normalizedAvailableChannels!.entries) {
            final epgNorm = entry.key;
            // Prefix match or containment
            if (epgNorm.startsWith(normalizedName) || normalizedName.startsWith(epgNorm)) {
               // Reject prefix matches that are too short (e.g. "TNT" matching "TNT Sports" is only ok if diff is small)
               final diff = (epgNorm.length - normalizedName.length).abs();
               if (diff < 10) {
                 candidates.addAll(entry.value);
               }
            }
          }
          
          if (candidates.isNotEmpty) {
            final best = _selectBestFromCandidates(candidates, countryCode, normalizedName);
            // Strict check for loose matches: if we have a country code, don't match a disagreeing country
            if (best != null) {
              if (countryCode != null && _epgIdDisagreesWithCountry(best, countryCode)) {
                // Reject this loose match as it belongs to another country
              } else {
                return _cacheResolvedMapping(channelId, best);
              }
            }
          }
        }

        // 5. Conservative fuzzy-match fallback using trigram similarity
        if (channelName.length >= 4 && _normalizedAvailableChannels != null) {
           final List<String> allCandidates = [];
           double highestTrigram = 0.0;
           
           for (final entry in _normalizedAvailableChannels!.entries) {
              final score = _trigramSimilarity(normalizedName, entry.key);
              if (score >= 0.75) {
                 if (score > highestTrigram) highestTrigram = score;
                 allCandidates.addAll(entry.value);
              }
           }
           
           if (allCandidates.isNotEmpty) {
              final best = _selectBestFromCandidates(allCandidates, countryCode, normalizedName);
              if (best != null) {
                 // For fuzzy, be even stricter about country disagreement
                 if (countryCode != null && _epgIdDisagreesWithCountry(best, countryCode)) {
                    // Reject
                 } else if (highestTrigram >= 0.85) {
                    return _cacheResolvedMapping(channelId, best);
                 }
              }
           }
        }
      }
    }

    // No match found - cache the negative result to avoid re-running expensive fuzzy matches
    return _cacheResolvedMapping(channelId, null);
  }

  List<Program> getProgramsForChannel(String channelId, {String? channelName, String? groupTitle}) {
    final epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName, countryHint: groupTitle);
    if (epgId != null) {
      return _programsByChannel[epgId] ?? [];
    }

    // Try direct lookup with channel ID
    if (_programsByChannel.containsKey(channelId)) {
      _cacheResolvedMapping(channelId, channelId);
      return _programsByChannel[channelId] ?? [];
    }

    // Try with normalized channel ID
    final normalizedId = _normalize(channelId);
    for (final key in _programsByChannel.keys) {
      final normalizedKey = _normalize(key);
      if (normalizedKey == normalizedId) {
        _cacheResolvedMapping(channelId, key);
        return _programsByChannel[key] ?? [];
      }
    }

    if (!_isParsing && !_isLoading && _allowedChannelIdsNormalized.isNotEmpty) {
      debugLog(
          'EPG: No programs found for channel "$channelId" (name: "${channelName ?? 'none'}")');
    }
    return [];
  }

  bool hasEpgData(String channelId) {
    return _availableChannels.contains(channelId);
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
      if (_availableChannels.isEmpty || _availableChannels.contains(cached)) {
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

  /// Fast match estimator for diagnostics (no fuzzy or trigram matching).
  int estimateMatchesFast(List<Map<String, dynamic>> channelMaps) {
    _ensureNormalizedMap();
    if (_normalizedAvailableChannels == null ||
        _normalizedAvailableChannels!.isEmpty) {
      // Return established mapping count as fallback
      return _internalToEpgIdMapping.length;
    }
    int matched = 0;
    for (final map in channelMaps) {
      final tvgId = (map['tvgId'] as String?) ?? '';
      final id = (map['id'] as String?) ?? '';
      final name = (map['name'] as String?) ?? '';
      final primary = tvgId.trim().isNotEmpty ? tvgId : id;
      if (primary.trim().isNotEmpty) {
        final normalized = _normalize(primary);
        if (normalized.isNotEmpty &&
            _normalizedAvailableChannels!.containsKey(normalized)) {
          matched++;
          continue;
        }
        if (_matchAliasToAvailable(normalized) != null) {
          matched++;
          continue;
        }
      }
      if (name.trim().isNotEmpty) {
        final normalizedName = _normalize(name);
        if (normalizedName.isNotEmpty &&
            _normalizedAvailableChannels!.containsKey(normalizedName)) {
          matched++;
          continue;
        }
        if (_matchAliasToAvailable(normalizedName) != null) {
          matched++;
          continue;
        }
      }
    }
    return matched;
  }

  Program? getCurrentProgram(String channelId, {String? channelName, String? groupTitle}) {
    final epgId = _findBestEpgId(channelId, channelName, countryHint: groupTitle, logIfMissing: false);
    if (epgId == null) return null;

  final programs = getProgramsForChannel(epgId);
  if (programs.isEmpty) return null;
  
  final now = DateTime.now();

  // 1. Try to find strictly current program
  for (final program in programs) {
    if (now.isAfter(program.startTime) && now.isBefore(program.endTime)) {
      return program;
    }
  }

  // 2. Fallback to next upcoming
  for (final program in programs) {
    if (program.startTime.isAfter(now)) {
      return program;
    }
  }

  return null;
}

  /// Convenience method: resolve a playlist channel to an EPG id and return its current program.
  Program? getProgramForChannel(String channelId, {String? channelName, String? groupTitle}) {
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
      for (final program in programs) {
        if (now.isAfter(program.startTime) && now.isBefore(program.endTime)) {
          return program;
        }
      }
      for (final program in programs) {
        if (program.startTime.isAfter(now)) {
          return program;
        }
      }
      return null;
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
      for (final program in programs) {
        if (now.isAfter(program.startTime) && now.isBefore(program.endTime)) {
          return program;
        }
      }
      for (final program in programs) {
        if (program.startTime.isAfter(now)) {
          return program;
        }
      }
      return null;
    }
    await loadMappingsFromDb();
    return null;
  }

  final List<String> _pendingBatch = [];
  Timer? _batchTimer;

  Future<void> ensureChannelLoaded(String channelId,
      {String? channelName}) async {
    final epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName);
    if (epgId == null) {
      return;
    }

    // Cache the mapping
    _cacheResolvedMapping(channelId, epgId);

    if (_programsByChannel.containsKey(epgId) ||
        _pendingBatch.contains(epgId)) {
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
    if (!_programsByChannel.containsKey(epgId)) {
      unawaited(_loadProgramsFromDb(epgId));
    }
  }

  Future<void> ensureChannelsLoadedBatch(
    List<String> channelIds, {
    List<String?>? channelNames,
  }) async {
    if (channelIds.isEmpty) return;
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
      if (_programsByChannel.containsKey(epgId) ||
          _pendingBatch.contains(epgId)) {
        continue;
      }
      if (!seen.add(epgId)) continue;
      epgIdsToLoad.add(epgId);
    }

    if (epgIdsToLoad.isEmpty) return;
    _pendingBatch.addAll(epgIdsToLoad);
    _batchTimer?.cancel();
    _batchTimer = Timer(const Duration(milliseconds: 300), () {
      final batch = List<String>.from(_pendingBatch);
      _pendingBatch.clear();
      loadChannelBatch(batch);
    });

    for (final epgId in epgIdsToLoad) {
      if (!_programsByChannel.containsKey(epgId)) {
        unawaited(_loadProgramsFromDb(epgId));
      }
    }
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
  bool hasManualMapping(String channelId) => false;
  String? getManualMapping(String channelId) => null;
  List<String> getEpgChannelIds() => _availableChannels.toList();
  List<MapEntry<String, double>> getSuggestedMatches(
          String channelId, String? channelName,
          {int limit = 10}) =>
      [];
  String? getChannelPreview(String epgChannelId) => null;
  Future<void> setManualMapping(String channelId, String epgChannelId) async {}
  Future<void> removeManualMapping(String channelId) async {}

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
      _availableChannels.addAll(mappings.values);
      _lastMappingsLoad = now;
      debugLog('EPG: Loaded ${mappings.length} mappings from DB');
      notifyListeners();
    } catch (e) {
      debugLog('EPG: Failed to load mappings from DB: $e');
      _handleDbError(e);
    }
  }

  Future<void> _ingestProgramsFromFile(String? path,
      {Map<String, List<Program>>? target}) async {
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
        if (yieldClock.elapsedMilliseconds >= 50 || processed % 1000 == 0) {
          // Yield frequently to keep input responsive during large EPG ingests.
          await Future.delayed(const Duration(milliseconds: 1));
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
      final endMs = nowMs + (_epgFutureHours * 3600000);
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
        _availableChannels.add(epgId);
        notifyListeners();
      }
    } catch (e) {
      debugLog('EPG: Failed to load programs from DB for $epgId: $e');
      _handleDbError(e);
    }
  }

  @override
  void dispose() {
    _batchTimer?.cancel();
    super.dispose();
  }
}
