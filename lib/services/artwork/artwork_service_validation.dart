part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceValidation on LiveTvArtworkService {
  /// Normalize an artwork URL for display.
  String? normalizeArtworkUrl(String? url, {bool isHero = false}) {
    if (url == null || url.isEmpty) return null;
    return normalizeImageUrl(url);
  }

  bool _isValidProgramArtwork(
    String? url,
    Channel channel, {
    String? programTitle,
    String? source,
    bool isEpgFallback = false,
  }) {
    if (url == null || url.isEmpty) return false;
    final blockedHost = _blockedProgramArtworkHost(url);
    if (blockedHost != null && !isEpgFallback) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_blocked_host host=$blockedHost',
      );
      return false;
    }
    if (ImageValidationService.isKnownInvalid(url)) return false;

    // Always reject posters, even for EPG fallback
    if (ArtworkValidator.isLikelyPosterUrl(url)) return false;

    // For EPG fallback, we are more permissive with small images.
    if (!isEpgFallback) {
      if (ArtworkValidator.isLikelySmallImage(url)) return false;
    }

    if (ArtworkValidator.isLikelyChannelLogoUrl(url)) return false;
    if (ArtworkValidator.isLikelyTitleLogoUrl(url)) return false;
    final channelLogo = channel.logoUrl;
    if (channelLogo != null && channelLogo == url) return false;
    if (_matchesChannelLogo(url, channel)) return false;
    return true;
  }

  String? _blockedProgramArtworkHost(String url) {
    try {
      final host = Uri.parse(url).host.toLowerCase();
      if (LiveTvArtworkService._blockedProgramArtworkHosts.contains(host)) {
        return host;
      }
    } catch (_) {}
    return null;
  }

  bool _isValidTitleLogo(String? url, Channel channel) {
    if (url == null || url.isEmpty) return false;
    return true;
  }

  bool _acceptArtworkUrl(
    String? url, {
    required bool preferLandscape,
    String? programTitle,
    String? source,
  }) {
    if (url == null || url.isEmpty) return false;
    if (_isLikelyPosterUrl(url)) return false;
    return _isLikelyLandscapeUrl(url);
  }

  static final RegExp _imageExtRe = RegExp(r'\.(png|jpg|jpeg|webp)$');
  static final RegExp _imageSizeRe = RegExp(r'(\d+)x(\d+)');

  bool _isLikelyLandscapeUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();

    // Strong signals for poster/portrait or logo-like assets.
    if (_isLikelyPosterUrl(url) ||
        lower.contains('/logo') ||
        lower.contains('_logo') ||
        lower.contains('-logo') ||
        lower.contains('logo.')) {
      return false;
    }

    // Strong signals for landscape/backdrop.
    if (lower.contains('backdrop') ||
        lower.contains('background') ||
        lower.contains('fanart') ||
        lower.contains('landscape') ||
        lower.contains('banner')) {
      return true;
    }

    // If dimensions are in the filename, prefer wider aspect ratios.
    final extMatch = _imageExtRe.firstMatch(lower);
    if (extMatch != null) {
      final beforeExt = lower.substring(0, extMatch.start);
      final match = _imageSizeRe.firstMatch(beforeExt);
      if (match != null) {
        final w = int.tryParse(match.group(1) ?? '');
        final h = int.tryParse(match.group(2) ?? '');
        if (w != null && h != null) {
          return w >= (h * 1.15);
        }
      }
    }

    // If it's not clearly portrait or logo, treat as acceptable landscape.
    return true;
  }

  bool _isLikelyPosterUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();

    // Explicit keywords in path or query
    if (lower.contains('/poster') ||
        lower.contains('_poster') ||
        lower.contains('-poster') ||
        lower.contains('/portrait') ||
        lower.contains('/cover') ||
        lower.contains('type=poster') ||
        lower.contains('format=portrait')) {
      return true;
    }

    // TMDB poster-specific sizes (w92 through w500 are poster-only sizes)
    // Note: w780 and w1280 are used for BOTH posters and backdrops, so we don't
    // use those sizes to detect posters - we'd incorrectly reject valid backdrops.
    if (lower.contains('image.tmdb.org') &&
        (lower.contains('/w92/') ||
            lower.contains('/w154/') ||
            lower.contains('/w185/') ||
            lower.contains('/w342/') ||
            lower.contains('/w500/'))) {
      return true;
    }

    // TVDB poster paths
    if (lower.contains('artworks.thetvdb.com') &&
        lower.contains('/banners/posters/')) {
      return true;
    }

    // Common file naming patterns
    if (lower.endsWith('_poster.jpg') ||
        lower.endsWith('_poster.png') ||
        lower.endsWith('_cover.jpg') ||
        lower.endsWith('_cover.png')) {
      return true;
    }

    return false;
  }

  static final RegExp _digitsOnlyRe = RegExp(r'^\d+$');

  bool _isTitleCacheEligible(Program program) {
    final normalized = EPGMatchingUtils.normalizeForArtwork(program.title);
    if (normalized.isEmpty) return false;
    // Allow 2+ char titles to support short show names like "24", "ER", "FX"
    if (normalized.length < 2) return false;
    if (_digitsOnlyRe.hasMatch(normalized)) return false;
    const stopWords = <String>{
      'movie',
      'movies',
      'tv',
      'show',
      'channel',
      'documentary',
      'documentaries',
      'series',
    };
    // Only reject if the ENTIRE normalized title is a single stop word
    final lower = normalized.toLowerCase();
    if (stopWords.contains(lower)) return false;
    return true;
  }

  bool _matchesChannelLogo(String url, Channel channel) {
    if (url.isEmpty) return false;
    final logoUrl = channel.logoUrl;
    if (logoUrl == null || logoUrl.isEmpty) return false;
    final normalizedUrl = _normalizeUrl(url);
    final normalizedLogo = _normalizeUrl(logoUrl);
    if (normalizedUrl == null || normalizedLogo == null) return false;
    return normalizedUrl == normalizedLogo;
  }

  static final RegExp _doubleSlashStartRe = RegExp(r'^//');

  String? _normalizeUrl(String? url) {
    if (url == null || url.isEmpty) return null;
    try {
      final uri = Uri.parse(url);
      final normalized = uri.replace(
        scheme: '',
        userInfo: '',
        queryParameters: {},
        fragment: '',
      );
      return normalized.toString().replaceAll(_doubleSlashStartRe, '');
    } catch (e) {
      debugLog('ArtworkService: normalizeImageUrl failed: $e');
      return url;
    }
  }
}
