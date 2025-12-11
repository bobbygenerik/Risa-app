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
      debugPrint('VodCardImage: Fetching TMDB poster for "${widget.content.title}"');
      final details = await TMDBService.getMovieDetails(
        widget.content.title,
        year: widget.content.year,
      );
      
      if (mounted && details != null && details['poster'] != null) {
        final posterUrl = details['poster'] as String;
        debugPrint('VodCardImage: Got TMDB poster for "${widget.content.title}": $posterUrl');
        setState(() {
          _tmdbPosterUrl = posterUrl;
          _fetchedTmdb = true;
        });
      } else {
        debugPrint('VodCardImage: No TMDB poster found for "${widget.content.title}"');
        _fetchedTmdb = true;
      }
    } catch (e) {
      debugPrint('VodCardImage: Failed to fetch TMDB poster for ${widget.content.title}: $e');
      _fetchedTmdb = true;
    } finally {
      _isFetching = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Show original image immediately if available, TMDB will replace when loaded
    final imageUrl = widget.content.imageUrl;
    final tmdbUrl = _tmdbPosterUrl;
    
    // If we have TMDB image, use it (higher quality)
    if (tmdbUrl != null && tmdbUrl.isNotEmpty) {
      return CachedNetworkImage(
        imageUrl: tmdbUrl,
        fit: widget.fit,
        width: double.infinity,
        height: double.infinity,
        placeholder: (context, url) => widget.placeholder,
        errorWidget: (context, url, error) {
          // If TMDB fails, try original image
          if (imageUrl != null && imageUrl.isNotEmpty) {
            return CachedNetworkImage(
              imageUrl: imageUrl,
              fit: widget.fit,
              width: double.infinity,
              height: double.infinity,
              placeholder: (context, url) => widget.placeholder,
              errorWidget: (context, url, error) => widget.placeholder,
            );
          }
          return widget.placeholder;
        },
      );
    }
    
    // If we have original image, show it while waiting for TMDB
    if (imageUrl != null && imageUrl.isNotEmpty) {
      return CachedNetworkImage(
        imageUrl: imageUrl,
        fit: widget.fit,
        width: double.infinity,
        height: double.infinity,
        placeholder: (context, url) => widget.placeholder,
        errorWidget: (context, url, error) => widget.placeholder,
      );
    }
    
    // No images available
    return widget.placeholder;
  }
}
