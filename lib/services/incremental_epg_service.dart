import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:xml/xml_events.dart';
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
    // custom_epg_url takes precedence
    _epgUrl = prefs.getString('custom_epg_url');
    if (_epgUrl == null || _epgUrl!.isEmpty) {
      _epgUrl = prefs.getString('epg_url');
    }
    
    if (_epgUrl != null && _epgUrl!.isNotEmpty) {
      debugLog('EPG: Initializing with URL: $_epgUrl');
      await _loadChannelList(forceRefresh: forceRefresh);
    } else {
      debugLog('EPG: No URL configured (checked custom_epg_url and epg_url)');
      _error = 'No EPG URL configured';
      notifyListeners();
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
      final length = await file.length();
      if (length == 0) {
        debugLog('EPG: Cache file is empty.');
        return false;
      }

      final age = DateTime.now().difference(modified);
      final isValid = age < _cacheDuration;
      debugLog('EPG: Cache is ${isValid ? 'valid' : 'stale'}. Age: ${age.inMinutes} minutes. Size: ${(length / 1024 / 1024).toStringAsFixed(2)} MB');
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
    _error = null;
    notifyListeners();
    debugLog('EPG: Starting EPG download from $_epgUrl...');
    
    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 60)
      ..badCertificateCallback = (cert, host, port) => true;

    try {
      final request = await client.getUrl(Uri.parse(_epgUrl!));
      request.headers.add('Accept-Encoding', 'gzip');
      
      final response = await request.close();
      
      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode} while downloading EPG.');
      }

      final file = await _getCacheFile();
      var received = 0;
      
      // Determine if the content is gzipped
      // Check header first, then extension
      final isGzipHeader = response.headers['content-encoding']?.contains('gzip') ?? false;
      final isGzipExt = _epgUrl!.toLowerCase().split('?').first.endsWith('.gz');
      final isGzipped = isGzipHeader || isGzipExt;
      
      debugLog('EPG: Downloading content (Header GZIP: $isGzipHeader, Ext GZIP: $isGzipExt)...');

      final sink = file.openWrite();
      
      try {
        Stream<List<int>> stream = response;
        if (isGzipped) {
          stream = stream.transform(gzip.decoder);
        }

        await stream.listen((data) {
          sink.add(data);
          received += data.length;
          // Report progress every 2MB
          if (received % (2 * 1024 * 1024) < 100000) {
            debugLog('EPG: Downloaded ${(received / (1024 * 1024)).toStringAsFixed(1)} MB');
          }
        }).asFuture();
        
      } catch (e) {
        debugLog('EPG: Error during download/decompression: $e');
        // If it failed because it wasn't actually GZIP but we thought it was,
        // we might want to retry without gzip, but usually network error is more likely.
        rethrow;
      } finally {
        await sink.close();
      }
      
      final fileSize = await file.length();
      debugLog('EPG: Download complete. Saved to ${file.path} (${(fileSize / 1024 / 1024).toStringAsFixed(2)} MB)');
      
      if (fileSize == 0) {
        throw Exception('Downloaded EPG file is empty');
      }
      
    } catch (e) {
      debugLog('EPG: Download failed: $e');
      _error = 'Download failed: $e';
      rethrow;
    } finally {
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

        // Pass file path to isolate instead of content string to save memory
        final parseResult = await compute(_parseEpgInIsolate, file.path);
        
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
        
        // Cache available channels list
        final prefs = await SharedPreferences.getInstance();
        await prefs.setStringList(_channelListCacheKey, _availableChannels.toList());
        
        debugLog('EPG: Successfully parsed ${_programsByChannel.length} channels and ${_availableChannels.length} IDs');
        break;
      } catch (e, stack) {
        retryCount++;
        debugLog('EPG: Error loading (attempt $retryCount): $e');
        debugLog(stack.toString());
        
        if (retryCount >= _maxRetries) {
          _error = 'Failed to load EPG: $e';
          _isParsing = false;
          _isLoading = false;
          
          // Fallback to cache list if available to at least show something
          final prefs = await SharedPreferences.getInstance();
          final cached = prefs.getStringList(_channelListCacheKey);
          if (cached != null && cached.isNotEmpty) {
            _availableChannels.addAll(cached);
            // Don't clear error, so user knows latest data failed
          }
          break;
        }
        await Future.delayed(Duration(seconds: retryCount * 2));
      }
    }
    
    _isLoading = false;
    notifyListeners();
  }

  // Optimized streaming parser running in an isolate
  static Future<Map<String, dynamic>> _parseEpgInIsolate(String filePath) async {
    final file = File(filePath);
    if (!await file.exists()) {
      throw Exception('EPG cache file not found in isolate');
    }

    final programsByChannel = <String, List<Program>>{};
    final channelIds = <String>{};
    final normalizedChannels = <String, String>{};
    
    // Use lenient decoder for Latin-1/Windows-1252 support often found in EPGs
    // Fallback to UTF-8 if possible, but allowMalformed helps.
    final stream = file.openRead()
        .transform(utf8.decoder);
    
    // Use XmlEventDecoder to stream events
    final events = stream.toXmlEvents().withParentEvents();
    
    // Select subtrees for <programme> and <channel> elements
    // This parses only one element at a time, keeping memory usage low
    final elements = events.selectSubtreeEvents((event) => event.name == 'programme' || event.name == 'channel');
    
    await for (final subtreeEvents in elements) {
      if (subtreeEvents.isEmpty) continue;
      
      final startEvent = subtreeEvents.first;
      if (startEvent is! XmlStartElementEvent) continue;
      
      if (startEvent.name == 'programme') {
        _processProgramme(subtreeEvents, programsByChannel);
      } else if (startEvent.name == 'channel') {
        _processChannel(subtreeEvents, channelIds, normalizedChannels);
      }
    }

    // Sort programs
    for (final channelId in programsByChannel.keys) {
      programsByChannel[channelId]!.sort((a, b) => a.startTime.compareTo(b.startTime));
    }

    return {
      'programsByChannel': programsByChannel,
      'channelIds': channelIds,
      'normalizedChannels': normalizedChannels,
    };
  }
  
  static void _processChannel(List<XmlEvent> events, Set<String> channelIds, Map<String, String> normalizedChannels) {
    // Basic parsing of channel tag to get ID and display-name
    // <channel id="BBC1"> <display-name>BBC One</display-name> </channel>
    final startEvent = events.first as XmlStartElementEvent;
    final id = startEvent.attributes.firstWhere((a) => a.name == 'id', orElse: () => XmlEventAttribute('id', '', XmlAttributeType.DOUBLE_QUOTE)).value;
    
    if (id.isNotEmpty) {
      channelIds.add(id);
      final normalized = id.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
      if (normalized.isNotEmpty) {
        normalizedChannels[normalized] = id;
      }
      
      // We could parse display-name here if we wanted to improve matching further
    }
  }

  static void _processProgramme(List<XmlEvent> events, Map<String, List<Program>> programsByChannel) {
    // Parse programme subtree
    // <programme start="..." stop="..." channel="..."> ... </programme>
    final startEvent = events.first as XmlStartElementEvent;
    
    final channelId = startEvent.attributes.firstWhere((a) => a.name == 'channel', orElse: () => XmlEventAttribute('channel', '', XmlAttributeType.DOUBLE_QUOTE)).value;
    final startStr = startEvent.attributes.firstWhere((a) => a.name == 'start', orElse: () => XmlEventAttribute('start', '', XmlAttributeType.DOUBLE_QUOTE)).value;
    final stopStr = startEvent.attributes.firstWhere((a) => a.name == 'stop', orElse: () => XmlEventAttribute('stop', '', XmlAttributeType.DOUBLE_QUOTE)).value;
    
    if (channelId.isEmpty || startStr.isEmpty || stopStr.isEmpty) return;
    
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
             final next = events[idx+1];
             if (next is XmlTextEvent) {
               title = next.value;
             }
          }
        } else if (event.name == 'desc') {
          final idx = events.indexOf(event);
          if (idx + 1 < events.length) {
             final next = events[idx+1];
             if (next is XmlTextEvent) {
               description = next.value;
             }
          }
        } else if (event.name == 'category') {
          final idx = events.indexOf(event);
          if (idx + 1 < events.length) {
             final next = events[idx+1];
             if (next is XmlTextEvent) {
               category = next.value;
             }
          }
        } else if (event.name == 'icon') {
          icon = event.attributes.firstWhere((a) => a.name == 'src', orElse: () => XmlEventAttribute('src', '', XmlAttributeType.DOUBLE_QUOTE)).value;
        }
      }
    }
    
    final program = Program(
      id: '${channelId}_$startStr',
      channelId: channelId,
      title: title,
      description: description,
      startTime: _staticParseTime(startStr),
      endTime: _staticParseTime(stopStr),
      imageUrl: icon,
      category: category,
      isLive: false,
      canRecord: true,
    );

    programsByChannel.putIfAbsent(channelId, () => []).add(program);
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
    if (text.isEmpty) return '';
    // Strip common prefixes like "UK:", "US|", etc.
    String clean = text.replaceAll(RegExp(r'^[A-Z]{2,3}[:|]\s*'), '');
    // Strip common quality prefixes/suffixes
    clean = clean.replaceAll(RegExp(r'[|]\s*(HD|FHD|UHD|4K|SD|720p|1080p)', caseSensitive: false), '');
    
    String normalized = clean.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    // Strip common country code suffixes
    normalized = normalized.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk|fr|de|it|es)$'), '');
    
    return _convertNumberWords(normalized);
  }

  static String _convertNumberWords(String text) {
    const conversions = {
      'one': '1', 'two': '2', 'three': '3', 'four': '4', 'five': '5',
      'six': '6', 'seven': '7', 'eight': '8', 'nine': '9', 'ten': '10',
      '1st': '1', '2nd': '2', '3rd': '3', '4th': '4', '5th': '5',
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
        .replaceAll(RegExp(r'(uhd|fhd|hd|sd|4k|1080p|720p)$', caseSensitive: false), '')
        .replaceAll(RegExp(r'(london|scotland|wales|ireland|ni|channelislands)$', caseSensitive: false), '')
        .trim();
  }

  String? _findBestEpgId(
    String channelId,
    String? channelName, {
    bool logIfMissing = true,
  }) {
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
    if (normalizedId.isNotEmpty && _normalizedAvailableChannels != null && _normalizedAvailableChannels!.containsKey(normalizedId)) {
      final foundId = _normalizedAvailableChannels![normalizedId]!;
      _internalToEpgIdMapping[channelId] = foundId;
      return foundId;
    }

    // Match without domain suffix (e.g., "BBC1.uk" -> "BBC1")
    if (channelId.contains('.')) {
      final withoutDomain = _normalize(channelId.split('.').first);
      if (withoutDomain.isNotEmpty && _normalizedAvailableChannels != null && _normalizedAvailableChannels!.containsKey(withoutDomain)) {
        final foundId = _normalizedAvailableChannels![withoutDomain]!;
        _internalToEpgIdMapping[channelId] = foundId;
        return foundId;
      }
    }
    
    // 3. Name match (if provided)
    if (channelName != null && channelName.isNotEmpty) {
      final normalizedName = _normalize(channelName);
      if (normalizedName.isNotEmpty && _normalizedAvailableChannels != null && _normalizedAvailableChannels!.containsKey(normalizedName)) {
        final foundId = _normalizedAvailableChannels![normalizedName]!;
        _internalToEpgIdMapping[channelId] = foundId;
        return foundId;
      }
      
      final strippedName = _normalize(_stripSuffixes(channelName));
      if (strippedName.isNotEmpty && strippedName != normalizedName && _normalizedAvailableChannels != null && _normalizedAvailableChannels!.containsKey(strippedName)) {
        final foundId = _normalizedAvailableChannels![strippedName]!;
        _internalToEpgIdMapping[channelId] = foundId;
        return foundId;
      }

      // Try matching the name against exact EPG IDs if they look like names
      for (final epgId in _availableChannels) {
        if (_normalize(epgId) == normalizedName) {
          _internalToEpgIdMapping[channelId] = epgId;
          return epgId;
        }
      }
      
      // 4. Loose matching (starts with / contains)
      if (normalizedName.length >= 4 && _normalizedAvailableChannels != null) {
        for (final entry in _normalizedAvailableChannels!.entries) {
          if (entry.key.startsWith(normalizedName) || normalizedName.startsWith(entry.key)) {
             _internalToEpgIdMapping[channelId] = entry.value;
             return entry.value;
          }
        }
      }
    }

    if (logIfMissing) {
      // Don't spam logs for every single missing channel
      // debugLog(
      //   'EPG: Could not find matching EPG ID for channelId="$channelId" (normalized: "$normalizedId"), name="$channelName"',
      // );
    }
    return null;
  }

  List<Program> getProgramsForChannel(String channelId, {String? channelName}) {
    final epgId = _internalToEpgIdMapping[channelId] ??
        _findBestEpgId(channelId, channelName);
    if (epgId != null) {
      return _programsByChannel[epgId] ?? [];
    }
    return _programsByChannel[channelId] ?? [];
  }

  bool hasEpgData(String channelId) {
    return _availableChannels.contains(channelId);
  }

  bool hasEpgMatch(String channelId, {String? channelName}) {
    return _findBestEpgId(
          channelId,
          channelName,
          logIfMissing: false,
        ) !=
        null;
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