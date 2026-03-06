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
  // Type 1: Banner, Type 2: Poster, Type 3: Background/Fanart, Type 6: Season Banner
  // Type 7: Season Poster, Type 11: ClearArt, Type 12: ClearLogo
  // Type 14: Icon, Type 15: Movie Background, Type 22: Clearart
  static const int _kArtworkTypeBanner = 1;
  static const int _kArtworkTypeBackground = 3;
  static const int _kArtworkTypeSeasonBanner = 6;
  static const int _kArtworkTypeMovieBackground = 15;
  
  // Preferred types for hero images (landscape-oriented backgrounds)
  static const List<int> _kPreferredHeroTypes = [
    _kArtworkTypeBackground,
    _kArtworkTypeMovieBackground,
  ];
  
  // Fallback landscape types when no backgrounds available
  static const List<int> _kFallbackLandscapeTypes = [
    _kArtworkTypeBanner,
    _kArtworkTypeSeasonBanner,
  ];

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
      final baseThreshold = isNews ? 70.0 : 55.0;
      final shortTitleThreshold = isNews ? 85.0 : 80.0;
      final titleTokens =
          EPGMatchingUtils.tokenizeForFuzzyMatch(normalizedTitle);
      for (final entry in results) {
        if (entry is! Map<String, dynamic>) continue;
        final candidateTitle = _extractTitle(entry);
        if (candidateTitle.isEmpty) continue;
        final normalizedCandidate = _normalizeTitle(candidateTitle);
        final candidateTokens =
            EPGMatchingUtils.tokenizeForFuzzyMatch(normalizedCandidate);
        final score = EPGMatchingUtils.scoreFuzzyMatch(
          normalizedTitle,
          normalizedCandidate,
          titleTokens,
          candidateTokens,
        );
        // Require higher score for short titles (<=4 chars) to prevent false matches
        final minLength = normalizedTitle.length < normalizedCandidate.length
            ? normalizedTitle.length
            : normalizedCandidate.length;
        final minScore = minLength <= 4 ? shortTitleThreshold : baseThreshold;
        if (score < minScore) {
          continue;
        }
        debugLog('TVDB: Match found "$candidateTitle" (score: ${score.toStringAsFixed(2)}) for "$title"');
        final image = _extractImage(entry);
        if (image != null) {
          debugLog('TVDB: Using inline image from search result');
          return image;
        }
        // Try to extract ID - could be 'id', 'tvdb_id', or nested in 'objectID'
        final id = _extractId(entry);
        if (id != null) {
          debugLog('TVDB: Fetching artworks for $type ID $id');
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
          debugLog('TVDB: No artwork found for ID $id, trying next result');
        } else {
          debugLog('TVDB: No ID found in search result entry');
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

  /// Extracts TVDB ID from search result entry.
  /// The ID can be in various fields depending on API version.
  static final RegExp _trailingDigitsRe = RegExp(r'(\d+)$');
  static final RegExp _digitsRe = RegExp(r'(\d+)');

  static int? _extractId(Map<String, dynamic> entry) {
    // Direct 'id' field (most common)
    final id = entry['id'];
    if (id is int) return id;
    if (id is String) {
      // TVDB v4 search returns string IDs like "series-12345"
      final match = _trailingDigitsRe.firstMatch(id);
      if (match != null) {
        return int.tryParse(match.group(1)!);
      }
    }
    // Fallback fields
    final tvdbId = entry['tvdb_id'] ?? entry['tvdbId'];
    if (tvdbId is int) return tvdbId;
    if (tvdbId is String) return int.tryParse(tvdbId);
    
    // ObjectID field (used in some responses)
    final objectId = entry['objectID'];
    if (objectId is String) {
      final match = _digitsRe.firstMatch(objectId);
      if (match != null) {
        return int.tryParse(match.group(1)!);
      }
    }
    return null;
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
    // First pass: prefer explicit landscape candidates, skip posters
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

    // Second pass: try remaining fields BUT still filter out posters
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
      // Always skip poster paths — they are portrait-oriented
      if (_isPosterPath(normalized)) continue;
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
        lower.contains('/banners/poster/') ||
        lower.contains('/posters/') ||
        lower.contains('type=poster') ||
        lower.contains('/portrait/');
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

  /// Selects best artwork from list: filters by preferred types first, then fallback types.
  /// Handles TVDB v4 type field which can be an int OR an object with 'id' field.
  static String? _selectBestArtwork(List<dynamic> artworks) {
    // Helper to extract type ID from artwork entry
    int? getTypeId(Map<String, dynamic> art) {
      final typeField = art['type'];
      if (typeField is int) return typeField;
      if (typeField is Map<String, dynamic>) {
        final id = typeField['id'];
        if (id is int) return id;
      }
      return null;
    }
    
    // First try preferred hero types (backgrounds)
    final backgrounds = artworks.where((art) {
      if (art is! Map<String, dynamic>) return false;
      final type = getTypeId(art);
      return type != null && _kPreferredHeroTypes.contains(type);
    }).toList();

    if (backgrounds.isNotEmpty) {
      // Sort by score desc
      backgrounds.sort((a, b) {
        final aScore = ((a as Map)['score'] as num?)?.toDouble() ?? 0.0;
        final bScore = ((b as Map)['score'] as num?)?.toDouble() ?? 0.0;
        return bScore.compareTo(aScore);
      });

      final best = backgrounds.first as Map<String, dynamic>;
      final image = best['image'] as String?;
      if (image != null && image.isNotEmpty && !_isMissingArtwork(image)) {
        debugLog('TVDB: Found background artwork type ${getTypeId(best)}');
        return _normalizeImageUrl(image);
      }
    }
    
    // Fallback to banner types (still landscape-oriented)
    final banners = artworks.where((art) {
      if (art is! Map<String, dynamic>) return false;
      final type = getTypeId(art);
      return type != null && _kFallbackLandscapeTypes.contains(type);
    }).toList();
    
    if (banners.isNotEmpty) {
      banners.sort((a, b) {
        final aScore = ((a as Map)['score'] as num?)?.toDouble() ?? 0.0;
        final bScore = ((b as Map)['score'] as num?)?.toDouble() ?? 0.0;
        return bScore.compareTo(aScore);
      });
      
      final best = banners.first as Map<String, dynamic>;
      final image = best['image'] as String?;
      if (image != null && image.isNotEmpty && !_isMissingArtwork(image)) {
        debugLog('TVDB: Falling back to banner artwork type ${getTypeId(best)}');
        return _normalizeImageUrl(image);
      }
    }
    
    // Last resort: any artwork that isn't a poster or missing
    for (final art in artworks) {
      if (art is! Map<String, dynamic>) continue;
      final type = getTypeId(art);
      // Skip posters (type 2, 7)
      if (type == 2 || type == 7) continue;
      final image = art['image'] as String?;
      if (image != null && image.isNotEmpty && !_isMissingArtwork(image) && !_isPosterPath(image)) {
        debugLog('TVDB: Using any available artwork type $type');
        return _normalizeImageUrl(image);
      }
    }

    debugLog('TVDB: No suitable artwork found in ${artworks.length} items');
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
