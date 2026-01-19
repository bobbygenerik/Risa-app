import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/config/tvdb_config.dart';

class _TvdbCacheItem {
  final String? imageUrl;
  final DateTime expiry;
  _TvdbCacheItem(this.imageUrl, this.expiry);
  bool get isExpired => DateTime.now().isAfter(expiry);
}

class TvdbService {
  static const String _baseUrl = 'https://api4.thetvdb.com/v4';
  static const Duration _defaultTtl = Duration(hours: 12);
  static String? _token;
  static DateTime? _tokenExpiry;
  static final Map<String, _TvdbCacheItem> _cache = {};

  // TVDB v4 artwork type constants
  static const int _kArtworkTypeBackground = 3;
  static const int _kArtworkTypeMovieBackground = 15;

  static String _normalizeTitle(String title) {
    // Use consolidated normalization from EPGMatchingUtils
    return EPGMatchingUtils.normalizeForArtwork(title);
  }

  static String _cacheKey(String title) {
    return _normalizeTitle(title).toLowerCase();
  }

  static Future<String?> getBestImage(String title) async {
    final normalized = _normalizeTitle(title);
    if (normalized.isEmpty) return null;

    final cacheKey = _cacheKey(normalized);
    final cached = _cache[cacheKey];
    if (cached != null && !cached.isExpired) {
      return cached.imageUrl;
    }

    final token = await _getToken();
    if (token == null || token.isEmpty) {
      _cache[cacheKey] = _TvdbCacheItem(null, _expiry());
      return null;
    }

    try {
      final seriesImage =
          await _searchBestImageByType(token, normalized, 'series');
      if (seriesImage != null) {
        _cache[cacheKey] = _TvdbCacheItem(seriesImage, _expiry());
        return seriesImage;
      }

      final movieImage =
          await _searchBestImageByType(token, normalized, 'movie');
      if (movieImage != null) {
        _cache[cacheKey] = _TvdbCacheItem(movieImage, _expiry());
        return movieImage;
      }
    } catch (e, st) {
      debugLog('TVDB lookup failed: $e\n$st');
    }

    _cache[cacheKey] = _TvdbCacheItem(null, _expiry());
    return null;
  }

  static Future<String?> _searchBestImageByType(
    String token,
    String title,
    String type,
  ) async {
    final searchUri = Uri.parse('$_baseUrl/search').replace(
      queryParameters: {
        'query': title,
        'type': type,
        'limit': '5',
      },
    );
    final searchResponse = await http.get(
      searchUri,
      headers: _authHeaders(token),
    );
    if (searchResponse.statusCode != 200) {
      debugLog('TVDB search failed ($type): ${searchResponse.statusCode}');
      return null;
    }

    final decoded = jsonDecode(searchResponse.body) as Map<String, dynamic>;
    final results = decoded['data'];
    if (results is List) {
      final normalizedTitle = _normalizeTitle(title);
      final isNews = EPGMatchingUtils.isLikelyNewsTitle(normalizedTitle);
      // Use length-aware thresholds: stricter for short titles to avoid false positives
      final baseThreshold = isNews ? 0.7 : 0.55;
      final shortTitleThreshold = isNews ? 0.85 : 0.80;
      for (final entry in results) {
        if (entry is! Map<String, dynamic>) continue;
        final candidateTitle = _extractTitle(entry);
        if (candidateTitle.isEmpty) continue;
        final normalizedCandidate = _normalizeTitle(candidateTitle);
        final score = EPGMatchingUtils.calculateSimilarity(
          normalizedTitle,
          normalizedCandidate,
        );
        // Require higher score for short titles (<=4 chars) to prevent false matches
        final minLength = normalizedTitle.length < normalizedCandidate.length
            ? normalizedTitle.length
            : normalizedCandidate.length;
        final minScore = minLength <= 4 ? shortTitleThreshold : baseThreshold;
        if (score < minScore) {
          continue;
        }
        final image = _extractImage(entry);
        if (image != null) {
          return image;
        }
        final id = entry['id'];
        if (id is int) {
          final seriesImage = await _fetchSeriesImage(token, id);
          if (seriesImage != null) {
            return seriesImage;
          }
          // Try movie endpoint if series fails
          if (type == 'movie') {
            final movieImage = await _fetchMovieImage(token, id);
            if (movieImage != null) {
              return movieImage;
            }
          }
        }
      }
    }
    return null;
  }

  static Map<String, String> _authHeaders(String token) {
    return {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
  }

  static String _extractTitle(Map<String, dynamic> entry) {
    final candidates = [
      entry['name'],
      entry['seriesName'],
      entry['title'],
      entry['originalName'],
      entry['translations'] is Map ? (entry['translations'] as Map)['eng'] : null,
    ];
    for (final value in candidates) {
      if (value is String && value.trim().isNotEmpty) {
        return value.trim();
      }
    }
    return '';
  }

  static String? _extractImage(Map<String, dynamic> entry) {
    final landscapeCandidates = [
      entry['banner'],
      entry['image'],
      entry['image_url'],
    ];
    for (final value in landscapeCandidates) {
      final normalized = _normalizeCandidate(value);
      if (normalized == null) continue;
      if (_isPosterPath(normalized)) continue;
      return normalized;
    }

    final fallbackCandidates = [
      entry['image'],
      entry['image_url'],
      entry['banner'],
      entry['thumbnail'],
      entry['thumb'],
    ];
    for (final value in fallbackCandidates) {
      final normalized = _normalizeCandidate(value);
      if (normalized == null) continue;
      return normalized;
    }
    return null;
  }

  static String? _normalizeCandidate(dynamic value) {
    if (value is! String) return null;
    if (value.trim().isEmpty) return null;
    final normalized = _normalizeImageUrl(value);
    if (_isMissingArtwork(normalized)) return null;
    return normalized;
  }

  static bool _isPosterPath(String url) {
    final lower = url.toLowerCase();
    return lower.contains('/banners/posters/') ||
        lower.contains('/banners/poster/');
  }

  /// Fetches best background artwork from TVDB v4 /artworks endpoint.
  /// Filters by type 3 (Background) or 15 (Movie Background), prefers higher score.
  static Future<String?> _fetchSeriesImage(String token, int id) async {
    try {
      final uri = Uri.parse('$_baseUrl/series/$id/artworks');
      final response = await http.get(uri, headers: _authHeaders(token));
      if (response.statusCode != 200) return null;
      final decoded = jsonDecode(response.body) as Map<String, dynamic>;
      final data = decoded['data'];
      if (data is Map<String, dynamic>) {
        final artworks = data['artworks'] as List?;
        if (artworks != null && artworks.isNotEmpty) {
          return _selectBestArtwork(artworks);
        }
      }
    } catch (e) {
      debugLog('TVDB series artwork lookup failed for $id: $e');
    }
    return null;
  }

  /// Fetches best background artwork from TVDB v4 movie artworks endpoint.
  static Future<String?> _fetchMovieImage(String token, int id) async {
    try {
      final uri = Uri.parse('$_baseUrl/movies/$id/artworks');
      final response = await http.get(uri, headers: _authHeaders(token));
      if (response.statusCode != 200) return null;
      final decoded = jsonDecode(response.body) as Map<String, dynamic>;
      final data = decoded['data'];
      if (data is Map<String, dynamic>) {
        final artworks = data['artworks'] as List?;
        if (artworks != null && artworks.isNotEmpty) {
          return _selectBestArtwork(artworks);
        }
      }
    } catch (e) {
      debugLog('TVDB movie artwork lookup failed for $id: $e');
    }
    return null;
  }

  /// Selects best artwork from list: filters by type 3 or 15, prefers higher score.
  static String? _selectBestArtwork(List<dynamic> artworks) {
    final backgrounds = artworks.where((art) {
      if (art is! Map<String, dynamic>) return false;
      final type = art['type'] as int?;
      return type == _kArtworkTypeBackground ||
          type == _kArtworkTypeMovieBackground;
    }).toList();

    if (backgrounds.isEmpty) return null;

    // Sort by score desc
    backgrounds.sort((a, b) {
      final aScore = (a['score'] as num?)?.toDouble() ?? 0.0;
      final bScore = (b['score'] as num?)?.toDouble() ?? 0.0;
      return bScore.compareTo(aScore);
    });

    final best = backgrounds.first as Map<String, dynamic>;
    final image = best['image'] as String?;
    if (image != null && image.isNotEmpty) {
      return _normalizeImageUrl(image);
    }
    return null;
  }

  static String _normalizeImageUrl(String url) {
    if (url.startsWith('//')) {
      return 'https:$url';
    }
    return url;
  }

  static bool _isMissingArtwork(String url) {
    final lower = url.toLowerCase();
    return lower.contains('/banners/images/missing/') ||
        lower.contains('missing/series.jpg') ||
        lower.contains('missing/fanart.jpg');
  }

  static DateTime _expiry() => DateTime.now().add(_defaultTtl);

  static Future<String?> _getToken() async {
    if (TvdbConfig.apiKey.isEmpty) return null;
    if (_token != null && _tokenExpiry != null) {
      if (DateTime.now().isBefore(_tokenExpiry!)) {
        return _token;
      }
    }

    try {
      final uri = Uri.parse('$_baseUrl/login');
      final response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'apikey': TvdbConfig.apiKey}),
      );
      if (response.statusCode != 200) {
        debugLog('TVDB login failed: ${response.statusCode}');
        return null;
      }
      final decoded = jsonDecode(response.body) as Map<String, dynamic>;
      final data = decoded['data'];
      if (data is Map<String, dynamic>) {
        final token = data['token'];
        if (token is String && token.isNotEmpty) {
          _token = token;
          _tokenExpiry = DateTime.now().add(const Duration(hours: 22));
          return _token;
        }
      }
    } catch (e, st) {
      debugLog('TVDB login error: $e\n$st');
    }
    return null;
  }
}
