import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
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
    final ioClient =
        HttpClient(context: SecurityContext(withTrustedRoots: true))
          ..badCertificateCallback = (cert, host, port) {
            debugLog('XtreamCodes: Accepting cert from $host:$port');
            return true;
          }
          ..connectionTimeout = const Duration(seconds: 15)
          ..idleTimeout = const Duration(seconds: 15);

    // Force using all available security contexts
    try {
      ioClient.findProxy = (uri) => 'DIRECT';
    } catch (e) {
      debugLog('XtreamCodes: Could not set proxy: $e');
    }

    return IOClient(ioClient);
  }

  /// Make HTTP request with error handling
  Future<http.Response> _makeRequest(String url) async {
    try {
      debugLog('XtreamCodes: Requesting $url');
      final response = await _client.get(Uri.parse(url)).timeout(
        const Duration(seconds: 20),
        onTimeout: () {
          throw TimeoutException('Request timeout after 20 seconds');
        },
      );
      debugLog('XtreamCodes: Response status ${response.statusCode}');
      return response;
    } catch (e) {
      debugLog('XtreamCodes: Request failed: $e');
      rethrow;
    }
  }

  void dispose() {
    _client.close();
  }

  int? _parseCount(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value);
    return null;
  }

  /// Fetch lightweight account info counts (channels/movies/series) if provided.
  Future<Map<String, int>?> getPanelCounts() async {
    try {
      final url = '$_apiBase?username=$username&password=$password';
      final response = await _makeRequest(url);
      if (response.statusCode != 200) return null;
      final data = json.decode(response.body) as Map<String, dynamic>;

      final userInfo = data['user_info'] as Map<String, dynamic>? ?? {};
      final serverInfo = data['server_info'] as Map<String, dynamic>? ?? {};

      final channels = _parseCount(userInfo['available_channels']) ??
          _parseCount(serverInfo['total_channels']) ??
          _parseCount(data['available_channels']);
      final movies = _parseCount(userInfo['available_vod']) ??
          _parseCount(userInfo['total_movies']) ??
          _parseCount(serverInfo['total_movies']) ??
          _parseCount(data['total_movies']);
      final series = _parseCount(userInfo['available_series']) ??
          _parseCount(userInfo['total_series']) ??
          _parseCount(serverInfo['total_series']) ??
          _parseCount(data['total_series']);

      if (channels == null && movies == null && series == null) {
        return null;
      }
      return {
        if (channels != null) 'channels': channels,
        if (movies != null) 'movies': movies,
        if (series != null) 'series': series,
      };
    } catch (e) {
      debugLog('XtreamCodes: Error fetching panel counts: $e');
      return null;
    }
  }

  /// Base API endpoint for Xtream Codes (ensures the path is correct)
  String get _apiBase {
    final trimmed = serverUrl.endsWith('/')
        ? serverUrl.substring(0, serverUrl.length - 1)
        : serverUrl;
    return '$trimmed/player_api.php';
  }

  /// Fetch all VOD categories
  Future<List<Map<String, dynamic>>> getVodCategories() async {
    try {
      final url =
          '$_apiBase?username=$username&password=$password&action=get_vod_categories';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => e as Map<String, dynamic>).toList();
      }
      return [];
    } catch (e) {
      debugLog('XtreamCodes: Error fetching VOD categories: $e');
      return [];
    }
  }

  /// Fetch all series categories
  Future<List<Map<String, dynamic>>> getSeriesCategories() async {
    try {
      final url =
          '$_apiBase?username=$username&password=$password&action=get_series_categories';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => e as Map<String, dynamic>).toList();
      }
      return [];
    } catch (e) {
      debugLog('XtreamCodes: Error fetching series categories: $e');
      return [];
    }
  }

  /// Fetch movies from a specific category
  Future<List<Content>> getMoviesByCategory(String categoryId,
      {String? categoryName}) async {
    try {
      final url =
          '$_apiBase?username=$username&password=$password&action=get_vod_streams&category_id=$categoryId';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data
            .map((movie) =>
                _parseMovie(movie as Map<String, dynamic>, categoryName))
            .toList();
      }
      return [];
    } catch (e) {
      debugLog(
          'XtreamCodes: Error fetching movies for category $categoryId: $e');
      return [];
    }
  }

  /// Fetch all movies from all categories
  Future<List<Content>> getAllMovies() async {
    try {
      debugLog('XtreamCodes: Fetching VOD categories...');
      final categories = await getVodCategories();
      debugLog('XtreamCodes: Found ${categories.length} VOD categories');

      final List<Content> allMovies = [];

      for (final category in categories) {
        final categoryId = category['category_id'].toString();
        final categoryName = category['category_name'] ?? 'Unknown';
        debugLog(
            'XtreamCodes: Fetching movies from "$categoryName" (ID: $categoryId)...');

        final movies =
            await getMoviesByCategory(categoryId, categoryName: categoryName);
        debugLog(
            'XtreamCodes: Found ${movies.length} movies in "$categoryName"');
        allMovies.addAll(movies);
      }

      debugLog('XtreamCodes: Total movies loaded: ${allMovies.length}');
      return allMovies;
    } catch (e) {
      debugLog('XtreamCodes: Error fetching all movies: $e');
      return [];
    }
  }

  /// Fetch live (TV) categories if the provider supports it
  Future<List<Map<String, dynamic>>> getLiveCategories() async {
    try {
      final url =
          '$_apiBase?username=$username&password=$password&action=get_live_categories';
      final response = await _makeRequest(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => e as Map<String, dynamic>).toList();
      }
      return [];
    } catch (e) {
      debugLog('XtreamCodes: Error fetching live categories: $e');
      return [];
    }
  }

  /// Fetch live streams for a specific category
  Future<List<Map<String, dynamic>>> getLiveStreams(String categoryId) async {
    try {
      final url =
          '$_apiBase?username=$username&password=$password&action=get_live_streams&category_id=$categoryId';
      final response = await _makeRequest(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => e as Map<String, dynamic>).toList();
      }
      return [];
    } catch (e) {
      debugLog('XtreamCodes: Error fetching live streams for $categoryId: $e');
      return [];
    }
  }

  /// Fetch all live streams across categories (best-effort)
  Future<List<Map<String, dynamic>>> getAllLiveStreams() async {
    try {
      // Fast path: try a single call for all live streams (some providers support it).
      try {
        final url =
            '$_apiBase?username=$username&password=$password&action=get_live_streams';
        final response = await _makeRequest(url);
        if (response.statusCode == 200) {
          final List<dynamic> data = json.decode(response.body);
          if (data.isNotEmpty) {
            debugLog(
                'XtreamCodes: Loaded ${data.length} live streams from single-call endpoint');
            return data.map((e) => e as Map<String, dynamic>).toList();
          }
        }
      } catch (_) {
        // Fall back to per-category fetch below.
      }

      final categories = await getLiveCategories();
      final List<Map<String, dynamic>> all = [];
      if (categories.isEmpty) {
        return [];
      }

      for (final c in categories) {
        final id = (c['category_id'] ?? c['id'] ?? c['category_id']).toString();
        final streams = await getLiveStreams(id);
        all.addAll(streams);
      }
      return all;
    } catch (e) {
      debugLog('XtreamCodes: Error fetching all live streams: $e');
      return [];
    }
  }

  /// Fetch series from a specific category
  Future<List<Content>> getSeriesByCategory(String categoryId,
      {String? categoryName}) async {
    try {
      final url =
          '$_apiBase?username=$username&password=$password&action=get_series&category_id=$categoryId';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data
            .map((series) =>
                _parseSeries(series as Map<String, dynamic>, categoryName))
            .toList();
      }
      return [];
    } catch (e) {
      debugLog(
          'XtreamCodes: Error fetching series for category $categoryId: $e');
      return [];
    }
  }

  /// Fetch all series from all categories
  Future<List<Content>> getAllSeries() async {
    try {
      debugLog('XtreamCodes: Fetching series categories...');
      final categories = await getSeriesCategories();
      debugLog('XtreamCodes: Found ${categories.length} series categories');

      final List<Content> allSeries = [];

      for (final category in categories) {
        final categoryId = category['category_id'].toString();
        final categoryName = category['category_name'] ?? 'Unknown';
        debugLog(
            'XtreamCodes: Fetching series from "$categoryName" (ID: $categoryId)...');

        final series =
            await getSeriesByCategory(categoryId, categoryName: categoryName);
        debugLog(
            'XtreamCodes: Found ${series.length} series in "$categoryName"');
        allSeries.addAll(series);
      }

      debugLog('XtreamCodes: Total series loaded: ${allSeries.length}');
      return allSeries;
    } catch (e) {
      debugLog('XtreamCodes: Error fetching all series: $e');
      return [];
    }
  }

  /// Get detailed info about a specific movie
  Future<Map<String, dynamic>?> getMovieInfo(String streamId) async {
    try {
      final url =
          '$_apiBase?username=$username&password=$password&action=get_vod_info&vod_id=$streamId';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      debugLog('XtreamCodes: Error fetching movie info: $e');
      return null;
    }
  }

  /// Get detailed info about a specific series (includes all episodes)
  Future<Map<String, dynamic>?> getSeriesInfo(String seriesId) async {
    try {
      final url =
          '$_apiBase?username=$username&password=$password&action=get_series_info&series_id=$seriesId';
      final response = await _makeRequest(url);

      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      debugLog('XtreamCodes: Error fetching series info: $e');
      return null;
    }
  }

  /// Parse movie JSON to Content object
  Content _parseMovie(Map<String, dynamic> data, [String? categoryName]) {
    final streamId = data['stream_id'].toString();
    final containerExtension = data['container_extension'] ?? 'mp4';
    final videoUrl =
        '$serverUrl/movie/$username/$password/$streamId.$containerExtension';

    final imageUrl = data['stream_icon'];
    final backdropPath = data['backdrop_path'];
    final backdropUrl = backdropPath != null
        ? 'https://image.tmdb.org/t/p/original$backdropPath'
        : null;

    if (imageUrl != null || backdropUrl != null) {
      debugLog(
          'Movie "${data['name']}": imageUrl=$imageUrl, backdropUrl=$backdropUrl');
    }

    return Content(
      id: 'movie_$streamId',
      title: data['name'] ?? 'Unknown',
      type: ContentType.movie,
      videoUrl: videoUrl,
      imageUrl: imageUrl,
      backdropUrl: backdropUrl,
      rating: _parseRating(data['rating']),
      genres: categoryName != null ? [categoryName] : null,
      year: _parseYear(data['added']),
      addedDate: _parseDate(data['added']),
    );
  }

  /// Parse series JSON to Content object
  Content _parseSeries(Map<String, dynamic> data, [String? categoryName]) {
    final seriesId = data['series_id'].toString();

    final cover = data['cover'];
    final backdropPath = data['backdrop_path'];
    final backdropUrl = backdropPath != null
        ? 'https://image.tmdb.org/t/p/original$backdropPath'
        : null;

    if (cover != null || backdropUrl != null) {
      debugLog(
          'Series "${data['name']}": cover=$cover, backdropUrl=$backdropUrl');
    }

    return Content(
      id: 'series_$seriesId',
      title: data['name'] ?? 'Unknown',
      type: ContentType.series,
      imageUrl: cover,
      backdropUrl: backdropUrl,
      rating: _parseRating(data['rating']),
      genres: categoryName != null ? [categoryName] : null,
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

  /// Parse year from Unix timestamp
  int? _parseYear(dynamic timestamp) {
    if (timestamp == null) return null;
    try {
      final int ts =
          timestamp is int ? timestamp : int.parse(timestamp.toString());
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
      final int ts =
          timestamp is int ? timestamp : int.parse(timestamp.toString());
      return DateTime.fromMillisecondsSinceEpoch(ts * 1000);
    } catch (e) {
      return null;
    }
  }
}
