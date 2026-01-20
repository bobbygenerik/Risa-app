import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/utils/image_load_probe.dart';

/// Optimized cached image widget that replaces Image.network calls
/// Provides automatic caching, loading states, and error handling
class CachedImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
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
    this.placeholder,
    this.errorWidget,
    this.borderRadius,
    this.memCacheWidth,
    this.memCacheHeight,
  });

  @override
  Widget build(BuildContext context) {
    // Conservative default mem cache sizing to avoid large synchronous decodes
    int? finalMemCacheWidth = memCacheWidth;
    int? finalMemCacheHeight = memCacheHeight;
    if (finalMemCacheWidth == null && width != null && width!.isFinite) {
      finalMemCacheWidth = (width! * MediaQuery.of(context).devicePixelRatio).round();
    }
    if (finalMemCacheHeight == null && height != null && height!.isFinite) {
      finalMemCacheHeight = (height! * MediaQuery.of(context).devicePixelRatio).round();
    }
    // If still null (e.g. full-screen hero), limit to screen size to avoid huge decodes
    final screen = MediaQuery.of(context).size;
    final screenWidthPx = (screen.width * MediaQuery.of(context).devicePixelRatio).round();
    final screenHeightPx = (screen.height * MediaQuery.of(context).devicePixelRatio).round();
    finalMemCacheWidth ??= screenWidthPx;
    finalMemCacheHeight ??= screenHeightPx;

    // Re-enable image loading with conservative caching and downscaling
    Widget image = CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      memCacheWidth: finalMemCacheWidth,
      memCacheHeight: finalMemCacheHeight,
      imageBuilder: (context, imageProvider) {
        ImageLoadProbe.recordSuccess(imageUrl, 'cached_image');
        return Image(
          image: imageProvider,
          width: width,
          height: height,
          fit: fit,
          filterQuality: FilterQuality.low,
        );
      },
      placeholder: (context, url) => placeholder ??
          Container(
            width: width,
            height: height,
            color: Colors.grey.withAlpha((0.1 * 255).round()),
            child: const Icon(
              Icons.image,
              color: Colors.white24,
            ),
          ),
      errorWidget: (context, url, error) {
        ImageLoadProbe.recordFailure(url, 'cached_image', error);
        return errorWidget ??
            Container(
              width: width,
              height: height,
              color: Colors.grey.withAlpha((0.1 * 255).round()),
              child: const Icon(
                Icons.broken_image,
                color: Colors.white24,
              ),
            );
      },
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
    
    return CachedNetworkImage(
      imageUrl: logoUrl!,
      width: size,
      height: size,
      fit: BoxFit.contain,
      memCacheWidth: cacheWidth,
      memCacheHeight: cacheHeight,
      imageBuilder: (context, imageProvider) {
        ImageLoadProbe.recordSuccess(logoUrl!, 'channel_logo');
        return Image(
          image: imageProvider,
          width: size,
          height: size,
          fit: BoxFit.contain,
        );
      },
      placeholder: (context, url) => _buildLogoPlaceholder(size, fallbackIcon),
      errorWidget: (context, url, error) {
        ImageLoadProbe.recordFailure(url, 'channel_logo', error);
        return _buildLogoPlaceholder(size, fallbackIcon);
      },
    );
  }
}

Widget _buildLogoPlaceholder(double size, IconData fallbackIcon) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      color: Colors.grey.withAlpha((0.2 * 255).round()),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Icon(
      fallbackIcon,
      size: size * 0.6,
      color: Colors.white54,
    ),
  );
}
