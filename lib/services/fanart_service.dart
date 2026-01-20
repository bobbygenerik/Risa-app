import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iptv_player/config/fanart_config.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class FanartService {
  static const _baseUrl = 'https://webservice.fanart.tv/v3';

  // Preferred image types in order (landscape-oriented first)
  static const _tvImageKeys = [
    'tvbackground',      // Landscape backgrounds
    'showbackground',    // Alternative background key
    'tvbanner',          // Banners (landscape)
    'seasonbanner',      // Season banners
    'tvthumb',           // Thumbnails (usually landscape)
    'hdtvlogo',          // HD logos
    'clearlogo',         // Clear logos
  ];
  
  static const _movieImageKeys = [
    'moviebackground',   // Movie backgrounds
    'moviebanner',       // Banners
    'moviethumb',        // Thumbnails
    'hdmovielogo',       // HD logos
    'movielogo',         // Logos
  ];

  /// Returns the best full-bleed background/blur image for the given TMDB ID.
  /// Tries multiple image types in preference order, sorts by likes desc.
  static Future<String?> getBackdrop(int tmdbId, {required bool isTv}) async {
    if (FanartConfig.apiKey.isEmpty) return null;
    final endpoint = isTv ? 'tv/$tmdbId' : 'movies/$tmdbId';
    final url = '$_baseUrl/$endpoint?api_key=${FanartConfig.apiKey}';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) {
        debugLog('Fanart.tv: Request failed for $tmdbId (${response.statusCode})');
        return null;
      }
      final data = json.decode(response.body);
      if (data is! Map<String, dynamic>) return null;
      
      final keysToTry = isTv ? _tvImageKeys : _movieImageKeys;
      
      for (final key in keysToTry) {
        final list = data[key] as List?;
        if (list == null || list.isEmpty) continue;

        // Sort by likes desc
        final sorted = List<Map<String, dynamic>>.from(
          list.map((e) => e as Map<String, dynamic>),
        );
        sorted.sort((a, b) {
          final aLikes = int.tryParse(a['likes']?.toString() ?? '0') ?? 0;
          final bLikes = int.tryParse(b['likes']?.toString() ?? '0') ?? 0;
          return bLikes.compareTo(aLikes);
        });

        final best = sorted.first;
        final urlValue = best['url'] as String?;
        if (urlValue != null && urlValue.isNotEmpty) {
          debugLog('Fanart.tv: Found image type "$key" for $tmdbId');
          return urlValue;
        }
      }
      
      debugLog('Fanart.tv: No suitable images found for $tmdbId');
      return null;
    } catch (e, st) {
      debugLog('Fanart.tv lookup failed for $tmdbId: $e\n$st');
      return null;
    }
  }
}
