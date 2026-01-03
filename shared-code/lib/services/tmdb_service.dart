import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class _CacheItem {
  final Map<String, dynamic> data;
  final DateTime expiry;
  _CacheItem(this.data, this.expiry);
  bool get isExpired => DateTime.now().isAfter(expiry);
}

class TMDBService {
  static const String _apiKey = ''; // Configure in consuming app
  static const String _baseUrl = 'https://api.themoviedb.org/3';
  static const String _omdbApiKey = 'c5832aa4'; // Configure in consuming app
  static const String _omdbBaseUrl = 'https://www.omdbapi.com';
  // Simple in-memory cache: key -> _CacheItem
  // TTL defaults to 24 hours. Evicts oldest entries when size grows too large.
  static final Map<String, _CacheItem> _cache = {};
  static const Duration _defaultTtl = Duration(hours: 24);
  static const int _maxCacheEntries = 200;
  static Future<void>? _cacheLoadFuture;

  // Batch request queue
  static final Map<String, List<Function(String?)>> _pendingRequests = {};
  static final Set<String> _processingRequests = {};

  // TMDB Genre ID to Name mapping
  static const Map<int, String> _movieGenres = {
    28: 'Action',
    12: 'Adventure',
    16: 'Animation',
    35: 'Comedy',
    80: 'Crime',
    99: 'Documentary',
    18: 'Drama',
    10751: 'Family',
    14: 'Fantasy',
    36: 'History',
    27: 'Horror',
    10402: 'Music',
    9648: 'Mystery',
    10749: 'Romance',
    878: 'Science Fiction',
    10770: 'TV Movie',
    53: 'Thriller',
    10752: 'War',
    37: 'Western',
  };

  static const Map<int, String> _tvGenres = {
    10759: 'Action & Adventure',
    16: 'Animation',
    35: 'Comedy',
    80: 'Crime',
    99: 'Documentary',
    18: 'Drama',
    10751: 'Family',
    10762: 'Kids',
    9648: 'Mystery',
    10763: 'News',
    10764: 'Reality',
    10765: 'Sci-Fi & Fantasy',
    10766: 'Soap',
    10767: 'Talk',
    10768: 'War & Politics',
    37: 'Western',
  };

  static String _cacheKey(String prefix, String query, {int? year}) {
    return '$prefix:${query.toLowerCase().trim()}:${year ?? ''}';
  }

  static String _normalizeTitle(String title) {
    var output = title.trim();
    output = output.replaceAll(
        RegExp(r'\s*[\(\[\{](19|20)\d{2}[\)\]\}]\s*$'), '');
    output = output.replaceAll(RegExp(r'[\s\-_:]+(19|20)\d{2}$'), '');
    output = output.replaceAll(
        RegExp(r'\b(4k|uhd|fhd|hd|sd|1080p|720p|2160p)\b',
            caseSensitive: false),
        '');
    output = output.replaceAll(
        RegExp(r'\bS\d{1,2}\s*[\-:\.]?\s*E\d{1,2}\b', caseSensitive: false),
        '');
    output = output.replaceAll(
        RegExp(
            r'\b(?:Ep|Episode|Part|Chapter|Pt)\.?\s*\d+\b',
            caseSensitive: false),
        '');
    output = output.replaceAll(RegExp(r'\s+'), ' ').trim();
    return output;
  }

  static Map<String, dynamic>? _getFromCache(String key) {
    final item = _cache[key];
    if (item == null) return null;
    if (item.isExpired) {
      _cache.remove(key);
      return null;
    }
    return item.data;
  }

  static void _setCache(
    String key,
    Map<String, dynamic> data, {
    Duration? ttl,
  }) {
    if (_cache.length >= _maxCacheEntries) {
      // remove oldest entry
      final firstKey = _cache.keys.first;
      _cache.remove(firstKey);
    }
    _cache[key] = _CacheItem(data, DateTime.now().add(ttl ?? _defaultTtl));
    // persist asynchronously
    _persistCacheToDisk();
  }

  static bool _cacheLoaded = false;
  static const String _cacheFileName = 'tmdb_cache.json';

  static Future<void> _loadCacheFromDisk() async {
    try {
      final dir = await getApplicationSupportDirectory();
      final cachePath = '${dir.path}/$_cacheFileName';
      final rawCache = await Isolate.run<Map<String, dynamic>>(
        () => _readCacheFile(cachePath),
      );
      rawCache.forEach((key, value) {
        try {
          final entry = value is Map<String, dynamic>
              ? value
              : Map<String, dynamic>.from(value as Map);
          final data = entry['data'] is Map
              ? Map<String, dynamic>.from(entry['data'] as Map)
              : <String, dynamic>{};
          final expiryMs = entry['expiry'] as int? ?? 0;
          final expiry = DateTime.fromMillisecondsSinceEpoch(expiryMs);
          if (DateTime.now().isBefore(expiry)) {
            _cache[key] = _CacheItem(data, expiry);
          }
        } catch (_) {
          // ignore malformed entries
        }
      });
    } catch (e) {
      // ignore disk load errors
    } finally {
      _cacheLoaded = true;
      _cacheLoadFuture = null;
    }
  }

  static Future<void> _persistCacheToDisk() async {
    try {
      final dir = await getApplicationSupportDirectory();
      final file = File('${dir.path}/$_cacheFileName');
      final Map<String, dynamic> out = {};
      _cache.forEach((key, item) {
        out[key] = {
          'data': item.data,
          'expiry': item.expiry.millisecondsSinceEpoch,
        };
      });
      await file.writeAsString(json.encode(out));
    } catch (e) {
      // ignore disk write errors
    }
  }

  static Future<double?> getMovieRating(String title, {int? year}) async {
    await init();
    try {
      final cachedKey = _cacheKey('rating:movie', title, year: year);
      final cached = _getFromCache(cachedKey);
      if (cached != null && cached.containsKey('rating')) {
        return (cached['rating'] as num?)?.toDouble();
      }
      // Search for movie by title
      var searchUrl =
          '$_baseUrl/search/movie?api_key=$_apiKey&query=${Uri.encodeComponent(title)}';
      if (year != null) {
        searchUrl += '&year=$year';
      }

      final response = await http.get(Uri.parse(searchUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;

        if (results.isNotEmpty) {
          final movie = results.first;
          final rating = movie['vote_average'] as double?;
          // cache rating
          _setCache(cachedKey, {'rating': rating});
          return rating;
        }
      }
    } catch (e) {
      debugPrint('TMDB API error: $e');
    }

    return null;
  }

  static Future<double?> getTVShowRating(String title, {int? year}) async {
    await init();
    try {
      final cachedKey = _cacheKey('rating:tv', title, year: year);
      final cached = _getFromCache(cachedKey);
      if (cached != null && cached.containsKey('rating')) {
        return (cached['rating'] as num?)?.toDouble();
      }
      // Search for TV show by title
      var searchUrl =
          '$_baseUrl/search/tv?api_key=$_apiKey&query=${Uri.encodeComponent(title)}';
      if (year != null) {
        searchUrl += '&first_air_date_year=$year';
      }

      final response = await http.get(Uri.parse(searchUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;

        if (results.isNotEmpty) {
          final show = results.first;
          final rating = show['vote_average'] as double?;
          _setCache(cachedKey, {'rating': rating});
          return rating;
        }
      }
    } catch (e) {
      debugPrint('TMDB API error: $e');
    }

    return null;
  }

  static Future<Map<String, dynamic>?> getMovieDetails(
    String title, {
    int? year,
  }) async {
    await init();
    try {
      final cacheKey = _cacheKey('movie:details', title, year: year);
      final cached = _getFromCache(cacheKey);
      if (cached != null) return cached;

      final searchUrl =
          '$_baseUrl/search/movie?api_key=$_apiKey&query=${Uri.encodeComponent(title)}';

      final response = await http.get(Uri.parse(searchUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;

        if (results.isNotEmpty) {
          final movie = results.first;

          // Map genre IDs to genre names
          final genreIds = movie['genre_ids'] as List?;
          final List<String> genres = [];
          if (genreIds != null) {
            for (final id in genreIds) {
              final genreName = _movieGenres[id as int];
              if (genreName != null) genres.add(genreName);
            }
          }

          final result = {
            'rating': movie['vote_average'] as double?,
            'poster': movie['poster_path'] != null
                ? 'https://image.tmdb.org/t/p/w500${movie['poster_path']}'
                : null,
            'backdrop': movie['backdrop_path'] != null
                ? 'https://image.tmdb.org/t/p/w1280${movie['backdrop_path']}'
                : null,
            'overview': movie['overview'] as String?,
            'release_date': movie['release_date'] as String?,
            'genres': genres.isNotEmpty ? genres : null,
          };
          _setCache(cacheKey, result);
          return result;
        }
      }
    } catch (e) {
      debugPrint('TMDB API error: $e');
    }

    return null;
  }

  /// Fetch artwork from OMDb API as fallback
  static Future<Map<String, dynamic>?> _getOMDbDetails(
    String title, {
    int? year,
    String type = 'movie', // 'movie' or 'series'
  }) async {
    try {
      final normalizedTitle = _normalizeTitle(title);
      var searchUrl =
          '$_omdbBaseUrl/?apikey=$_omdbApiKey&t=${Uri.encodeComponent(normalizedTitle)}';
      if (year != null) {
        searchUrl += '&y=$year';
      }
      searchUrl += '&type=$type';

      final response = await http.get(Uri.parse(searchUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['Response'] == 'True') {
          final poster = data['Poster'] as String?;
          // OMDb returns 'N/A' for missing posters
          final validPoster =
              (poster != null && poster != 'N/A') ? poster : null;

          return {
            'rating': data['imdbRating'] != null && data['imdbRating'] != 'N/A'
                ? double.tryParse(data['imdbRating'] as String)
                : null,
            'poster': validPoster,
            'backdrop':
                validPoster, // OMDb doesn't have separate backdrops, use poster
            'overview': data['Plot'] as String?,
            'release_date': data['Year'] as String?,
          };
        }
      }
    } catch (e) {
      debugPrint('OMDb API error for "$title": $e');
    }

    return null;
  }

  static Future<Map<String, dynamic>?> getTVDetails(
    String title, {
    int? year,
  }) async {
    await init();
    try {
      final cacheKey = _cacheKey('tv:details', title, year: year);
      final cached = _getFromCache(cacheKey);
      if (cached != null) return cached;

      var searchUrl =
          '$_baseUrl/search/tv?api_key=$_apiKey&query=${Uri.encodeComponent(title)}';
      if (year != null) {
        searchUrl += '&first_air_date_year=$year';
      }

      final response = await http.get(Uri.parse(searchUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;

        if (results.isNotEmpty) {
          final show = results.first;

          // Map genre IDs to genre names
          final genreIds = show['genre_ids'] as List?;
          final List<String> genres = [];
          if (genreIds != null) {
            for (final id in genreIds) {
              final genreName = _tvGenres[id as int];
              if (genreName != null) genres.add(genreName);
            }
          }

          final result = {
            'rating': show['vote_average'] as double?,
            'poster': show['poster_path'] != null
                ? 'https://image.tmdb.org/t/p/w500${show['poster_path']}'
                : null,
            'backdrop': show['backdrop_path'] != null
                ? 'https://image.tmdb.org/t/p/w1280${show['backdrop_path']}'
                : null,
            'overview': show['overview'] as String?,
            'first_air_date': show['first_air_date'] as String?,
            'genres': genres.isNotEmpty ? genres : null,
          };
          _setCache(cacheKey, result);
          return result;
        }
      }
    } catch (e) {
      debugPrint('TMDB API error: $e');
    }

    return null;
  }

  /// Returns the best available backdrop/poster URL for a given title.
  /// Prefers TV results first, falling back to movie matches and heuristics.
  static Future<String?> getBestBackdrop(String title, {int? year}) async {
    await init();
    final normalizedTitle = _normalizeTitle(title);
    final cacheKey = _cacheKey('art:best', normalizedTitle, year: year);
    final cached = _getFromCache(cacheKey);
    if (cached != null && cached.containsKey('image')) {
      final cachedImage = (cached['image'] as String?)?.trim();
      if (cachedImage?.isNotEmpty == true) {
        return cachedImage;
      }
      return null;
    }

    if (_processingRequests.contains(cacheKey)) {
      final completer = Completer<String?>();
      _pendingRequests.putIfAbsent(cacheKey, () => []).add(completer.complete);
      return completer.future;
    }

    _processingRequests.add(cacheKey);
    try {
      var details = await _resolveTmdbBackdrop(normalizedTitle, year);

      if (!_hasArtwork(details)) {
        debugPrint('TMDB miss for "$normalizedTitle", trying heuristics.');
        details ??= await _tryTeamHeuristic(normalizedTitle, year);
        if (_hasArtwork(details)) {
          debugPrint(
              'Team heuristic returned artwork for "$normalizedTitle": ${details!['backdrop'] ?? details['poster']}');
        } else {
          debugPrint(
              'Team heuristic failed for "$normalizedTitle", querying OMDb fallback.');
          details ??= await _tryOmdbFallback(normalizedTitle, year);
          if (_hasArtwork(details)) {
            debugPrint(
                'OMDb fallback returned artwork for "$normalizedTitle": ${details!['backdrop'] ?? details['poster']}');
          } else {
            debugPrint(
                'OMDb fallback returned no artwork for "$normalizedTitle".');
          }
        }
      } else {
        debugPrint(
            'TMDB found artwork for "$normalizedTitle": ${details!['backdrop'] ?? details['poster']}');
      }

      final image = _extractBackdropUrl(details);
      _setCache(
        cacheKey,
        {'image': image},
        ttl: image == null ? const Duration(hours: 1) : null,
      );

      final pending = _pendingRequests.remove(cacheKey);
      if (pending != null) {
        for (final callback in pending) {
          callback(image);
        }
      }

      return image;
    } finally {
      _processingRequests.remove(cacheKey);
    }
  }

  static Future<Map<String, dynamic>?> _resolveTmdbBackdrop(
      String normalizedTitle, int? year) async {
    Map<String, dynamic>? details;
    final tvTitle = normalizedTitle.length <= 4
        ? '$normalizedTitle channel'
        : normalizedTitle;
    details = await getTVDetails(tvTitle, year: year);
    details ??= await getMovieDetails(normalizedTitle, year: year);
    return details;
  }

  static Future<Map<String, dynamic>?> _tryOmdbFallback(
      String normalizedTitle, int? year) async {
    final seriesResult =
        await _getOMDbDetails(normalizedTitle, year: year, type: 'series');
    if (_hasArtwork(seriesResult)) return seriesResult;
    final movieResult =
        await _getOMDbDetails(normalizedTitle, year: year, type: 'movie');
    if (_hasArtwork(movieResult)) return movieResult;
    return null;
  }

  static bool _hasArtwork(Map<String, dynamic>? details) {
    final backdrop = (details?['backdrop'] as String?)?.trim();
    if (backdrop?.isNotEmpty == true) return true;
    final poster = (details?['poster'] as String?)?.trim();
    return poster?.isNotEmpty == true;
  }

  static String? _extractBackdropUrl(Map<String, dynamic>? details) {
    final backdrop = (details?['backdrop'] as String?)?.trim();
    if (backdrop?.isNotEmpty == true) return backdrop;
    final poster = (details?['poster'] as String?)?.trim();
    if (poster?.isNotEmpty == true) return poster;
    return null;
  }

  static List<String> _extractSportsTeams(String title) {
    final normalized = title.toLowerCase();
    const separators = [' vs ', ' vs. ', ' v ', ' at ', ' @ ', ' vs/', ' - '];
    for (final separator in separators) {
      if (normalized.contains(separator)) {
        final parts = normalized.split(separator);
        if (parts.length >= 2) {
          return parts
              .take(2)
              .map((segment) => segment.trim())
              .where((segment) => segment.isNotEmpty)
              .toList();
        }
      }
    }
    return [];
  }

  static Future<Map<String, dynamic>?> _tryTeamHeuristic(
      String title, int? year) async {
    final teams = _extractSportsTeams(title);
    if (teams.isEmpty) return null;
    for (final team in teams) {
      final normalizedTeam = _normalizeTitle(team);
      final tvMatch = await getTVDetails(normalizedTeam, year: year);
      if (_hasArtwork(tvMatch)) return tvMatch;
      final movieMatch = await getMovieDetails(normalizedTeam, year: year);
      if (_hasArtwork(movieMatch)) return movieMatch;
    }
    return null;
  }

  /// Batch fetch artwork for multiple titles at once.
  /// Returns a map of title -> image URL (or null if not found).
  /// This reduces API rate limiting issues.
  static Future<Map<String, String?>> getBestBackdropBatch(
    List<String> titles, {
    int? year,
  }) async {
    await init();
    final results = <String, String?>{};

    // First check cache
    final uncached = <String>[];
    for (final title in titles) {
      final cacheKey = _cacheKey('art:best', title, year: year);
      final cached = _getFromCache(cacheKey);
      if (cached != null && cached.containsKey('image')) {
        results[title] = (cached['image'] as String?)?.isNotEmpty == true
            ? cached['image'] as String
            : null;
      } else {
        uncached.add(title);
      }
    }

    // Fetch uncached in parallel with rate limiting
    if (uncached.isNotEmpty) {
      // Process in chunks of 5 to avoid rate limiting
      const chunkSize = 5;
      for (var i = 0; i < uncached.length; i += chunkSize) {
        final chunk = uncached.skip(i).take(chunkSize).toList();
        final futures =
            chunk.map((title) => getBestBackdrop(title, year: year));
        final chunkResults = await Future.wait(futures);

        for (var j = 0; j < chunk.length; j++) {
          results[chunk[j]] = chunkResults[j];
        }

        // Small delay between chunks to respect rate limits
        if (i + chunkSize < uncached.length) {
          await Future.delayed(const Duration(milliseconds: 200));
        }
      }
    }

    return results;
  }

  /// Initialize TMDBService (loads disk cache). Call once during app startup.
  static Future<void> init() async {
    if (_cacheLoaded) return;
    _cacheLoadFuture ??= _loadCacheFromDisk();
    await _cacheLoadFuture;
  }
}

Map<String, dynamic> _readCacheFile(String path) {
  try {
    final file = File(path);
    if (!file.existsSync()) {
      return {};
    }
    final contents = file.readAsStringSync();
    final decoded = json.decode(contents);
    if (decoded is Map<String, dynamic>) {
      return decoded;
    }
  } catch (_) {
    // ignore read/parse errors
  }
  return {};
}
