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

  const VodCardImage({
    super.key,
    required this.content,
    required this.placeholder,
    this.fit = BoxFit.cover,
  });

  @override
  State<VodCardImage> createState() => _VodCardImageState();
}

class _VodCardImageState extends State<VodCardImage> {
  String? _tmdbPosterUrl;
  bool _fetchedTmdb = false;
  bool _isFetching = false;

  @override
  void initState() {
    super.initState();
    // Always try to fetch TMDB poster for better quality
    // M3U tvg-logo URLs are often broken or low quality
    _fetchTmdbPoster();
  }

  Future<void> _fetchTmdbPoster() async {
    if (_isFetching || _fetchedTmdb) return;
    _isFetching = true;

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
      }
    } catch (e) {
      debugLog(
          'VodCardImage: Failed to fetch artwork for ${widget.content.title}: $e');
      _fetchedTmdb = true;
    } finally {
      _isFetching = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Show original image immediately if available, TMDB will replace when loaded
    final tmdbUrl = _tmdbPosterUrl;

    // If we have TMDB image, use it (higher quality)
    if (tmdbUrl != null && tmdbUrl.isNotEmpty) {
      return CachedNetworkImage(
        imageUrl: tmdbUrl,
        fit: widget.fit,
        width: double.infinity,
        height: double.infinity,
        placeholder: (context, url) => widget.placeholder,
        errorWidget: (context, url, error) => _buildOriginalImageFallback(),
      );
    }

    // Fallback to original image
    return _buildOriginalImageFallback();
  }

  Widget _buildOriginalImageFallback() {
    final originalUrl = widget.content.imageUrl ?? widget.content.backdropUrl;
    if (originalUrl != null && originalUrl.isNotEmpty) {
      return CachedNetworkImage(
        imageUrl: originalUrl,
        fit: widget.fit,
        width: double.infinity,
        height: double.infinity,
        placeholder: (context, url) => widget.placeholder,
        errorWidget: (context, url, error) => widget.placeholder,
      );
    }
    return widget.placeholder;
  }
}
