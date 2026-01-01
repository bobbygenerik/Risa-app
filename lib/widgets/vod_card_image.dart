import 'package:iptv_player/utils/debug_helper.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/models/content.dart';

/// Widget that displays VOD card image with TMDB fallback
/// If imageUrl is missing/invalid, fetches poster from TMDB
class VodCardImage extends StatefulWidget {
  final Content content;
  final Widget placeholder;
  final BoxFit fit;
  final bool allowPrefetch;

  const VodCardImage({
    super.key,
    required this.content,
    required this.placeholder,
    this.fit = BoxFit.cover,
    this.allowPrefetch = true,
  });

  @override
  State<VodCardImage> createState() => _VodCardImageState();
}

class _VodCardImageState extends State<VodCardImage> {
  static final Map<String, DateTime> _retryAfter = {};
  static final Set<String> _inFlight = {};
  String? _tmdbPosterUrl;
  bool _fetchedTmdb = false;

  @override
  void initState() {
    super.initState();
    if (widget.allowPrefetch) {
      _fetchTmdbPoster();
    }
  }

  @override
  void didUpdateWidget(covariant VodCardImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.allowPrefetch && widget.allowPrefetch && !_fetchedTmdb) {
      _fetchTmdbPoster();
    }
  }

  Future<void> _fetchTmdbPoster() async {
    if (_fetchedTmdb) return;
    final cacheKey = widget.content.id;
    if (_inFlight.contains(cacheKey)) return;
    final retryAt = _retryAfter[cacheKey];
    if (retryAt != null && DateTime.now().isBefore(retryAt)) return;
    _inFlight.add(cacheKey);

    try {
      debugLog('VodCardImage: Fetching artwork for "${widget.content.title}"');
      final posterUrl = await TMDBService.getBestBackdrop(
        widget.content.title,
        year: widget.content.year,
      );

      if (mounted && posterUrl != null) {
        debugLog(
            'VodCardImage: Got artwork for "${widget.content.title}": $posterUrl');
        setState(() {
          _tmdbPosterUrl = posterUrl;
          _fetchedTmdb = true;
        });
      } else {
        debugLog(
            'VodCardImage: No artwork found for "${widget.content.title}"');
        _fetchedTmdb = true;
        _retryAfter[cacheKey] = DateTime.now().add(const Duration(minutes: 10));
      }
    } catch (e) {
      debugLog(
          'VodCardImage: Failed to fetch artwork for ${widget.content.title}: $e');
      _fetchedTmdb = true;
      _retryAfter[cacheKey] = DateTime.now().add(const Duration(minutes: 10));
    } finally {
      _inFlight.remove(cacheKey);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Show original image immediately if available, TMDB will replace when loaded
    final tmdbUrl = _tmdbPosterUrl;
    return LayoutBuilder(
      builder: (context, constraints) {
        final cacheSize = _resolveCacheSize(context, constraints);
        // If we have TMDB image, use it (higher quality)
        if (tmdbUrl != null && tmdbUrl.isNotEmpty) {
          return CachedNetworkImage(
            imageUrl: tmdbUrl,
            fit: widget.fit,
            width: double.infinity,
            height: double.infinity,
            memCacheWidth: cacheSize.width,
            memCacheHeight: cacheSize.height,
            placeholder: (context, url) => widget.placeholder,
            errorWidget: (context, url, error) => _buildOriginalImageFallback(),
          );
        }

        // Fallback to original image
        return _buildOriginalImageFallback(cacheSize: cacheSize);
      },
    );
  }

  Widget _buildOriginalImageFallback({_CacheSize? cacheSize}) {
    final originalUrl = widget.content.imageUrl ?? widget.content.backdropUrl;
    if (originalUrl != null && originalUrl.isNotEmpty) {
      return CachedNetworkImage(
        imageUrl: originalUrl,
        fit: widget.fit,
        width: double.infinity,
        height: double.infinity,
        memCacheWidth: cacheSize?.width,
        memCacheHeight: cacheSize?.height,
        placeholder: (context, url) => widget.placeholder,
        errorWidget: (context, url, error) => widget.placeholder,
      );
    }
    return widget.placeholder;
  }

  _CacheSize _resolveCacheSize(
    BuildContext context,
    BoxConstraints constraints,
  ) {
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final width = constraints.hasBoundedWidth ? constraints.maxWidth : 0.0;
    final height = constraints.hasBoundedHeight ? constraints.maxHeight : 0.0;
    final cacheWidth = width > 0 ? (width * dpr).round() : null;
    final cacheHeight = height > 0 ? (height * dpr).round() : null;
    return _CacheSize(cacheWidth, cacheHeight);
  }
}

class _CacheSize {
  final int? width;
  final int? height;
  const _CacheSize(this.width, this.height);
}
