import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_shared_url_checks.dart';
import 'package:iptv_player/utils/artwork_validator.dart';

/// URL acceptance rules for hero backdrops only.
class HeroArtworkPolicy {
  const HeroArtworkPolicy();

  bool acceptsUrl(
    String? url,
    Channel channel, {
    required String source,
    String? programTitle,
    bool isEpgFallback = false,
    void Function(String message)? onDecision,
  }) {
    if (url == null || url.isEmpty) return false;
    if (!ArtworkSharedUrlChecks.passesCommon(
      url,
      channel,
      source: source,
      programTitle: programTitle,
      onDecision: onDecision,
    )) {
      return false;
    }

    void reject(String result) {
      onDecision?.call(
        'LiveTV artwork: source=$source program="${programTitle ?? "unknown"}" '
        'url=$url result=$result',
      );
    }

    final lower = url.toLowerCase();
    if (lower.contains('/logo.') ||
        lower.contains('/logo/') ||
        lower.contains('_logo.') ||
        lower.contains('-logo.')) {
      reject('reject_logo_path');
      return false;
    }
    if (!_isLikelyHeroBackdropUrl(url)) {
      reject('reject_not_hero_backdrop');
      return false;
    }
    if (!ArtworkValidator.isLikelyLandscapeUrl(url, strict: true)) {
      reject('reject_not_landscape');
      return false;
    }
    if (ArtworkValidator.isLikelySmallImage(url)) {
      reject('reject_small');
      return false;
    }
    return true;
  }

  static bool _isLikelyHeroBackdropUrl(String url) {
    final lower = url.toLowerCase();
    if (ArtworkValidator.isExplicitBackdropUrl(url)) return true;
    if (lower.contains('banner')) return true;
    if (lower.contains('thesportsdb.com')) return true;
    if (lower.contains('fanart.tv')) {
      if (lower.contains('thumb') ||
          lower.contains('clearlogo') ||
          lower.contains('hdlogo') ||
          lower.contains('clearart')) {
        return false;
      }
      return lower.contains('background') ||
          lower.contains('landscape') ||
          lower.contains('fanart');
    }
    if (ArtworkValidator.isLikelyTmsLandscapeEpg(url)) return true;
    if (lower.contains('image.tmdb.org')) {
      return !ArtworkValidator.isLikelyPosterUrl(url);
    }
    return ArtworkValidator.isLikelyLandscapeUrl(url, strict: true);
  }
}
