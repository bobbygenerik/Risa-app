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

final _apiRequestManager = ApiRequestManager();

class _CacheItem {
  final Map<String, dynamic> data;
  final DateTime expiry;
  _CacheItem(this.data, this.expiry);
  bool get isExpired => DateTime.now().isAfter(expiry);
}

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
            final score = _titleSimilarity(candTitle, normalizedTitle);
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
            final score = _titleSimilarity(candTitle, normalizedTitle);
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
        debugLog('TMDB miss for "$normalizedTitle", trying sports heuristics.');
        details ??= await _tryTeamHeuristic(normalizedTitle, year);
        if (_hasArtwork(details)) {
          debugLog(
              'Team heuristic returned artwork for "$normalizedTitle": ${details!['backdrop'] ?? details['poster']}');
        }
      } else {
        debugLog(
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

  /// Returns image + metadata for a given title (for blacklist/validation use cases).
  static Future<Map<String, dynamic>?> getBestBackdropDetails(
    String title, {
    int? year,
  }) async {
    await init();
    final normalizedTitle = _normalizeTitle(title);
    final cacheKey = _cacheKey('art:bestmeta', normalizedTitle, year: year);
    final cached = _getFromCache(cacheKey);
    if (cached != null && cached.containsKey('image')) {
      return cached;
    }

    var details = await _resolveTmdbBackdrop(normalizedTitle, year);
    if (!_hasArtwork(details)) {
      details ??= await _tryTeamHeuristic(normalizedTitle, year);
    }

    final image = _extractBackdropUrl(details);
    final result = {
      'image': image,
      'title': details?['title'],
      'mediaType': details?['mediaType'],
      'genres': details?['genres'],
    };
    _setCache(
      cacheKey,
      result,
      ttl: image == null ? const Duration(hours: 1) : null,
    );
    return result;
  }

  static Future<Map<String, dynamic>?> _resolveTmdbBackdrop(
      String normalizedTitle, int? year) async {
    Map<String, dynamic>? details;
    final tvTitle = normalizedTitle.length <= 4
        ? '$normalizedTitle channel'
        : normalizedTitle;
    details = await getTVDetails(tvTitle, year: year);
    details ??= await getMovieDetails(normalizedTitle, year: year);

    if (details != null) {
      final tmdbId = details['tmdbId'] as int?;
      final mediaType = details['mediaType'] as String?;
      final hasBackdrop =
          (details['backdrop'] as String?)?.trim().isNotEmpty == true;

      // If TMDB only has a poster, still try Fanart for real backdrops.
      if (!hasBackdrop && tmdbId != null && mediaType != null) {
        final fanartImage = await FanartService.getBackdrop(
          tmdbId,
          isTv: mediaType == 'tv',
        );
        if (fanartImage != null) {
          details['backdrop'] = fanartImage;
          debugLog('Fanart provided art for "$normalizedTitle": $fanartImage');
        }
      }

      if (tmdbId != null && mediaType != null) {
        final tmdbBackdrop = await _getHighResBackdrop(tmdbId, mediaType);
        if (tmdbBackdrop != null && tmdbBackdrop.isNotEmpty) {
          details['backdrop'] = tmdbBackdrop;
        }
      }

      if (!_hasArtwork(details)) {
        final companyLogo = await _fetchCompanyLogo(normalizedTitle);
        if (companyLogo != null) {
          details['backdrop'] = companyLogo;
        }
      }
    }

    return details;
  }

  static bool _hasArtwork(Map<String, dynamic>? details) {
    if (details == null) return false;
    final backdrop = (details['backdrop'] as String?)?.trim();
    if (backdrop != null && backdrop.isNotEmpty) return true;
    final poster = (details['poster'] as String?)?.trim();
    return poster != null && poster.isNotEmpty;
  }

  static String? _extractBackdropUrl(Map<String, dynamic>? details) {
    if (details == null) return null;
    final backdrop = _resizeTmdbImageUrl(
      (details['backdrop'] as String?)?.trim(),
      isBackdrop: true,
    );
    if (backdrop != null && backdrop.isNotEmpty) return backdrop;

    // Only return poster if it's explicitly allowed or high-quality.
    // We append a hint so the UI knows it's a poster.
    final poster = _resizeTmdbImageUrl(
      (details['poster'] as String?)?.trim(),
      isBackdrop: false,
    );
    if (poster != null && poster.isNotEmpty) {
      // If it contains "poster" or common poster patterns, keep it but
      // the UI will handle it via _isLikelyPosterUrl.
      return poster;
    }
    return null;
  }

  static String? _resizeTmdbImageUrl(String? url, {required bool isBackdrop}) {
    if (url == null || url.isEmpty) return url;
    final size = isBackdrop ? 'w1280' : 'w780';
    try {
      final uri = Uri.parse(url);
      if (!uri.host.contains('image.tmdb.org')) return url;
      final segments = uri.pathSegments.toList();
      if (segments.length >= 3 && segments[0] == 't' && segments[1] == 'p') {
        segments[2] = size;
        return uri.replace(pathSegments: segments).toString();
      }
    } catch (_) {}
    return url;
  }

  static double _titleSimilarity(String s1, String s2) {
    final t1 = s1.toLowerCase().trim();
    final t2 = s2.toLowerCase().trim();
    if (t1 == t2) return 1.0;
    if (t1.contains(t2) || t2.contains(t1)) return 0.8;
    // Simple word match ratio
    final words1 = t1.split(RegExp(r'\s+')).toSet();
    final words2 = t2.split(RegExp(r'\s+')).toSet();
    if (words1.isEmpty || words2.isEmpty) return 0.0;
    final intersection = words1.intersection(words2);
    return intersection.length / math.max(words1.length, words2.length);
  }

  /// Fetches high-res backdrop from TMDB /images endpoint.
  /// Filters by include_image_language=null,en; enforces min 1920x1080;
  /// prefers aspect ratio > 1.7; sorts by vote_average desc then vote_count desc.
  static Future<String?> _getHighResBackdrop(
      int tmdbId, String mediaType) async {
    final typePath = mediaType == 'tv' ? 'tv' : 'movie';
    final url =
        '$_baseUrl/$typePath/$tmdbId/images?api_key=$_apiKey&include_image_language=null,en';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) return null;
      final data = json.decode(response.body) as Map<String, dynamic>;
      final available = (data['backdrops'] as List?) ?? [];
      if (available.isEmpty) return null;

      // Filter: iso_639_1 == null or 'en', min 1920x1080
      final filtered = available.where((entry) {
        final lang = entry['iso_639_1'] as String?;
        if (lang != null && lang != 'en') return false;
        final width = (entry['width'] as int?) ?? 0;
        final height = (entry['height'] as int?) ?? 0;
        return width >= 1920 && height >= 1080;
      }).toList();

      if (filtered.isEmpty) return null;

      // Sort: prefer aspect ratio > 1.7, then vote_average desc, then vote_count desc
      filtered.sort((a, b) {
        final aw = (a['width'] as int?) ?? 1;
        final ah = (a['height'] as int?) ?? 1;
        final bw = (b['width'] as int?) ?? 1;
        final bh = (b['height'] as int?) ?? 1;
        final aAspect = aw / ah;
        final bAspect = bw / bh;
        final aWide = aAspect > 1.7 ? 1 : 0;
        final bWide = bAspect > 1.7 ? 1 : 0;
        if (aWide != bWide) return bWide.compareTo(aWide);
        final aVoteAvg = (a['vote_average'] as num?)?.toDouble() ?? 0.0;
        final bVoteAvg = (b['vote_average'] as num?)?.toDouble() ?? 0.0;
        if ((bVoteAvg - aVoteAvg).abs() > 0.01) {
          return bVoteAvg.compareTo(aVoteAvg);
        }
        final aVoteCount = (a['vote_count'] as int?) ?? 0;
        final bVoteCount = (b['vote_count'] as int?) ?? 0;
        return bVoteCount.compareTo(aVoteCount);
      });

      final best = filtered.first;
      final filePath = (best['file_path'] as String?)?.trim();
      if (filePath != null && filePath.isNotEmpty) {
        return _resizeTmdbImageUrl('$_imageBaseUrl$filePath', isBackdrop: true);
      }
    } catch (e, st) {
      debugLog('TMDB image lookup failed for $mediaType/$tmdbId: $e\n$st');
    }
    return null;
  }

  static Future<String?> _fetchCompanyLogo(String query) async {
    try {
      final searchUrl =
          '$_baseUrl/search/company?api_key=$_apiKey&query=${Uri.encodeComponent(query)}';
      final response = await http.get(Uri.parse(searchUrl));
      if (response.statusCode == 200) {
        final companyData = json.decode(response.body);
        final companyResults = companyData['results'] as List? ?? [];
        if (companyResults.isNotEmpty) {
          final company = companyResults.first;
          final logoPath = company['logo_path'] as String?;
          if (logoPath != null && logoPath.isNotEmpty) {
            return 'https://image.tmdb.org/t/p/w500$logoPath';
          }
        }
      }
    } catch (e) {
      debugLog('Company logo lookup failed for "$query": $e');
    }
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

  /// Returns the title logo (clearart) URL for a given title from TMDB.
  /// Prefers TV results first, falling back to movie matches.
  static Future<String?> getTitleLogo(String title, {int? year}) async {
    await init();
    final normalizedTitle = _normalizeTitle(title);
    final cacheKey = _cacheKey('logo:title', normalizedTitle, year: year);
    final cached = _getFromCache(cacheKey);
    if (cached != null && cached.containsKey('logo')) {
      return (cached['logo'] as String?)?.isNotEmpty == true
          ? cached['logo'] as String
          : null;
    }

    try {
      String? logoUrl;

      // Try TV first
      final tvSearchUrl =
          '$_baseUrl/search/tv?api_key=$_apiKey&language=en-US&query=${Uri.encodeComponent(normalizedTitle)}${year != null ? '&first_air_date_year=$year' : ''}';
      final tvResponse = await http.get(Uri.parse(tvSearchUrl));
      if (tvResponse.statusCode == 200) {
        final tvData = json.decode(tvResponse.body);
        final tvResults = tvData['results'] as List;
        if (tvResults.isNotEmpty) {
          final tvId = tvResults.first['id'];
          final imagesUrl =
              '$_baseUrl/tv/$tvId/images?api_key=$_apiKey&include_image_language=en,null';
          final imagesResponse = await http.get(Uri.parse(imagesUrl));
          if (imagesResponse.statusCode == 200) {
            final imagesData = json.decode(imagesResponse.body);
            final logos = imagesData['logos'] as List? ?? [];
            if (logos.isNotEmpty) {
              final logoPath = logos.first['file_path'] as String?;
              if (logoPath != null) {
                logoUrl = 'https://image.tmdb.org/t/p/original$logoPath';
              }
            }
          }
        }
      }

      // Try Movie if TV didn't find a logo
      if (logoUrl == null) {
        final movieSearchUrl =
            '$_baseUrl/search/movie?api_key=$_apiKey&language=en-US&query=${Uri.encodeComponent(normalizedTitle)}${year != null ? '&year=$year' : ''}';
        final movieResponse = await http.get(Uri.parse(movieSearchUrl));
        if (movieResponse.statusCode == 200) {
          final movieData = json.decode(movieResponse.body);
          final movieResults = movieData['results'] as List;
          if (movieResults.isNotEmpty) {
            final movieId = movieResults.first['id'];
            final imagesUrl =
                '$_baseUrl/movie/$movieId/images?api_key=$_apiKey&include_image_language=en,null';
            final imagesResponse = await http.get(Uri.parse(imagesUrl));
            if (imagesResponse.statusCode == 200) {
              final imagesData = json.decode(imagesResponse.body);
              final logos = imagesData['logos'] as List? ?? [];
              if (logos.isNotEmpty) {
                final logoPath = logos.first['file_path'] as String?;
                if (logoPath != null) {
                  logoUrl = 'https://image.tmdb.org/t/p/original$logoPath';
                }
              }
            }
          }
        }
      }

      // Cache the result (shorter TTL for misses)
      _setCache(
        cacheKey,
        {'logo': logoUrl ?? ''},
        ttl: logoUrl == null ? const Duration(hours: 1) : null,
      );

      if (logoUrl != null) {
        debugLog('TMDB found title logo for "$normalizedTitle": $logoUrl');
      } else {
        debugLog('No title logo found for "$normalizedTitle"');
      }

      return logoUrl;
    } catch (e) {
      debugLog('TMDB getTitleLogo error for "$title": $e');
      return null;
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
