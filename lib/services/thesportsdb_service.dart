import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iptv_player/config/thesportsdb_config.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class _TheSportsDbCacheEntry {
  final String? url;
  final DateTime expiresAt;
  const _TheSportsDbCacheEntry(this.url, this.expiresAt);
}

/// Thin wrapper over TheSportsDB event search APIs for artwork.
class TheSportsDbService {
  static final _searchUrlTemplate = TheSportsDbConfig.searchUrl;
  static final _apiKey = TheSportsDbConfig.apiKey;
  static const Duration _cacheTtl = Duration(hours: 2);
  static final Map<String, _TheSportsDbCacheEntry> _cache = {};

  static Future<String?> getHeroImage(String title) async {
    if (title.isEmpty || _searchUrlTemplate.isEmpty) return null;
    final cacheKey = title.toLowerCase().trim();
    final cached = _cache[cacheKey];
    if (cached != null && cached.expiresAt.isAfter(DateTime.now())) {
      debugLog('TheSportsDb: Cache hit for "$title"');
      return cached.url;
    }

    final searchUrl = _searchUrlTemplate.replaceAll('{apikey}', _apiKey);
    final uri = Uri.tryParse('$searchUrl?e=${Uri.encodeComponent(title)}');
    if (uri == null) {
      debugLog('TheSportsDb: Invalid search URL for "$title"');
      return null;
    }

    try {
      final response = await http.get(uri);
      if (response.statusCode != 200) {
        debugLog(
            'TheSportsDb: Search for "$title" failed (${response.statusCode})');
        _cache[cacheKey] =
            _TheSportsDbCacheEntry(null, DateTime.now().add(_cacheTtl));
        return null;
      }
      final body = json.decode(response.body);
      final hero = _extractHeroFromResponse(body);
      _cache[cacheKey] = _TheSportsDbCacheEntry(
        hero,
        DateTime.now().add(_cacheTtl),
      );
      if (hero != null) {
        debugLog('TheSportsDb: Found hero for "$title": $hero');
      }
      return hero;
    } catch (e, st) {
      debugLog('TheSportsDb: Error searching "$title": $e\n$st');
      return null;
    }
  }

  static String? _extractHeroFromResponse(dynamic decoded) {
    if (decoded is! Map<String, dynamic>) return null;
    final events = decoded['event'] as List<dynamic>?;
    if (events == null || events.isEmpty) return null;
    for (final raw in events) {
      if (raw is! Map<String, dynamic>) continue;
      final thumb = (raw['strFanart'] as String?) ?? raw['strThumb'] as String?;
      if (thumb != null && thumb.isNotEmpty) {
        return thumb;
      }
    }
    return null;
  }
}
