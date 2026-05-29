import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'package:iptv_player/utils/artwork_validator.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/memory_manager.dart';

class LiveTvArtworkUrlGuard {
  static const Set<String> blockedProgramArtworkHosts = {
    'zap2it.tmsimg.com',
    'zpmc.tmsimg.com',
    'xplatinmedia.com',
    'ngiss.t-online.de',
  };

  static bool isValidProgramArtwork(
    String? url,
    Channel channel, {
    String? programTitle,
    String? source,
    bool forCard = false,
    bool isEpgFallback = false,
    void Function(String message)? onDecision,
  }) {
    if (url == null || url.isEmpty) return false;
    final blockedHost = blockedProgramArtworkHost(url);
    if (blockedHost != null) {
      onDecision?.call(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_blocked_host host=$blockedHost',
      );
      return false;
    }
    if (ImageValidationService.isKnownInvalid(url)) {
      onDecision?.call(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_invalid_cached',
      );
      return false;
    }
    if (ArtworkValidator.isLikelyChannelLogoUrl(url)) {
      onDecision?.call(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_channel_logo_hint',
      );
      return false;
    }
    if (ArtworkValidator.isLikelyPosterUrl(url)) {
      onDecision?.call(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_poster',
      );
      return false;
    }
    if (!forCard &&
        !isEpgFallback &&
        !ArtworkValidator.isLikelyLandscapeUrl(url)) {
      onDecision?.call(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_not_landscape',
      );
      return false;
    }
    if (ArtworkValidator.isLikelyTitleLogoUrl(url)) {
      onDecision?.call(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_title_logo',
      );
      return false;
    }

    final channelLogo = channel.logoUrl;
    if (channelLogo != null && channelLogo == url) {
      onDecision?.call(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_channel_logo',
      );
      return false;
    }
    if (matchesChannelLogo(url, channel)) {
      onDecision?.call(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_channel_logo_match',
      );
      return false;
    }
    if (!isEpgFallback && ArtworkValidator.isLikelySmallImage(url)) {
      onDecision?.call(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_small',
      );
      return false;
    }
    return true;
  }

  static String? blockedProgramArtworkHost(String url) {
    try {
      final host = Uri.parse(url).host.toLowerCase();
      if (blockedProgramArtworkHosts.contains(host)) {
        return host;
      }
    } catch (_) {}
    return null;
  }

  static bool isValidTitleLogo(String? url, Channel channel) {
    if (url == null || url.isEmpty) return false;
    final channelLogo = channel.logoUrl;
    if (channelLogo != null && channelLogo == url) return false;
    return !matchesChannelLogo(url, channel);
  }

  static bool isLikelyTitleLogoUrl(String url) {
    return ArtworkValidator.isLikelyTitleLogoUrl(url);
  }

  static bool matchesChannelLogo(String url, Channel channel) {
    final normalizedChannelLogo = normalizeUrl(channel.logoUrl);
    if (normalizedChannelLogo.isEmpty) return false;
    return normalizeUrl(url) == normalizedChannelLogo;
  }

  static String normalizeUrl(String? url) {
    if (url == null || url.isEmpty) return '';
    try {
      final uri = Uri.parse(url);
      final host = uri.host.toLowerCase();
      final path = uri.path.replaceAll(RegExp(r'/+$'), '').toLowerCase();
      if (host.isEmpty) return path;
      return '$host$path';
    } catch (e) {
      debugLog('LiveTvScreen: normalizeUrl failed: $e');
      return url.toLowerCase();
    }
  }

  static String? normalizeArtworkUrl(
    String? url, {
    bool isHero = false,
    double? targetWidth,
  }) {
    if (url == null || url.isEmpty) return url;
    final size = isHero ? heroSizeForWidth(targetWidth) : 'w780';
    return applyTmdbSize(url, size);
  }

  static String applyTmdbSize(String url, String size) {
    try {
      final uri = Uri.parse(url);
      if (!uri.host.contains('image.tmdb.org')) return url;
      final segments = uri.pathSegments.toList();
      if (segments.length >= 3 && segments[0] == 't' && segments[1] == 'p') {
        segments[2] = size;
        return uri.replace(pathSegments: segments).toString();
      }
    } catch (e) {
      debugLog('LiveTvScreen: applyTmdbSize failed: $e');
    }
    return url;
  }

  static String heroSizeForWidth(double? targetWidth) {
    if (MemoryManager.isLowMemory) return 'w1280';
    if (targetWidth == null) return 'w1280';
    if (targetWidth >= 1800) return 'w1920';
    if (targetWidth >= 1200) return 'w1280';
    return 'w780';
  }
}
