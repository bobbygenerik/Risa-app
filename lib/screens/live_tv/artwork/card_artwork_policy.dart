import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_shared_url_checks.dart';
import 'package:iptv_player/screens/live_tv/artwork_url_guard.dart';
import 'package:iptv_player/utils/artwork_validator.dart';

/// URL acceptance rules for channel row card thumbnails.
/// Cards never show posters, portraits, or channel logos as cover art.
class CardArtworkPolicy {
  const CardArtworkPolicy();

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

    if (!_isLandscapeCardArt(url)) {
      reject('reject_not_landscape');
      return false;
    }
    if (ArtworkValidator.isLikelySmallImage(url)) {
      reject('reject_small');
      return false;
    }
    return true;
  }

  /// Program art suitable for a cover layer (not a logo — use fallback instead).
  bool acceptsCoverLayer(
    String? url,
    Channel channel, {
    bool isEpgFallback = false,
  }) {
    if (url == null || url.isEmpty) return false;
    if (LiveTvArtworkUrlGuard.blockedProgramArtworkHost(url) != null &&
        !ArtworkValidator.isLikelyTmsLandscapeEpg(url)) {
      return false;
    }
    if (ArtworkValidator.isLikelyPosterUrl(url)) return false;
    if (LiveTvArtworkUrlGuard.matchesChannelLogo(url, channel)) return false;
    if (LiveTvArtworkUrlGuard.isLogoOnlyHost(url)) return false;
    if (ArtworkValidator.isLikelyChannelLogoUrl(url)) return false;
    if (ArtworkValidator.isLikelyTitleLogoUrl(url)) return false;
    return _isLandscapeCardArt(url);
  }

  bool _isLandscapeCardArt(String url) {
    if (ArtworkValidator.isLikelyTmsLandscapeEpg(url)) return true;
    return ArtworkValidator.isLikelyLandscapeUrl(url, strict: true);
  }
}
