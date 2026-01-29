import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/widgets/channel_card_fallback_background.dart';

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
    child: ChannelCardFallbackBackground(
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
  final double size;
  final IconData fallbackIcon;
  final int? cacheWidth;
  final int? cacheHeight;

  const CachedChannelLogo({
    super.key,
    required this.logoUrl,
    this.size = 48,
    this.fallbackIcon = Icons.tv,
    this.cacheWidth,
    this.cacheHeight,
  });

  @override
  Widget build(BuildContext context) {
    if (logoUrl == null || logoUrl!.isEmpty) {
      return _buildLogoPlaceholder(size, fallbackIcon);
    }
    if (ImageFailureCache.shouldSkipLogo(logoUrl!)) {
      return _buildLogoPlaceholder(size, fallbackIcon);
    }

    ImageLoadProbe.recordAttempt(logoUrl!, 'channel_logo');
    return CachedNetworkImage(
      imageUrl: logoUrl!,
      httpHeaders: HttpClientService().imageHeaders,
      width: size,
      height: size,
      fit: BoxFit.contain,
      memCacheWidth: cacheWidth,
      memCacheHeight: cacheHeight,
      imageBuilder: (context, imageProvider) {
        ImageFailureCache.recordSuccess(logoUrl!);
        ImageLoadProbe.recordSuccess(logoUrl!, 'channel_logo');
        return Image(
          image: imageProvider,
          width: size,
          height: size,
          fit: BoxFit.contain,
          gaplessPlayback: true,
        );
      },
      placeholder: (context, url) => _buildLogoPlaceholder(size, fallbackIcon),
      errorWidget: (context, url, error) {
        ImageFailureCache.recordFailure(url, error);
        ImageLoadProbe.recordFailure(url, 'channel_logo', error);
        return _buildLogoPlaceholder(size, fallbackIcon);
      },
      useOldImageOnUrlChange: true,
    );
  }
}

Widget _buildLogoPlaceholder(double size, IconData fallbackIcon) {
  return SizedBox(
    width: size,
    height: size,
    child: ChannelCardFallbackBackground(
      borderRadius: BorderRadius.circular(8),
      child: Center(
        child: Icon(
          fallbackIcon,
          size: size * 0.6,
          color: Colors.white.withAlpha((0.75 * 255).round()),
        ),
      ),
    ),
  );
}
