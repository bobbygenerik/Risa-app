import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:xml/xml.dart';
import 'package:iptv_player/models/program.dart';
import 'package:shared_preferences/shared_preferences.dart';
// Removed unused imports: channel.dart and dart:convert

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
  static const String _cacheKey = 'epg_cache';
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
        
        final response = await _dio.get(
          url,
          options: Options(
            responseType: ResponseType.plain,
            validateStatus: (status) => status != null && status < 500,
          ),
        );

        if (response.statusCode == 200 && response.data != null) {
          await _parseEpgData(response.data);
          await _saveToCache(response.data);
          success = true;
          _error = null;
          debugPrint('EPG loaded successfully');
        } else {
          throw Exception('HTTP ${response.statusCode}: ${response.statusMessage}');
        }
      } on DioException catch (e) {
        retryCount++;
        _error = _getDioErrorMessage(e);
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
      } catch (e) {
        retryCount++;
        _error = 'Unexpected error: ${e.toString()}';
        debugPrint('EPG error: $_error');

        if (retryCount >= _maxRetries) {
          await _loadFromCache();
        }
      }
    }

    _isLoading = false;
    notifyListeners();
  }

  /// Parse EPG XML data with comprehensive error handling
  Future<void> _parseEpgData(String xmlData) async {
    try {
      final document = XmlDocument.parse(xmlData);
      final programmes = document.findAllElements('programme');

      _epgData.clear();

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

          if (!_epgData.containsKey(channelId)) {
            _epgData[channelId] = [];
          }
          _epgData[channelId]!.add(program);
        } catch (e) {
          debugPrint('Error parsing programme: $e');
          continue; // Skip this programme and continue with others
        }
      }

      // Sort programs by start time for each channel
      for (final channelId in _epgData.keys) {
        _epgData[channelId]!.sort((a, b) => a.startTime.compareTo(b.startTime));
      }

      _lastFetchTime = DateTime.now();
      debugPrint('Parsed ${_epgData.length} channels with EPG data');
    } catch (e) {
      throw Exception('Failed to parse EPG XML: ${e.toString()}');
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

  /// Save EPG data to cache
  Future<void> _saveToCache(String xmlData) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_cacheKey, xmlData);
      await prefs.setString(_cacheTimeKey, DateTime.now().toIso8601String());
      debugPrint('EPG saved to cache');
    } catch (e) {
      debugPrint('Failed to save EPG cache: $e');
    }
  }

  /// Load EPG data from cache
  Future<bool> _loadFromCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final cachedData = prefs.getString(_cacheKey);
      final cacheTimeStr = prefs.getString(_cacheTimeKey);

      if (cachedData == null || cacheTimeStr == null) {
        return false;
      }

      final cacheTime = DateTime.parse(cacheTimeStr);
      final age = DateTime.now().difference(cacheTime);

      if (age > _cacheValidity) {
        debugPrint('EPG cache expired (${age.inHours} hours old)');
        return false;
      }

      await _parseEpgData(cachedData);
      debugPrint('EPG loaded from cache (${age.inMinutes} minutes old)');
      return true;
    } catch (e) {
      debugPrint('Failed to load EPG from cache: $e');
      return false;
    }
  }

  /// Clear cache
  Future<void> clearCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_cacheKey);
      await prefs.remove(_cacheTimeKey);
      _epgData.clear();
      _lastFetchTime = null;
      notifyListeners();
      debugPrint('EPG cache cleared');
    } catch (e) {
      debugPrint('Failed to clear EPG cache: $e');
    }
  }

  /// Get user-friendly error message from DioException
  String _getDioErrorMessage(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout - EPG server is not responding';
      case DioExceptionType.sendTimeout:
        return 'Send timeout - Unable to send request to EPG server';
      case DioExceptionType.receiveTimeout:
        return 'Receive timeout - EPG data is taking too long to download';
      case DioExceptionType.badResponse:
        return 'Server error: ${e.response?.statusCode ?? 'Unknown'}';
      case DioExceptionType.cancel:
        return 'Request cancelled';
      case DioExceptionType.connectionError:
        return 'Connection error - Check your internet connection';
      case DioExceptionType.badCertificate:
        return 'SSL certificate error';
      case DioExceptionType.unknown:
        return 'Network error: ${e.message ?? 'Unknown error'}';
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
