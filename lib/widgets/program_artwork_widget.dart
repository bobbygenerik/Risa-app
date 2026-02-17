import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/services/thesportsdb_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/sports_classifier.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/artwork_validator.dart';
import 'package:iptv_player/widgets/brand_fallback_background.dart';

/// A widget that displays program artwork for a channel based on what's currently airing.
/// Uses EPG data to get the current program, then fetches artwork from TMDB.
class ProgramArtworkWidget extends StatefulWidget {
  final Channel channel;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Widget? placeholder;
  final Widget? errorWidget;
  final BorderRadius? borderRadius;

  const ProgramArtworkWidget({
    super.key,
    required this.channel,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.placeholder,
    this.errorWidget,
    this.borderRadius,
  });

  @override
  State<ProgramArtworkWidget> createState() => _ProgramArtworkWidgetState();
}

class _ProgramArtworkWidgetState extends State<ProgramArtworkWidget> {
  String? _artworkUrl;

  // Static cache shared across all instances with LRU eviction
  static final Map<String, String?> _artworkCache = {};
  static final Set<String> _pendingRequests = {};
  static final List<String> _artworkCacheOrder = []; // LRU tracking
  static const int _maxCacheSize =
      100; // Limit cache to prevent unbounded growth

  void _addToCache(String key, String? value) {
    // Remove if already exists to update LRU order
    _artworkCacheOrder.remove(key);

    // Add to cache
    _artworkCache[key] = value;
    _artworkCacheOrder.add(key);

    // Evict oldest entries if over limit
    while (_artworkCacheOrder.length > _maxCacheSize) {
      final oldest = _artworkCacheOrder.removeAt(0);
      _artworkCache.remove(oldest);
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchArtwork();
  }

  @override
  void didUpdateWidget(ProgramArtworkWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.channel.id != oldWidget.channel.id) {
      _fetchArtwork();
    }
  }

  bool _isMovieProgram(Program? program) {
    if (program == null) return false;
    final info = [
      program.title,
      program.category ?? '',
      program.description ?? '',
      widget.channel.name,
      widget.channel.groupTitle ?? '',
    ].join(' ').toLowerCase();
    return info.contains('movie') ||
        info.contains('film') ||
        info.contains('cinema') ||
        info.contains('feature');
  }

  bool _isNewsProgram(Program? program) {
    if (program == null) return false;
    if (EPGMatchingUtils.isLikelyNewsTitle(program.title)) return true;
    final info = [
      program.title,
      program.category ?? '',
      program.description ?? '',
      widget.channel.name,
      widget.channel.groupTitle ?? '',
    ].join(' ').toLowerCase();
    return info.contains('news') || info.contains('newscast');
  }

  String _stripEpisodeTitleForLookup(String title, Program? program) {
    final trimmed = title.trim();
    if (trimmed.isEmpty) return title;
    if (program == null) return title;
    if (SportsClassifier.isSportsProgram(program, widget.channel)) {
      return title;
    }
    if (_isMovieProgram(program) || _isNewsProgram(program)) {
      return title;
    }
    return EPGMatchingUtils.stripEpisodeSubtitleLoose(title);
  }

  Future<void> _fetchArtwork() async {
    if (!mounted) return;

    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);

    // Get current program from EPG (resolver-aware)
    final currentProgram = epgService.getProgramForChannel(
      widget.channel.epgLookupId,
      channelName: widget.channel.epgLookupNameFallback,
    );

    // Determine the search title
    final rawTitle = currentProgram?.title.isNotEmpty == true
        ? currentProgram!.title
        : widget.channel.name;
    final searchTitle = _stripEpisodeTitleForLookup(rawTitle, currentProgram);

    final isSports = SportsClassifier.isSportsProgram(
      currentProgram,
      widget.channel,
    );
    final cacheKey =
        '${searchTitle.toLowerCase()}|${isSports ? 'sports' : 'general'}';

    debugLog(
        'ProgramArtwork: Channel "${widget.channel.name}" - searching for "$searchTitle"');

    // Check cache
    if (_artworkCache.containsKey(cacheKey)) {
      if (mounted) {
        setState(() {
          _artworkUrl = _artworkCache[cacheKey];
        });
      }
      return;
    }

    // Check if already fetching
    if (_pendingRequests.contains(cacheKey)) {
      // Wait a bit and check cache again
      await Future.delayed(const Duration(milliseconds: 500));
      if (_artworkCache.containsKey(cacheKey) && mounted) {
        setState(() {
          _artworkUrl = _artworkCache[cacheKey];
        });
      }
      return;
    }

    _pendingRequests.add(cacheKey);

    try {
      // First try program's own image URL from EPG — but validate it's not a poster
      if (currentProgram?.imageUrl != null &&
          currentProgram!.imageUrl!.isNotEmpty) {
        final url = currentProgram.imageUrl!;
        // Reject poster/portrait URLs from EPG using centralized validator
        final isPoster = ArtworkValidator.isLikelyPosterUrl(url);
        if (!isPoster) {
          _addToCache(cacheKey, url);
          if (mounted) {
            setState(() {
              _artworkUrl = url;
            });
          }
          return;
        }
        // EPG image was poster — fall through to try API sources
        debugLog(
            'ProgramArtwork: EPG image is poster, trying APIs for "$searchTitle"');
      }

      if (isSports) {
        debugLog('ProgramArtwork: Attempting TheSportsDB for "$searchTitle"');
        final sportsDbUrl = await TheSportsDbService.getHeroImage(searchTitle);
        if (sportsDbUrl != null) {
          _addToCache(cacheKey, sportsDbUrl);
          if (mounted) {
            setState(() {
              _artworkUrl = sportsDbUrl;
            });
          }
          return;
        }

        // Sports programs: fall through to TMDB instead of giving up.
        // Many sports shows (SportsCenter, etc.) have TMDB backdrops.
        debugLog(
            'ProgramArtwork: No sports hero for "$searchTitle"; trying TMDB');
      }

      // General content (and sports fallback): try TMDB → TVDB → Fanart
      debugLog('ProgramArtwork: Fetching TMDB art for "$searchTitle"');
      final url = await TMDBService.getBestBackdrop(searchTitle);

      _addToCache(cacheKey, url);

      if (mounted) {
        if (url != null) {
          debugLog('ProgramArtwork: Found art for "$searchTitle": $url');
        } else {
          debugLog('ProgramArtwork: No art found for "$searchTitle"');
        }
        setState(() {
          _artworkUrl = url;
        });
      }
    } catch (e) {
      debugLog('ProgramArtwork: Error fetching art for "$searchTitle": $e');
      _addToCache(cacheKey, null);
      if (mounted) {
        setState(() {
          _artworkUrl = null;
        });
      }
    } finally {
      _pendingRequests.remove(cacheKey);
    }
  }

  @override
  Widget build(BuildContext context) {
    final tvWidth =
        widget.width != null ? context.tvSpacing(widget.width!) : null;
    final tvHeight =
        widget.height != null ? context.tvSpacing(widget.height!) : null;
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final cacheWidth =
        tvWidth == null ? null : math.min(600, (tvWidth * dpr).round());
    final cacheHeight =
        tvHeight == null ? null : math.min(600, (tvHeight * dpr).round());
    Widget content;
    if (_artworkUrl != null &&
        _artworkUrl!.isNotEmpty &&
        !ImageFailureCache.shouldSkip(_artworkUrl!)) {
      ImageLoadProbe.recordAttempt(_artworkUrl!, 'program_artwork');
      content = CachedNetworkImage(
        imageUrl: _artworkUrl!,
        httpHeaders: HttpClientService().imageHeaders,
        fit: widget.fit,
        memCacheWidth: cacheWidth,
        memCacheHeight: cacheHeight,
        imageBuilder: (context, imageProvider) {
          ImageFailureCache.recordSuccess(_artworkUrl!);
          ImageLoadProbe.recordSuccess(_artworkUrl!, 'program_artwork');
          return _LandscapeGuard(
            imageProvider: imageProvider,
            url: _artworkUrl!,
            fit: widget.fit,
            fallback: widget.placeholder ??
                _buildGradientFallback(context, tvWidth, tvHeight),
          );
        },
        placeholder: (context, url) =>
            widget.placeholder ??
            _buildGradientFallback(context, tvWidth, tvHeight),
        errorWidget: (context, url, error) {
          ImageFailureCache.recordFailure(url, error);
          ImageLoadProbe.recordFailure(url, 'program_artwork', error);
          return widget.errorWidget ??
              _buildGradientFallback(context, tvWidth, tvHeight);
        },
        useOldImageOnUrlChange: true,
      );
    } else {
      content = widget.placeholder ??
          _buildGradientFallback(context, tvWidth, tvHeight);
    }

    return ClipRRect(
      borderRadius:
          widget.borderRadius ?? BorderRadius.circular(context.tvSpacing(12)),
      child: SizedBox(
        width: tvWidth,
        height: tvHeight,
        child: content,
      ),
    );
  }

  Widget _buildGradientFallback(
      BuildContext context, double? width, double? height) {
    return SizedBox(
      width: width,
      height: height,
      child: BrandFallbackBackground(
        child: Center(
          child: Icon(
            Icons.tv,
            size: context.tvIconSize(32),
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}

/// Inline landscape guard for ProgramArtworkWidget — rejects portrait images
/// at decode time and shows the fallback instead.
class _LandscapeGuard extends StatefulWidget {
  const _LandscapeGuard({
    required this.imageProvider,
    required this.url,
    required this.fit,
    required this.fallback,
  });

  final ImageProvider imageProvider;
  final String url;
  final BoxFit fit;
  final Widget fallback;

  @override
  State<_LandscapeGuard> createState() => _LandscapeGuardState();
}

class _LandscapeGuardState extends State<_LandscapeGuard> {
  ImageStream? _stream;
  ImageInfo? _info;
  late final ImageStreamListener _streamListener;

  @override
  void initState() {
    super.initState();
    _streamListener = ImageStreamListener(
      (info, sync) {
        if (!mounted) return;
        setState(() => _info = info);
      },
      onError: (error, stackTrace) {
        if (!mounted) return;
        ImageFailureCache.recordFailure(widget.url, error);
        setState(() => _info = null);
      },
    );
    _resolveImage();
  }

  void _resolveImage() {
    _stream?.removeListener(_streamListener);
    _info = null;
    final stream = widget.imageProvider.resolve(const ImageConfiguration());
    _stream = stream;
    stream.addListener(_streamListener);
  }

  @override
  void didUpdateWidget(covariant _LandscapeGuard old) {
    super.didUpdateWidget(old);
    if (old.imageProvider != widget.imageProvider) _resolveImage();
  }

  @override
  void dispose() {
    _stream?.removeListener(_streamListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final info = _info;
    if (info == null) return widget.fallback;
    final w = info.image.width;
    final h = info.image.height;
    // Reject portrait images (taller than wide)
    if (w / h < 1.0) {
      ImageFailureCache.recordPortrait(widget.url);
      ImageLoadProbe.recordFailure(
          widget.url, 'program_artwork', Exception('Portrait rejected'));
      return widget.fallback;
    }
    return Image(
      image: widget.imageProvider,
      fit: widget.fit,
      gaplessPlayback: true,
    );
  }
}
