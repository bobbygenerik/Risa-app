import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/services/sportradar_service.dart';
import 'package:iptv_player/services/thesportsdb_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/sports_classifier.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/app_colors.dart';

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

  // Static cache shared across all instances
  static final Map<String, String?> _artworkCache = {};
  static final Set<String> _pendingRequests = {};

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

  Future<void> _fetchArtwork() async {
    if (!mounted) return;

    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);

    // Get current program from EPG (resolver-aware)
    final currentProgram = epgService.getProgramForChannel(
      widget.channel.tvgId ?? widget.channel.id,
      channelName: widget.channel.name,
    );

    // Determine the search title
    final searchTitle = currentProgram?.title.isNotEmpty == true
        ? currentProgram!.title
        : widget.channel.name;

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
      // First try program's own image URL from EPG
      if (currentProgram?.imageUrl != null &&
          currentProgram!.imageUrl!.isNotEmpty) {
        final url = currentProgram.imageUrl!;
        _artworkCache[cacheKey] = url;
        if (mounted) {
          setState(() {
            _artworkUrl = url;
          });
        }
        return;
      }

      // Priority order for sports: Sportradar -> TheSportsDB -> TVDB
      // Priority order for general: TVDB -> TMDB -> Fanart
      if (isSports) {
        debugLog('ProgramArtwork: Attempting Sportradar for "$searchTitle"');
        final sportradarUrl =
            await SportradarService.getHeroImage(searchTitle);
        if (sportradarUrl != null) {
          _artworkCache[cacheKey] = sportradarUrl;
          if (mounted) {
            setState(() {
              _artworkUrl = sportradarUrl;
            });
          }
          return;
        }

        debugLog(
            'ProgramArtwork: Sportradar miss, falling back to TheSportsDB for "$searchTitle"');
        final sportsDbUrl =
            await TheSportsDbService.getHeroImage(searchTitle);
        if (sportsDbUrl != null) {
          _artworkCache[cacheKey] = sportsDbUrl;
          if (mounted) {
            setState(() {
              _artworkUrl = sportsDbUrl;
            });
          }
          return;
        }

        debugLog(
            'ProgramArtwork: No sports hero available for "$searchTitle"; skipping TMDB');
        _artworkCache[cacheKey] = null;
        if (mounted) {
          setState(() {
            _artworkUrl = null;
          });
        }
        return;
      }

      // General content: TMDB handles TVDB -> TMDB -> Fanart internally
      debugLog('ProgramArtwork: Fetching TMDB art for "$searchTitle"');
      final url = await TMDBService.getBestBackdrop(searchTitle);

      _artworkCache[cacheKey] = url;

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
      _artworkCache[cacheKey] = null;
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
    final cacheWidth = tvWidth == null
        ? null
        : math.min(600, (tvWidth * dpr).round());
    final cacheHeight = tvHeight == null
        ? null
        : math.min(600, (tvHeight * dpr).round());
    return ClipRRect(
      borderRadius:
          widget.borderRadius ?? BorderRadius.circular(context.tvSpacing(12)),
      child: SizedBox(
        width: tvWidth,
        height: tvHeight,
        child: _artworkUrl != null && _artworkUrl!.isNotEmpty
            ? CachedNetworkImage(
                imageUrl: _artworkUrl!,
                httpHeaders: HttpClientService().imageHeaders,
                fit: widget.fit,
                memCacheWidth: cacheWidth,
                memCacheHeight: cacheHeight,
                imageBuilder: (context, imageProvider) {
                  ImageLoadProbe.recordSuccess(_artworkUrl!, 'program_artwork');
                  return Image(
                    image: imageProvider,
                    fit: widget.fit,
                  );
                },
                placeholder: (context, url) =>
                    widget.placeholder ??
                    _buildGradientFallback(context, tvWidth, tvHeight),
                errorWidget: (context, url, error) {
                  ImageLoadProbe.recordFailure(url, 'program_artwork', error);
                  return widget.errorWidget ??
                      _buildGradientFallback(context, tvWidth, tvHeight);
                },
              )
            : (widget.placeholder ??
                _buildGradientFallback(context, tvWidth, tvHeight)),
      ),
    );
  }

  Widget _buildGradientFallback(
      BuildContext context, double? width, double? height) {
    return Container(
      width: width,
      height: height,
      decoration: AppColors.channelCardFallbackDecoration,
      alignment: Alignment.center,
      child: Icon(
        Icons.tv,
        size: context.tvIconSize(32),
        color: Colors.white70,
      ),
    );
  }
}
