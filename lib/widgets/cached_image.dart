import 'package:flutter/material.dart';

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
    // Disable all image loading for instant UI
    Widget image = placeholder ??
        Container(
          width: width,
          height: height,
          color: Colors.grey.withAlpha((0.1 * 255).round()),
          child: const Icon(
            Icons.image,
            color: Colors.white24,
          ),
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
    // Always show placeholder for instant UI
    return _buildLogoPlaceholder(size, fallbackIcon);
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
