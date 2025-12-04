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
    // If no imageUrl, try TMDB
    if (widget.content.imageUrl == null || widget.content.imageUrl!.isEmpty) {
      _fetchTmdbPoster();
    }
  }

  Future<void> _fetchTmdbPoster() async {
    if (_isFetching || _fetchedTmdb) return;
    _isFetching = true;

    try {
      final details = await TMDBService.getMovieDetails(
        widget.content.title,
        year: widget.content.year,
      );
      
      if (mounted && details != null && details['poster'] != null) {
        setState(() {
          _tmdbPosterUrl = details['poster'] as String;
          _fetchedTmdb = true;
        });
      } else {
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
    final imageUrl = widget.content.imageUrl ?? _tmdbPosterUrl;

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
        // If original imageUrl failed and we haven't tried TMDB yet, try it
        if (url == widget.content.imageUrl && !_fetchedTmdb && !_isFetching) {
          _fetchTmdbPoster();
        }
        return widget.placeholder;
      },
    );
  }
}
