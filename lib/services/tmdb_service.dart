import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:http/http.dart' as http;
import 'package:iptv_player/config/tmdb_config.dart';
import 'package:iptv_player/config/omdb_config.dart';
import 'package:path_provider/path_provider.dart';

class _CacheItem {
  final Map<String, dynamic> data;
  final DateTime expiry;
  _CacheItem(this.data, this.expiry);
  bool get isExpired => DateTime.now().isAfter(expiry);
}

class TMDBService {
  static const String _apiKey = TMDBConfig.apiKey;
  static const String _baseUrl = 'https://api.themoviedb.org/3';
  static const String _omdbApiKey = OMDbConfig.apiKey;
  static const String _omdbBaseUrl = 'https://www.omdbapi.com';
  // LRU in-memory cache: key -> _CacheItem
  // TTL defaults to 24 hours. Uses LRU eviction for better hit rates.
  static final Map<String, _CacheItem> _cache = <String, _CacheItem>{};
  static const Duration _defaultTtl = Duration(hours: 24);
  static const int _maxCacheEntries = 500; // Increased cache size
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

  static Map<String, dynamic>? _getFromCache(String key) {
    final item = _cache[key];
    if (item == null) return null;
    if (item.isExpired) {
      _cache.remove(key);
      return null;
    }

    // LRU: Move to end (most recently used)
    _cache.remove(key);
    _cache[key] = item;

    return item.data;
  }

  static void _setCache(
    String key,
    Map<String, dynamic> data, {
    Duration? ttl,
  }) {
    // Remove existing entry if present (for LRU)
    if (_cache.containsKey(key)) {
      _cache.remove(key);
    }

    // Evict LRU entries if cache is full
    while (_cache.length >= _maxCacheEntries) {
      final oldestKey = _cache.keys.first;
      _cache.remove(oldestKey);
    }

    // Add new entry (most recently used)
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
          '$_baseUrl/search/movie?api_key=$_apiKey&language=en-US&query=${Uri.encodeComponent(title)}';
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
      debugLog('TMDB API error: $e');
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
          '$_baseUrl/search/tv?api_key=$_apiKey&language=en-US&query=${Uri.encodeComponent(title)}';
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
      debugLog('TMDB API error: $e');
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
          '$_baseUrl/search/movie?api_key=$_apiKey&language=en-US&query=${Uri.encodeComponent(title)}';

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
      debugLog('TMDB API error: $e');
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
      var searchUrl =
          '$_omdbBaseUrl/?apikey=$_omdbApiKey&t=${Uri.encodeComponent(title)}';
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
      debugLog('OMDb API error for "$title": $e');
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
          '$_baseUrl/search/tv?api_key=$_apiKey&language=en-US&query=${Uri.encodeComponent(title)}';
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
      debugLog('TMDB API error: $e');
    }

    return null;
  }

  /// Returns the best available backdrop/poster URL for a given title.
  /// Prefers TV results first, falling back to movie matches.
  /// This version batches requests to reduce API calls.
  static Future<String?> getBestBackdrop(String title, {int? year}) async {
    await init();
    final cacheKey = _cacheKey('art:best', title, year: year);
    final cached = _getFromCache(cacheKey);
    if (cached != null && cached.containsKey('image')) {
      return (cached['image'] as String?)?.isNotEmpty == true
          ? cached['image'] as String
          : null;
    }

    // Check if this request is already being processed
    if (_processingRequests.contains(cacheKey)) {
      // Wait for the existing request to complete
      final completer = Completer<String?>();
      _pendingRequests.putIfAbsent(cacheKey, () => []).add(completer.complete);
      return completer.future;
    }

    // Mark as processing
    _processingRequests.add(cacheKey);

    try {
      Map<String, dynamic>? details;
      String? companyLogoUrl;

      // Try TV/movie content first for better backdrop quality
      if (title.length <= 4) {
        details = await getTVDetails('$title channel', year: year);
      } else {
        details = await getTVDetails(title, year: year);
      }
      details ??= await getMovieDetails(title, year: year);

      // Only use company logos as last resort if no backdrop/poster found
      if (details == null ||
          (details['backdrop'] == null && details['poster'] == null)) {
        final companySearchUrl =
            '$_baseUrl/search/company?api_key=$_apiKey&query=${Uri.encodeComponent(title)}';
        final companyResponse = await http.get(Uri.parse(companySearchUrl));
        if (companyResponse.statusCode == 200) {
          final companyData = json.decode(companyResponse.body);
          final companyResults = companyData['results'] as List;
          if (companyResults.isNotEmpty) {
            final company = companyResults.first;
            if (company['logo_path'] != null) {
              companyLogoUrl =
                  'https://image.tmdb.org/t/p/w500${company['logo_path']}';
            }
          }
        }

        // Only use company logo if no other artwork found
        if (companyLogoUrl != null &&
            (details == null ||
                (details['backdrop'] == null && details['poster'] == null))) {
          details = {'backdrop': companyLogoUrl};
        }
      }

      // If TMDB didn't find anything, try OMDb as fallback
      if (details == null ||
          (details['backdrop'] == null && details['poster'] == null)) {
        debugLog('TMDB miss for "$title", trying OMDb as fallback...');
        final omdbTV = await _getOMDbDetails(title, year: year, type: 'series');
        final omdbMovie =
            await _getOMDbDetails(title, year: year, type: 'movie');
        details = omdbTV ?? omdbMovie;
        if (details != null) {
          debugLog(
              'OMDb found artwork for "$title": ${details['backdrop'] ?? details['poster']}');
        } else {
          debugLog('No artwork found for "$title" in TMDB or OMDb');
        }
      } else {
        debugLog(
            'TMDB found artwork for "$title": ${details['backdrop'] ?? details['poster']}');
      }

      final image =
          (details?['backdrop'] as String?) ?? (details?['poster'] as String?);
      // Cache both hits and misses (shorter TTL for misses) to avoid spamming APIs
      _setCache(
          cacheKey,
          {
            'image': image,
          },
          ttl: image == null ? const Duration(hours: 1) : null);

      // Notify all pending requests
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

    // Fetch uncached in smaller batches for Live TV performance
    if (uncached.isNotEmpty) {
      const chunkSize = 3; // Reduced from 5 for better Live TV performance
      for (var i = 0; i < uncached.length; i += chunkSize) {
        final chunk = uncached.skip(i).take(chunkSize).toList();
        final futures =
            chunk.map((title) => getBestBackdrop(title, year: year));
        final chunkResults = await Future.wait(futures);

        for (var j = 0; j < chunk.length; j++) {
          results[chunk[j]] = chunkResults[j];
        }

        // Shorter delay for Live TV responsiveness
        if (i + chunkSize < uncached.length) {
          await Future.delayed(const Duration(milliseconds: 100));
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
