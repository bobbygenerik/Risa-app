import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iptv_player/config/omdb_config.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Thin wrapper around OMDb for fallback artwork lookups.
class OmdbService {
  /// Attempts to find a suitable poster/backdrop for the given title.
  static Future<String?> getHeroImage(String title) async {
    final seriesImage = await _fetchPoster(title, type: 'series');
    if (seriesImage != null) return seriesImage;
    return _fetchPoster(title, type: 'movie');
  }

  /// Reuses the same list of posters for logo fallbacks.
  static Future<String?> getLogo(String title) async => getHeroImage(title);

  static Future<String?> _fetchPoster(String title, {String type = 'movie'}) async {
    if (title.isEmpty || OmdbConfig.apiKey.isEmpty) return null;
    final encoded = Uri.encodeComponent(title);
    final uri = Uri.parse(
      '${OmdbConfig.baseUrl}/?apikey=${OmdbConfig.apiKey}&type=$type&t=$encoded',
    );
    try {
      final response = await http.get(uri);
      if (response.statusCode != 200) {
        debugLog('OMDb lookup failed ($type) for "$title": ${response.statusCode}');
        return null;
      }
      final data = json.decode(response.body);
      if (data['Response'] != 'True') return null;
      final poster = (data['Poster'] as String?)?.trim();
      if (poster == null || poster.isEmpty || poster == 'N/A') {
        return null;
      }
      return poster;
    } catch (e, st) {
      debugLog('OMDb lookup error for "$title": $e\n$st');
      return null;
    }
  }
}
