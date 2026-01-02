import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:xml/xml.dart';
import '../models/program.dart';
import '../models/channel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:risa_shared/utils/epg_matching_utils.dart';

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

        final title = programme.findElements('title').firstOrNull?.innerText ??
            'Unknown Program';
        final description =
            programme.findElements('desc').firstOrNull?.innerText;
        final category =
            programme.findElements('category').firstOrNull?.innerText;
        final icon =
            programme.findElements('icon').firstOrNull?.getAttribute('src');

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
  bool _initialized = false;

  // Cache settings
  static const String _cacheFileName = 'epg_cache.xml';
  static const String _secondaryCacheFileName = 'epg_cache_secondary.xml';
  static const String _cacheTimeKey = 'epg_cache_time';
  static const String _secondaryCacheTimeKey = 'epg_secondary_cache_time';
  static const Duration _cacheValidity = Duration(hours: 6);
  static const int _maxRetries = 3;
  static const Duration _retryDelay = Duration(seconds: 5);

  // Secondary EPG data (supplementary)
  final Map<String, List<Program>> _secondaryEpgData = {};

  Map<String, List<Program>> get epgData => _epgData;
  Map<String, List<Program>> get secondaryEpgData => _secondaryEpgData;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get hasData => _epgData.isNotEmpty || _secondaryEpgData.isNotEmpty;
  bool get hasSecondaryData => _secondaryEpgData.isNotEmpty;

  /// Get combined count of channels from both primary and secondary EPG
  int get totalChannelCount => _epgData.length + _secondaryEpgData.length;

  /// Initialize EPG service - called automatically and manually
  Future<void> initialize() async {
    if (_initialized) {
      debugPrint('EpgService: Already initialized, skipping...');
      return;
    }
    _initialized = true;

    debugPrint('EpgService: Initializing...');

    try {
      // Load manual mappings first
      await loadManualMappings();

      // ALWAYS try to load from cache first (instant startup)
      final cacheLoaded = await _loadFromCache();
      if (cacheLoaded) {
        debugPrint('EpgService: Loaded ${_epgData.length} channels from cache');
        notifyListeners();
      }

      // Also load secondary cache
      final secondaryCacheLoaded = await _loadSecondaryFromCache();
      if (secondaryCacheLoaded) {
        debugPrint(
            'EpgService: Loaded ${_secondaryEpgData.length} secondary channels from cache');
        notifyListeners();
      }

      debugPrint(
          'EpgService: Cache loaded, total channels: $totalChannelCount');

      // Now refresh in background if needed (don't await)
      _refreshInBackground();
    } catch (e) {
      debugPrint('EpgService: Initialization error: $e');
      _error = 'Failed to initialize EPG service: $e';
      notifyListeners();
    }
  }

  /// Refresh EPG data in background without blocking initialization
  void _refreshInBackground() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      // Check if cache is stale or missing
      bool needsRefresh = _epgData.isEmpty;
      if (!needsRefresh && _lastFetchTime != null) {
        final age = DateTime.now().difference(_lastFetchTime!);
        needsRefresh = age > _cacheValidity;
        if (needsRefresh) {
          debugPrint(
              'EpgService: Cache is ${age.inHours}h old, refreshing in background');
        }
      }

      if (needsRefresh || _epgData.isEmpty) {
        final epgUrl =
            prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');
        if (epgUrl != null && epgUrl.isNotEmpty) {
          debugPrint('EpgService: Starting background EPG refresh...');
          await loadEpgFromUrl(epgUrl, forceRefresh: true);
        }

        final secondaryUrl = prefs.getString('secondary_epg_url');
        if (secondaryUrl != null && secondaryUrl.isNotEmpty) {
          await loadSecondaryEpgFromUrl(secondaryUrl, forceRefresh: true);
        }
      }
    } catch (e) {
      debugPrint('EpgService: Background refresh error: $e');
    }
  }

  /// Load EPG from URL with robust error handling and caching
  Future<void> loadEpgFromUrl(String url, {bool forceRefresh = false}) async {
    if (url.isEmpty) {
      _error = 'EPG URL is empty';
      notifyListeners();
      return;
    }
    // Prevent concurrent loads
    if (_isLoading) {
      debugPrint(
          'EpgService: Load already in progress, skipping concurrent request.');
      return;
    }

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
        debugPrint(
            'Fetching EPG from URL (attempt ${retryCount + 1}/$_maxRetries): $url');

        // Use streaming to handle large EPG files efficiently
        final client = HttpClient()
          ..connectionTimeout = const Duration(seconds: 30)
          ..badCertificateCallback = (cert, host, port) => true;

        final request = await client
            .getUrl(Uri.parse(url))
            .timeout(const Duration(seconds: 30));
        final response =
            await request.close().timeout(const Duration(seconds: 60));

        debugPrint('EPG HTTP response: ${response.statusCode}');

        if (response.statusCode != 200) {
          _error = 'HTTP ${response.statusCode}';
          debugPrint('EpgService: $_error');
          client.close();
          _isLoading = false;
          notifyListeners();
          return;
        }

        // Stream download (accumulate but perform minimal checks to avoid
        // parsing HTML/error pages or tiny responses)
        final epgBytes = <int>[];
        int totalBytes = 0;
        final bufferLimitForInspect = 16384; // 16KB

        await for (final chunk in response) {
          totalBytes += chunk.length;
          if (epgBytes.length < bufferLimitForInspect) {
            epgBytes.addAll(chunk);
          } else {
            // If we've already collected enough prefix bytes, ignore adding more to prefix buffer
            epgBytes.addAll(chunk);
          }

          if (totalBytes % (1024 * 1024) == 0) {
            debugPrint(
                'EPG download: ${(totalBytes / 1024 / 1024).toStringAsFixed(1)} MB');
          }
        }

        client.close();
        debugPrint(
            'EPG downloaded: ${(totalBytes / 1024).toStringAsFixed(2)} KB');

        // Basic sanity checks
        if (totalBytes < 100) {
          _error = 'EPG response too small';
          debugPrint('EpgService: $_error');
          _isLoading = false;
          notifyListeners();
          return;
        }

        final prefix = utf8
            .decode(
                epgBytes.sublist(
                    0, epgBytes.length.clamp(0, bufferLimitForInspect)),
                allowMalformed: true)
            .trimLeft()
            .toLowerCase();
        if (prefix.isEmpty ||
            !prefix.startsWith('<') ||
            prefix.startsWith('<!doctype html') ||
            prefix.startsWith('<html') ||
            !prefix.contains('<tv')) {
          _error = 'EPG response invalid or provider returned HTML';
          debugPrint('EpgService: $_error');
          _isLoading = false;
          notifyListeners();
          return;
        }

        // Parse in background isolate to avoid blocking UI
        final xmlData = utf8.decode(epgBytes, allowMalformed: true);
        debugPrint('EPG: Starting background parsing...');

        final parsed = await compute(parseEpgInIsolate, xmlData);

        // Convert parsed data back to Program objects
        _epgData.clear();
        final rawEpgData = parsed['epgData'] as Map<String, dynamic>;

        for (final channelId in rawEpgData.keys) {
          final programs = (rawEpgData[channelId] as List<dynamic>).map((p) {
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
          }).toList();

          // Sort by start time
          programs.sort((a, b) => a.startTime.compareTo(b.startTime));
          _epgData[channelId] = programs;
        }

        await _saveToCache(xmlData);
        success = true;
        _error = null;
        _lastFetchTime = DateTime.now();
        EPGMatchingUtils.clearCache();
        debugPrint('EPG parsed successfully: ${_epgData.length} channels');
        // Log sample EPG keys for debugging
        final sampleKeys = _epgData.keys.take(10).toList();
        debugPrint('EPG sample keys: $sampleKeys');
      } catch (e) {
        retryCount++;
        _error = e.toString();
        debugPrint('EPG fetch error (attempt $retryCount): $_error');
        debugPrint('EPG error stack trace: ${StackTrace.current}');

        if (retryCount < _maxRetries) {
          debugPrint('Retrying in ${_retryDelay.inSeconds} seconds...');
          await Future.delayed(_retryDelay);
        } else {
          debugPrint(
              'EPG fetch failed after $_maxRetries attempts, trying cache...');
          // Try loading from cache as fallback
          if (await _loadFromCache()) {
            debugPrint('EPG loaded from cache as fallback');
            _error = 'Using cached EPG data (network unavailable)';
            success = true;
          } else {
            debugPrint('EPG cache also unavailable');
          }
        }
      }
    }

    _isLoading = false;
    notifyListeners();
  }

  /// Load secondary/supplemental EPG from URL (adds to existing data without replacing)
  Future<void> loadSecondaryEpgFromUrl(String url,
      {bool forceRefresh = false}) async {
    // Check cache first if not forcing refresh
    if (!forceRefresh && await _loadSecondaryFromCache()) {
      debugPrint('Secondary EPG loaded from cache');
      return;
    }

    _isLoading = true;
    _error = null;
    notifyListeners();

    int retryCount = 0;
    bool success = false;

    while (retryCount < _maxRetries && !success) {
      try {
        debugPrint(
            'Fetching secondary EPG from URL (attempt ${retryCount + 1}/$_maxRetries)...');

        final client = HttpClient()
          ..badCertificateCallback = (cert, host, port) => true;
        final request = await client.getUrl(Uri.parse(url));
        final response = await request.close();

        if (response.statusCode != 200) {
          throw Exception('HTTP ${response.statusCode}');
        }

        final epgBytes = <int>[];
        int totalBytes = 0;

        await for (final chunk in response) {
          totalBytes += chunk.length;
          epgBytes.addAll(chunk);
        }

        client.close();
        debugPrint(
            'Secondary EPG downloaded: ${(totalBytes / 1024 / 1024).toStringAsFixed(2)} MB');

        final xmlData = utf8.decode(epgBytes, allowMalformed: true);
        debugPrint('Secondary EPG: Starting background parsing...');

        final parsed = await compute(parseEpgInIsolate, xmlData);

        // Add to secondary EPG data (don't clear primary)
        _secondaryEpgData.clear();
        final rawEpgData = parsed['epgData'] as Map<String, dynamic>;

        for (final channelId in rawEpgData.keys) {
          // Don't add if primary already has this channel
          if (_epgData.containsKey(channelId)) continue;

          final programs = (rawEpgData[channelId] as List<dynamic>).map((p) {
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
          }).toList();

          programs.sort((a, b) => a.startTime.compareTo(b.startTime));
          _secondaryEpgData[channelId] = programs;
        }

        await _saveSecondaryToCache(xmlData);
        success = true;
        _error = null;
        EPGMatchingUtils.clearCache();
        debugPrint(
            'Secondary EPG parsed: ${_secondaryEpgData.length} unique channels added');
      } catch (e) {
        retryCount++;
        _error = e.toString();
        debugPrint('Secondary EPG fetch error (attempt $retryCount): $_error');

        if (retryCount < _maxRetries) {
          await Future.delayed(_retryDelay);
        }
      }
    }

    _isLoading = false;
    notifyListeners();
  }

  /// Save secondary EPG data to file cache
  Future<void> _saveSecondaryToCache(String xmlData) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_secondaryCacheFileName');
      await file.writeAsString(xmlData);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          _secondaryCacheTimeKey, DateTime.now().toIso8601String());

      debugPrint('Secondary EPG saved to cache: ${file.path}');
    } catch (e) {
      debugPrint('Failed to save secondary EPG cache: $e');
    }
  }

  /// Load secondary EPG data from file cache
  Future<bool> _loadSecondaryFromCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final cacheTimeStr = prefs.getString(_secondaryCacheTimeKey);

      if (cacheTimeStr == null) return false;

      final cacheTime = DateTime.parse(cacheTimeStr);
      final age = DateTime.now().difference(cacheTime);

      if (age > _cacheValidity) {
        debugPrint('Secondary EPG cache expired');
        return false;
      }

      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_secondaryCacheFileName');

      if (!await file.exists()) return false;

      debugPrint('Secondary EPG: Loading from cache...');
      final cachedData = await file.readAsString();

      final parsed = await compute(parseEpgInIsolate, cachedData);

      _secondaryEpgData.clear();
      final rawEpgData = parsed['epgData'] as Map<String, dynamic>;

      for (final channelId in rawEpgData.keys) {
        if (_epgData.containsKey(channelId)) continue;

        final programs = (rawEpgData[channelId] as List<dynamic>).map((p) {
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
        }).toList();

        programs.sort((a, b) => a.startTime.compareTo(b.startTime));
        _secondaryEpgData[channelId] = programs;
      }

      debugPrint(
          'Secondary EPG loaded from cache: ${_secondaryEpgData.length} channels');
      return true;
    } catch (e) {
      debugPrint('Failed to load secondary EPG from cache: $e');
      return false;
    }
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

  /// Get programs from either primary or secondary EPG data
  List<Program> _getProgramsForKey(String key) {
    return _epgData[key] ?? _secondaryEpgData[key] ?? [];
  }

  /// Find the best matching EPG key for a channel by ID and optionally name
  String? _findEpgKey(String channelId, {String? channelName}) {
    final allKeys = {..._epgData.keys, ..._secondaryEpgData.keys};
    if (allKeys.isEmpty) {
      debugPrint(
          'EPG: ❌ No EPG data available for matching (attempting "$channelId")');
      return null;
    }

    final matched = EPGMatchingUtils.findEpgKey(
      channelId,
      channelName,
      allKeys,
      _manualMappings,
    );

    if (matched == null) {
      debugPrint('EPG Miss: "$channelId" (name: "${channelName ?? 'none'}")');
      final sampleEpgKeys = allKeys.take(5).toList();
      debugPrint('EPG: Available keys sample: ${sampleEpgKeys.join(", ")}');
    }

    return matched;
  }

  /// Get EPG match suggestions for a channel (sorted by relevance)
  List<MapEntry<String, double>> getSuggestedMatches(
      String channelId, String? channelName,
      {int limit = 10}) {
    final allKeys = {..._epgData.keys, ..._secondaryEpgData.keys};
    if (allKeys.isEmpty) return [];
    return EPGMatchingUtils.getSuggestedMatches(
      channelId,
      channelName,
      allKeys,
      limit: limit,
    );
  }

  /// Check if a channel has EPG data (uses fuzzy matching)
  bool hasEpgData(String channelId, {String? channelName}) {
    return _findEpgKey(channelId, channelName: channelName) != null;
  }

  /// Get programs for a specific channel (with fuzzy matching) - checks both primary and secondary EPG
  List<Program> getProgramsForChannel(String channelId, {String? channelName}) {
    final epgKey = _findEpgKey(channelId, channelName: channelName);
    if (epgKey == null) return [];
    return _getProgramsForKey(epgKey);
  }

  /// Get current program for a channel
  Program? getCurrentProgram(String channelId, {String? channelName}) {
    final programs = getProgramsForChannel(channelId, channelName: channelName);
    final now = DateTime.now();

    for (final program in programs) {
      if (now.isAfter(program.startTime) && now.isBefore(program.endTime)) {
        return program;
      }
    }
    return null;
  }

  /// Get next program for a channel
  Program? getNextProgram(String channelId, {String? channelName}) {
    final programs = getProgramsForChannel(channelId, channelName: channelName);
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
    DateTime end, {
    String? channelName,
  }) {
    final programs = getProgramsForChannel(channelId, channelName: channelName);
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

  /// Load EPG data from file cache (loads regardless of age)
  Future<bool> _loadFromCache() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_cacheFileName');

      if (!await file.exists()) {
        debugPrint('EPG: No cache file found');
        return false;
      }

      final prefs = await SharedPreferences.getInstance();
      final cacheTimeStr = prefs.getString(_cacheTimeKey);

      DateTime? cacheTime;
      if (cacheTimeStr != null) {
        try {
          cacheTime = DateTime.parse(cacheTimeStr);
          final age = DateTime.now().difference(cacheTime);
          debugPrint(
              'EPG: Loading from cache (${age.inMinutes} minutes old)...');
        } catch (e) {
          debugPrint('EPG: Could not parse cache time, loading anyway');
        }
      } else {
        debugPrint('EPG: No cache timestamp, loading anyway');
      }

      final cachedData = await file.readAsString();

      // Parse cached data in background isolate
      final parsed = await compute(parseEpgInIsolate, cachedData);

      // Convert parsed data back to Program objects
      _epgData.clear();
      final rawEpgData = parsed['epgData'] as Map<String, dynamic>;

      for (final channelId in rawEpgData.keys) {
        final programs = (rawEpgData[channelId] as List<dynamic>).map((p) {
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
        }).toList();

        programs.sort((a, b) => a.startTime.compareTo(b.startTime));
        _epgData[channelId] = programs;
      }

      if (cacheTime != null) {
        _lastFetchTime = cacheTime;
      }
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

      // Also clear secondary cache
      final secondaryFile = File('${directory.path}/$_secondaryCacheFileName');
      if (await secondaryFile.exists()) {
        await secondaryFile.delete();
      }

      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_cacheTimeKey);
      await prefs.remove(_secondaryCacheTimeKey);

      _epgData.clear();
      _secondaryEpgData.clear();
      EPGMatchingUtils.clearCache();
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

  // Manual channel mappings (channelId -> epgKey)
  final Map<String, String> _manualMappings = {};
  static const String _manualMappingsKey = 'epg_manual_mappings';

  /// Get all EPG channel IDs available in the loaded EPG data
  List<String> getEpgChannelIds() {
    final ids = _epgData.keys.toList();
    ids.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
    return ids;
  }

  /// Get the first program title for an EPG channel (for preview in selection)
  String? getChannelPreview(String epgChannelId) {
    final programs = _epgData[epgChannelId];
    if (programs == null || programs.isEmpty) return null;

    // Find a currently airing or upcoming program
    final now = DateTime.now();
    for (final program in programs) {
      if (program.endTime.isAfter(now)) {
        return program.title;
      }
    }
    return programs.first.title;
  }

  /// Set a manual mapping for a channel
  Future<void> setManualMapping(String channelId, String epgChannelId) async {
    _manualMappings[channelId] = epgChannelId;
    // Reset the matching helper cache so the new manual mapping takes effect
    EPGMatchingUtils.clearCache();
    await _saveManualMappings();
    notifyListeners();
  }

  /// Remove a manual mapping for a channel
  Future<void> removeManualMapping(String channelId) async {
    _manualMappings.remove(channelId);
    EPGMatchingUtils.clearCache();
    await _saveManualMappings();
    notifyListeners();
  }

  /// Get the manual mapping for a channel (if any)
  String? getManualMapping(String channelId) {
    return _manualMappings[channelId];
  }

  /// Check if a channel has a manual mapping
  bool hasManualMapping(String channelId) {
    return _manualMappings.containsKey(channelId);
  }

  /// Save manual mappings to SharedPreferences
  Future<void> _saveManualMappings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_manualMappingsKey, jsonEncode(_manualMappings));
    } catch (e) {
      debugPrint('Failed to save manual mappings: $e');
    }
  }

  /// Load manual mappings from SharedPreferences
  Future<void> loadManualMappings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final json = prefs.getString(_manualMappingsKey);
      if (json != null) {
        final Map<String, dynamic> decoded = jsonDecode(json);
        _manualMappings.clear();
        decoded.forEach((key, value) {
          _manualMappings[key] = value as String;
        });
        debugPrint('Loaded ${_manualMappings.length} manual EPG mappings');
      }
    } catch (e) {
      debugPrint('Failed to load manual mappings: $e');
    }
  }

  /// Get list of channels that have no EPG match
  /// Returns a map with 'matched' and 'unmatched' lists of channel info
  Map<String, List<Map<String, String>>> analyzeChannelMatches(
      List<Channel> channels) {
    final matched = <Map<String, String>>[];
    final unmatched = <Map<String, String>>[];

    for (final channel in channels) {
      final tvgId = channel.tvgId ?? channel.id;
      final epgKey = _findEpgKey(tvgId, channelName: channel.name);

      if (epgKey != null) {
        matched.add({
          'name': channel.name,
          'tvgId': tvgId,
          'epgKey': epgKey,
          'group': channel.groupTitle ?? 'Unknown',
        });
      } else {
        unmatched.add({
          'name': channel.name,
          'tvgId': tvgId,
          'group': channel.groupTitle ?? 'Unknown',
        });
      }
    }

    // Sort by group then name
    matched.sort((a, b) {
      final groupCompare = a['group']!.compareTo(b['group']!);
      if (groupCompare != 0) return groupCompare;
      return a['name']!.compareTo(b['name']!);
    });

    unmatched.sort((a, b) {
      final groupCompare = a['group']!.compareTo(b['group']!);
      if (groupCompare != 0) return groupCompare;
      return a['name']!.compareTo(b['name']!);
    });

    return {
      'matched': matched,
      'unmatched': unmatched,
    };
  }

  /// Get EPG matching statistics for a list of channels
  Map<String, int> getMatchingStats(List<Channel> channels) {
    int matched = 0;
    int unmatched = 0;

    for (final channel in channels) {
      final tvgId = channel.tvgId ?? channel.id;
      if (hasEpgData(tvgId, channelName: channel.name)) {
        matched++;
      } else {
        unmatched++;
      }
    }

    return {
      'matched': matched,
      'unmatched': unmatched,
      'total': channels.length,
      'primaryChannels': _epgData.length,
      'secondaryChannels': _secondaryEpgData.length,
    };
  }

  @override
  void dispose() {
    _dio.close();
    super.dispose();
  }
}
