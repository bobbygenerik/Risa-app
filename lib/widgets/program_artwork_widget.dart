import 'package:iptv_player/utils/debug_helper.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

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

    final epgService = Provider.of<IncrementalEpgService>(context, listen: false);
    
    // Get current program from EPG
    final currentProgram = epgService.getCurrentProgram(
      widget.channel.tvgId ?? widget.channel.id,
    );
    
    // Determine the search title
    final searchTitle = currentProgram?.title.isNotEmpty == true 
        ? currentProgram!.title 
        : widget.channel.name;
    
    debugLog('ProgramArtwork: Channel "${widget.channel.name}" - searching for "$searchTitle"');
    
    // Check cache
    if (_artworkCache.containsKey(searchTitle)) {
      if (mounted) {
        setState(() {
          _artworkUrl = _artworkCache[searchTitle];
        });
      }
      return;
    }
    
    // Check if already fetching
    if (_pendingRequests.contains(searchTitle)) {
      // Wait a bit and check cache again
      await Future.delayed(const Duration(milliseconds: 500));
      if (_artworkCache.containsKey(searchTitle) && mounted) {
        setState(() {
          _artworkUrl = _artworkCache[searchTitle];
        });
      }
      return;
    }
    
    _pendingRequests.add(searchTitle);
    
    try {
      // First try program's own image URL from EPG
      if (currentProgram?.imageUrl != null && currentProgram!.imageUrl!.isNotEmpty) {
        final url = currentProgram.imageUrl!;
        _artworkCache[searchTitle] = url;
        if (mounted) {
          setState(() {
            _artworkUrl = url;
          });
        }
        return;
      }
      
      // Fetch from TMDB
      debugLog('ProgramArtwork: Fetching TMDB art for "$searchTitle"');
      final url = await TMDBService.getBestBackdrop(searchTitle);
      
      _artworkCache[searchTitle] = url;
      
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
      _artworkCache[searchTitle] = null;
      if (mounted) {
        setState(() {
          _artworkUrl = null;
        });
      }
    } finally {
      _pendingRequests.remove(searchTitle);
    }
  }

  @override
  Widget build(BuildContext context) {
    final tvWidth = widget.width != null ? context.tvSpacing(widget.width!) : null;
    final tvHeight = widget.height != null ? context.tvSpacing(widget.height!) : null;
    return ClipRRect(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(context.tvSpacing(12)),
      child: SizedBox(
        width: tvWidth,
        height: tvHeight,
        child: _artworkUrl != null && _artworkUrl!.isNotEmpty
            ? CachedNetworkImage(
                imageUrl: _artworkUrl!,
                fit: widget.fit,
                placeholder: (context, url) => widget.placeholder ?? Icon(Icons.tv, size: context.tvIconSize(32)),
                errorWidget: (context, url, error) => widget.errorWidget ?? Icon(Icons.tv, size: context.tvIconSize(32)),
              )
            : (widget.placeholder ?? Icon(Icons.tv, size: context.tvIconSize(32))),
      ),
    );
  }
}
