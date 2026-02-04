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
  bool _isInitializing = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    // Defer initialization to next frame to avoid blocking UI
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializePlayer();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_errorMessage != null) {
      return _buildErrorWidget(_errorMessage!);
    }

    if (_chewieController == null || _isInitializing) {
      return _buildLoadingWidget();
    }

    return Focus(
      autofocus: true,
      onKeyEvent: _handleKeyEvent,
      child: Chewie(controller: _chewieController!),
    );
  }

  Widget _buildLoadingWidget() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white70),
          ),
          SizedBox(height: 16),
          Text(
            'Loading stream...',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, color: Colors.red, size: 48),
          const SizedBox(height: 16),
          const Text(
            'Playback Error',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            error,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _errorMessage = null;
                _isInitializing = true;
              });
              _initializePlayer();
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  KeyEventResult _handleKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    if (event.logicalKey == LogicalKeyboardKey.select ||
        event.logicalKey == LogicalKeyboardKey.enter ||
        event.logicalKey == LogicalKeyboardKey.space) {
      if (_chewieController != null) {
        if (_chewieController!.isPlaying) {
          _chewieController!.pause();
        } else {
          _chewieController!.play();
        }
      }
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  @override
  void didUpdateWidget(ChewiePlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.url != oldWidget.url) {
      _disposeControllers();
      _isInitializing = true;
      _errorMessage = null;
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
    if (!mounted) return;

    try {
      final uri = Uri.parse(widget.url);

      // Create controller with optimized settings for live TV
      _videoController = VideoPlayerController.networkUrl(
        uri,
        formatHint: uri.path.endsWith('.m3u8') ? VideoFormat.hls : null,
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: false,
        ),
        httpHeaders: {
          'User-Agent': 'RisaTV/1.0',
          'Connection': 'keep-alive',
          'Accept': '*/*',
        },
      );

      // Add listener before initialization to catch errors early
      _videoController!.addListener(_onVideoPlayerUpdate);

      // Initialize with timeout to prevent hanging
      await _videoController!.initialize().timeout(
        const Duration(seconds: 15),
        onTimeout: () {
          throw TimeoutException('Video initialization timed out');
        },
      );

      if (!mounted) return;

      // Create Chewie controller with optimized settings
      _chewieController = ChewieController(
        videoPlayerController: _videoController!,
        autoPlay: true,
        looping: false,
        aspectRatio: _videoController!.value.aspectRatio,
        autoInitialize: true,
        allowFullScreen: true,
        allowedScreenSleep: false,
        showControls: false,
        materialProgressColors: ChewieProgressColors(
          playedColor: Colors.white,
          handleColor: Colors.white,
          backgroundColor: Colors.white24,
          bufferedColor: Colors.white38,
        ),
        errorBuilder: (context, errorMessage) {
          return _buildErrorWidget(errorMessage);
        },
        // Buffering settings for smoother playback
        startAt: Duration.zero,
      );

      if (mounted) {
        setState(() {
          _isInitializing = false;
        });
      }
    } catch (e) {
      debugPrint('Video player initialization error: $e');
      if (mounted) {
        setState(() {
          _isInitializing = false;
          _errorMessage = e.toString();
        });
      }
    }
  }

  void _onVideoPlayerUpdate() {
    // Handle any video player errors
    if (_videoController != null &&
        _videoController!.value.hasError &&
        _errorMessage == null) {
      setState(() {
        _errorMessage =
            _videoController!.value.errorDescription ?? 'Unknown error';
      });
    }
  }
}

class TimeoutException implements Exception {
  final String message;
  TimeoutException(this.message);

  @override
  String toString() => message;
}
