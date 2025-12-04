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
    // Prefer TMDB poster over M3U tvg-logo for better quality
    final imageUrl = _tmdbPosterUrl ?? widget.content.imageUrl;

    if (imageUrl == null || imageUrl.isEmpty) {
      return widget.placeholder;
    }

    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: widget.fit,
      width: double.infinity,
      height: double.infinity,
      httpHeaders: const {
        'User-Agent': 'Mozilla/5.0',
      },
      fadeInDuration: const Duration(milliseconds: 200),
      placeholderFadeInDuration: const Duration(milliseconds: 200),
      placeholder: (context, url) => widget.placeholder,
      errorWidget: (context, url, error) {
        debugPrint('VodCardImage: Image failed for ${widget.content.title} - $url - $error');
        // If we have M3U URL and TMDB failed, try M3U as fallback
        if (_tmdbPosterUrl != null && widget.content.imageUrl != null && widget.content.imageUrl != url) {
          return CachedNetworkImage(
            imageUrl: widget.content.imageUrl!,
            fit: widget.fit,
            width: double.infinity,
            height: double.infinity,
            httpHeaders: const {'User-Agent': 'Mozilla/5.0'},
            placeholder: (context, url) => widget.placeholder,
            errorWidget: (context, url, error) => widget.placeholder,
          );
        }
        return widget.placeholder;
      },
    );
  }
}
