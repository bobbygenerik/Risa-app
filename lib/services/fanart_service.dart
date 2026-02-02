import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iptv_player/config/fanart_config.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class FanartService {
  static const _baseUrl = 'https://webservice.fanart.tv/v3';

  // Preferred image types in order (landscape-oriented first)
  static const _tvImageKeys = [
    'tvbackground', // Landscape backgrounds
    'showbackground', // Alternative background key
    'tvbanner', // Banners (landscape)
    'seasonbanner', // Season banners
    'tvthumb', // Thumbnails (usually landscape)
    'hdtvlogo', // HD logos
    'clearlogo', // Clear logos
  ];

  static const _movieImageKeys = [
    'moviebackground', // Movie backgrounds
    'moviebanner', // Banners
    'moviethumb', // Thumbnails
    'hdmovielogo', // HD logos
    'movielogo', // Logos
  ];

  static const _tvLogoKeys = [
    'hdtvlogo',
    'clearlogo',
  ];

  static const _movieLogoKeys = [
    'hdmovielogo',
    'movielogo',
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
        debugLog(
            'Fanart.tv: Request failed for $tmdbId (${response.statusCode})');
        return null;
      }
      final data = json.decode(response.body);
      if (data is! Map<String, dynamic>) return null;

      final keysToTry = isTv ? _tvImageKeys : _movieImageKeys;

      for (final key in keysToTry) {
        final list = data[key] as List?;
        if (list == null || list.isEmpty) continue;

        // O(n) max-finding instead of full sort
        Map<String, dynamic>? best;
        int bestLikes = -1;
        for (final e in list) {
          final m = e as Map<String, dynamic>;
          final likes = int.tryParse(m['likes']?.toString() ?? '0') ?? 0;
          if (likes > bestLikes) {
            bestLikes = likes;
            best = m;
          }
        }
        if (best == null) continue;

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

  /// Returns a title logo (clearlogo/hdlogo) for the given TMDB ID.
  static Future<String?> getTitleLogo(int tmdbId, {required bool isTv}) async {
    if (FanartConfig.apiKey.isEmpty) return null;
    final endpoint = isTv ? 'tv/$tmdbId' : 'movies/$tmdbId';
    final url = '$_baseUrl/$endpoint?api_key=${FanartConfig.apiKey}';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) {
        debugLog(
            'Fanart.tv: Request failed for $tmdbId (${response.statusCode})');
        return null;
      }
      final data = json.decode(response.body);
      if (data is! Map<String, dynamic>) return null;

      final keysToTry = isTv ? _tvLogoKeys : _movieLogoKeys;
      for (final key in keysToTry) {
        final list = data[key] as List?;
        if (list == null || list.isEmpty) continue;

        // O(n) max-finding instead of full sort
        Map<String, dynamic>? best;
        int bestLikes = -1;
        for (final e in list) {
          final m = e as Map<String, dynamic>;
          final likes = int.tryParse(m['likes']?.toString() ?? '0') ?? 0;
          if (likes > bestLikes) {
            bestLikes = likes;
            best = m;
          }
        }
        if (best == null) continue;

        final urlValue = best['url'] as String?;
        if (urlValue != null && urlValue.isNotEmpty) {
          debugLog('Fanart.tv: Found title logo type "$key" for $tmdbId');
          return urlValue;
        }
      }

      debugLog('Fanart.tv: No title logos found for $tmdbId');
      return null;
    } catch (e, st) {
      debugLog('Fanart.tv title logo lookup failed for $tmdbId: $e\n$st');
      return null;
    }
  }
}
