import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/services/http_client_service.dart';
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
    if (ImageFailureCache.shouldSkip(imageUrl)) {
      return errorWidget ??
          _buildGradientFallback(width, height, Icons.broken_image);
    }
    // Conservative default mem cache sizing to avoid large synchronous decodes
    int? finalMemCacheWidth = memCacheWidth;
    int? finalMemCacheHeight = memCacheHeight;
    if (finalMemCacheWidth == null && width != null && width!.isFinite) {
      finalMemCacheWidth =
          (width! * MediaQuery.of(context).devicePixelRatio).round();
    }
    if (finalMemCacheHeight == null && height != null && height!.isFinite) {
      finalMemCacheHeight =
          (height! * MediaQuery.of(context).devicePixelRatio).round();
    }
    // If still null (e.g. full-screen hero), limit to screen size to avoid huge decodes
    final screen = MediaQuery.of(context).size;
    final screenWidthPx =
        (screen.width * MediaQuery.of(context).devicePixelRatio).round();
    final screenHeightPx =
        (screen.height * MediaQuery.of(context).devicePixelRatio).round();
    finalMemCacheWidth ??= screenWidthPx;
    finalMemCacheHeight ??= screenHeightPx;

    // Validate URL before attempting to load
    if (!_isValidImageUrl(imageUrl)) {
      ImageFailureCache.recordFailure(imageUrl, 'Invalid URL format');
      return errorWidget ?? _buildGradientFallback(width, height, Icons.broken_image);
    }

    // Re-enable image loading with conservative caching and downscaling
    ImageLoadProbe.recordAttempt(imageUrl, 'cached_image');
    Widget image = CachedNetworkImage(
      imageUrl: imageUrl,
      httpHeaders: HttpClientService().imageHeaders,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      memCacheWidth: finalMemCacheWidth,
      memCacheHeight: finalMemCacheHeight,
      imageBuilder: (context, imageProvider) {
        ImageFailureCache.recordSuccess(imageUrl);
        ImageLoadProbe.recordSuccess(imageUrl, 'cached_image');
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
    );
  }
}

Widget _buildTransparentPlaceholder(double size, IconData fallbackIcon) {
  return SizedBox(
    width: size,
    height: size,
    child: Center(
      child: Icon(
        fallbackIcon,
        size: size * 0.6,
        color: Colors.white.withAlpha((0.75 * 255).round()),
      ),
    ),
  );
}

bool _isValidImageUrl(String url) {
  if (url.isEmpty) return false;
  try {
    final uri = Uri.parse(url);
    if (!uri.hasScheme || (uri.scheme != 'http' && uri.scheme != 'https')) {
      return false;
    }
    final path = uri.path.toLowerCase();
    if (!path.endsWith('.jpg') && !path.endsWith('.jpeg') && 
        !path.endsWith('.png') && !path.endsWith('.webp') && 
        !path.endsWith('.gif') && !path.contains('/image/')) {
      return false;
    }
    return true;
  } catch (_) {
    return false;
  }
}
