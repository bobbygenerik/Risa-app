import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/artwork_url_guard.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'package:iptv_player/utils/artwork_validator.dart';

/// URL checks shared by hero and card artwork policies.
class ArtworkSharedUrlChecks {
  ArtworkSharedUrlChecks._();

  static bool passesCommon(
    String url,
    Channel channel, {
    required String source,
    String? programTitle,
    required bool allowBlockedHostForEpg,
    void Function(String message)? onDecision,
  }) {
    void reject(String result) {
      onDecision?.call(
        'LiveTV artwork: source=$source program="${programTitle ?? "unknown"}" '
        'url=$url result=$result',
      );
    }

    final blockedHost = LiveTvArtworkUrlGuard.blockedProgramArtworkHost(url);
    if (blockedHost != null && !allowBlockedHostForEpg) {
      reject('reject_blocked_host host=$blockedHost');
      return false;
    }
    if (ImageValidationService.isKnownInvalid(url)) {
      reject('reject_invalid_cached');
      return false;
    }
    if (ArtworkValidator.isLikelyChannelLogoUrl(url)) {
      reject('reject_channel_logo_hint');
      return false;
    }
    if (ArtworkValidator.isLikelyPosterUrl(url)) {
      reject('reject_poster');
      return false;
    }
    if (ArtworkValidator.isLikelyTitleLogoUrl(url)) {
      reject('reject_title_logo');
      return false;
    }
    final channelLogo = channel.logoUrl;
    if (channelLogo != null && channelLogo == url) {
      reject('reject_channel_logo');
      return false;
    }
    if (LiveTvArtworkUrlGuard.matchesChannelLogo(url, channel)) {
      reject('reject_channel_logo_match');
      return false;
    }
    return true;
  }
}
