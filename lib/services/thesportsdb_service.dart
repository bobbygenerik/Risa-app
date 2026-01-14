import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iptv_player/config/thesportsdb_config.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class _TheSportsDbCacheEntry {
  final String? url;
  final DateTime expiresAt;
  const _TheSportsDbCacheEntry(this.url, this.expiresAt);
}

/// Thin wrapper over TheSportsDB APIs for event and team artwork.
class TheSportsDbService {
  static final _searchUrlTemplate = TheSportsDbConfig.searchUrl;
  static final _apiKey = TheSportsDbConfig.apiKey;
  static const Duration _cacheTtl = Duration(hours: 2);
  static final Map<String, _TheSportsDbCacheEntry> _cache = {};
  static const String _baseUrl = 'https://www.thesportsdb.com/api/v1/json';

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
      if (hero != null) {
        _cache[cacheKey] = _TheSportsDbCacheEntry(
          hero,
          DateTime.now().add(_cacheTtl),
        );
        debugLog('TheSportsDb: Found hero for "$title": $hero');
        return hero;
      }

      // Fallback: try team lookup if event search fails
      final teamHero = await _tryTeamLookup(title);
      _cache[cacheKey] = _TheSportsDbCacheEntry(
        teamHero,
        DateTime.now().add(_cacheTtl),
      );
      if (teamHero != null) {
        debugLog('TheSportsDb: Found team hero for "$title": $teamHero');
      }
      return teamHero;
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
      // Prefer strFanart, fallback to strThumb, then strPoster
      final fanart = raw['strFanart'] as String?;
      if (fanart != null && fanart.isNotEmpty) return fanart;
      final thumb = raw['strThumb'] as String?;
      if (thumb != null && thumb.isNotEmpty) return thumb;
      final poster = raw['strPoster'] as String?;
      if (poster != null && poster.isNotEmpty) return poster;
    }
    return null;
  }

  /// Attempts to find team artwork by searching for team name.
  /// Uses strTeamFanart1-4 and strStadium when available.
  static Future<String?> _tryTeamLookup(String query) async {
    if (_apiKey.isEmpty) return null;
    try {
      final uri = Uri.parse(
          '$_baseUrl/$_apiKey/searchteams.php?t=${Uri.encodeComponent(query)}');
      final response = await http.get(uri);
      if (response.statusCode != 200) return null;
      final body = json.decode(response.body);
      if (body is! Map<String, dynamic>) return null;
      final teams = body['teams'] as List<dynamic>?;
      if (teams == null || teams.isEmpty) return null;
      for (final raw in teams) {
        if (raw is! Map<String, dynamic>) continue;
        // Try fanart fields first (strTeamFanart1-4)
        for (var i = 1; i <= 4; i++) {
          final fanart = raw['strTeamFanart$i'] as String?;
          if (fanart != null && fanart.isNotEmpty) return fanart;
        }
        // Fallback to stadium
        final stadium = raw['strStadium'] as String?;
        if (stadium != null && stadium.isNotEmpty) return stadium;
        // Last resort: team badge
        final badge = raw['strTeamBadge'] as String?;
        if (badge != null && badge.isNotEmpty) return badge;
      }
    } catch (e) {
      debugLog('TheSportsDb: Team lookup failed for "$query": $e');
    }
    return null;
  }
}
