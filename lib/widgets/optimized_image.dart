import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/widgets/channel_card_fallback_background.dart';

/// Optimized image widget with progressive loading and memory management
class OptimizedImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Widget? placeholder;
  final Widget? errorWidget;
  final bool enableMemoryCache;
  final int? memCacheWidth;
  final int? memCacheHeight;

  const OptimizedImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.placeholder,
    this.errorWidget,
    this.enableMemoryCache = true,
    this.memCacheWidth,
    this.memCacheHeight,
  });

  @override
  Widget build(BuildContext context) {
    if (ImageFailureCache.shouldSkip(imageUrl)) {
      return errorWidget ??
          SizedBox(
            width: width,
            height: height,
            child: ChannelCardFallbackBackground(
              borderRadius: BorderRadius.circular(4),
              child: const Center(
                child: Icon(
                  Icons.broken_image,
                  color: Colors.white70,
                  size: 32,
                ),
              ),
            ),
          );
    }
    // Calculate optimal memory cache dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final optimalWidth = memCacheWidth ??
        (width != null
            ? (width! * MediaQuery.of(context).devicePixelRatio).round()
            : (screenWidth * 0.3 * MediaQuery.of(context).devicePixelRatio)
                .round());

    final optimalHeight = memCacheHeight ??
        (height != null
            ? (height! * MediaQuery.of(context).devicePixelRatio).round()
            : null);

    ImageLoadProbe.recordAttempt(imageUrl, 'optimized_image');
    return CachedNetworkImage(
      imageUrl: imageUrl,
      httpHeaders: HttpClientService().imageHeaders,
      width: width,
      height: height,
      fit: fit,
      memCacheWidth: enableMemoryCache ? optimalWidth : null,
      memCacheHeight: enableMemoryCache ? optimalHeight : null,
      imageBuilder: (context, imageProvider) {
        ImageFailureCache.recordSuccess(imageUrl);
        ImageLoadProbe.recordSuccess(imageUrl, 'optimized_image');
        return Image(
          image: imageProvider,
          width: width,
          height: height,
          fit: fit,
          gaplessPlayback: true,
        );
      },
      placeholder: placeholder != null
          ? (context, url) => placeholder!
          : (context, url) => _buildShimmerPlaceholder(),
      errorWidget: (context, url, error) {
        ImageFailureCache.recordFailure(url, error);
        ImageLoadProbe.recordFailure(url, 'optimized_image', error);
        return errorWidget != null
            ? errorWidget!
            : _buildErrorWidget(context, url, error);
      },
      fadeInDuration: const Duration(milliseconds: 200),
      fadeOutDuration: const Duration(milliseconds: 100),
      useOldImageOnUrlChange: true,
    );
  }

  Widget _buildShimmerPlaceholder() {
    return SizedBox(
      width: width,
      height: height,
      child: ChannelCardFallbackBackground(
        borderRadius: BorderRadius.circular(4),
        child: const Center(
          child: Icon(
            Icons.image,
            color: Colors.white70,
            size: 32,
          ),
        ),
      ),
    );
  }

  Widget _buildErrorWidget(BuildContext context, String url, dynamic error) {
    return SizedBox(
      width: width,
      height: height,
      child: ChannelCardFallbackBackground(
        borderRadius: BorderRadius.circular(4),
        child: const Center(
          child: Icon(
            Icons.broken_image,
            color: Colors.white70,
            size: 32,
          ),
        ),
      ),
    );
  }
}

/// Optimized thumbnail image for lists and grids
class OptimizedThumbnail extends StatelessWidget {
  final String imageUrl;
  final double size;
  final BoxFit fit;

  const OptimizedThumbnail({
    super.key,
    required this.imageUrl,
    this.size = 48,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return OptimizedImage(
      imageUrl: imageUrl,
      width: size,
      height: size,
      fit: fit,
      // Limit memory usage for thumbnails
      memCacheWidth: (size * 2).round(), // 2x for high DPI
      memCacheHeight: (size * 2).round(),
      placeholder: SizedBox(
        width: size,
        height: size,
        child: ChannelCardFallbackBackground(
          borderRadius: BorderRadius.circular(4),
          child: Center(
            child: Icon(
              Icons.image,
              color: Colors.white70,
              size: size * 0.4,
            ),
          ),
        ),
      ),
    );
  }
}

/// Progressive image loader for hero images
class ProgressiveImage extends StatefulWidget {
  final String imageUrl;
  final String? lowResImageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;

  const ProgressiveImage({
    super.key,
    required this.imageUrl,
    this.lowResImageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  @override
  State<ProgressiveImage> createState() => _ProgressiveImageState();
}

class _ProgressiveImageState extends State<ProgressiveImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Low resolution placeholder
        if (widget.lowResImageUrl != null)
          OptimizedImage(
            imageUrl: widget.lowResImageUrl!,
            width: widget.width,
            height: widget.height,
            fit: widget.fit,
            memCacheWidth: 200, // Small cache for low-res
            memCacheHeight: 200,
          ),

        // High resolution image
        OptimizedImage(
          imageUrl: widget.imageUrl,
          width: widget.width,
          height: widget.height,
          fit: widget.fit,
          placeholder: widget.lowResImageUrl != null
              ? const SizedBox.shrink() // No placeholder if we have low-res
              : null,
          errorWidget: SizedBox(
            width: widget.width,
            height: widget.height,
            child: ChannelCardFallbackBackground(
              child: const Center(
                child: Icon(
                  Icons.broken_image,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
