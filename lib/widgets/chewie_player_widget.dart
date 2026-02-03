import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class ChewiePlayerWidget extends StatefulWidget {
  final String url;
  final bool isLive;

  const ChewiePlayerWidget({
    super.key,
    required this.url,
    this.isLive = false,
  });

  @override
  State<ChewiePlayerWidget> createState() => _ChewiePlayerWidgetState();
}

class _ChewiePlayerWidgetState extends State<ChewiePlayerWidget> {
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  @override
  Widget build(BuildContext context) {
    if (_chewieController == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Focus(
      autofocus: true,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter ||
              event.logicalKey == LogicalKeyboardKey.space) {
            if (_chewieController!.isPlaying) {
              _chewieController!.pause();
            } else {
              _chewieController!.play();
            }
            // Toggle controls visibility
            if (_chewieController!.isFullScreen) {
               // Chewie doesn't expose toggleControls explicitly easily without custom controls, 
               // but pausing usually shows them.
            }
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowUp ||
              event.logicalKey == LogicalKeyboardKey.arrowDown) {
             // Show controls on up/down
             // _chewieController!.showControls(); // Not public API, but triggering state change helps
             setState(() {}); 
             return KeyEventResult.ignored; // Let Chewie handle volume/scrubbing if it wants
          }
        }
        return KeyEventResult.ignored;
      },
      child: Chewie(controller: _chewieController!),
    );
  }

  @override
  void didUpdateWidget(ChewiePlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.url != oldWidget.url) {
      _disposeControllers();
      _initializePlayer();
    }
  }

  @override
  void dispose() {
    _disposeControllers();
    super.dispose();
  }

  void _disposeControllers() {
    _chewieController?.dispose();
    _chewieController = null;
    _videoController?.dispose();
    _videoController = null;
  }

  Future<void> _initializePlayer() async {
    final uri = Uri.parse(widget.url);
    _videoController = VideoPlayerController.networkUrl(
      uri,
      // Fix Jitter: HLS hint
      formatHint: uri.path.endsWith('.m3u8') ? VideoFormat.hls : null,
      // Revert to SurfaceView for better performance on Android TV
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: false), 
      httpHeaders: {
        'User-Agent': 'VLC/3.0.0 LibVLC/3.0.0',
        'Connection': 'keep-alive',
        'Accept': '*/*',
      },
    );
    
    try {
      await _videoController!.initialize();
      
      _chewieController = ChewieController(
        videoPlayerController: _videoController!,
        autoPlay: true,
        looping: false,
        aspectRatio: _videoController!.value.aspectRatio,
        autoInitialize: false, 
        allowFullScreen: true,
        allowedScreenSleep: false,
        showControls: false,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error, color: Colors.red, size: 48),
                const SizedBox(height: 16),
                Text(
                  'Playback Error',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 8),
                Text(
                  errorMessage,
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      );
      
      if (mounted) setState(() {});
    } catch (e) {
      debugPrint('Video player initialization error: $e');
      if (mounted) setState(() {});
    }
  }
}
