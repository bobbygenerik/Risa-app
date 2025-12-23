import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayerControlOverlay extends StatefulWidget {
  final ValueNotifier<VideoPlayerController?> controllerNotifier;
  final bool isLive;

  const PlayerControlOverlay({Key? key, required this.controllerNotifier, this.isLive = false}) : super(key: key);

  @override
  State<PlayerControlOverlay> createState() => PlayerControlOverlayState();
}

class PlayerControlOverlayState extends State<PlayerControlOverlay> {
  VideoPlayerController? get _controller => widget.controllerNotifier.value;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    widget.controllerNotifier.addListener(_onControllerChanged);
    _onControllerChanged();
  }

  void _onControllerChanged() {
    final c = widget.controllerNotifier.value;
    if (c == null) return;
    setState(() => _isPlaying = c.value.isPlaying);
  }

  @override
  void dispose() {
    widget.controllerNotifier.removeListener(_onControllerChanged);
    super.dispose();
  }

  void _togglePlayPause() {
    final c = _controller;
    if (c == null) return;
    if (c.value.isPlaying) {
      c.pause();
    } else {
      c.play();
    }
    setState(() => _isPlaying = c.value.isPlaying);
  }

  void _rewind() {
    final c = _controller;
    if (c == null) return;
    final pos = c.value.position - const Duration(seconds: 10);
    c.seekTo(pos > Duration.zero ? pos : Duration.zero);
  }

  void _fastForward() {
    final c = _controller;
    if (c == null) return;
    final target = c.value.position + const Duration(seconds: 10);
    final dur = c.value.duration;
    c.seekTo(target < dur ? target : dur);
  }

  void _toggleMute() {
    final c = _controller;
    if (c == null) return;
    final vol = c.value.volume > 0 ? 0.0 : 1.0;
    c.setVolume(vol);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: _rewind, icon: const Icon(Icons.replay_10, color: Colors.white)),
          const SizedBox(width: 12),
          IconButton(onPressed: _togglePlayPause, icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.white, size: 28)),
          const SizedBox(width: 12),
          IconButton(onPressed: _fastForward, icon: const Icon(Icons.forward_10, color: Colors.white)),
          const SizedBox(width: 24),
          IconButton(onPressed: _toggleMute, icon: const Icon(Icons.volume_up, color: Colors.white)),
        ],
      ),
    );
  }
}
