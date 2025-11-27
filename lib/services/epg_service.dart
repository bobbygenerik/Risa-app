import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:xml/xml.dart';
import 'package:iptv_player/models/program.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

// Top-level function for isolate parsing
Map<String, dynamic> parseEpgInIsolate(String xmlData) {
  try {
    final document = XmlDocument.parse(xmlData);
    final programmes = document.findAllElements('programme');
    final epgData = <String, List<Map<String, dynamic>>>{};

    for (final programme in programmes) {
      try {
        final channelId = programme.getAttribute('channel');
        if (channelId == null || channelId.isEmpty) continue;

        final startStr = programme.getAttribute('start');
        final stopStr = programme.getAttribute('stop');
        if (startStr == null || stopStr == null) continue;

        final title = programme.findElements('title').firstOrNull?.innerText ?? 'Unknown Program';
        final description = programme.findElements('desc').firstOrNull?.innerText;
        final category = programme.findElements('category').firstOrNull?.innerText;
        final icon = programme.findElements('icon').firstOrNull?.getAttribute('src');

        final programMap = {
          'id': '${channelId}_$startStr',
          'channelId': channelId,
          'title': title,
          'description': description,
          'startTime': startStr,
          'endTime': stopStr,
          'imageUrl': icon,
          'category': category,
          'isLive': false,
          'canRecord': true,
        };

        if (!epgData.containsKey(channelId)) {
          epgData[channelId] = [];
        }
        epgData[channelId]!.add(programMap);
      } catch (e) {
        debugPrint('Error parsing programme: $e');
        continue;
      }
    }

    return {'epgData': epgData};
  } catch (e) {
    throw Exception('Failed to parse EPG XML: ${e.toString()}');
  }
}

class EpgService with ChangeNotifier {
  final Dio _dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 60),
    sendTimeout: const Duration(seconds: 30),
  ));

  // EPG data cache
  final Map<String, List<Program>> _epgData = {};
  DateTime? _lastFetchTime;
  bool _isLoading = false;
  String? _error;
  
  // Cache settings
  static const String _cacheFileName = 'epg_cache.xml';
  static const String _cacheTimeKey = 'epg_cache_time';
  static const Duration _cacheValidity = Duration(hours: 6);
  static const int _maxRetries = 3;
  static const Duration _retryDelay = Duration(seconds: 5);

  Map<String, List<Program>> get epgData => _epgData;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get hasData => _epgData.isNotEmpty;

  /// Load EPG from URL with robust error handling and caching
  Future<void> loadEpgFromUrl(String url, {bool forceRefresh = false}) async {
    // Check cache first if not forcing refresh
    if (!forceRefresh && await _loadFromCache()) {
      debugPrint('EPG loaded from cache');
      return;
    }

    _isLoading = true;
    _error = null;
    notifyListeners();

    int retryCount = 0;
    bool success = false;

    while (retryCount < _maxRetries && !success) {
      try {
        debugPrint('Fetching EPG from URL (attempt ${retryCount + 1}/$_maxRetries)...');
        
        // Use streaming to handle large EPG files efficiently
        final client = HttpClient()
          ..badCertificateCallback = (cert, host, port) => true;
        final request = await client.getUrl(Uri.parse(url));
        final response = await request.close();

        if (response.statusCode != 200) {
          throw Exception('HTTP ${response.statusCode}');
        }

        // Download all bytes (streamed, then parsed in background)
        final epgBytes = <int>[];
        int totalBytes = 0;
        
        await for (final chunk in response) {
          totalBytes += chunk.length;
          epgBytes.addAll(chunk);
          
          // Show progress for large files
          if (totalBytes % (1024 * 1024) == 0) {
            debugPrint('EPG download: ${(totalBytes / 1024 / 1024).toStringAsFixed(1)} MB');
          }
        }
        
        client.close();
        debugPrint('EPG downloaded: ${(totalBytes / 1024 / 1024).toStringAsFixed(2)} MB');

        // Parse in background isolate to avoid blocking UI
        final xmlData = utf8.decode(epgBytes, allowMalformed: true);
        debugPrint('EPG: Starting background parsing...');
        
        final parsed = await compute(parseEpgInIsolate, xmlData);
        
        // Convert parsed data back to Program objects
        _epgData.clear();
        final rawEpgData = parsed['epgData'] as Map<String, dynamic>;
        
        for (final channelId in rawEpgData.keys) {
          final programs = (rawEpgData[channelId] as List<dynamic>)
              .map((p) {
                final map = Map<String, dynamic>.from(p);
                return Program(
                  id: map['id'],
                  channelId: map['channelId'],
                  title: map['title'],
                  description: map['description'],
                  startTime: _parseEpgTime(map['startTime']),
                  endTime: _parseEpgTime(map['endTime']),
                  imageUrl: map['imageUrl'],
                  category: map['category'],
                  isLive: map['isLive'] ?? false,
                  canRecord: map['canRecord'] ?? true,
                );
              })
              .toList();
          
          // Sort by start time
          programs.sort((a, b) => a.startTime.compareTo(b.startTime));
          _epgData[channelId] = programs;
        }

        await _saveToCache(xmlData);
        success = true;
        _error = null;
        _lastFetchTime = DateTime.now();
        debugPrint('EPG parsed successfully: ${_epgData.length} channels');
      } catch (e) {
        retryCount++;
        _error = e.toString();
        debugPrint('EPG fetch error (attempt $retryCount): $_error');

        if (retryCount < _maxRetries) {
          debugPrint('Retrying in ${_retryDelay.inSeconds} seconds...');
          await Future.delayed(_retryDelay);
        } else {
          // Try loading from cache as fallback
          if (await _loadFromCache()) {
            _error = 'Using cached EPG data (network unavailable)';
            success = true;
          }
        }
      }
    }

    _isLoading = false;
    notifyListeners();
  }

  /// Parse EPG timestamp format (e.g., "20231104120000 +0000")
  DateTime _parseEpgTime(String timeStr) {
    try {
      // Remove timezone offset for simplicity
      final cleanTime = timeStr.replaceAll(RegExp(r'\s+\+\d{4}'), '');
      
      if (cleanTime.length >= 14) {
        final year = int.parse(cleanTime.substring(0, 4));
        final month = int.parse(cleanTime.substring(4, 6));
        final day = int.parse(cleanTime.substring(6, 8));
        final hour = int.parse(cleanTime.substring(8, 10));
        final minute = int.parse(cleanTime.substring(10, 12));
        final second = int.parse(cleanTime.substring(12, 14));

        return DateTime(year, month, day, hour, minute, second);
      }
    } catch (e) {
      debugPrint('Error parsing EPG time "$timeStr": $e');
    }
    return DateTime.now();
  }

  /// Get programs for a specific channel
  List<Program> getProgramsForChannel(String channelId) {
    return _epgData[channelId] ?? [];
  }

  /// Get current program for a channel
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

  /// Get next program for a channel
  Program? getNextProgram(String channelId) {
    final programs = getProgramsForChannel(channelId);
    final now = DateTime.now();

    for (final program in programs) {
      if (program.startTime.isAfter(now)) {
        return program;
      }
    }
    return null;
  }

  /// Get programs for a specific time range
  List<Program> getProgramsForTimeRange(
    String channelId,
    DateTime start,
    DateTime end,
  ) {
    final programs = getProgramsForChannel(channelId);
    return programs.where((program) {
      return program.startTime.isBefore(end) && program.endTime.isAfter(start);
    }).toList();
  }

  /// Get all programs for a specific date
  Map<String, List<Program>> getProgramsForDate(DateTime date) {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));

    final result = <String, List<Program>>{};

    for (final channelId in _epgData.keys) {
      final programs = getProgramsForTimeRange(channelId, startOfDay, endOfDay);
      if (programs.isNotEmpty) {
        result[channelId] = programs;
      }
    }

    return result;
  }

  /// Save EPG data to file cache
  Future<void> _saveToCache(String xmlData) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_cacheFileName');
      await file.writeAsString(xmlData);
      
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_cacheTimeKey, DateTime.now().toIso8601String());
      
      debugPrint('EPG saved to file cache: ${file.path}');
    } catch (e) {
      debugPrint('Failed to save EPG cache: $e');
    }
  }

  /// Load EPG data from file cache
  Future<bool> _loadFromCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final cacheTimeStr = prefs.getString(_cacheTimeKey);

      if (cacheTimeStr == null) {
        return false;
      }

      final cacheTime = DateTime.parse(cacheTimeStr);
      final age = DateTime.now().difference(cacheTime);

      if (age > _cacheValidity) {
        debugPrint('EPG cache expired (${age.inHours} hours old)');
        return false;
      }

      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_cacheFileName');
      
      if (!await file.exists()) {
        return false;
      }

      debugPrint('EPG: Loading from cache (${age.inMinutes} minutes old)...');
      final cachedData = await file.readAsString();
      
      // Parse cached data in background isolate
      final parsed = await compute(parseEpgInIsolate, cachedData);
      
      // Convert parsed data back to Program objects
      _epgData.clear();
      final rawEpgData = parsed['epgData'] as Map<String, dynamic>;
      
      for (final channelId in rawEpgData.keys) {
        final programs = (rawEpgData[channelId] as List<dynamic>)
            .map((p) {
              final map = Map<String, dynamic>.from(p);
              return Program(
                id: map['id'],
                channelId: map['channelId'],
                title: map['title'],
                description: map['description'],
                startTime: _parseEpgTime(map['startTime']),
                endTime: _parseEpgTime(map['endTime']),
                imageUrl: map['imageUrl'],
                category: map['category'],
                isLive: map['isLive'] ?? false,
                canRecord: map['canRecord'] ?? true,
              );
            })
            .toList();
        
        programs.sort((a, b) => a.startTime.compareTo(b.startTime));
        _epgData[channelId] = programs;
      }
      
      _lastFetchTime = cacheTime;
      debugPrint('EPG loaded from cache: ${_epgData.length} channels');
      return true;
    } catch (e) {
      debugPrint('Failed to load EPG from cache: $e');
      return false;
    }
  }

  /// Clear cache
  Future<void> clearCache() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_cacheFileName');
      if (await file.exists()) {
        await file.delete();
      }
      
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_cacheTimeKey);
      
      _epgData.clear();
      _lastFetchTime = null;
      notifyListeners();
      debugPrint('EPG cache cleared');
    } catch (e) {
      debugPrint('Failed to clear EPG cache: $e');
    }
  }

  /// Check if cache is still valid
  bool get isCacheValid {
    if (_lastFetchTime == null) return false;
    final age = DateTime.now().difference(_lastFetchTime!);
    return age < _cacheValidity;
  }

  /// Get cache age in minutes
  int? get cacheAgeMinutes {
    if (_lastFetchTime == null) return null;
    return DateTime.now().difference(_lastFetchTime!).inMinutes;
  }

  /// Refresh EPG data (force reload)
  Future<void> refresh(String url) async {
    await loadEpgFromUrl(url, forceRefresh: true);
  }

  @override
  void dispose() {
    _dio.close();
    super.dispose();
  }
}
