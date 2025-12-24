import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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

  const CachedImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.placeholder,
    this.errorWidget,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    Widget image = CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      placeholder: (context, url) =>
          placeholder ??
          Container(
            width: width,
            height: height,
            color: Colors.grey.withAlpha((0.2 * 255).round()),
            child: const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white54,
              ),
            ),
          ),
      errorWidget: (context, url, error) =>
          errorWidget ??
          Container(
            width: width,
            height: height,
            color: Colors.grey.withAlpha((0.2 * 255).round()),
            child: const Icon(
              Icons.broken_image,
              color: Colors.white54,
            ),
          ),
      // Cache configuration
      memCacheWidth: width?.toInt(),
      memCacheHeight: height?.toInt(),
      maxWidthDiskCache: 800, // Limit disk cache size
      maxHeightDiskCache: 600,
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
      return Icon(
        fallbackIcon,
        size: size,
        color: Colors.white54,
      );
    }

    return CachedNetworkImage(
      imageUrl: logoUrl!,
      width: size,
      height: size,
      fit: BoxFit.contain,
      memCacheWidth: cacheWidth ?? (size * 2).toInt(),
      // memCacheHeight removed to preserve aspect ratio
      placeholder: (context, url) => Container(
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
      ),
      errorWidget: (context, url, error) => Container(
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
      ),
    );
  }
}
