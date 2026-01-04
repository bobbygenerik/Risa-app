import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iptv_player/config/sportradar_config.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class _SportradarCacheEntry {
  final String? url;
  final DateTime expiresAt;
  const _SportradarCacheEntry(this.url, this.expiresAt);
}

/// Minimal Sportradar lookup helper; the API details below should be configured
/// via [SportradarConfig] once you have a valid key and endpoint.
class SportradarService {
  static final _apiKey = SportradarConfig.apiKey;
  static final _heroSearchUrlTemplate = SportradarConfig.heroSearchUrl;
  static const Duration _cacheTtl = Duration(hours: 1);
  static final Map<String, _SportradarCacheEntry> _cache = {};
  static bool _rateLimited = false;
  static DateTime? _rateLimitReset;

  static Future<String?> getHeroImage(String title, {String? sport}) async {
    if (_apiKey.isEmpty || _heroSearchUrlTemplate.isEmpty || title.isEmpty) {
      return null;
    }

    final normalizedSport = (sport ?? SportradarConfig.defaultSport).toLowerCase();
    if (_isCurrentlyRateLimited()) {
      debugLog('Sportradar: Rate limit reached, skipping request for "$title"');
      return null;
    }
    final searchUrl = _heroSearchUrlTemplate.replaceAll('{sport}', normalizedSport);
    final separator = searchUrl.contains('?') ? '&' : '?';
    final uri = Uri.tryParse(
      '$searchUrl${separator}api_key=$_apiKey&name=${Uri.encodeComponent(title)}',
    );
    if (uri == null) {
      debugLog('Sportradar: Invalid search URL template');
      return null;
    }
    final cacheKey = _cacheKey(normalizedSport, title);
    final cachedEntry = _cache[cacheKey];
    if (cachedEntry != null && cachedEntry.expiresAt.isAfter(DateTime.now())) {
      return cachedEntry.url;
    }

    try {
      final response = await http.get(uri);
      if (response.statusCode == 429) {
        debugLog('Sportradar: Rate limit response for "$title"');
        _recordRateLimitHeaders(response.headers, limited: true);
        return null;
      }
      if (response.statusCode != 200) {
        debugLog(
            'Sportradar: Search for "$title" returned ${response.statusCode}');
        return null;
      }
      _recordRateLimitHeaders(response.headers);
      final body = json.decode(response.body);
      final hero = _extractHeroImageUrl(body);
      if (hero != null) {
        debugLog('Sportradar: Found hero for "$title": $hero');
      }
      _cache[cacheKey] =
          _SportradarCacheEntry(hero, DateTime.now().add(_cacheTtl));
      return hero;
    } catch (e, st) {
      debugLog('Sportradar: Error searching artwork for "$title": $e\n$st');
      return null;
    }
  }

  static String? _extractHeroImageUrl(dynamic decoded) {
    if (decoded is! Map<String, dynamic>) return null;

    final candidateLists = _candidateLists(decoded);
    for (final candidate in candidateLists) {
      final url = _extractUrlFromMedia(candidate);
      if (url != null) {
        return url;
      }
    }
    return null;
  }

  static List<Map<String, dynamic>> _candidateLists(
      Map<String, dynamic> json) {
    const keys = ['events', 'matches', 'results', 'items', 'data'];
    final List<Map<String, dynamic>> candidates = [];
    for (final key in keys) {
      final entry = json[key];
      if (entry is List) {
        for (final item in entry) {
          if (item is Map<String, dynamic>) {
            candidates.add(item);
          }
        }
        if (candidates.isNotEmpty) {
          break;
        }
      }
    }
    return candidates;
  }

  static String? _extractUrlFromMedia(Map<String, dynamic> candidate) {
    final List<Map<String, dynamic>> pools = [];

    if (candidate['media'] is List) {
      pools.addAll((candidate['media'] as List)
          .whereType<Map<String, dynamic>>()
          .toList());
    }
    if (candidate['images'] is List) {
      pools.addAll((candidate['images'] as List)
          .whereType<Map<String, dynamic>>()
          .toList());
    }
    if (candidate['media_list'] is List) {
      pools.addAll((candidate['media_list'] as List)
          .whereType<Map<String, dynamic>>()
          .toList());
    }

    for (final mediaEntry in pools) {
      final url = _extractUrlFromEntry(mediaEntry);
      if (url != null) return url;
    }

    return _extractUrlFromEntry(candidate);
  }

  static String? _extractUrlFromEntry(Map<String, dynamic> entry) {
    for (final key in ['url', 'uri', 'href', 'image', 'link']) {
      final value = entry[key];
      if (value is String && value.isNotEmpty) {
        return value;
      }
    }
    return null;
  }

  static bool _isCurrentlyRateLimited() {
    if (!_rateLimited) return false;
    if (_rateLimitReset == null) return true;
    if (DateTime.now().isAfter(_rateLimitReset!)) {
      _rateLimited = false;
      _rateLimitReset = null;
      return false;
    }
    return true;
  }

  static void _recordRateLimitHeaders(Map<String, String> headers,
      {bool limited = false}) {
    final remainingHeader = headers['x-rate-limit-remaining'] ??
        headers['x-ratelimit-remaining'] ??
        headers['x-rate-limit'];
    final resetHeader = headers['x-rate-limit-reset'] ??
        headers['x-ratelimit-reset'] ??
        headers['x-rate_limit_reset'];

    if (remainingHeader != null) {
      final remaining = int.tryParse(remainingHeader);
      if (remaining != null && remaining <= 0) {
        _rateLimited = true;
      }
    }
    if (resetHeader != null) {
      final resetSeconds = int.tryParse(resetHeader);
      if (resetSeconds != null) {
        _rateLimitReset =
            DateTime.now().add(Duration(seconds: resetSeconds));
      }
    }

    if (limited && _rateLimitReset == null) {
      _rateLimitReset = DateTime.now().add(Duration(hours: 1));
      _rateLimited = true;
    }
  }

  static String _cacheKey(String sport, String title) {
    return '$sport:${title.toLowerCase().trim()}';
  }
}
