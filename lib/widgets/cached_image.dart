import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/logo_image_cache.dart';

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
      httpHeaders: HttpClientService().imageHeaders,
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
      memCacheWidth: width != null ? (width! * MediaQuery.of(context).devicePixelRatio).round() : null,
      memCacheHeight: height != null ? (height! * MediaQuery.of(context).devicePixelRatio).round() : null,
      maxWidthDiskCache: 1200, // Increased from 800 for better quality
      maxHeightDiskCache: 800, // Increased from 600
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

    final provider = LogoImageCache.providerFor(
      logoUrl!,
      headers: HttpClientService().imageHeaders,
    );
    final placeholder = _buildLogoPlaceholder(size, fallbackIcon);

    return Image(
      image: provider,
      width: size,
      height: size,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded || frame != null) {
          return child;
        }
        return placeholder;
      },
      errorBuilder: (context, error, stackTrace) => placeholder,
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
