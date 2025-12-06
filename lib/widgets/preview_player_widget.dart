import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Widget that plays video preview on hover without audio
class PreviewPlayerWidget extends StatefulWidget {
  final String videoUrl;
  final Widget child;
  final bool enablePreview;

  const PreviewPlayerWidget({
    super.key,
    required this.videoUrl,
    required this.child,
    this.enablePreview = true,
  });

  @override
  State<PreviewPlayerWidget> createState() => _PreviewPlayerWidgetState();
}

class _PreviewPlayerWidgetState extends State<PreviewPlayerWidget> {
  VideoPlayerController? _controller;
  bool _isHovering = false;
  bool _isInitialized = false;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  Future<void> _initializePreview() async {
    if (!widget.enablePreview) return;

    try {
      _controller = VideoPlayerController.networkUrl(
        Uri.parse(widget.videoUrl),
      );

      await _controller!.initialize();
      await _controller!.setVolume(0.0); // Muted preview
      await _controller!.play();

      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    } catch (e) {
      debugPrint('Preview initialization error: $e');
    }
  }

  void _stopPreview() {
    _controller?.pause();
    _controller?.dispose();
    _controller = null;
    _isInitialized = false;
  }

  void _onHoverEnter() {
    if (!_isHovering && widget.enablePreview) {
      setState(() {
        _isHovering = true;
      });
      _initializePreview();
    }
  }

  void _onHoverExit() {
    if (_isHovering) {
      setState(() {
        _isHovering = false;
      });
      _stopPreview();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHoverEnter(),
      onExit: (_) => _onHoverExit(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.tvSpacing(12)),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (_isHovering && _isInitialized && _controller != null)
              SizedBox(
                width: context.tvSpacing(120),
                height: context.tvSpacing(80),
                child: VideoPlayer(_controller!),
              ),
            widget.child,
          ],
        ),
      ),
    );
  }
}
