import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
import 'package:iptv_player/screens/live_tv/artwork/card_artwork_policy.dart';
import 'package:iptv_player/screens/live_tv/artwork/hero_artwork_policy.dart';
import 'package:iptv_player/utils/artwork_validator.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/memory_manager.dart';

/// URL normalization and legacy validation entry points.
class LiveTvArtworkUrlGuard {
  static const Set<String> blockedProgramArtworkHosts = {
    'zap2it.tmsimg.com',
    'zpmc.tmsimg.com',
    'xplatinmedia.com',
    'ngiss.t-online.de',
  };

  /// Hosts that only ever serve channel/title logos. Program art from these is
  /// the channel's own logo (or a sibling logo) and must not be layered over
  /// the logo fallback — that produces the doubled-logo artifact on cards.
  static const Set<String> logoOnlyHosts = {
    'logo.m3uassets.com',
  };

  static bool isLogoOnlyHost(String url) {
    try {
      return logoOnlyHosts.contains(Uri.parse(url).host.toLowerCase());
    } catch (_) {
      return false;
    }
  }

  static const _heroPolicy = HeroArtworkPolicy();
  static const _cardPolicy = CardArtworkPolicy();

  static bool isValidProgramArtwork(
    String? url,
    Channel channel, {
    String? programTitle,
    String? source,
    bool forCard = false,
    bool isEpgFallback = false,
    bool forHero = false,
    void Function(String message)? onDecision,
  }) {
    if (forHero) {
      return _heroPolicy.acceptsUrl(
        url,
        channel,
        source: source ?? 'unknown',
        programTitle: programTitle,
        isEpgFallback: isEpgFallback,
        onDecision: onDecision,
      );
    }
    if (forCard) {
      return _cardPolicy.acceptsUrl(
        url,
        channel,
        source: source ?? 'unknown',
        programTitle: programTitle,
        isEpgFallback: isEpgFallback,
        onDecision: onDecision,
      );
    }
    return _heroPolicy.acceptsUrl(
          url,
          channel,
          source: source ?? 'unknown',
          programTitle: programTitle,
          isEpgFallback: isEpgFallback,
          onDecision: onDecision,
        ) ||
        _cardPolicy.acceptsUrl(
          url,
          channel,
          source: source ?? 'unknown',
          programTitle: programTitle,
          isEpgFallback: isEpgFallback,
          onDecision: onDecision,
        );
  }

  static String? blockedProgramArtworkHost(String url) {
    try {
      final host = Uri.parse(url).host.toLowerCase();
      if (blockedProgramArtworkHosts.contains(host)) return host;
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

  static bool isLikelyChannelLogoUrl(String url) {
    return ArtworkValidator.isLikelyChannelLogoUrl(url);
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
    ArtworkSlot? slot,
    double? targetWidth,
  }) {
    if (url == null || url.isEmpty) return url;
    final heroSizing =
        isHero || slot == ArtworkSlot.hero;
    final size = heroSizing ? heroSizeForWidth(targetWidth) : 'w780';
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
