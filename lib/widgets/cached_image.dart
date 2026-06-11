import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/shared_image_cache_manager.dart';
import 'package:iptv_player/widgets/brand_fallback_background.dart';
import 'package:iptv_player/widgets/channel_logo_widget.dart';

/// Optimized cached image widget that replaces Image.network calls
/// Provides automatic caching, loading states, and error handling
class CachedImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Alignment alignment;
  final Widget? placeholder;
  final Widget? errorWidget;
  final BorderRadius? borderRadius;
  final int? memCacheWidth;
  final int? memCacheHeight;

  const CachedImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.placeholder,
    this.errorWidget,
    this.borderRadius,
    this.memCacheWidth,
    this.memCacheHeight,
  });

  @override
  Widget build(BuildContext context) {
    final normalizedImageUrl = normalizeImageUrl(imageUrl);

    if (ImageFailureCache.shouldSkip(normalizedImageUrl)) {
      return errorWidget ??
          _buildGradientFallback(width, height, Icons.broken_image);
    }
    // Conservative default mem cache sizing to avoid large synchronous
    // decodes. ResizeImage decodes to EXACTLY the dimensions it is given, so
    // never pair a real dimension with a guessed one — a logo rendered at
    // height 48 but decoded at screenWidth x 48 comes out aspect-distorted
    // and blurry. With a single dimension the decoder preserves aspect.
    int? finalMemCacheWidth = memCacheWidth;
    int? finalMemCacheHeight = memCacheHeight;
    if (finalMemCacheWidth == null && finalMemCacheHeight == null) {
      final dpr = MediaQuery.of(context).devicePixelRatio;
      final hasWidth = width != null && width!.isFinite;
      final hasHeight = height != null && height!.isFinite;
      if (hasWidth) finalMemCacheWidth = (width! * dpr).round();
      if (hasHeight) finalMemCacheHeight = (height! * dpr).round();
      // No usable layout size (e.g. full-screen backdrop): cap by screen
      // width only, leaving height free so aspect is preserved.
      if (!hasWidth && !hasHeight) {
        finalMemCacheWidth =
            (MediaQuery.of(context).size.width * dpr).round();
      }
    }

    // Validate URL before attempting to load
    if (!_isValidImageUrl(normalizedImageUrl)) {
      ImageFailureCache.recordFailure(normalizedImageUrl, 'Invalid URL format');
      return errorWidget ??
          _buildGradientFallback(width, height, Icons.broken_image);
    }

    // Re-enable image loading with conservative caching and downscaling
    ImageLoadProbe.recordAttempt(normalizedImageUrl, 'cached_image');
    Widget image = CachedNetworkImage(
      imageUrl: normalizedImageUrl,
      cacheManager: SharedImageCacheManager.instance,
      httpHeaders: HttpClientService().imageHeaders,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      memCacheWidth: finalMemCacheWidth,
      memCacheHeight: finalMemCacheHeight,
      maxWidthDiskCache: finalMemCacheWidth,
      maxHeightDiskCache: finalMemCacheHeight,
      imageBuilder: (context, imageProvider) {
        ImageFailureCache.recordSuccess(normalizedImageUrl);
        ImageLoadProbe.recordSuccess(normalizedImageUrl, 'cached_image');
        return Image(
          image: imageProvider,
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
          filterQuality: FilterQuality.low,
          gaplessPlayback: true,
        );
      },
      placeholder: (context, url) =>
          placeholder ?? _buildGradientFallback(width, height, Icons.image),
      errorWidget: (context, url, error) {
        ImageFailureCache.recordFailure(url, error);
        ImageLoadProbe.recordFailure(url, 'cached_image', error);
        return errorWidget ??
            _buildGradientFallback(width, height, Icons.broken_image);
      },
      useOldImageOnUrlChange: true,
    );

    if (borderRadius != null) {
      image = ClipRRect(
        borderRadius: borderRadius!,
        child: image,
      );
    }

    return image;
  }
}

Widget _buildGradientFallback(double? width, double? height, IconData icon) {
  return SizedBox(
    width: width,
    height: height,
    child: BrandFallbackBackground(
      child: Center(
        child: Icon(
          icon,
          color: Colors.white.withAlpha((0.65 * 255).round()),
        ),
      ),
    ),
  );
}

/// Specialized cached image for channel logos
class CachedChannelLogo extends StatelessWidget {
  final String? logoUrl;
  final String? channelName;
  final String? tvgId;
  final double size;
  final IconData fallbackIcon;
  final int? cacheWidth;
  final int? cacheHeight;

  const CachedChannelLogo({
    super.key,
    required this.logoUrl,
    this.channelName,
    this.tvgId,
    this.size = 48,
    this.fallbackIcon = Icons.tv,
    this.cacheWidth,
    this.cacheHeight,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedName = channelName?.trim() ?? '';
    if (resolvedName.isEmpty) {
      return _buildTransparentPlaceholder(size, fallbackIcon);
    }
    return ChannelLogoWidget(
      channelName: resolvedName,
      logoUrl: logoUrl,
      tvgId: tvgId,
      width: size,
      height: size,
      fit: BoxFit.contain,
      backgroundColor: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      allowEnrichment: true,
    );
  }
}

Widget _buildTransparentPlaceholder(double size, IconData fallbackIcon) {
  // No generic TV icon — show nothing when logo is unavailable.
  return SizedBox(
    width: size,
    height: size,
  );
}

bool _isValidImageUrl(String url) {
  final trimmed = url.trim();
  if (trimmed.isEmpty) return false;
  try {
    final uri = Uri.parse(trimmed);
    final scheme = uri.scheme.toLowerCase();
    if (!uri.hasScheme || (scheme != 'http' && scheme != 'https')) {
      return false;
    }
    if (uri.host.isEmpty) {
      return false;
    }
    return true;
  } catch (_) {
    return false;
  }
}
