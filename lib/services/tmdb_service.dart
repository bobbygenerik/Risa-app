import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:http/http.dart' as http;
import 'package:iptv_player/config/tmdb_config.dart';
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
  // Simple in-memory cache: key -> _CacheItem
  // TTL defaults to 24 hours. Evicts oldest entries when size grows too large.
  static final Map<String, _CacheItem> _cache = {};
  static const Duration _defaultTtl = Duration(hours: 24);
  static const int _maxCacheEntries = 200;
  static Future<void>? _cacheLoadFuture;
  
  // Batch request queue
  static final Map<String, List<Function(String?)>> _pendingRequests = {};
  static final Set<String> _processingRequests = {};

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
      print('TMDB API error: $e');
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
      print('TMDB API error: $e');
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
          };
          _setCache(cacheKey, result);
          return result;
        }
      }
    } catch (e) {
      print('TMDB API error: $e');
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
          };
          _setCache(cacheKey, result);
          return result;
        }
      }
    } catch (e) {
      print('TMDB API error: $e');
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
      details = await getTVDetails(title, year: year);
      details ??= await getMovieDetails(title, year: year);

      final image =
          (details?['backdrop'] as String?) ?? (details?['poster'] as String?);
      // Cache both hits and misses (shorter TTL for misses) to avoid spamming TMDB
      _setCache(cacheKey, {
        'image': image,
      }, ttl: image == null ? const Duration(hours: 1) : null);
      
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
    
    // Fetch uncached in parallel with rate limiting
    if (uncached.isNotEmpty) {
      // Process in chunks of 5 to avoid rate limiting
      const chunkSize = 5;
      for (var i = 0; i < uncached.length; i += chunkSize) {
        final chunk = uncached.skip(i).take(chunkSize).toList();
        final futures = chunk.map((title) => getBestBackdrop(title, year: year));
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
