import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/controllers/universal_player_controller.dart';
import 'package:iptv_player/widgets/exoplayer_video_view.dart';
import '../utils/memory_manager.dart';

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
    // Check memory before initializing player
    MemoryManager.checkMemoryPressure();
    if (MemoryManager.isLowMemory) {
      MemoryManager.clearCaches();
    }
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
    try {
      _controller = UniversalPlayerController.create(
        url: widget.url,
        autoPlay: false, // Don't auto-play to prevent immediate memory allocation
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
          // Start playback after initialization is complete
          _controller.play();
        }
      }).catchError((error) {
        if (mounted) {
          setState(() {
            _isInitialized = false;
          });
        }
        debugPrint('Player initialization failed: $error');
      });

      _controller.addListener(_onControllerUpdate);
    } catch (e) {
      debugPrint('Failed to create player controller: $e');
      if (mounted) {
        setState(() {
          _isInitialized = false;
        });
      }
    }
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
    // Force garbage collection after disposing player
    MemoryManager.forceGarbageCollection();
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
              Positioned.fill(
                child: ExoPlayerVideoView(
                  controller: _controller as NativeExoPlayerController,
                  fit: widget.fit,
                ),
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

