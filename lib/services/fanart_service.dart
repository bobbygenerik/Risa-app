import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iptv_player/config/fanart_config.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class FanartService {
  static const _baseUrl = 'https://webservice.fanart.tv/v3';

  /// Returns the first full-bleed background/blur image for the given TMDB ID.
  static Future<String?> getBackdrop(int tmdbId, {required bool isTv}) async {
    if (FanartConfig.apiKey.isEmpty) return null;
    final endpoint = isTv ? 'tv/$tmdbId' : 'movies/$tmdbId';
    final url = '$_baseUrl/$endpoint?api_key=${FanartConfig.apiKey}';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) return null;
      final data = json.decode(response.body);
      final key = isTv ? 'tvbackground' : 'moviebackground';
      final list = data[key] as List?;
      if (list == null || list.isEmpty) return null;
      final first = list.first;
      final urlValue = first['url'] as String?;
      if (urlValue == null || urlValue.isEmpty) return null;
      return urlValue;
    } catch (e, st) {
      debugLog('Fanart.tv lookup failed for $tmdbId: $e\n$st');
      return null;
    }
  }
}
