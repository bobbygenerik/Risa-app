import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:xml/xml.dart';
import 'package:iptv_player/models/program.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class IncrementalEpgService with ChangeNotifier {
  final Map<String, List<Program>> _loadedChannels = {};
  final Set<String> _availableChannels = {};
  bool _isLoading = false;
  String? _error;
  String? _epgUrl;
  
  static const String _channelListCacheKey = 'epg_channel_list';
  static const int _channelsPerBatch = 50;
  static const int _maxRetries = 3;
  static const Duration _cacheDuration = Duration(hours: 6);

  bool get isLoading => _isLoading;
  String? get error => _error;
  Set<String> get availableChannels => _availableChannels;
  int get loadedChannelCount => _loadedChannels.length;
  bool get hasEpgUrl => _epgUrl != null && _epgUrl!.isNotEmpty;

  Future<void> initialize() async {
    final prefs = await SharedPreferences.getInstance();
    _epgUrl = prefs.getString('custom_epg_url');
    
    if (_epgUrl != null && _epgUrl!.isNotEmpty) {
      debugLog('EPG: Initializing with URL: $_epgUrl');
      await _loadChannelList();
    } else {
      debugLog('EPG: No URL configured');
    }
  }

  Future<File> _getCacheFile() async {
    final dir = await getApplicationSupportDirectory();
    return File('${dir.path}/epg_cache.xml');
  }

  Future<bool> _isCacheValid() async {
    try {
      final file = await _getCacheFile();
      if (!await file.exists()) return false;
      
      final modified = await file.lastModified();
      final age = DateTime.now().difference(modified);
      return age < _cacheDuration;
    } catch (e) {
      return false;
    }
  }

  Future<void> _downloadEpgIfNeeded() async {
    if (_epgUrl == null) return;
    
    if (await _isCacheValid()) {
      debugLog('EPG: Using valid cached file');
      return;
    }

    debugLog('EPG: Downloading fresh data...');
    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 30)
      ..badCertificateCallback = (cert, host, port) => true;

    try {
      final request = await client.getUrl(Uri.parse(_epgUrl!));
      final response = await request.close();
      
      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}');
      }

      final file = await _getCacheFile();
      await response.pipe(file.openWrite());
      debugLog('EPG: Download complete. Saved to ${file.path}');
    } finally {
      client.close();
    }
  }

  Future<void> _loadChannelList() async {
    if (_epgUrl == null) return;
    
    _isLoading = true;
    notifyListeners();
    
    int retryCount = 0;
    while (retryCount < _maxRetries) {
      try {
        await _downloadEpgIfNeeded();
        
        final file = await _getCacheFile();
        if (!await file.exists()) throw Exception('Cache file missing');

        // Parse XML document from file
        final xmlContent = await file.readAsString();
        final document = XmlDocument.parse(xmlContent);
        final channelIds = <String>{};
        
        // Extract channel IDs from programme elements
        for (final programme in document.findAllElements('programme')) {
          final channelId = programme.getAttribute('channel');
          if (channelId != null && channelId.isNotEmpty) {
            channelIds.add(channelId);
          }
        }
        
        _availableChannels.clear();
        _availableChannels.addAll(channelIds);
        
        // Cache channel list
        final prefs = await SharedPreferences.getInstance();
        await prefs.setStringList(_channelListCacheKey, channelIds.toList());
        
        debugLog('EPG: Found ${channelIds.length} channels');
        _error = null;
        break;
      } catch (e) {
        retryCount++;
        if (retryCount >= _maxRetries) {
          _error = e.toString();
          debugLog('EPG channel list error after $retryCount attempts: $e');
          
          // Try loading from preferences cache
          final prefs = await SharedPreferences.getInstance();
          final cached = prefs.getStringList(_channelListCacheKey);
          if (cached != null) {
            _availableChannels.addAll(cached);
            _error = 'Using cached channel list';
          }
          break;
        } else {
          await Future.delayed(Duration(seconds: retryCount));
        }
      }
    }
    
    _isLoading = false;
    notifyListeners();
  }

  Future<void> loadChannelBatch(List<String> channelIds) async {
    if (_epgUrl == null || channelIds.isEmpty) return;
    
    final unloadedChannels = channelIds.where((id) => !_loadedChannels.containsKey(id)).toList();
    if (unloadedChannels.isEmpty) return;
    
    _isLoading = true;
    notifyListeners();
    
    try {
      final file = await _getCacheFile();
      if (!await file.exists()) {
        await _loadChannelList(); // Will trigger download
      }

      if (!await file.exists()) throw Exception('Cache file unavailable');

      // Efficient parsing: In a real app with huge EPGs, we might want to use a streaming parser.
      // For now, reading generic string is better than re-downloading.
      final xmlData = await file.readAsString();
      final document = XmlDocument.parse(xmlData);
      final channelData = <String, List<Program>>{};
      
      for (final programme in document.findAllElements('programme')) {
        final channelId = programme.getAttribute('channel');
        if (channelId == null || !unloadedChannels.contains(channelId)) continue;
        
        final startStr = programme.getAttribute('start');
        final stopStr = programme.getAttribute('stop');
        if (startStr == null || stopStr == null) continue;
        
        final title = programme.findElements('title').firstOrNull?.innerText ?? 'Unknown';
        final description = programme.findElements('desc').firstOrNull?.innerText;
        final category = programme.findElements('category').firstOrNull?.innerText;
        final icon = programme.findElements('icon').firstOrNull?.getAttribute('src');
        
        final program = Program(
          id: '${channelId}_$startStr',
          channelId: channelId,
          title: title,
          description: description,
          startTime: _parseEpgTime(startStr),
          endTime: _parseEpgTime(stopStr),
          imageUrl: icon,
          category: category,
          isLive: false,
          canRecord: true,
        );
        
        channelData.putIfAbsent(channelId, () => []).add(program);
      }
      
      // Sort and store programs
      for (final entry in channelData.entries) {
        entry.value.sort((a, b) => a.startTime.compareTo(b.startTime));
        _loadedChannels[entry.key] = entry.value;
      }
      
      debugLog('EPG: Loaded programs for ${channelData.length} channels from cache');
      _error = null;
    } catch (e) {
      _error = e.toString();
      debugLog('EPG batch processing error: $e');
    }
    
    _isLoading = false;
    notifyListeners();
  }

  DateTime _parseEpgTime(String timeStr) {
    try {
      // Handle "+0000" or " +0000" or no offset
      // Standard format: YYYYMMDDhhmmss +0000
      final cleanTime = timeStr.split(RegExp(r'\s|\+')).first;
      
      if (cleanTime.length >= 14) {
        // Assume UTC if we strip offset, strictly speaking we should parse offset
        final year = int.parse(cleanTime.substring(0, 4));
        final month = int.parse(cleanTime.substring(4, 6));
        final day = int.parse(cleanTime.substring(6, 8));
        final hour = int.parse(cleanTime.substring(8, 10));
        final minute = int.parse(cleanTime.substring(10, 12));
        final second = int.parse(cleanTime.substring(12, 14));
        
        return DateTime.utc(year, month, day, hour, minute, second).toLocal();
      }
    } catch (e) {
      debugLog('Error parsing EPG time "$timeStr": $e');
    }
    return DateTime.now();
  }

  List<Program> getProgramsForChannel(String channelId) {
    return _loadedChannels[channelId] ?? [];
  }

  bool hasEpgData(String channelId) {
    return _availableChannels.contains(channelId);
  }

  Program? getCurrentProgram(String channelId) {
    final programs = getProgramsForChannel(channelId);
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

  Future<void> ensureChannelLoaded(String channelId) async {
    if (_loadedChannels.containsKey(channelId) || _pendingBatch.contains(channelId)) return;
    
    _pendingBatch.add(channelId);
    
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