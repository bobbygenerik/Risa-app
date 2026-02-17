import 'package:iptv_player/services/image_validation_service.dart';
import 'package:iptv_player/models/channel.dart';

/// Extracted from _LiveTVScreenState — pure utility methods for classifying
/// artwork URLs by type (poster, landscape, logo, small, title-logo, backdrop).
/// All methods are static and side-effect free.
class ArtworkValidator {
  ArtworkValidator._();

  // Pre-compiled regex constants — compiled once, reused on every call
  static final RegExp _dimensionPattern = RegExp(r'[_/](\d+)x(\d+)[_/.]');

  /// Returns true if the URL points to a poster/portrait image.
  static bool isLikelyPosterUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();

    // Explicit keywords in path or query
    if (lower.contains('/poster') ||
        lower.contains('/portrait') ||
        lower.contains('/cover') ||
        lower.contains('type=poster') ||
        lower.contains('format=portrait')) {
      return true;
    }

    // TMDB poster-specific sizes (w92 through w500)
    // Note: w780 and w1280 are used for BOTH posters and backdrops
    if (lower.contains('tmdb.org') &&
        (lower.contains('/w92/') ||
            lower.contains('/w154/') ||
            lower.contains('/w185/') ||
            lower.contains('/w342/') ||
            lower.contains('/w500/'))) {
      return true;
    }

    // TVDB poster paths (any posters path, not just /banners/posters/)
    if (lower.contains('thetvdb.com') &&
        (lower.contains('/posters/') || lower.contains('/poster/'))) {
      return true;
    }

    // OMDb poster URLs — always portrait images
    if (lower.contains('m.media-amazon.com') ||
        lower.contains('ia.media-imdb.com')) {
      return true;
    }

    // Common file naming patterns
    if (lower.endsWith('_poster.jpg') ||
        lower.endsWith('_poster.png') ||
        lower.endsWith('_cover.jpg') ||
        lower.endsWith('_cover.png') ||
        lower.endsWith('-poster.jpg') ||
        lower.endsWith('-poster.png')) {
      return true;
    }

    // Dimension metadata in URL indicating portrait aspect ratio
    final match = _dimensionPattern.firstMatch(lower);
    if (match != null) {
      final width = int.tryParse(match.group(1) ?? '') ?? 0;
      final height = int.tryParse(match.group(2) ?? '') ?? 0;
      if (width > 0 && height > 0 && height > width) {
        return true;
      }
    }

    return false;
  }

  /// Returns true if the URL explicitly points to a backdrop/background image.
  static bool isExplicitBackdropUrl(String url) {
    final lower = url.toLowerCase();
    return lower.contains('backdrop') ||
        lower.contains('landscape') ||
        lower.contains('fanart') ||
        lower.contains('/bg/');
  }

  /// Returns true if the URL likely points to a landscape/wide image.
  ///
  /// Strategy: default to **true** (accept) unless the URL is explicitly
  /// poster, portrait, logo, or has dimension metadata proving it's tall.
  /// This matches the permissive approach used inside LiveTvArtworkService
  /// and prevents valid artwork from being silently dropped.
  static bool isLikelyLandscapeUrl(String url) {
    if (url.isEmpty) return false;

    // Reject if it's clearly poster/portrait/logo
    if (isLikelyPosterUrl(url)) return false;

    final lower = url.toLowerCase();
    if (lower.contains('/logo') ||
        lower.contains('_logo') ||
        lower.contains('-logo')) {
      return false;
    }

    // Explicit landscape signals — accept immediately
    if (isExplicitBackdropUrl(url)) return true;
    if (lower.contains('banner')) return true;

    // TMDB: backdrop-specific sizes are fine; /original/ is ambiguous
    // (could be poster or backdrop) so don't auto-accept it.
    if (lower.contains('image.tmdb.org') &&
        (lower.contains('/w780/') ||
            lower.contains('/w1280/') ||
            lower.contains('/w1920/'))) {
      return true;
    }

    // If dimensions are in the filename, check aspect ratio
    final match = _dimensionPattern.firstMatch(lower);
    if (match != null) {
      final width = int.tryParse(match.group(1) ?? '') ?? 0;
      final height = int.tryParse(match.group(2) ?? '') ?? 0;
      if (width > 0 && height > 0) {
        // Reject only if clearly portrait (taller than wide)
        return width >= (height * 0.9);
      }
    }

    // Default: accept — better to show a slightly wrong aspect ratio image
    // than to show no artwork at all.
    return true;
  }

  /// Returns true if the URL looks like a channel logo rather than program artwork.
  static bool isLikelyChannelLogoUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();
    if (lower.contains('/logos/')) return true;
    if (lower.contains('iptvboss.pro') &&
        (lower.contains('/logo') || lower.contains('/logos/'))) {
      return true;
    }
    // Match explicit /logo/ path segments but NOT domain names like
    // 'logo.m3uassets.com' — those are CDNs that serve program images too.
    if (lower.contains('/logo/')) return true;
    return false;
  }

  /// Returns true if the URL looks like a title logo / clearart.
  static bool isLikelyTitleLogoUrl(String url) {
    final lower = url.toLowerCase();

    if (lower.contains('/clearlogo/') ||
        lower.contains('/logo/') ||
        lower.contains('/logotype/') ||
        lower.contains('/titlecard/')) {
      return true;
    }

    return lower.endsWith('.svg');
  }

  /// Returns true if the URL points to a small/thumbnail image that would
  /// look bad when scaled up.
  static bool isLikelySmallImage(String url) {
    final lower = url.toLowerCase();

    // Check for small size indicators in URL
    if (lower.contains('_small') ||
        lower.contains('_thumb') ||
        lower.contains('_icon') ||
        lower.contains('/small/') ||
        lower.contains('/thumb/') ||
        lower.contains('/icon/')) {
      return true;
    }

    // Check for specific small dimensions in URL
    final match = _dimensionPattern.firstMatch(lower);
    if (match != null) {
      final width = int.tryParse(match.group(1) ?? '') ?? 0;
      final height = int.tryParse(match.group(2) ?? '') ?? 0;
      // Block images smaller than 400x300
      if (width > 0 && height > 0 && (width < 400 || height < 300)) {
        return true;
      }
    }

    return false;
  }

  /// Returns true if [url] matches the channel's own logo URL.
  static bool matchesChannelLogo(String url, Channel channel) {
    final channelLogo = channel.logoUrl;
    if (channelLogo == null || channelLogo.isEmpty) return false;
    if (channelLogo == url) return true;
    // Normalize both URLs for comparison
    final normalizedUrl = url.split('?').first.toLowerCase();
    final normalizedLogo = channelLogo.split('?').first.toLowerCase();
    return normalizedUrl == normalizedLogo;
  }

  /// Full validation: checks that a program artwork URL is suitable for
  /// display (landscape, not a logo, not small, not the channel's own logo).
  static bool isValidProgramArtwork(
    String? url,
    Channel channel, {
    String? programTitle,
    String? source,
  }) {
    if (url == null || url.isEmpty) return false;
    if (ImageValidationService.isKnownInvalid(url)) return false;
    if (isLikelyChannelLogoUrl(url)) return false;
    if (isLikelyPosterUrl(url)) return false;
    if (!isLikelyLandscapeUrl(url)) return false;
    if (isLikelyTitleLogoUrl(url)) return false;
    if (matchesChannelLogo(url, channel)) return false;
    if (isLikelySmallImage(url)) return false;
    return true;
  }
}
