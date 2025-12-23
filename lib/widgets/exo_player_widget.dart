import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import '../screens/exoplayer_fullscreen_screen.dart';

class ExoPlayerWidget extends StatefulWidget {
  final String url;
  final bool isLive;
  final IntegratedTranscriptionService? transcriptionService;
  final ValueNotifier<VideoPlayerController?>? controllerNotifier;

  const ExoPlayerWidget({
    super.key,
    required this.url,
    this.isLive = false,
    this.transcriptionService,
    this.controllerNotifier,
  });

  @override
  State<ExoPlayerWidget> createState() => _ExoPlayerWidgetState();
}

class _ExoPlayerWidgetState extends State<ExoPlayerWidget> {
  late VideoPlayerController _controller;
  Future<void>? _initializeFuture;
  bool _showControls = true;
  Timer? _hideTimer;
  Timer? _positionTimer;
  /// Notifies listeners of current playback position (updated ~500ms).
  final ValueNotifier<Duration> positionNotifier = ValueNotifier(Duration.zero);
  /// Notifies listeners when playback state changes.
  final ValueNotifier<bool> isPlayingNotifier = ValueNotifier(false);
  
  void _onControllerChanged() {
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
        _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url));
    _initializeFuture = _controller.initialize().then((_) {
      // Autoplay when ready
      _controller.play();
      // expose controller to external listeners if requested
      try {
        widget.controllerNotifier?.value = _controller;
      } catch (_) {}
      setState(() {});
    }).catchError((e) {
      // Let parent handle errors if needed
    });
    _controller.addListener(_onControllerChanged);
    // Start periodic position updates for transcription sync and external listeners
    _positionTimer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      try {
          final pos = _controller.value.position;
          positionNotifier.value = pos;
          isPlayingNotifier.value = _controller.value.isPlaying;
        widget.transcriptionService?.updatePlaybackPosition(pos);
      } catch (_) {}
    });
    _startHideTimer();
  }

  void _startHideTimer() {
    _hideTimer?.cancel();
    _hideTimer = Timer(const Duration(seconds: 4), () {
      setState(() => _showControls = false);
    });
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    _positionTimer?.cancel();
    _controller.removeListener(_onControllerChanged);
    try {
      widget.controllerNotifier?.value = null;
    } catch (_) {}
    _controller.dispose();
    positionNotifier.dispose();
    isPlayingNotifier.dispose();
    super.dispose();
  }

  String _formatDuration(Duration d) {
    String two(int n) => n.toString().padLeft(2, '0');
    final h = d.inHours;
    final m = d.inMinutes.remainder(60);
    final s = d.inSeconds.remainder(60);
    if (h > 0) return '${two(h)}:${two(m)}:${two(s)}';
    return '${two(m)}:${two(s)}';
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }

        final value = _controller.value;
        final aspect = value.size.width > 0 && value.size.height > 0
            ? value.aspectRatio
            : 16 / 9;

        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            setState(() {
              _showControls = !_showControls;
            });
            if (_showControls) _startHideTimer();
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: aspect,
                child: VideoPlayer(_controller),
              ),
              if (_showControls) _buildControls(context, value),
              if (value.isBuffering)
                const Center(child: CircularProgressIndicator()),
            ],
          ),
        );
      },
    );
  }

  Widget _buildControls(BuildContext context, VideoPlayerValue value) {
    final isPlaying = value.isPlaying;
    final duration = value.duration;
    final position = value.position;

    return Positioned.fill(
      child: Container(
        color: Colors.black38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Center Play/Pause
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    if (isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                    _startHideTimer();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                ),
              ),
            ),
            // Progress and controls row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
              child: Row(
                children: [
                  Text(
                    _formatDuration(position),
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: widget.isLive
                        ? const Text('LIVE', style: TextStyle(color: Colors.redAccent))
                        : SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackHeight: 3,
                              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                            ),
                            child: Slider(
                              value: position.inMilliseconds.clamp(0, duration.inMilliseconds).toDouble(),
                              max: duration.inMilliseconds.toDouble().clamp(1.0, double.infinity),
                              onChanged: (v) {
                                final target = Duration(milliseconds: v.toInt());
                                _controller.seekTo(target);
                              },
                              onChangeStart: (_) => _hideTimer?.cancel(),
                              onChangeEnd: (_) => _startHideTimer(),
                            ),
                          ),
                  ),
                  const SizedBox(width: 6),
                  // Fullscreen button
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ExoPlayerFullscreenScreen(
                          videoUrl: widget.url,
                          isLive: widget.isLive,
                          title: null,
                        ),
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      child: const Icon(Icons.fullscreen, color: Colors.white, size: 18),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    _formatDuration(duration),
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
