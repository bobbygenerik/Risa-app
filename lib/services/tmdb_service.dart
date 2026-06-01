import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:math' as math;
import 'package:http/http.dart' as http;
import 'package:iptv_player/config/tmdb_config.dart';
import 'package:iptv_player/services/api_request_manager.dart';
import 'package:iptv_player/services/fanart_service.dart';
import 'package:path_provider/path_provider.dart';

part 'tmdb/tmdb_artwork.dart';
part 'tmdb/tmdb_cache_file.dart';

class TMDBService {
  static const String _apiKey = TMDBConfig.apiKey;
  static const String _baseUrl = 'https://api.themoviedb.org/3';
  static const String _imageBaseUrl = 'https://image.tmdb.org/t/p/original';
  // LRU in-memory cache: key -> _CacheItem
  // TTL defaults to 24 hours. Uses LRU eviction for better hit rates.
  static final Map<String, _CacheItem> _cache = <String, _CacheItem>{};
  static const Duration _defaultTtl = Duration(hours: 24);
  static const int _maxCacheEntries = 500; // Increased cache size
  static Future<void>? _cacheLoadFuture;
  static Timer? _persistTimer;

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

  // Regex patterns for title normalization
  static final RegExp _yearParensRe =
      RegExp(r'\s*[\(\[\{](19|20)\d{2}[\)\]\}]\s*$');
  static final RegExp _yearSuffixRe = RegExp(r'[\s\-_:]+(19|20)\d{2}$');
  static final RegExp _qualityRe =
      RegExp(r'\b(4k|uhd|fhd|hd|sd|1080p|720p|2160p)\b', caseSensitive: false);
  static final RegExp _seasonEpisodeRe =
      RegExp(r'\bS\d{1,2}\s*[\-:\.]?\s*E\d{1,2}\b', caseSensitive: false);
  static final RegExp _episodePartRe = RegExp(
      r'\b(?:Ep|Episode|Part|Chapter|Pt)\.?\s*\d+\b',
      caseSensitive: false);
  static final RegExp _whitespaceRe = RegExp(r'\s+');

  static String _normalizeTitle(String title) {
    final aggressive = EPGMatchingUtils.isLikelyNewsTitle(title);
    var output = EPGMatchingUtils.normalizeTitleForLookup(
      title,
      aggressiveForNews: aggressive,
    );
    output = output.replaceAll(_yearParensRe, '');
    output = output.replaceAll(_yearSuffixRe, '');
    output = output.replaceAll(_qualityRe, '');
    output = output.replaceAll(_seasonEpisodeRe, '');
    output = output.replaceAll(_episodePartRe, '');
    output = output.replaceAll(_whitespaceRe, ' ').trim();
    return output;
  }

  static String _cacheKey(String prefix, String query, {int? year}) {
    final normalized = _normalizeTitle(query);
    return '$prefix:${normalized.toLowerCase().trim()}:${year ?? ''}';
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
    // persist asynchronously (debounced)
    _schedulePersist();
  }

  static void _schedulePersist() {
    _persistTimer?.cancel();
    _persistTimer = Timer(const Duration(seconds: 2), _persistCacheToDisk);
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
      final path = '${dir.path}/$_cacheFileName';

      // Create snapshot for isolate
      final Map<String, Map<String, dynamic>> snapshot = {};
      _cache.forEach((key, item) {
        snapshot[key] = {
          'data': item.data,
          'expiry': item.expiry.millisecondsSinceEpoch,
        };
      });

      // Run encoding and writing in background
      await Isolate.run(() async {
        final file = File(path);
        await file.writeAsString(json.encode(snapshot));
      });
    } catch (e) {
      // ignore disk write errors
    }
  }

  static Future<double?> getMovieRating(String title, {int? year}) async {
    await init();
    try {
      final normalizedTitle = _normalizeTitle(title);
      final cachedKey = _cacheKey('rating:movie', normalizedTitle, year: year);
      final cached = _getFromCache(cachedKey);
      if (cached != null && cached.containsKey('rating')) {
        return (cached['rating'] as num?)?.toDouble();
      }
      // Search for movie by title
      var searchUrl =
          '$_baseUrl/search/movie?api_key=$_apiKey&language=en-US&query=${Uri.encodeComponent(normalizedTitle)}';
      if (year != null) {
        searchUrl += '&year=$year';
      }

      final cacheKey = _apiRequestManager.createCacheKey('tmdb',
          {'method': 'getMovieRating', 'title': normalizedTitle, 'year': year});
      final response = await _apiRequestManager.execute(
          cacheKey, () => http.get(Uri.parse(searchUrl)));

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
      final normalizedTitle = _normalizeTitle(title);
      final cachedKey = _cacheKey('rating:tv', normalizedTitle, year: year);
      final cached = _getFromCache(cachedKey);
      if (cached != null && cached.containsKey('rating')) {
        return (cached['rating'] as num?)?.toDouble();
      }
      // Search for TV show by title
      var searchUrl =
          '$_baseUrl/search/tv?api_key=$_apiKey&language=en-US&query=${Uri.encodeComponent(normalizedTitle)}';
      if (year != null) {
        searchUrl += '&first_air_date_year=$year';
      }

      final cacheKey = _apiRequestManager.createCacheKey('tmdb', {
        'method': 'getTVShowRating',
        'title': normalizedTitle,
        'year': year
      });
      final response = await _apiRequestManager.execute(
          cacheKey, () => http.get(Uri.parse(searchUrl)));

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
      final normalizedTitle = _normalizeTitle(title);
      final cacheKey = _cacheKey('movie:details', normalizedTitle, year: year);
      final cached = _getFromCache(cacheKey);
      if (cached != null) return cached;

      final searchUrl =
          '$_baseUrl/search/movie?api_key=$_apiKey&language=en-US&query=${Uri.encodeComponent(normalizedTitle)}${year != null ? '&year=$year' : ''}';

      final requestCacheKey = _apiRequestManager.createCacheKey('tmdb', {
        'method': 'getMovieDetails',
        'title': normalizedTitle,
        'year': year
      });
      final response = await _apiRequestManager.execute(
          requestCacheKey, () => http.get(Uri.parse(searchUrl)));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;

        if (results.isNotEmpty) {
          // Find the best match by title similarity
          Map<String, dynamic>? bestMatch;
          double bestScore = -1.0;

          for (final candidate in results.take(5)) {
            final candTitle =
                (candidate['title'] ?? candidate['original_title'] ?? '')
                    .toString();
            final score = _tmdbTitleSimilarity(candTitle, normalizedTitle);
            if (score > bestScore) {
              bestScore = score;
              bestMatch = candidate as Map<String, dynamic>;
            }
          }

          if (bestMatch != null && bestScore > 0.4) {
            final movie = bestMatch;
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
                  ? '$_imageBaseUrl${movie['poster_path']}'
                  : null,
              'backdrop': movie['backdrop_path'] != null
                  ? '$_imageBaseUrl${movie['backdrop_path']}'
                  : null,
              'title': movie['title'] ?? movie['original_title'],
              'overview': movie['overview'] as String?,
              'release_date': movie['release_date'] as String?,
              'genres': genres.isNotEmpty ? genres : null,
              'tmdbId': movie['id'],
              'mediaType': 'movie',
            };
            _setCache(cacheKey, result);
            return result;
          }
        }
      }
    } catch (e) {
      debugLog('TMDB API error: $e');
    }

    return null;
  }

  static Future<Map<String, dynamic>?> getTVDetails(
    String title, {
    int? year,
  }) async {
    await init();
    try {
      final normalizedTitle = _normalizeTitle(title);
      final cacheKey = _cacheKey('tv:details', normalizedTitle, year: year);
      final cached = _getFromCache(cacheKey);
      if (cached != null) return cached;

      var searchUrl =
          '$_baseUrl/search/tv?api_key=$_apiKey&language=en-US&query=${Uri.encodeComponent(normalizedTitle)}';
      if (year != null) {
        searchUrl += '&first_air_date_year=$year';
      }

      final requestCacheKey = _apiRequestManager.createCacheKey('tmdb',
          {'method': 'getTVDetails', 'title': normalizedTitle, 'year': year});
      final response = await _apiRequestManager.execute(
          requestCacheKey, () => http.get(Uri.parse(searchUrl)));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;

        if (results.isNotEmpty) {
          // Find the best match by title similarity
          Map<String, dynamic>? bestMatch;
          double bestScore = -1.0;

          for (final candidate in results.take(5)) {
            final candTitle =
                (candidate['name'] ?? candidate['original_name'] ?? '')
                    .toString();
            final score = _tmdbTitleSimilarity(candTitle, normalizedTitle);
            if (score > bestScore) {
              bestScore = score;
              bestMatch = candidate as Map<String, dynamic>;
            }
          }

          if (bestMatch != null && bestScore > 0.4) {
            final show = bestMatch;
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
                  ? '$_imageBaseUrl${show['poster_path']}'
                  : null,
              'backdrop': show['backdrop_path'] != null
                  ? '$_imageBaseUrl${show['backdrop_path']}'
                  : null,
              'title': show['name'] ?? show['original_name'],
              'overview': show['overview'] as String?,
              'first_air_date': show['first_air_date'] as String?,
              'genres': genres.isNotEmpty ? genres : null,
              'tmdbId': show['id'],
              'mediaType': 'tv',
            };
            _setCache(cacheKey, result);
            return result;
          }
        }
      }
    } catch (e) {
      debugLog('TMDB API error: $e');
    }

    return null;
  }


  static Future<String?> getBestBackdrop(String title, {int? year}) =>
      tmdbGetBestBackdrop(title, year: year);
  static Future<Map<String, dynamic>?> getBestBackdropDetails(
    String title, {
    int? year,
  }) =>
      tmdbGetBestBackdropDetails(title, year: year);
  static Future<String?> getTitleLogo(String title, {int? year}) =>
      tmdbGetTitleLogo(title, year: year);
  static Future<Map<String, String?>> getBestBackdropBatch(
    List<String> titles, {
    int? year,
  }) =>
      tmdbGetBestBackdropBatch(titles, year: year);

  static Future<void> init() async {
    if (_cacheLoaded) return;
    _cacheLoadFuture ??= _loadCacheFromDisk();
    await _cacheLoadFuture;
  }
}
