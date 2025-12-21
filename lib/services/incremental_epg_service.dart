import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:xml/xml.dart';
import 'package:iptv_player/models/program.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class IncrementalEpgService extends ChangeNotifier {
  final Set<String> _availableChannels = {};
  final Set<String> _loadedChannels = {};
  final Map<String, String> _internalToEpgIdMapping = {};
  Map<String, String>? _normalizedAvailableChannels; // normalizedId -> originalId
  bool _isLoading = false;
  bool _isDownloading = false;
  bool _isParsing = false;
  String? _error;
  String? _epgUrl;
  bool _hasParsed = false;
  
  // Storage for all parsed programs
  final Map<String, List<Program>> _programsByChannel = {};
  
  static const String _channelListCacheKey = 'epg_channel_list';
  static const int _channelsPerBatch = 50;
  static const int _maxRetries = 3;
  static const Duration _cacheDuration = Duration(hours: 6);

  bool get isLoading => _isLoading;
  bool get isDownloading => _isDownloading;
  bool get isParsing => _isParsing;
  String? get error => _error;
  Set<String> get availableChannels => _availableChannels;
  int get loadedChannelCount => _loadedChannels.length;
  bool get hasEpgUrl => _epgUrl != null && _epgUrl!.isNotEmpty;

  Future<void> initialize({bool forceRefresh = false}) async {
    debugLog('EPG: Initializing...');
    final prefs = await SharedPreferences.getInstance();
    // Try both keys - custom_epg_url (set by user) and epg_url (auto-found in M3U)
    _epgUrl = prefs.getString('custom_epg_url') ?? prefs.getString('epg_url');
    
    if (_epgUrl != null && _epgUrl!.isNotEmpty) {
      debugLog('EPG: Initializing with URL: $_epgUrl');
      await _loadChannelList(forceRefresh: forceRefresh);
    } else {
      debugLog('EPG: No URL configured (checked custom_epg_url and epg_url)');
    }
  }

  Future<File> _getCacheFile() async {
    final dir = await getApplicationSupportDirectory();
    return File('${dir.path}/epg_cache.xml');
  }

  Future<bool> _isCacheValid() async {
    try {
      final file = await _getCacheFile();
      if (!await file.exists()) {
        debugLog('EPG: Cache file does not exist.');
        return false;
      }
      
      final modified = await file.lastModified();
      final age = DateTime.now().difference(modified);
      final isValid = age < _cacheDuration;
      debugLog('EPG: Cache is ${isValid ? 'valid' : 'stale'}. Age: ${age.inMinutes} minutes.');
      return isValid;
    } catch (e) {
      debugLog('EPG: Error checking cache validity: $e');
      return false;
    }
  }

  Future<void> _downloadEpgIfNeeded({bool forceRefresh = false}) async {
    if (_epgUrl == null) {
      debugLog('EPG: Download skipped, no EPG URL.');
      return;
    }
    
    if (!forceRefresh && await _isCacheValid()) {
      debugLog('EPG: Using valid cached file, skipping download.');
      return;
    }

    _isDownloading = true;
    notifyListeners();
    debugLog('EPG: Starting EPG download from $_epgUrl...');
    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 30)
      ..badCertificateCallback = (cert, host, port) => true;

    try {
      final request = await client.getUrl(Uri.parse(_epgUrl!));
      final response = await request.close();
      
      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode} while downloading EPG.');
      }

      final file = await _getCacheFile();
      var received = 0;
      var total = response.contentLength;
      final sink = file.openWrite();

      await response.listen((data) {
        sink.add(data);
        received += data.length;
        if(total > 0) {
            final progress = (received / total * 100).toStringAsFixed(2);
            // To avoid spamming logs, maybe report every 10%
            // This is a simple implementation, a more robust one would throttle logging.
            debugLog('EPG: Download progress: $progress%');
        }
      }).asFuture();

      await sink.close();
      debugLog('EPG: Download complete. Saved to ${file.path}');
    } catch (e) {
      debugLog('EPG: Download failed: $e');
      rethrow;
    }
    finally {
      client.close();
      _isDownloading = false;
      notifyListeners();
    }
  }

  Future<void> _loadChannelList({bool forceRefresh = false}) async {
    if (_epgUrl == null || _epgUrl!.isEmpty) return;
    
    _isLoading = true;
    _error = null;
    notifyListeners();
    
    int retryCount = 0;
    while (retryCount < _maxRetries) {
      try {
        await _downloadEpgIfNeeded(forceRefresh: forceRefresh);
        
        final file = await _getCacheFile();
        if (!await file.exists()) throw Exception('Cache file missing after download');

        debugLog('EPG: Starting background parsing...');
        _isParsing = true;
        notifyListeners();

        final xmlContent = await file.readAsString();
        if (xmlContent.isEmpty) throw Exception('EPG XML is empty');

        // Use isolate to parse entire XML and return a map of programs
        final parseResult = await compute(_parseEpgInIsolate, xmlContent);
        
        _programsByChannel.clear();
        final rawData = parseResult['programsByChannel'] as Map<String, List<Program>>;
        _programsByChannel.addAll(rawData);

        _availableChannels.clear();
        _availableChannels.addAll(parseResult['channelIds'] as Set<String>);
        
        _normalizedAvailableChannels = parseResult['normalizedChannels'] as Map<String, String>;
        _internalToEpgIdMapping.clear();
        
        _hasParsed = true;
        _isParsing = false;
        _error = null;
        
        final prefs = await SharedPreferences.getInstance();
        await prefs.setStringList(_channelListCacheKey, _availableChannels.toList());
        
        debugLog('EPG: Successfully parsed ${_programsByChannel.length} channels and ${_availableChannels.length} IDs');
        break;
      } catch (e) {
        retryCount++;
        debugLog('EPG: Error loading (attempt $retryCount): $e');
        if (retryCount >= _maxRetries) {
          _error = e.toString();
          _isParsing = false;
          _isLoading = false;
          
          // Fallback to cache list if available
          final prefs = await SharedPreferences.getInstance();
          final cached = prefs.getStringList(_channelListCacheKey);
          if (cached != null && cached.isNotEmpty) {
            _availableChannels.addAll(cached);
            _error = null;
          }
          break;
        }
        await Future.delayed(Duration(seconds: retryCount * 2));
      }
    }
    
    _isLoading = false;
    notifyListeners();
  }

  // Top-level function for background parsing
  static Map<String, dynamic> _parseEpgInIsolate(String xmlData) {
    final document = XmlDocument.parse(xmlData);
    final programmes = document.findAllElements('programme');
    final Map<String, List<Program>> programsByChannel = {};
    final Set<String> channelIds = {};
    final Map<String, String> normalizedChannels = {};

    for (final programme in programmes) {
      final channelId = programme.getAttribute('channel');
      if (channelId == null || channelId.isEmpty) continue;

      channelIds.add(channelId);
      final normalized = channelId.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
      if (normalized.isNotEmpty) {
        normalizedChannels[normalized] = channelId;
      }

      final startStr = programme.getAttribute('start');
      final stopStr = programme.getAttribute('stop');
      if (startStr == null || stopStr == null) continue;

      final program = Program(
        id: '${channelId}_$startStr',
        channelId: channelId,
        title: programme.findElements('title').firstOrNull?.innerText ?? 'Unknown',
        description: programme.findElements('desc').firstOrNull?.innerText,
        startTime: _staticParseTime(startStr),
        endTime: _staticParseTime(stopStr),
        imageUrl: programme.findElements('icon').firstOrNull?.getAttribute('src'),
        category: programme.findElements('category').firstOrNull?.innerText,
        isLive: false,
        canRecord: true,
      );

      programsByChannel.putIfAbsent(channelId, () => []).add(program);
    }

    // Sort programs once after parsing
    for (final channelId in programsByChannel.keys) {
      programsByChannel[channelId]!.sort((a, b) => a.startTime.compareTo(b.startTime));
    }

    return {
      'programsByChannel': programsByChannel,
      'channelIds': channelIds,
      'normalizedChannels': normalizedChannels,
    };
  }

  static DateTime _staticParseTime(String timeStr) {
    try {
      if (timeStr.length < 14) return DateTime.now();
      final mainPart = timeStr.substring(0, 14);
      final year = int.parse(mainPart.substring(0, 4));
      final month = int.parse(mainPart.substring(4, 6));
      final day = int.parse(mainPart.substring(6, 8));
      final hour = int.parse(mainPart.substring(8, 10));
      final minute = int.parse(mainPart.substring(10, 12));
      final second = int.parse(mainPart.substring(12, 14));
      
      DateTime utcTime = DateTime.utc(year, month, day, hour, minute, second);
      
      if (timeStr.length > 15) {
        final offset = timeStr.substring(15).trim();
        if (offset.length >= 4) {
          final sign = offset.startsWith('+') ? 1 : -1;
          final h = int.parse(offset.substring(1, 3));
          final m = int.parse(offset.substring(3, 5));
          utcTime = utcTime.subtract(Duration(hours: sign * h, minutes: sign * m));
        }
      }
      return utcTime.toLocal();
    } catch (e) {
      return DateTime.now();
    }
  }

  Future<void> loadChannelBatch(List<String> channelIds) async {
    // No-op in optimized version as all programs are loaded during init
    // but we can ensure they are available in _programsByChannel
    if (!_hasParsed) {
      await initialize();
    }
  }

  String _normalize(String text) {
    return text.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  }

  String? _findBestEpgId(String channelId, String? channelName) {
    if (_internalToEpgIdMapping.containsKey(channelId)) {
      return _internalToEpgIdMapping[channelId];
    }
    // 1. Exact match
    if (_availableChannels.contains(channelId)) {
      _internalToEpgIdMapping[channelId] = channelId;
      return channelId;
    }
    
    // 2. Normalized ID match
    final normalizedId = _normalize(channelId);
    if (_normalizedAvailableChannels != null && _normalizedAvailableChannels!.containsKey(normalizedId)) {
      final foundId = _normalizedAvailableChannels![normalizedId]!;
      _internalToEpgIdMapping[channelId] = foundId;
      return foundId;
    }
    
    // 3. Name match (if provided)
    if (channelName != null && channelName.isNotEmpty) {
      final normalizedName = _normalize(channelName);
      if (_normalizedAvailableChannels != null && _normalizedAvailableChannels!.containsKey(normalizedName)) {
        final foundId = _normalizedAvailableChannels![normalizedName]!;
        _internalToEpgIdMapping[channelId] = foundId;
        return foundId;
      }
      
      final strippedName = normalizedName.replaceAll(RegExp(r'(hd|fhd|uhd|4k|sd|1080p|720p)$'), '');
      if (strippedName != normalizedName && _normalizedAvailableChannels != null && _normalizedAvailableChannels!.containsKey(strippedName)) {
        final foundId = _normalizedAvailableChannels![strippedName]!;
        _internalToEpgIdMapping[channelId] = foundId;
        return foundId;
      }
    }
    debugLog('EPG: Could not find matching EPG ID for channelId="$channelId", name="$channelName"');
    return null;
  }

  List<Program> getProgramsForChannel(String channelId, {String? channelName}) {
    final epgId = _internalToEpgIdMapping[channelId] ?? _findBestEpgId(channelId, channelName);
    if (epgId != null) {
      return _programsByChannel[epgId] ?? [];
    }
    return _programsByChannel[channelId] ?? [];
  }

  bool hasEpgData(String channelId) {
    return _availableChannels.contains(channelId);
  }

  Program? getCurrentProgram(String channelId, {String? channelName}) {
    final epgId = _internalToEpgIdMapping[channelId] ?? _findBestEpgId(channelId, channelName);
    if (epgId == null) return null;
    
    // Cache the mapping
    _internalToEpgIdMapping[channelId] = epgId;
    
    final programs = getProgramsForChannel(epgId);
    final now = DateTime.now();
    
    for (final program in programs) {
      if (now.isAfter(program.startTime) && now.isBefore(program.endTime)) {
        return program;
      }
    }
    return null;
  }

  final List<String> _pendingBatch = [];
  Timer? _batchTimer;

  // ... (previous code)

  Future<void> ensureChannelLoaded(String channelId, {String? channelName}) async {
    final epgId = _internalToEpgIdMapping[channelId] ?? _findBestEpgId(channelId, channelName);
    if (epgId == null) return;
    
    // Cache the mapping
    _internalToEpgIdMapping[channelId] = epgId;

    if (_programsByChannel.containsKey(epgId) || _pendingBatch.contains(epgId)) return;
    
    _pendingBatch.add(epgId);
    
    _batchTimer?.cancel();
    _batchTimer = Timer(const Duration(milliseconds: 300), () {
      final batch = List<String>.from(_pendingBatch);
      _pendingBatch.clear();
      loadChannelBatch(batch);
    });
  }

  Future<void> loadChannelsForBatch(List<String> channelIds) async {
    final batches = <List<String>>[];
    for (int i = 0; i < channelIds.length; i += _channelsPerBatch) {
      batches.add(channelIds.sublist(i, (i + _channelsPerBatch).clamp(0, channelIds.length)));
    }
    
    for (final batch in batches) {
      await loadChannelBatch(batch);
    }
  }

  // Stub methods for EPG screen compatibility
  bool hasManualMapping(String channelId) => false;
  String? getManualMapping(String channelId) => null;
  List<String> getEpgChannelIds() => _availableChannels.toList();
  List<MapEntry<String, double>> getSuggestedMatches(String channelId, String? channelName, {int limit = 10}) => [];
  String? getChannelPreview(String epgChannelId) => null;
  Future<void> setManualMapping(String channelId, String epgChannelId) async {}
  Future<void> removeManualMapping(String channelId) async {}
  
  @override
  void dispose() {
    _batchTimer?.cancel();
    super.dispose();
  }
}
