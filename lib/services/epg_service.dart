import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:xml/xml.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:iptv_player/utils/performance_monitor.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/provider_normalizer.dart';

// Helper to fire and forget futures
void unawaited(Future<void> future) {
  future.catchError((error) {
    debugLog('Unawaited future error: $error');
  });
}

// Top-level function for isolate parsing with chunked processing
Map<String, dynamic> parseEpgInIsolate(String xmlData) {
  try {
    final document = XmlDocument.parse(xmlData);
    final programmes = document.findAllElements('programme');
    final epgData = <String, List<Map<String, dynamic>>>{};

    int processedCount = 0;
    const chunkSize = 1000; // Process in chunks to prevent memory spikes

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

        processedCount++;
        // Yield control periodically to prevent blocking
        if (processedCount % chunkSize == 0) {
          // Force garbage collection on large datasets
          if (processedCount % (chunkSize * 10) == 0) {
            // Allow GC to run
          }
        }
      } catch (e) {
        debugLog('Error parsing programme: $e');
        continue;
      }
    }

    return {'epgData': epgData, 'processedCount': processedCount};
  } catch (e) {
    throw Exception('Failed to parse EPG XML: ${e.toString()}');
  }
}

// Top-level function for parsing EPG data within a specific date range
Map<String, List<Map<String, dynamic>>> _parseEpgForDateRange(
    Map<String, Object> args) {
  final xmlData = args['xmlData'] as String;
  final startTime =
      DateTime.fromMillisecondsSinceEpoch(args['startTime'] as int);
  final endTime = DateTime.fromMillisecondsSinceEpoch(args['endTime'] as int);

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

        // Parse program time and check if it's in our date range
        final programStart = _parseEpgTimeInIsolate(startStr);
        final programEnd = _parseEpgTimeInIsolate(stopStr);

        // Skip programs outside our date range
        if (programEnd.isBefore(startTime) || programStart.isAfter(endTime)) {
          continue;
        }

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
        continue; // Skip invalid programs
      }
    }

    return epgData;
  } catch (e) {
    throw Exception('Failed to parse EPG XML for date range: ${e.toString()}');
  }
}

// Helper function for parsing EPG time in isolate
DateTime _parseEpgTimeInIsolate(String timeStr) {
  try {
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
    // Return current time as fallback
  }
  return DateTime.now();
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
  bool _disposed = false; // Add this line

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

  @override
  void dispose() {
    _disposed = true;
    _dio.close();
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  /// Initialize EPG service - called automatically and manually
  Future<void> initialize() async {
    debugLog(
        'EpgService: Initializing (initialized flag: $_initialized, data: ${_epgData.length} channels)...');

    // Skip if already initialized AND has data
    if (_initialized && _epgData.isNotEmpty) {
      debugLog(
          'EpgService: Already initialized with ${_epgData.length} channels, skipping...');
      return;
    }

    _initialized = true;

    try {
      // Load manual mappings first (synchronous from SharedPreferences)
      await loadManualMappings();

      // Load from cache immediately
      debugLog('EpgService: Loading from cache...');
      final cacheLoaded = await _loadFromCache();
      if (cacheLoaded) {
        debugLog('EpgService: ✓ Loaded ${_epgData.length} channels from cache');
        notifyListeners();
      } else {
        debugLog('EpgService: ✗ No cache found');
      }

      // Also load secondary cache
      final secondaryCacheLoaded = await _loadSecondaryFromCache();
      if (secondaryCacheLoaded) {
        debugLog(
            'EpgService: ✓ Loaded ${_secondaryEpgData.length} secondary channels from cache');
        notifyListeners();
      }

      debugLog('EpgService: Total channels loaded: $totalChannelCount');

      // Progressive refresh: current day first, then background
      _progressiveRefreshInBackground();
    } catch (e) {
      debugLog('EpgService: Initialization error: $e');
      _error = 'Failed to initialize EPG service: $e';
      notifyListeners();
    }
  }

  /// Public method to trigger EPG loading from saved URL.
  /// Called by ChannelProvider when a new EPG URL is found, or by settings screen.
  Future<void> loadEpg() async {
    final prefs = await SharedPreferences.getInstance();
    final epgUrl =
        prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');
    final secondaryEpgUrl = prefs.getString('secondary_epg_url');

    if (epgUrl != null && epgUrl.isNotEmpty) {
      debugLog(
          'EpgService: Triggering progressive EPG load from public loadEpg() method.');
      await _loadEpgProgressively(epgUrl, forceRefresh: true);
    } else {
      debugLog('EpgService: No EPG URL found in SharedPreferences.');
      _error = 'No EPG URL configured.';
      notifyListeners();
    }

    if (secondaryEpgUrl != null && secondaryEpgUrl.isNotEmpty) {
      debugLog(
          'EpgService: Triggering loadSecondaryEpgFromUrl from public loadEpg() method.');
      await loadSecondaryEpgFromUrl(secondaryEpgUrl, forceRefresh: true);
    } else {
      debugLog('EpgService: No secondary EPG URL found in SharedPreferences.');
    }
  }

  /// Progressive refresh: load current day first, then remaining days in background
  void _progressiveRefreshInBackground() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      // Check if cache is stale or missing
      bool needsRefresh = _epgData.isEmpty;
      if (!needsRefresh && _lastFetchTime != null) {
        final age = DateTime.now().difference(_lastFetchTime!);
        needsRefresh = age > _cacheValidity;
        if (needsRefresh) {
          debugLog(
              'EpgService: Cache is ${age.inHours}h old, refreshing progressively');
        }
      }

      if (needsRefresh || _epgData.isEmpty) {
        final epgUrl =
            prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');
        if (epgUrl != null && epgUrl.isNotEmpty) {
          debugLog('EpgService: Starting progressive EPG refresh...');
          await _loadEpgProgressively(epgUrl, forceRefresh: true);
        }

        final secondaryUrl = prefs.getString('secondary_epg_url');
        if (secondaryUrl != null && secondaryUrl.isNotEmpty) {
          await loadSecondaryEpgFromUrl(secondaryUrl, forceRefresh: true);
        }
      }
    } catch (e) {
      debugLog('EpgService: Progressive refresh error: $e');
    }
  }

  /// Load EPG progressively: cache first, then simple download and parse
  Future<void> _loadEpgProgressively(String url,
      {bool forceRefresh = false}) async {
    if (url.isEmpty) {
      _error = 'EPG URL is empty';
      notifyListeners();
      return;
    }

    // Normalize EPG URL
    try {
      url = normalizeEpgUrl(url);
    } catch (e) {
      if (e is NormalizationError) {
        _error = e.message;
      } else {
        _error = 'EPG URL invalid';
      }
      _isLoading = false;
      notifyListeners();
      return;
    }

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      debugLog('EpgService: Starting EPG load from: $url');

      // Load from cache first for instant startup
      if (!forceRefresh) {
        final cacheLoaded = await _loadFromCache();
        if (cacheLoaded) {
          debugLog(
              'EpgService: ✓ Loaded from cache: ${_epgData.length} channels');
          _isLoading = false;
          notifyListeners();
          return;
        }
      }

      // Simple download without parsing during stream
      final xmlData = await _downloadEpgData(url);
      if (xmlData == null) return;

      // Parse today's data first
      debugLog('EpgService: Parsing today\'s EPG data...');
      final todayData = await _parseCurrentDayEpg(xmlData);

      if (todayData.isNotEmpty) {
        // Convert today's raw program maps into Program objects and merge into _epgData
        for (final channelId in todayData.keys) {
          final programMaps = todayData[channelId]!;
          final programs = programMaps.map((map) {
            final m = Map<String, dynamic>.from(map);
            return Program(
              id: m['id'],
              channelId: m['channelId'],
              title: m['title'],
              description: m['description'],
              startTime: _parseEpgTime(m['startTime']),
              endTime: _parseEpgTime(m['endTime']),
              imageUrl: m['imageUrl'],
              category: m['category'],
              isLive: m['isLive'] ?? false,
              canRecord: m['canRecord'] ?? true,
            );
          }).toList();

          programs.sort((a, b) => a.startTime.compareTo(b.startTime));
          _epgData[channelId] = programs;
        }

        debugLog(
            'EpgService: ✓ Today\'s EPG loaded: ${_epgData.length} channels');
        notifyListeners();
      }

      // Save to cache
      await _saveToCache(xmlData);

      // Parse remaining days in background
      debugLog('EpgService: Parsing remaining EPG days in background...');
      unawaited(_parseRemainingDaysInBackground(xmlData));
    } catch (e) {
      debugLog('EpgService: EPG load error: $e');
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Simple EPG download without parsing
  Future<String?> _downloadEpgData(String url) async {
    try {
      final client = HttpClient()
        ..connectionTimeout = const Duration(seconds: 30)
        ..badCertificateCallback = (cert, host, port) => true;

      final request = await client
          .getUrl(Uri.parse(url))
          .timeout(const Duration(seconds: 30));
      final response =
          await request.close().timeout(const Duration(seconds: 60));

      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}');
      }

      final chunks = <List<int>>[];
      int totalBytes = 0;

      await for (final chunk in response) {
        totalBytes += chunk.length;
        chunks.add(chunk);
      }

      client.close();
      debugLog(
          'EpgService: Downloaded ${(totalBytes / 1024 / 1024).toStringAsFixed(2)} MB');

      final epgBytes = <int>[];
      for (final chunk in chunks) {
        epgBytes.addAll(chunk);
      }
      chunks.clear();

      return utf8.decode(epgBytes, allowMalformed: true);
    } catch (e) {
      debugLog('EpgService: Download error: $e');
      _error = 'Failed to download EPG: $e';
      return null;
    }
  }

  /// Parse current day EPG data only (fast startup)
  Future<Map<String, List<Map<String, dynamic>>>> _parseCurrentDayEpg(
      String xmlData) async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));

    return compute<Map<String, Object>,
        Map<String, List<Map<String, dynamic>>>>(
      _parseEpgForDateRange,
      {
        'xmlData': xmlData,
        'startTime': startOfDay.millisecondsSinceEpoch,
        'endTime': endOfDay.millisecondsSinceEpoch,
      },
    );
  }

  /// Parse remaining days in background (non-blocking)
  Future<void> _parseRemainingDaysInBackground(String xmlData) async {
    try {
      // Parse all data in isolate
      final parsed = await compute(parseEpgInIsolate, xmlData);
      final rawEpgData = parsed['epgData'] as Map<String, dynamic>;

      // Convert and merge with existing current day data
      for (final channelId in rawEpgData.keys) {
        final programMaps = rawEpgData[channelId] as List<dynamic>;
        final programs = <Program>[];

        for (final p in programMaps) {
          final map = Map<String, dynamic>.from(p);
          programs.add(Program(
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
          ));
        }

        programs.sort((a, b) => a.startTime.compareTo(b.startTime));
        _epgData[channelId] = programs;
      }

      EPGMatchingUtils.clearCache();
      debugLog('EpgService: ✓ Full EPG loaded: ${_epgData.length} channels');
      notifyListeners();
    } catch (e) {
      debugLog('EpgService: Background parsing error: $e');
    }
  }

  /// Load EPG from URL with robust error handling and caching
  Future<void> loadEpgFromUrl(String url, {bool forceRefresh = false}) async {
    PerformanceMonitor.start('EPG_LOAD_TOTAL');

    if (url.isEmpty) {
      _error = 'EPG URL is empty';
      notifyListeners();
      return;
    }

    // Normalize EPG URL (user-friendly errors)
    try {
      url = normalizeEpgUrl(url);
    } catch (e) {
      if (e is NormalizationError) {
        _error = e.message;
      } else {
        _error = 'EPG URL invalid';
      }
      _isLoading = false;
      notifyListeners();
      return;
    }

    debugLog('EPG: loadEpgFromUrl called. forceRefresh: $forceRefresh');
    // Check cache first if not forcing refresh
    if (!forceRefresh && await _loadFromCache()) {
      debugLog('EPG loaded from cache');
      PerformanceMonitor.end('EPG_LOAD_TOTAL');
      return;
    }

    _isLoading = true;
    _error = null;
    notifyListeners();

    int retryCount = 0;
    bool success = false;

    while (retryCount < _maxRetries && !success) {
      try {
        debugLog(
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

        debugLog('EPG HTTP response: ${response.statusCode}');

        if (response.statusCode != 200) {
          throw Exception('HTTP ${response.statusCode}');
        }

        // Stream download with memory management for large files
        final chunks = <List<int>>[];
        int totalBytes = 0;
        int chunkCount = 0;
        const maxMemoryMB = 100; // Limit memory usage

        await for (final chunk in response) {
          totalBytes += chunk.length;
          chunks.add(chunk);
          chunkCount++;

          // Show progress and manage memory for large files
          if (totalBytes % (1024 * 1024) == 0) {
            final sizeMB = totalBytes / 1024 / 1024;
            debugLog('EPG download: ${sizeMB.toStringAsFixed(1)} MB');

            // If file is very large, process in streaming mode
            if (sizeMB > maxMemoryMB) {
              debugLog('EPG: Large file detected, switching to streaming mode');
              // For very large files, we should process incrementally
              // but for now, continue with current approach
            }
          }

          // Yield control periodically to prevent UI blocking
          if (chunkCount % 50 == 0) {
            await Future.delayed(
                const Duration(milliseconds: 1)); // Yield to event loop
          }
        }

        client.close();
        debugLog(
            'EPG downloaded: ${(totalBytes / 1024 / 1024).toStringAsFixed(2)} MB in $chunkCount chunks');

        // Combine chunks efficiently
        final epgBytes = <int>[];
        for (final chunk in chunks) {
          epgBytes.addAll(chunk);
        }
        chunks.clear(); // Free memory immediately

        // Parse in background isolate to avoid blocking UI
        PerformanceMonitor.start('EPG_PARSE_ISOLATE');
        final xmlData = utf8.decode(epgBytes, allowMalformed: true);
        final parsed = await compute(parseEpgInIsolate, xmlData)
            .timeout(const Duration(seconds: 60));
        PerformanceMonitor.end('EPG_PARSE_ISOLATE');

        // Convert parsed data back to Program objects with chunked processing
        PerformanceMonitor.start('EPG_DATA_CONVERSION');
        _epgData.clear();
        final rawEpgData = parsed['epgData'] as Map<String, dynamic>;
        final processedCount = parsed['processedCount'] as int? ?? 0;

        debugLog(
            'EPG: Converting $processedCount programs for ${rawEpgData.length} channels');

        int channelCount = 0;
        const channelChunkSize = 50; // Process channels in chunks

        for (final channelId in rawEpgData.keys) {
          final programMaps = rawEpgData[channelId] as List<dynamic>;
          final programs = <Program>[];

          // Process programs in chunks to prevent blocking
          for (int i = 0; i < programMaps.length; i += 100) {
            final end = (i + 100).clamp(0, programMaps.length);
            final chunk = programMaps.sublist(i, end);

            for (final p in chunk) {
              final map = Map<String, dynamic>.from(p);
              programs.add(Program(
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
              ));
            }

            // Yield control after each chunk
            if (i + 100 < programMaps.length) {
              await Future.delayed(const Duration(milliseconds: 1));
            }
          }

          // Sort by start time
          programs.sort((a, b) => a.startTime.compareTo(b.startTime));
          _epgData[channelId] = programs;

          channelCount++;

          // Yield control periodically and notify progress
          if (channelCount % channelChunkSize == 0) {
            debugLog(
                'EPG: Processed $channelCount/${rawEpgData.length} channels');
            await Future.delayed(
                const Duration(milliseconds: 2)); // Yield to UI thread
            notifyListeners(); // Update UI with partial data
          }
        }

        await _saveToCache(xmlData);
        PerformanceMonitor.end('EPG_DATA_CONVERSION');

        success = true;
        _error = null;
        _lastFetchTime = DateTime.now();
        EPGMatchingUtils.clearCache();
        debugLog('EPG parsed successfully: ${_epgData.length} channels');
        // Log sample EPG keys for debugging
        final sampleKeys = _epgData.keys.take(10).toList();
        debugLog('EPG sample keys: $sampleKeys');

        PerformanceMonitor.end('EPG_LOAD_TOTAL');
      } catch (e) {
        retryCount++;
        _error = e.toString();
        debugLog('EPG fetch error (attempt $retryCount): $_error');
        debugLog('EPG error stack trace: ${StackTrace.current}');

        if (retryCount < _maxRetries) {
          debugLog('Retrying in ${_retryDelay.inSeconds} seconds...');
          await Future.delayed(_retryDelay);
        } else {
          debugLog(
              'EPG fetch failed after $_maxRetries attempts, trying cache...');
          // Try loading from cache as fallback
          if (await _loadFromCache()) {
            debugLog('EPG loaded from cache as fallback');
            _error = 'Using cached EPG data (network unavailable)';
            success = true;
          } else {
            debugLog('EPG cache also unavailable');
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
    // Normalize EPG URL early
    try {
      url = normalizeEpgUrl(url);
    } catch (e) {
      if (e is NormalizationError) {
        _error = e.message;
      } else {
        _error = 'Secondary EPG URL invalid';
      }
      _isLoading = false;
      notifyListeners();
      return;
    }

    // Check cache first if not forcing refresh
    if (!forceRefresh && await _loadSecondaryFromCache()) {
      debugLog('Secondary EPG loaded from cache');
      return;
    }

    _isLoading = true;
    _error = null;
    notifyListeners();

    int retryCount = 0;
    bool success = false;

    while (retryCount < _maxRetries && !success) {
      try {
        debugLog(
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
        debugLog(
            'Secondary EPG downloaded: ${(totalBytes / 1024 / 1024).toStringAsFixed(2)} MB');

        final xmlData = utf8.decode(epgBytes, allowMalformed: true);
        debugLog('Secondary EPG: Starting background parsing...');

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
        debugLog(
            'Secondary EPG parsed: ${_secondaryEpgData.length} unique channels added');
      } catch (e) {
        retryCount++;
        _error = e.toString();
        debugLog('Secondary EPG fetch error (attempt $retryCount): $_error');

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

      debugLog('Secondary EPG saved to cache: ${file.path}');
    } catch (e) {
      debugLog('Failed to save secondary EPG cache: $e');
    }
  }

  /// Load secondary EPG data from file cache
  Future<bool> _loadSecondaryFromCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final cacheTimeStr = prefs.getString(_secondaryCacheTimeKey);

      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_secondaryCacheFileName');

      if (!await file.exists()) return false;

      DateTime? cacheTime;
      if (cacheTimeStr != null) {
        cacheTime = DateTime.parse(cacheTimeStr);
      } else {
        cacheTime = await file.lastModified();
        await prefs.setString(
            _secondaryCacheTimeKey, cacheTime.toIso8601String());
      }

      final age = DateTime.now().difference(cacheTime);
      if (age > _cacheValidity) {
        debugLog('Secondary EPG cache expired');
        return false;
      }

      debugLog('Secondary EPG: Loading from cache...');
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

      debugLog(
          'Secondary EPG loaded from cache: ${_secondaryEpgData.length} channels');
      return true;
    } catch (e) {
      debugLog('Failed to load secondary EPG from cache: $e');
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
      debugLog('Error parsing EPG time "$timeStr": $e');
    }
    return DateTime.now();
  }

  /// Check if a channel exists in either primary or secondary EPG data

  /// Get programs from either primary or secondary EPG data
  List<Program> _getProgramsForKey(String key) {
    return _epgData[key] ?? _secondaryEpgData[key] ?? [];
  }

  /// Find the best matching EPG key for a channel by ID and optionally name
  String? _findEpgKey(String channelId, {String? channelName}) {
    final allKeys = {..._epgData.keys, ..._secondaryEpgData.keys};
    if (allKeys.isEmpty) {
      debugLog(
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
      debugLog('EPG Miss: "$channelId" (name: "${channelName ?? 'none'}")');
      final sampleEpgKeys = allKeys.take(5).toList();
      debugLog('EPG: Available keys sample: ${sampleEpgKeys.join(", ")}');
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

      debugLog('EPG saved to file cache: ${file.path}');
    } catch (e) {
      debugLog('Failed to save EPG cache: $e');
    }
  }

  /// Load EPG data from file cache (loads regardless of age)
  Future<bool> _loadFromCache() async {
    debugLog('EPG: Attempting to load from cache...');
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_cacheFileName');

      debugLog('EPG: Checking cache at: ${file.path}');

      if (!await file.exists()) {
        debugLog('EPG: ❌ Cache file does not exist');
        return false;
      }

      final fileSize = await file.length();
      debugLog(
          'EPG: ✓ Cache file exists (${(fileSize / 1024 / 1024).toStringAsFixed(2)} MB)');

      final prefs = await SharedPreferences.getInstance();
      final cacheTimeStr = prefs.getString(_cacheTimeKey);

      DateTime? cacheTime;
      if (cacheTimeStr != null) {
        try {
          cacheTime = DateTime.parse(cacheTimeStr);
          final age = DateTime.now().difference(cacheTime);
          debugLog('EPG: Loading from cache (${age.inHours} hours old)...');
          if (age > _cacheValidity) {
            debugLog('EPG: Cache is expired, but loading anyway.');
          }
        } catch (e) {
          debugLog('EPG: Could not parse cache time, loading anyway');
        }
      } else {
        debugLog('EPG: No cache timestamp, inferring from file metadata');
        cacheTime = await file.lastModified();
        await prefs.setString(_cacheTimeKey, cacheTime.toIso8601String());
      }

      final cachedData = await file.readAsString();
      debugLog('EPG: Cache file read, size: ${cachedData.length} chars');

      // Parse cached data in background isolate
      debugLog('EPG: Starting background parse...');
      final parsed = await compute(parseEpgInIsolate, cachedData)
          .timeout(const Duration(seconds: 60));
      debugLog('EPG: Background parse complete');

      // Convert parsed data back to Program objects
      _epgData.clear();
      final rawEpgData = parsed['epgData'] as Map<String, dynamic>;
      debugLog('EPG: Parsed ${rawEpgData.length} channel IDs from cache');

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

      _lastFetchTime = cacheTime ?? DateTime.now();
      debugLog(
          'EPG: ✓ Successfully loaded ${_epgData.length} channels from cache (age: ${cacheTime != null ? DateTime.now().difference(cacheTime).inHours : "unknown"}h)');
      debugLog('EPG: Sample channel IDs: ${_epgData.keys.take(5).join(", ")}');
      return true;
    } catch (e) {
      debugLog('Failed to load EPG from cache: $e');
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
      debugLog('EPG cache cleared');
    } catch (e) {
      debugLog('Failed to clear EPG cache: $e');
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
    // Reset the matching cache so the new manual mapping takes effect
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
      debugLog('Failed to save manual mappings: $e');
    }
  }

  /// Load manual mappings from SharedPreferences
  Future<void> loadManualMappings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final json = prefs.getString(_manualMappingsKey);
      if (json != null && json.trim().isNotEmpty) {
        final Map<String, dynamic> decoded = jsonDecode(json);
        _manualMappings.clear();
        decoded.forEach((key, value) {
          _manualMappings[key] = value as String;
        });
        debugLog('Loaded ${_manualMappings.length} manual EPG mappings');
      }
    } catch (e) {
      debugLog('Failed to load manual mappings: $e');
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

  /// Debug method to analyze channel ID patterns vs EPG key patterns
  void debugChannelMatching(List<Channel> channels) {
    debugLog('=== EPG MATCHING DEBUG ===');
    debugLog('Total channels: ${channels.length}');
    debugLog('Primary EPG channels: ${_epgData.length}');
    debugLog('Secondary EPG channels: ${_secondaryEpgData.length}');
    debugLog(
        'Total EPG channels: ${_epgData.length + _secondaryEpgData.length}');

    // Check if EPG data is actually loaded
    if (_epgData.isEmpty && _secondaryEpgData.isEmpty) {
      debugLog('❌ NO EPG DATA LOADED!');
      debugLog('This is likely the root cause of the matching issue.');
      return;
    }

    // Sample channel IDs
    final sampleChannels = channels.take(10).toList();
    debugLog('\nSample channel IDs:');
    for (final channel in sampleChannels) {
      final tvgId = channel.tvgId ?? channel.id;
      debugLog('  "$tvgId" (name: "${channel.name}")');
    }

    // Sample EPG keys from both primary and secondary
    final allEpgKeys = {..._epgData.keys, ..._secondaryEpgData.keys};
    final sampleEpgKeys = allEpgKeys.take(10).toList();
    debugLog('\nSample EPG keys:');
    for (final key in sampleEpgKeys) {
      final isPrimary = _epgData.containsKey(key);
      debugLog('  "$key" (${isPrimary ? "primary" : "secondary"})');
    }

    // Test exact matches
    int exactMatches = 0;
    for (final channel in channels) {
      final tvgId = channel.tvgId ?? channel.id;
      if (allEpgKeys.contains(tvgId)) {
        exactMatches++;
      }
    }
    debugLog('\nExact matches: $exactMatches/${channels.length}');

    // Test case-insensitive matches
    int caseInsensitiveMatches = 0;
    final lowerEpgKeys = allEpgKeys.map((k) => k.toLowerCase()).toSet();
    for (final channel in channels) {
      final tvgId = (channel.tvgId ?? channel.id).toLowerCase();
      if (lowerEpgKeys.contains(tvgId)) {
        caseInsensitiveMatches++;
      }
    }
    debugLog(
        'Case-insensitive matches: $caseInsensitiveMatches/${channels.length}');

    // Test fuzzy matching (using the actual service method)
    int fuzzyMatches = 0;
    debugLog('\nTesting fuzzy matches (first 5 channels):');
    for (int i = 0; i < 5 && i < channels.length; i++) {
      final channel = channels[i];
      final tvgId = channel.tvgId ?? channel.id;
      final hasMatch = hasEpgData(tvgId, channelName: channel.name);
      if (hasMatch) fuzzyMatches++;
      debugLog('  "$tvgId" -> ${hasMatch ? "MATCH" : "NO MATCH"}');
    }

    debugLog('\n=== SUMMARY ===');
    debugLog('Exact matches: $exactMatches/${channels.length}');
    debugLog(
        'Case-insensitive matches: $caseInsensitiveMatches/${channels.length}');
    debugLog('Fuzzy matches (sample): $fuzzyMatches/5');
    debugLog('=== END EPG DEBUG ===');
  }
}
