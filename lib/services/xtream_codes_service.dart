import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:iptv_player/models/content.dart';

/// Service for fetching VOD content from Xtream Codes API
class XtreamCodesService {
  final String serverUrl;
  final String username;
  final String password;
  final http.Client _client;

  XtreamCodesService({
    required this.serverUrl,
    required this.username,
    required this.password,
    http.Client? client,
  }) : _client = client ?? _createDefaultClient();

  /// Create HTTP client that bypasses SSL certificate verification
  static http.Client _createDefaultClient() {
    final ioClient = HttpClient();
    ioClient.badCertificateCallback = (cert, host, port) => true;
    ioClient.connectionTimeout = const Duration(seconds: 15);
    return IOClient(ioClient);
  }

  /// Make HTTP request with error handling
  Future<http.Response> _makeRequest(String url) async {
    try {
      debugPrint('XtreamCodes: Requesting $url');
      final response = await _client.get(Uri.parse(url)).timeout(
        const Duration(seconds: 20),
        onTimeout: () {
          throw TimeoutException('Request timeout after 20 seconds');
        },
      );
      debugPrint('XtreamCodes: Response status ${response.statusCode}');
      return response;
    } catch (e) {
      debugPrint('XtreamCodes: Request failed: $e');
      rethrow;
    }
  }

  void dispose() {
    _client.close();
  }

  /// Base API endpoint for Xtream Codes (ensures the path is correct)
  String get _apiBase {
    final trimmed = serverUrl.endsWith('/') ? serverUrl.substring(0, serverUrl.length - 1) : serverUrl;
    return '$trimmed/player_api.php';
  }

  /// Fetch all VOD categories
  Future<List<Map<String, dynamic>>> getVodCategories() async {
    try {
      final url = '$_apiBase?username=$username&password=$password&action=get_vod_categories';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => e as Map<String, dynamic>).toList();
      }
      return [];
    } catch (e) {
      debugPrint('XtreamCodes: Error fetching VOD categories: $e');
      return [];
    }
  }

  /// Fetch all series categories
  Future<List<Map<String, dynamic>>> getSeriesCategories() async {
    try {
      final url = '$_apiBase?username=$username&password=$password&action=get_series_categories';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => e as Map<String, dynamic>).toList();
      }
      return [];
    } catch (e) {
      debugPrint('XtreamCodes: Error fetching series categories: $e');
      return [];
    }
  }

  /// Fetch movies from a specific category
  Future<List<Content>> getMoviesByCategory(String categoryId) async {
    try {
      final url = '$_apiBase?username=$username&password=$password&action=get_vod_streams&category_id=$categoryId';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((movie) => _parseMovie(movie as Map<String, dynamic>)).toList();
      }
      return [];
    } catch (e) {
      debugPrint('XtreamCodes: Error fetching movies for category $categoryId: $e');
      return [];
    }
  }

  /// Fetch all movies from all categories
  Future<List<Content>> getAllMovies() async {
    try {
      debugPrint('XtreamCodes: Fetching VOD categories...');
      final categories = await getVodCategories();
      debugPrint('XtreamCodes: Found ${categories.length} VOD categories');

      final List<Content> allMovies = [];

      for (final category in categories) {
        final categoryId = category['category_id'].toString();
        final categoryName = category['category_name'] ?? 'Unknown';
        debugPrint('XtreamCodes: Fetching movies from "$categoryName" (ID: $categoryId)...');

        final movies = await getMoviesByCategory(categoryId);
        debugPrint('XtreamCodes: Found ${movies.length} movies in "$categoryName"');
        allMovies.addAll(movies);
      }

      debugPrint('XtreamCodes: Total movies loaded: ${allMovies.length}');
      return allMovies;
    } catch (e) {
      debugPrint('XtreamCodes: Error fetching all movies: $e');
      return [];
    }
  }

  /// Fetch series from a specific category
  Future<List<Content>> getSeriesByCategory(String categoryId) async {
    try {
      final url = '$_apiBase?username=$username&password=$password&action=get_series&category_id=$categoryId';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((series) => _parseSeries(series as Map<String, dynamic>)).toList();
      }
      return [];
    } catch (e) {
      debugPrint('XtreamCodes: Error fetching series for category $categoryId: $e');
      return [];
    }
  }

  /// Fetch all series from all categories
  Future<List<Content>> getAllSeries() async {
    try {
      debugPrint('XtreamCodes: Fetching series categories...');
      final categories = await getSeriesCategories();
      debugPrint('XtreamCodes: Found ${categories.length} series categories');

      final List<Content> allSeries = [];

      for (final category in categories) {
        final categoryId = category['category_id'].toString();
        final categoryName = category['category_name'] ?? 'Unknown';
        debugPrint('XtreamCodes: Fetching series from "$categoryName" (ID: $categoryId)...');

        final series = await getSeriesByCategory(categoryId);
        debugPrint('XtreamCodes: Found ${series.length} series in "$categoryName"');
        allSeries.addAll(series);
      }

      debugPrint('XtreamCodes: Total series loaded: ${allSeries.length}');
      return allSeries;
    } catch (e) {
      debugPrint('XtreamCodes: Error fetching all series: $e');
      return [];
    }
  }

  /// Get detailed info about a specific movie
  Future<Map<String, dynamic>?> getMovieInfo(String streamId) async {
    try {
      final url = '$_apiBase?username=$username&password=$password&action=get_vod_info&vod_id=$streamId';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      debugPrint('XtreamCodes: Error fetching movie info: $e');
      return null;
    }
  }

  /// Get detailed info about a specific series (includes all episodes)
  Future<Map<String, dynamic>?> getSeriesInfo(String seriesId) async {
    try {
      final url = '$_apiBase?username=$username&password=$password&action=get_series_info&series_id=$seriesId';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      debugPrint('XtreamCodes: Error fetching series info: $e');
      return null;
    }
  }

  /// Parse movie JSON to Content object
  Content _parseMovie(Map<String, dynamic> data) {
    final streamId = data['stream_id'].toString();
    final containerExtension = data['container_extension'] ?? 'mp4';
    final videoUrl = '$serverUrl/movie/$username/$password/$streamId.$containerExtension';

    return Content(
      id: 'movie_$streamId',
      title: data['name'] ?? 'Unknown',
      type: ContentType.movie,
      videoUrl: videoUrl,
      imageUrl: data['stream_icon'],
      backdropUrl: data['backdrop_path'] != null
          ? 'https://image.tmdb.org/t/p/original${data['backdrop_path']}'
          : null,
      rating: _parseRating(data['rating']),
      genres: _parseGenres(data['category_id']),
      year: _parseYear(data['added']),
      addedDate: _parseDate(data['added']),
    );
  }

  /// Parse series JSON to Content object
  Content _parseSeries(Map<String, dynamic> data) {
    final seriesId = data['series_id'].toString();

    return Content(
      id: 'series_$seriesId',
      title: data['name'] ?? 'Unknown',
      type: ContentType.series,
      imageUrl: data['cover'],
      backdropUrl: data['backdrop_path'] != null
          ? 'https://image.tmdb.org/t/p/original${data['backdrop_path']}'
          : null,
      rating: _parseRating(data['rating']),
      genres: _parseGenres(data['category_id']),
      year: _parseYear(data['last_modified']),
      addedDate: _parseDate(data['last_modified']),
    );
  }

  /// Parse rating from various formats
  double? _parseRating(dynamic rating) {
    if (rating == null) return null;
    if (rating is double) return rating;
    if (rating is int) return rating.toDouble();
    if (rating is String) return double.tryParse(rating);
    return null;
  }

  /// Parse genres from category (simplified - you might want to maintain a category map)
  List<String>? _parseGenres(dynamic categoryId) {
    // This is simplified - in a real implementation, you'd map category IDs to genre names
    return null;
  }

  /// Parse year from Unix timestamp
  int? _parseYear(dynamic timestamp) {
    if (timestamp == null) return null;
    try {
      final int ts = timestamp is int ? timestamp : int.parse(timestamp.toString());
      final date = DateTime.fromMillisecondsSinceEpoch(ts * 1000);
      return date.year;
    } catch (e) {
      return null;
    }
  }

  /// Parse date from Unix timestamp
  DateTime? _parseDate(dynamic timestamp) {
    if (timestamp == null) return null;
    try {
      final int ts = timestamp is int ? timestamp : int.parse(timestamp.toString());
      return DateTime.fromMillisecondsSinceEpoch(ts * 1000);
    } catch (e) {
      return null;
    }
  }
}
