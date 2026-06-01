import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'media_kit_player_widget.dart';

class ChewiePlayerWidget extends StatefulWidget {
  final String url;
  final bool isLive;
  final VoidCallback? onSurfaceReady;

  const ChewiePlayerWidget({
    super.key,
    required this.url,
    this.isLive = false,
    this.onSurfaceReady,
  });

  @override
  State<ChewiePlayerWidget> createState() => _ChewiePlayerWidgetState();
}

class _ChewiePlayerWidgetState extends State<ChewiePlayerWidget> {
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;
  bool _isInitializing = true;
  String? _errorMessage;
  bool _useChewieFallback = false;
  bool _nativePlaybackReady = false;
  bool _mountNativePlayer = false;

  // Native AndroidView ANRs on SHIELD during Live TV → Watch; use SimpleTvPlayer on Android.
  static bool get _preferNativeAndroid => false;

  @override
  void initState() {
    super.initState();
    if (!kIsWeb && Platform.isLinux) {
      _isInitializing = false;
      return;
    }
    if (_preferNativeAndroid && !_useChewieFallback) {
      _isInitializing = false;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Future.delayed(const Duration(milliseconds: 600), () {
          if (mounted) setState(() => _mountNativePlayer = true);
        });
      });
      return;
    }
    _scheduleChewieInit();
  }

  void _notifySurfaceReady() {
    widget.onSurfaceReady?.call();
  }

  void _scheduleChewieInit() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final delay = Platform.isAndroid
          ? const Duration(milliseconds: 500)
          : const Duration(milliseconds: 250);
      Future.delayed(delay, () {
        if (mounted) _initializePlayer();
      });
    });
  }

  void _onNativeError(String error) {
    debugPrint('Native ExoPlayer failed, falling back to Chewie: $error');
    if (!mounted) return;
    setState(() {
      _useChewieFallback = true;
      _nativePlaybackReady = false;
      _isInitializing = true;
      _errorMessage = null;
    });
    _scheduleChewieInit();
  }

  @override
  Widget build(BuildContext context) {
    // Use MediaKit on Linux/desktop — video_player has no Linux backend
    if (!kIsWeb && Platform.isLinux) {
      return MediaKitPlayerWidget(url: widget.url, isLive: widget.isLive);
    }

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
                _useChewieFallback = true;
              });
              _scheduleChewieInit();
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
      if (_preferNativeAndroid && !_useChewieFallback) {
        setState(() => _nativePlaybackReady = false);
        return;
      }
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
      final headers = HttpClientService().videoHeaders;

      _videoController = VideoPlayerController.networkUrl(
        uri,
        formatHint: uri.toString().toLowerCase().contains('.m3u8') ? VideoFormat.hls : null,
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: false,
        ),
        httpHeaders: {
          'User-Agent': 'VLC/3.0.0 LibVLC/3.0.0',
          'Connection': 'keep-alive',
          'Accept': '*/*',
        },
      );

      _videoController!.addListener(_onVideoPlayerUpdate);

      await _videoController!.initialize().timeout(
        const Duration(seconds: 15),
        onTimeout: () {
          throw TimeoutException('Video initialization timed out');
        },
      );

      if (!mounted) return;

      var aspectRatio = _videoController!.value.aspectRatio;
      if (!aspectRatio.isFinite || aspectRatio <= 0) {
        aspectRatio = 16 / 9;
      }

      _chewieController = ChewieController(
        videoPlayerController: _videoController!,
        autoPlay: true,
        looping: false,
        aspectRatio: aspectRatio,
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
        startAt: Duration.zero,
      );

      if (mounted) {
        setState(() {
          _isInitializing = false;
        });
        _notifySurfaceReady();
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
    final v = _videoController;
    if (v == null) return;
    if (v.value.hasError && _errorMessage == null) {
      setState(() {
        _errorMessage = v.value.errorDescription ?? 'Unknown error';
      });
      return;
    }
    // Live streams: restart if the player stalls or reports ended
    if (widget.isLive &&
        v.value.isInitialized &&
        !v.value.isPlaying &&
        !v.value.isBuffering &&
        !v.value.hasError &&
        _errorMessage == null &&
        _chewieController != null) {
      v.play();
    }
  }
}

class TimeoutException implements Exception {
  final String message;
  TimeoutException(this.message);

  @override
  String toString() => message;
}
