import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
// Note: fullscreen native ExoPlayer view is provided elsewhere; this widget
// focuses solely on rendering video for use with external overlays.

class ExoPlayerWidget extends StatefulWidget {
  final String url;
  final bool isLive;
  final IntegratedTranscriptionService? transcriptionService;
  final ValueNotifier<VideoPlayerController?>? controllerNotifier;
  final bool showInternalControls;
  final BoxFit fit;

  const ExoPlayerWidget({
    super.key,
    required this.url,
    this.isLive = false,
    this.transcriptionService,
    this.controllerNotifier,
    this.showInternalControls = false,
    this.fit = BoxFit.cover,
  });

  @override
  State<ExoPlayerWidget> createState() => _ExoPlayerWidgetState();
}

class _ExoPlayerWidgetState extends State<ExoPlayerWidget> {
  late VideoPlayerController _controller;
  Future<void>? _initializeFuture;
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
  }

  @override
  void dispose() {
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

  // Removed unused internal helpers; formatting and hide-timers
  // are handled by external overlays when needed.

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }

        final value = _controller.value;

        return Stack(
          alignment: Alignment.center,
          children: [
            // Fill available area while preserving aspect via FittedBox
            SizedBox.expand(
              child: FittedBox(
                fit: widget.fit,
                alignment: Alignment.center,
                child: SizedBox(
                  width: value.size.width > 0 ? value.size.width : 16,
                  height: value.size.height > 0 ? value.size.height : 9,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            if (value.isBuffering)
              const Center(child: CircularProgressIndicator()),
          ],
        );
      },
    );
  }
}
