import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/models/channel.dart';

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
  bool _isLoading = true;
  String? _programTitle;
  
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

    final epgService = Provider.of<EpgService>(context, listen: false);
    
    // Get current program from EPG
    final currentProgram = epgService.getCurrentProgram(
      widget.channel.tvgId ?? widget.channel.id,
      channelName: widget.channel.name,
    );
    
    // Determine the search title
    final searchTitle = currentProgram?.title.isNotEmpty == true 
        ? currentProgram!.title 
        : widget.channel.name;
    
    _programTitle = currentProgram?.title;
    
    debugPrint('ProgramArtwork: Channel "${widget.channel.name}" - searching for "$searchTitle"');
    
    // Check cache
    if (_artworkCache.containsKey(searchTitle)) {
      if (mounted) {
        setState(() {
          _artworkUrl = _artworkCache[searchTitle];
          _isLoading = false;
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
          _isLoading = false;
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
            _isLoading = false;
          });
        }
        return;
      }
      
      // Fetch from TMDB
      debugPrint('ProgramArtwork: Fetching TMDB art for "$searchTitle"');
      final url = await TMDBService.getBestBackdrop(searchTitle);
      
      _artworkCache[searchTitle] = url;
      
      if (mounted) {
        if (url != null) {
          debugPrint('ProgramArtwork: Found art for "$searchTitle": $url');
        } else {
          debugPrint('ProgramArtwork: No art found for "$searchTitle"');
        }
        setState(() {
          _artworkUrl = url;
          _isLoading = false;
        });
      }
    } catch (e) {
      debugPrint('ProgramArtwork: Error fetching art for "$searchTitle": $e');
      _artworkCache[searchTitle] = null;
      if (mounted) {
        setState(() {
          _artworkUrl = null;
          _isLoading = false;
        });
      }
    } finally {
      _pendingRequests.remove(searchTitle);
    }
  }

  Widget _buildPlaceholder() {
    if (widget.placeholder != null) {
      return widget.placeholder!;
    }
    
    // Default placeholder with channel name
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey[900]!,
            Colors.grey[800]!,
          ],
        ),
        borderRadius: widget.borderRadius,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.live_tv,
              color: Colors.white54,
              size: (widget.height ?? 100) * 0.3,
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                widget.channel.name,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmer() {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: widget.borderRadius,
      ),
      child: const Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white30),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return _buildShimmer();
    }
    
    if (_artworkUrl == null || _artworkUrl!.isEmpty) {
      return widget.errorWidget ?? _buildPlaceholder();
    }

    return ClipRRect(
      borderRadius: widget.borderRadius ?? BorderRadius.zero,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            imageUrl: _artworkUrl!,
            width: widget.width,
            height: widget.height,
            fit: widget.fit,
            placeholder: (context, url) => _buildShimmer(),
            errorWidget: (context, url, error) => 
                widget.errorWidget ?? _buildPlaceholder(),
          ),
          // Program title overlay at bottom if we have EPG data
          if (_programTitle != null && _programTitle!.isNotEmpty)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.8),
                    ],
                  ),
                ),
                child: Text(
                  _programTitle!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
