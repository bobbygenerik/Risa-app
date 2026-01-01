import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/controllers/universal_player_controller.dart';
import 'package:iptv_player/widgets/exoplayer_video_view.dart';

class ExoPlayerWidget extends StatefulWidget {
  final String url;
  final bool isLive;
  final IntegratedTranscriptionService? transcriptionService;
  final ValueNotifier<UniversalPlayerController?>? controllerNotifier;
  final BoxFit fit;

  const ExoPlayerWidget({
    super.key,
    required this.url,
    this.isLive = false,
    this.transcriptionService,
    this.controllerNotifier,
    this.fit = BoxFit.cover,
  });

  @override
  State<ExoPlayerWidget> createState() => _ExoPlayerWidgetState();
}

class _ExoPlayerWidgetState extends State<ExoPlayerWidget> {
  late UniversalPlayerController _controller;

  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeController();
  }
  
  @override
  void didUpdateWidget(ExoPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.url != oldWidget.url) {
      _controller.dispose();
      _initializeController();
    }
  }

  void _initializeController() {
    _controller = UniversalPlayerController.create(
      url: widget.url,
      autoPlay: true,
    );
    
    // Pass controller up to parent if requested
    if (widget.controllerNotifier != null) {
      // Defer to next frame to avoid build-phase modifications if value notifier is listened to
      Future.microtask(() {
         widget.controllerNotifier!.value = _controller;
      });
    }

    _controller.initialize().then((_) {
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    });

    _controller.addListener(_onControllerUpdate);
  }

  void _onControllerUpdate() {
    // Sync with transcription service
    if (widget.transcriptionService != null) {
       widget.transcriptionService!.updatePlaybackPosition(_controller.value.position);
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_onControllerUpdate);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        // If native Android, render the Custom Platform View
        if (_controller is NativeExoPlayerController) {
          return Stack(
            alignment: Alignment.center,
            children: [
              ExoPlayerVideoView(
                controller: _controller as NativeExoPlayerController,
                fit: widget.fit,
              ),
              if (_controller.value.isBuffering || !_controller.value.isInitialized)
                const Center(child: CircularProgressIndicator(color: Colors.white)),
              if (_controller.value.errorDescription != null)
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.black54,
                    child: Text(
                      _controller.value.errorDescription!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ),
            ],
          );
        }

        final stockCtrl = _controller as StockPlayerController;
        if (!stockCtrl.rawController.value.isInitialized) {
          return const Center(child: CircularProgressIndicator());
        }

        return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.expand(
              child: FittedBox(
                fit: widget.fit,
                alignment: Alignment.center,
                child: SizedBox(
                  width: stockCtrl.rawController.value.size.width,
                  height: stockCtrl.rawController.value.size.height,
                  child: VideoPlayer(stockCtrl.rawController),
                ),
              ),
            ),
            if (stockCtrl.value.isBuffering)
              const Center(child: CircularProgressIndicator()),
          ],
        );
      },
    );
  }
}

