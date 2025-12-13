import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:xml/xml.dart';
import 'package:iptv_player/models/program.dart';
import 'package:shared_preferences/shared_preferences.dart';


class IncrementalEpgService with ChangeNotifier {
  final Map<String, List<Program>> _loadedChannels = {};
  final Set<String> _availableChannels = {};
  bool _isLoading = false;
  String? _error;
  String? _epgUrl;
  
  static const String _channelListCacheKey = 'epg_channel_list';
  static const int _channelsPerBatch = 50;
  static const int _maxRetries = 3;

  bool get isLoading => _isLoading;
  String? get error => _error;
  Set<String> get availableChannels => _availableChannels;
  int get loadedChannelCount => _loadedChannels.length;

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

  Future<void> _loadChannelList() async {
    if (_epgUrl == null) return;
    
    _isLoading = true;
    notifyListeners();
    
    int retryCount = 0;
    while (retryCount < _maxRetries) {
      try {
        final client = HttpClient()
          ..connectionTimeout = const Duration(seconds: 30)
          ..badCertificateCallback = (cert, host, port) => true;

        final request = await client.getUrl(Uri.parse(_epgUrl!));
        final response = await request.close();
        
        if (response.statusCode != 200) {
          throw Exception('HTTP ${response.statusCode}');
        }

        // Download complete XML
        final xmlData = await response.transform(utf8.decoder).join();
        client.close();
        
        debugLog('EPG: Downloaded ${xmlData.length} characters');
        
        // Parse XML document
        final document = XmlDocument.parse(xmlData);
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
          
          // Try loading from cache
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
    
    int retryCount = 0;
    while (retryCount < _maxRetries) {
      try {
        final client = HttpClient()
          ..connectionTimeout = const Duration(seconds: 30)
          ..badCertificateCallback = (cert, host, port) => true;

        final request = await client.getUrl(Uri.parse(_epgUrl!));
        final response = await request.close();
        
        if (response.statusCode != 200) {
          throw Exception('HTTP ${response.statusCode}');
        }

        // Download complete XML
        final xmlData = await response.transform(utf8.decoder).join();
        client.close();
        
        // Parse XML document
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
        
        debugLog('EPG: Loaded ${channelData.length} channels with programs');
        _error = null;
        break;
      } catch (e) {
        retryCount++;
        if (retryCount >= _maxRetries) {
          _error = e.toString();
          debugLog('EPG batch load error after $retryCount attempts: $e');
          break;
        } else {
          await Future.delayed(Duration(seconds: retryCount));
        }
      }
    }
    
    _isLoading = false;
    notifyListeners();
  }

  DateTime _parseEpgTime(String timeStr) {
    try {
      final cleanTime = timeStr.replaceAll(RegExp(r'\s+\+\d{4}'), '');
      if (cleanTime.length >= 14) {
        return DateTime(
          int.parse(cleanTime.substring(0, 4)),
          int.parse(cleanTime.substring(4, 6)),
          int.parse(cleanTime.substring(6, 8)),
          int.parse(cleanTime.substring(8, 10)),
          int.parse(cleanTime.substring(10, 12)),
          int.parse(cleanTime.substring(12, 14)),
        );
      }
    } catch (e) {
      debugLog('Error parsing EPG time: $e');
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

  Future<void> ensureChannelLoaded(String channelId) async {
    if (_loadedChannels.containsKey(channelId)) return;
    await loadChannelBatch([channelId]);
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
}