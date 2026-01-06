import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iptv_player/utils/debug_helper.dart';
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

  static String _normalizeTitle(String title) {
    var output = title.trim();
    output = output.replaceAll(RegExp(r'\s+'), ' ');
    return output;
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
      final searchUri = Uri.parse('$_baseUrl/search').replace(
        queryParameters: {
          'query': normalized,
          'type': 'series',
          'limit': '5',
        },
      );
      final searchResponse = await http.get(
        searchUri,
        headers: _authHeaders(token),
      );
      if (searchResponse.statusCode != 200) {
        debugLog('TVDB search failed: ${searchResponse.statusCode}');
        _cache[cacheKey] = _TvdbCacheItem(null, _expiry());
        return null;
      }

      final decoded = jsonDecode(searchResponse.body) as Map<String, dynamic>;
      final results = decoded['data'];
      if (results is List) {
        for (final entry in results) {
          if (entry is! Map<String, dynamic>) continue;
          final image = _extractImage(entry);
          if (image != null) {
            _cache[cacheKey] = _TvdbCacheItem(image, _expiry());
            return image;
          }
          final id = entry['id'];
          if (id is int) {
            final seriesImage = await _fetchSeriesImage(token, id);
            if (seriesImage != null) {
              _cache[cacheKey] = _TvdbCacheItem(seriesImage, _expiry());
              return seriesImage;
            }
          }
        }
      }
    } catch (e, st) {
      debugLog('TVDB lookup failed: $e\n$st');
    }

    _cache[cacheKey] = _TvdbCacheItem(null, _expiry());
    return null;
  }

  static Map<String, String> _authHeaders(String token) {
    return {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
  }

  static String? _extractImage(Map<String, dynamic> entry) {
    final candidates = [
      entry['image'],
      entry['image_url'],
      entry['banner'],
      entry['thumbnail'],
      entry['thumb'],
    ];
    for (final value in candidates) {
      if (value is String && value.trim().isNotEmpty) {
        return _normalizeImageUrl(value);
      }
    }
    return null;
  }

  static Future<String?> _fetchSeriesImage(String token, int id) async {
    try {
      final uri = Uri.parse('$_baseUrl/series/$id/extended');
      final response = await http.get(uri, headers: _authHeaders(token));
      if (response.statusCode != 200) return null;
      final decoded = jsonDecode(response.body) as Map<String, dynamic>;
      final data = decoded['data'];
      if (data is Map<String, dynamic>) {
        return _extractImage(data);
      }
    } catch (e) {
      debugLog('TVDB series lookup failed for $id: $e');
    }
    return null;
  }

  static String _normalizeImageUrl(String url) {
    if (url.startsWith('//')) {
      return 'https:$url';
    }
    return url;
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
