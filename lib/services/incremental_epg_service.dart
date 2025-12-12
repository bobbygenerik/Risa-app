import 'dart:async';
import 'dart:convert';
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

  bool get isLoading => _isLoading;
  String? get error => _error;
  Set<String> get availableChannels => _availableChannels;
  int get loadedChannelCount => _loadedChannels.length;

  Future<void> initialize() async {
    final prefs = await SharedPreferences.getInstance();
    _epgUrl = prefs.getString('epg_url');
    
    if (_epgUrl != null) {
      await _loadChannelList();
    }
  }

  Future<void> _loadChannelList() async {
    if (_epgUrl == null) return;
    
    _isLoading = true;
    notifyListeners();
    
    try {
      final client = HttpClient()
        ..connectionTimeout = const Duration(seconds: 30)
        ..badCertificateCallback = (cert, host, port) => true;

      final request = await client.getUrl(Uri.parse(_epgUrl!));
      final response = await request.close();
      
      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}');
      }

      // Stream parse to extract only channel IDs
      final channelIds = <String>{};
      final buffer = StringBuffer();
      
      await for (final chunk in response.transform(utf8.decoder)) {
        buffer.write(chunk);
        
        // Process complete programme tags
        final content = buffer.toString();
        final programmeMatches = RegExp(r'<programme[^>]+channel="([^"]+)"').allMatches(content);
        
        for (final match in programmeMatches) {
          channelIds.add(match.group(1)!);
        }
        
        // Keep only incomplete tags at end
        final lastTagStart = content.lastIndexOf('<programme');
        if (lastTagStart > 0) {
          buffer.clear();
          buffer.write(content.substring(lastTagStart));
        }
      }
      
      client.close();
      
      _availableChannels.clear();
      _availableChannels.addAll(channelIds);
      
      // Cache channel list
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_channelListCacheKey, channelIds.toList());
      
      debugPrint('EPG: Found ${channelIds.length} channels');
      _error = null;
    } catch (e) {
      _error = e.toString();
      debugPrint('EPG channel list error: $e');
      
      // Try loading from cache
      final prefs = await SharedPreferences.getInstance();
      final cached = prefs.getStringList(_channelListCacheKey);
      if (cached != null) {
        _availableChannels.addAll(cached);
        _error = 'Using cached channel list';
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
      final client = HttpClient()
        ..connectionTimeout = const Duration(seconds: 30)
        ..badCertificateCallback = (cert, host, port) => true;

      final request = await client.getUrl(Uri.parse(_epgUrl!));
      final response = await request.close();
      
      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}');
      }

      final channelData = <String, List<Program>>{};
      final buffer = StringBuffer();
      
      await for (final chunk in response.transform(utf8.decoder)) {
        buffer.write(chunk);
        
        // Process complete programme tags for target channels
        final content = buffer.toString();
        final doc = XmlDocument.parse('<root>$content</root>');
        
        for (final programme in doc.findAllElements('programme')) {
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
        
        // Keep only incomplete tags
        final lastTagStart = content.lastIndexOf('<programme');
        if (lastTagStart > 0) {
          buffer.clear();
          buffer.write(content.substring(lastTagStart));
        }
      }
      
      client.close();
      
      // Sort and store programs
      for (final entry in channelData.entries) {
        entry.value.sort((a, b) => a.startTime.compareTo(b.startTime));
        _loadedChannels[entry.key] = entry.value;
      }
      
      debugPrint('EPG: Loaded ${channelData.length} channels');
      _error = null;
    } catch (e) {
      _error = e.toString();
      debugPrint('EPG batch load error: $e');
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
      debugPrint('Error parsing EPG time: $e');
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
}