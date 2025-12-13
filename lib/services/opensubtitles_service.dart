import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/// OpenSubtitles API Service
/// Provides subtitle downloading from OpenSubtitles.org (FREE API)
/// API Documentation: https://opensubtitles.stoplight.io/docs/opensubtitles-api
class OpenSubtitlesService extends ChangeNotifier {
  static const String _apiUrl = 'https://api.opensubtitles.com/api/v1';
  static const String _apiKey =
      'WX4Acrpk0veYJrpQTc1I5oUBkpNnIqbc';

  String? _username;
  String? _password;
  String? _authToken;
  bool _isAuthenticated = false;
  bool _isEnabled = false;
  String _preferredLanguage = 'en';
  bool _autoDownload = true;

  bool get isEnabled => _isEnabled;
  bool get isAuthenticated => _isAuthenticated;
  bool get autoDownload => _autoDownload;
  String get preferredLanguage => _preferredLanguage;

  /// Initialize service
  Future<void> initialize() async {
    debugLog('OpenSubtitles Service initialized');
  }

  /// Set credentials
  void setCredentials(String username, String password) {
    _username = username;
    _password = password;
    notifyListeners();
  }

  /// Enable/disable service
  void setEnabled(bool enabled) {
    _isEnabled = enabled;
    notifyListeners();
  }

  /// Set auto-download preference
  void setAutoDownload(bool autoDownload) {
    _autoDownload = autoDownload;
    notifyListeners();
  }

  /// Set preferred subtitle language
  void setPreferredLanguage(String languageCode) {
    _preferredLanguage = languageCode;
    notifyListeners();
  }

  /// Authenticate with OpenSubtitles API
  Future<bool> authenticate() async {
    if (_username == null ||
        _password == null ||
        _username!.isEmpty ||
        _password!.isEmpty) {
      debugLog('OpenSubtitles: Missing credentials');
      return false;
    }

    try {
      final response = await http.post(
        Uri.parse('$_apiUrl/login'),
        headers: {'Content-Type': 'application/json', 'Api-Key': _apiKey},
        body: jsonEncode({'username': _username, 'password': _password}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        _authToken = data['token'];
        _isAuthenticated = true;
        notifyListeners();
        debugLog('OpenSubtitles: Authentication successful');
        return true;
      } else {
        debugLog(
          'OpenSubtitles: Authentication failed - ${response.statusCode}',
        );
        return false;
      }
    } catch (e) {
      debugLog('OpenSubtitles: Authentication error - $e');
      return false;
    }
  }

  /// Search for subtitles by IMDB ID
  Future<List<SubtitleResult>> searchByImdbId(
    String imdbId, {
    String? languageCode,
  }) async {
    if (!_isAuthenticated || _authToken == null) {
      final authenticated = await authenticate();
      if (!authenticated) return [];
    }

    final lang = languageCode ?? _preferredLanguage;

    try {
      final response = await http.get(
        Uri.parse('$_apiUrl/subtitles?imdb_id=$imdbId&languages=$lang'),
        headers: {
          'Content-Type': 'application/json',
          'Api-Key': _apiKey,
          'Authorization': 'Bearer $_authToken',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<dynamic> results = data['data'] ?? [];

        return results.map((item) => SubtitleResult.fromJson(item)).toList();
      } else {
        debugLog('OpenSubtitles: Search failed - ${response.statusCode}');
        return [];
      }
    } catch (e) {
      debugLog('OpenSubtitles: Search error - $e');
      return [];
    }
  }

  /// Search for subtitles by query (movie/series name)
  Future<List<SubtitleResult>> searchByQuery(
    String query, {
    String? languageCode,
  }) async {
    if (!_isAuthenticated || _authToken == null) {
      final authenticated = await authenticate();
      if (!authenticated) return [];
    }

    final lang = languageCode ?? _preferredLanguage;

    try {
      final response = await http.get(
        Uri.parse(
          '$_apiUrl/subtitles?query=${Uri.encodeComponent(query)}&languages=$lang',
        ),
        headers: {
          'Content-Type': 'application/json',
          'Api-Key': _apiKey,
          'Authorization': 'Bearer $_authToken',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<dynamic> results = data['data'] ?? [];

        return results.map((item) => SubtitleResult.fromJson(item)).toList();
      } else {
        debugLog('OpenSubtitles: Search failed - ${response.statusCode}');
        return [];
      }
    } catch (e) {
      debugLog('OpenSubtitles: Search error - $e');
      return [];
    }
  }

  /// Download subtitle file
  Future<String?> downloadSubtitle(int fileId) async {
    if (!_isAuthenticated || _authToken == null) {
      final authenticated = await authenticate();
      if (!authenticated) return null;
    }

    try {
      // First get download link
      final response = await http.post(
        Uri.parse('$_apiUrl/download'),
        headers: {
          'Content-Type': 'application/json',
          'Api-Key': _apiKey,
          'Authorization': 'Bearer $_authToken',
        },
        body: jsonEncode({'file_id': fileId}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final downloadUrl = data['link'];

        // Download the subtitle file
        final subtitleResponse = await http.get(Uri.parse(downloadUrl));

        if (subtitleResponse.statusCode == 200) {
          return subtitleResponse.body;
        } else {
          debugLog(
            'OpenSubtitles: Download failed - ${subtitleResponse.statusCode}',
          );
          return null;
        }
      } else {
        debugLog(
          'OpenSubtitles: Download link request failed - ${response.statusCode}',
        );
        return null;
      }
    } catch (e) {
      debugLog('OpenSubtitles: Download error - $e');
      return null;
    }
  }

  /// Get subtitle for video (auto-download if enabled)
  Future<String?> getSubtitleForVideo(
    String title, {
    String? imdbId,
    String? languageCode,
  }) async {
    if (!_isEnabled || !_autoDownload) return null;

    List<SubtitleResult> results;

    if (imdbId != null && imdbId.isNotEmpty) {
      results = await searchByImdbId(imdbId, languageCode: languageCode);
    } else {
      results = await searchByQuery(title, languageCode: languageCode);
    }

    if (results.isEmpty) {
      debugLog('OpenSubtitles: No subtitles found for "$title"');
      return null;
    }

    // Download the first (best) result
    final subtitle = await downloadSubtitle(results.first.fileId);
    return subtitle;
  }
}

/// Subtitle search result model
class SubtitleResult {
  final int fileId;
  final String language;
  final String fileName;
  final String? movieName;
  final double score;
  final int downloads;

  SubtitleResult({
    required this.fileId,
    required this.language,
    required this.fileName,
    this.movieName,
    required this.score,
    required this.downloads,
  });

  factory SubtitleResult.fromJson(Map<String, dynamic> json) {
    final attributes = json['attributes'] ?? {};
    final files = attributes['files'] as List<dynamic>? ?? [];
    final firstFile = files.isNotEmpty ? files[0] : {};

    return SubtitleResult(
      fileId: firstFile['file_id'] ?? 0,
      language: attributes['language'] ?? 'unknown',
      fileName: firstFile['file_name'] ?? 'subtitle.srt',
      movieName: attributes['feature_details']?['movie_name'],
      score: (attributes['ratings'] ?? 0.0).toDouble(),
      downloads: attributes['download_count'] ?? 0,
    );
  }
}
