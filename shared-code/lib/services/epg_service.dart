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

/// Convert number words to digits for better matching
String _convertNumberWords(String text) {
  final conversions = {
    'one': '1', 'two': '2', 'three': '3', 'four': '4', 'five': '5',
    'six': '6', 'seven': '7', 'eight': '8', 'nine': '9', 'ten': '10',
    '1st': '1', '2nd': '2', '3rd': '3', '4th': '4', '5th': '5',
    // Don't include single-letter Roman numerals to avoid false positives
  };
  
  String result = text.toLowerCase();
  for (final entry in conversions.entries) {
    // Use word boundary matching to avoid partial replacements
    result = result.replaceAll(entry.key, entry.value);
  }
  return result;
}

/// Strip numbers from channel names for fuzzy matching
/// e.g., "itv1london" -> "itvlondon", "bbc2" -> "bbc"
String _stripNumbers(String text) {
  return text.replaceAll(RegExp(r'\d+'), '');
}

/// Strip common suffixes like HD, UHD, FHD, regional variants
String _stripSuffixes(String text) {
  return text
    .replaceAll(RegExp(r'(uhd|fhd|hd|sd|4k|1080p|720p)$', caseSensitive: false), '')
    .replaceAll(RegExp(r'(london|scotland|wales|ireland|ni|channelislands)$', caseSensitive: false), '');
}

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
        debugPrint('EpgService: Loaded ${_secondaryEpgData.length} secondary channels from cache');
        notifyListeners();
      }
      
      debugPrint('EpgService: Cache loaded, total channels: $totalChannelCount');
      
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
          debugPrint('EpgService: Cache is ${age.inHours}h old, refreshing in background');
        }
      }
      
      if (needsRefresh || _epgData.isEmpty) {
        final epgUrl = prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');
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
        debugPrint('Fetching EPG from URL (attempt ${retryCount + 1}/$_maxRetries): $url');
        
        // Use streaming to handle large EPG files efficiently
        final client = HttpClient()
          ..connectionTimeout = const Duration(seconds: 30)
          ..badCertificateCallback = (cert, host, port) => true;
        
        final request = await client.getUrl(Uri.parse(url))
            .timeout(const Duration(seconds: 30));
        final response = await request.close()
            .timeout(const Duration(seconds: 60));

        debugPrint('EPG HTTP response: ${response.statusCode}');
        
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
        _channelIdCache.clear(); // Clear cache when EPG data changes
        _normalizedEpgKeys = null; // Clear normalized keys cache
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
          debugPrint('EPG fetch failed after $_maxRetries attempts, trying cache...');
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
  Future<void> loadSecondaryEpgFromUrl(String url, {bool forceRefresh = false}) async {
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
        debugPrint('Fetching secondary EPG from URL (attempt ${retryCount + 1}/$_maxRetries)...');
        
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
        debugPrint('Secondary EPG downloaded: ${(totalBytes / 1024 / 1024).toStringAsFixed(2)} MB');

        final xmlData = utf8.decode(epgBytes, allowMalformed: true);
        debugPrint('Secondary EPG: Starting background parsing...');
        
        final parsed = await compute(parseEpgInIsolate, xmlData);
        
        // Add to secondary EPG data (don't clear primary)
        _secondaryEpgData.clear();
        final rawEpgData = parsed['epgData'] as Map<String, dynamic>;
        
        for (final channelId in rawEpgData.keys) {
          // Don't add if primary already has this channel
          if (_epgData.containsKey(channelId)) continue;
          
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
          _secondaryEpgData[channelId] = programs;
        }

        await _saveSecondaryToCache(xmlData);
        success = true;
        _error = null;
        _channelIdCache.clear(); // Clear cache when EPG data changes
        _normalizedEpgKeys = null; // Clear normalized keys cache
        debugPrint('Secondary EPG parsed: ${_secondaryEpgData.length} unique channels added');
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
      await prefs.setString(_secondaryCacheTimeKey, DateTime.now().toIso8601String());
      
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
        _secondaryEpgData[channelId] = programs;
      }
      
      debugPrint('Secondary EPG loaded from cache: ${_secondaryEpgData.length} channels');
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

  // Cache for channel ID mapping (tvgId -> epgKey)
  final Map<String, String?> _channelIdCache = {};
  
  // Normalized EPG keys for faster matching
  Map<String, String>? _normalizedEpgKeys;
  
  // Reverse lookup: normalized name -> list of original EPG keys
  Map<String, List<String>>? _nameToEpgKeys;
  
  /// Get normalized EPG keys (lazy initialization) - includes both primary and secondary EPG
  Map<String, String> _getNormalizedEpgKeys() {
    if (_normalizedEpgKeys == null) {
      _normalizedEpgKeys = {};
      _nameToEpgKeys = {};
      
      // Process both primary and secondary EPG data
      final allKeys = {..._epgData.keys, ..._secondaryEpgData.keys};
      
      for (final key in allKeys) {
        // Normalize: lowercase, remove spaces/dots/hyphens, keep alphanumeric
        final normalized = key.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
        _normalizedEpgKeys![normalized] = key;
        
        // Also add without domain suffix
        final withoutDomain = key.split('.').first.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
        if (!_normalizedEpgKeys!.containsKey(withoutDomain)) {
          _normalizedEpgKeys![withoutDomain] = key;
        }
        
        // Add number-converted version (e.g., "bbc1" for "bbcone")
        final withNumbers = _convertNumberWords(normalized);
        if (withNumbers != normalized && !_normalizedEpgKeys!.containsKey(withNumbers)) {
          _normalizedEpgKeys![withNumbers] = key;
        }
        final withNumbersNoDomain = _convertNumberWords(withoutDomain);
        if (withNumbersNoDomain != withoutDomain && !_normalizedEpgKeys!.containsKey(withNumbersNoDomain)) {
          _normalizedEpgKeys![withNumbersNoDomain] = key;
        }
        
        // Build reverse lookup by extracting channel name parts
        final parts = _extractNameParts(key);
        for (final part in parts) {
          _nameToEpgKeys!.putIfAbsent(part, () => []).add(key);
        }
      }
    }
    return _normalizedEpgKeys!;
  }

  /// Check if a channel exists in either primary or secondary EPG data
  bool _hasEpgDataForKey(String key) {
    return _epgData.containsKey(key) || _secondaryEpgData.containsKey(key);
  }
  
  /// Get programs from either primary or secondary EPG data
  List<Program> _getProgramsForKey(String key) {
    return _epgData[key] ?? _secondaryEpgData[key] ?? [];
  }

  /// Find the best matching EPG key for a channel by ID and optionally name
  String? _findEpgKey(String channelId, {String? channelName}) {
    final cacheKey = '$channelId|${channelName ?? ''}';
    
    // Check manual mapping first (highest priority)
    if (_manualMappings.containsKey(channelId)) {
      final manualKey = _manualMappings[channelId]!;
      if (_epgData.containsKey(manualKey)) {
        debugPrint('EPG Match (manual): "$channelId" -> "$manualKey"');
        return manualKey;
      }
    }
    
    // Check cache 
    if (_channelIdCache.containsKey(cacheKey)) {
      final cached = _channelIdCache[cacheKey];
      if (cached != null) {
        debugPrint('EPG Match (cached): "$channelId" -> "$cached"');
      }
      return cached;
    }
    
    // Log EPG data size on first lookup
    if (_channelIdCache.isEmpty) {
      debugPrint('EPG _findEpgKey: Primary EPG has ${_epgData.length} channels, Secondary has ${_secondaryEpgData.length}');
      if (_epgData.isNotEmpty) {
        debugPrint('EPG sample keys: ${_epgData.keys.take(5).join(", ")}');
        // Debug: Show all UK channel keys
        final ukKeys = _epgData.keys.where((k) => k.toLowerCase().endsWith('.uk')).toList();
        debugPrint('EPG UK channels (${ukKeys.length}): ${ukKeys.take(20).join(", ")}');
      }
      if (_secondaryEpgData.isNotEmpty) {
        debugPrint('Secondary EPG sample keys: ${_secondaryEpgData.keys.take(5).join(", ")}');
      }
    }
    
    // Combine keys from both primary and secondary for matching
    final allEpgKeys = {..._epgData.keys, ..._secondaryEpgData.keys};
    
    // Try exact match first
    if (_hasEpgDataForKey(channelId)) {
      _channelIdCache[cacheKey] = channelId;
      debugPrint('EPG Match (exact): "$channelId"');
      return channelId;
    }
    
    // Try lowercase match
    final lowerChannelId = channelId.toLowerCase();
    for (final key in allEpgKeys) {
      if (key.toLowerCase() == lowerChannelId) {
        _channelIdCache[cacheKey] = key;
        return key;
      }
    }
    
    // Try matching without domain suffix (e.g., "TNTSportsUltimate.uk" -> "TNTSportsUltimate")
    final withoutDomain = channelId.split('.').first;
    for (final key in allEpgKeys) {
      final keyWithoutDomain = key.split('.').first;
      if (keyWithoutDomain.toLowerCase() == withoutDomain.toLowerCase()) {
        _channelIdCache[cacheKey] = key;
        return key;
      }
    }
    
    // Try normalized matching (remove all punctuation and spaces)
    final normalizedId = channelId.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    final normalizedKeys = _getNormalizedEpgKeys();
    if (normalizedKeys.containsKey(normalizedId)) {
      _channelIdCache[cacheKey] = normalizedKeys[normalizedId];
      return normalizedKeys[normalizedId];
    }
    
    // Try with number word conversion (e.g., BBCOne -> BBC1)
    final normalizedWithNumbers = _convertNumberWords(normalizedId);
    if (normalizedWithNumbers != normalizedId && normalizedKeys.containsKey(normalizedWithNumbers)) {
      _channelIdCache[cacheKey] = normalizedKeys[normalizedWithNumbers];
      return normalizedKeys[normalizedWithNumbers];
    }
    
    // Try prefix/contains matching with normalized ID
    // e.g., "bbconeuk" matches "bbconelondonuk" because EPG key starts with channel ID prefix
    // Collect all matches and prefer London/main variants
    final normalizedIdWithoutCountry = normalizedId.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
    final normalizedIdWithNumbersNoCountry = normalizedWithNumbers.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
    
    final List<MapEntry<String, String>> prefixMatches = [];
    
    for (final entry in normalizedKeys.entries) {
      final epgNormalized = entry.key;
      final epgWithoutCountry = epgNormalized.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
      final epgWithNumbers = _convertNumberWords(epgWithoutCountry);
      final epgStripped = _stripSuffixes(epgWithNumbers);
      
      // Check if channel ID (without country) is a prefix of EPG key (without country)
      // e.g., "bbcone" matches "bbconelondon" or "bbc1" matches "bbc1london"
      if (epgWithoutCountry.startsWith(normalizedIdWithoutCountry) && 
          normalizedIdWithoutCountry.length >= 4) {
        prefixMatches.add(entry);
        continue;
      }
      
      // Try with number conversion: "bbcone" matches "bbc1london"
      if (epgWithNumbers.startsWith(normalizedIdWithNumbersNoCountry) && 
          normalizedIdWithNumbersNoCountry.length >= 4) {
        prefixMatches.add(entry);
        continue;
      }
      
      // Try stripped version: "bbcone" matches "bbconelondon" -> stripped to "bbcone"
      final channelStripped = _stripSuffixes(normalizedIdWithNumbersNoCountry);
      if (epgStripped == channelStripped && channelStripped.length >= 4) {
        prefixMatches.add(entry);
        continue;
      }
    }
    
    // If we have prefix matches, prefer London variant, then the shortest key
    if (prefixMatches.isNotEmpty) {
      // Sort: London first, then by key length (shorter = more general)
      prefixMatches.sort((a, b) {
        final aHasLondon = a.value.toLowerCase().contains('london');
        final bHasLondon = b.value.toLowerCase().contains('london');
        if (aHasLondon && !bHasLondon) return -1;
        if (!aHasLondon && bHasLondon) return 1;
        return a.key.length.compareTo(b.key.length);
      });
      
      final bestMatch = prefixMatches.first;
      debugPrint('EPG Match (prefix): "$channelId" -> "${bestMatch.value}" (from ${prefixMatches.length} candidates)');
      _channelIdCache[cacheKey] = bestMatch.value;
      return bestMatch.value;
    }
    
    // Try number-stripped matching (e.g., "itv1london" matches "itvlondon")
    final channelStrippedNumbers = _stripNumbers(normalizedIdWithoutCountry);
    if (channelStrippedNumbers.length >= 3) {
      for (final entry in normalizedKeys.entries) {
        final epgNormalized = entry.key;
        final epgWithoutCountry = epgNormalized.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
        final epgStrippedNumbers = _stripNumbers(epgWithoutCountry);
        
        // Check if stripped versions match or one is prefix of other
        if (epgStrippedNumbers == channelStrippedNumbers) {
          debugPrint('EPG Match (num-stripped): "$channelId" -> "${entry.value}" ("$channelStrippedNumbers" == "$epgStrippedNumbers")');
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
        
        // "itvlondon" starts with "itv" (stripped from "itv1")
        if (epgStrippedNumbers.startsWith(channelStrippedNumbers) && channelStrippedNumbers.length >= 3) {
          prefixMatches.add(entry);
        }
      }
      
      // Check if we found any number-stripped prefix matches
      if (prefixMatches.isNotEmpty) {
        prefixMatches.sort((a, b) {
          final aHasLondon = a.value.toLowerCase().contains('london');
          final bHasLondon = b.value.toLowerCase().contains('london');
          if (aHasLondon && !bHasLondon) return -1;
          if (!aHasLondon && bHasLondon) return 1;
          return a.key.length.compareTo(b.key.length);
        });
        
        final bestMatch = prefixMatches.first;
        debugPrint('EPG Match (num-stripped-prefix): "$channelId" -> "${bestMatch.value}" (from ${prefixMatches.length} candidates)');
        _channelIdCache[cacheKey] = bestMatch.value;
        return bestMatch.value;
      }
    }
    
    // Try contains matching (EPG key contained in channel ID)
    for (final entry in normalizedKeys.entries) {
      final epgNormalized = entry.key;
      final epgWithoutCountry = epgNormalized.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
      
      if (normalizedIdWithoutCountry.contains(epgWithoutCountry) && 
          epgWithoutCountry.length >= 4) {
        _channelIdCache[cacheKey] = entry.value;
        return entry.value;
      }
    }
    
    // Try matching by channel NAME if provided
    if (channelName != null && channelName.isNotEmpty) {
      final normalizedName = channelName.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
      
      // Direct name match against normalized keys
      if (normalizedKeys.containsKey(normalizedName)) {
        _channelIdCache[cacheKey] = normalizedKeys[normalizedName];
        return normalizedKeys[normalizedName];
      }
      
      // Remove common suffixes like HD, FHD, UHD, 4K from channel name
      final cleanedName = normalizedName.replaceAll(RegExp(r'(hd|fhd|uhd|4k|sd|1080p|720p)$'), '');
      
      // Try matching common channel name patterns
      // e.g., "CNN HD" -> "cnn", "BBC One" -> "bbcone"
      for (final entry in normalizedKeys.entries) {
        final epgNormalized = entry.key;
        final epgWithoutCountry = epgNormalized.replaceAll(RegExp(r'(uk|us|ca|au|ie|pt|hk)$'), '');
        
        // Check if EPG key is contained in channel name or vice versa
        if (cleanedName.contains(epgWithoutCountry) && epgWithoutCountry.length >= 3) {
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
        if (epgWithoutCountry.contains(cleanedName) && cleanedName.length >= 3) {
          _channelIdCache[cacheKey] = entry.value;
          return entry.value;
        }
      }
    }
    
    // Try partial match (channel ID contains EPG key or vice versa)
    for (final key in _epgData.keys) {
      if (key.toLowerCase().contains(lowerChannelId) || 
          lowerChannelId.contains(key.toLowerCase())) {
        _channelIdCache[cacheKey] = key;
        return key;
      }
    }
    
    // No match found - cache the miss
    _channelIdCache[cacheKey] = null;
    return null;
  }

  /// Extract meaningful name parts from an EPG key for matching
  List<String> _extractNameParts(String epgKey) {
    final parts = <String>[];
    
    // Remove domain suffix and normalize
    final withoutDomain = epgKey.split('.').first.toLowerCase();
    final normalized = withoutDomain.replaceAll(RegExp(r'[^a-z0-9]'), '');
    
    // Add the full normalized name
    if (normalized.length >= 3) parts.add(normalized);
    
    // Remove common suffixes
    final withoutSuffix = normalized.replaceAll(RegExp(r'(hd|fhd|uhd|4k|sd|uk|us|ca|au|east|west)$'), '');
    if (withoutSuffix.length >= 3 && withoutSuffix != normalized) {
      parts.add(withoutSuffix);
    }
    
    return parts;
  }

  /// Calculate similarity score between two strings (0.0 to 1.0)
  double _calculateSimilarity(String a, String b) {
    if (a.isEmpty || b.isEmpty) return 0.0;
    if (a == b) return 1.0;
    
    final aNorm = a.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    final bNorm = b.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    
    if (aNorm == bNorm) return 0.95;
    if (aNorm.contains(bNorm) || bNorm.contains(aNorm)) {
      return 0.8 * (aNorm.length < bNorm.length ? aNorm.length / bNorm.length : bNorm.length / aNorm.length);
    }
    
    // Calculate Levenshtein-like similarity
    int matches = 0;
    final shorter = aNorm.length < bNorm.length ? aNorm : bNorm;
    final longer = aNorm.length >= bNorm.length ? aNorm : bNorm;
    
    for (int i = 0; i < shorter.length; i++) {
      if (longer.contains(shorter[i])) matches++;
    }
    
    return matches / longer.length * 0.6;
  }

  /// Get EPG match suggestions for a channel (sorted by relevance)
  List<MapEntry<String, double>> getSuggestedMatches(String channelId, String? channelName, {int limit = 10}) {
    final scores = <String, double>{};
    
    final searchTerms = <String>[];
    
    // Add channel ID variations
    final idNorm = channelId.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    searchTerms.add(idNorm);
    searchTerms.add(idNorm.replaceAll(RegExp(r'(hd|fhd|uhd|4k|sd|uk|us)$'), ''));
    
    // Add channel name variations
    if (channelName != null && channelName.isNotEmpty) {
      final nameNorm = channelName.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
      searchTerms.add(nameNorm);
      searchTerms.add(nameNorm.replaceAll(RegExp(r'(hd|fhd|uhd|4k|sd|uk|us)$'), ''));
      
      // Also add individual words from the name
      final words = channelName.toLowerCase().split(RegExp(r'[\s\-_\.]+'));
      for (final word in words) {
        if (word.length >= 3) {
          searchTerms.add(word.replaceAll(RegExp(r'[^a-z0-9]'), ''));
        }
      }
    }
    
    // Score each EPG channel
    for (final epgKey in _epgData.keys) {
      double maxScore = 0.0;
      
      for (final term in searchTerms) {
        final score = _calculateSimilarity(term, epgKey);
        if (score > maxScore) maxScore = score;
      }
      
      if (maxScore > 0.2) {
        scores[epgKey] = maxScore;
      }
    }
    
    // Sort by score descending
    final sorted = scores.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    
    return sorted.take(limit).toList();
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
          debugPrint('EPG: Loading from cache (${age.inMinutes} minutes old)...');
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
      _channelIdCache.clear();
      _normalizedEpgKeys = null;
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
    // Clear the cache for this channel so it uses the new mapping
    _channelIdCache.removeWhere((key, _) => key.startsWith('$channelId|'));
    await _saveManualMappings();
    notifyListeners();
  }

  /// Remove a manual mapping for a channel
  Future<void> removeManualMapping(String channelId) async {
    _manualMappings.remove(channelId);
    _channelIdCache.removeWhere((key, _) => key.startsWith('$channelId|'));
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
  Map<String, List<Map<String, String>>> analyzeChannelMatches(List<Channel> channels) {
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
