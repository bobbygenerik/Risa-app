import 'package:flutter/material.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/controllers/universal_player_controller.dart';

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
  UniversalPlayerController? _controller;
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
      _controller?.dispose();
      _initializeController();
    }
  }

  void _initializeController() {
    // Force stock Flutter video player only to eliminate native memory issues
    _controller = UniversalPlayerController.create(
      url: widget.url,
      autoPlay: false,
      isLive: widget.isLive,
      preferStockOnLive: true, // Force stock player
    );
    
    if (widget.controllerNotifier != null) {
      Future.microtask(() {
         widget.controllerNotifier!.value = _controller;
      });
    }

    _controller?.initialize().then((_) {
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
        _controller?.play();
      }
    }).catchError((error) {
      debugPrint('Player initialization failed: $error');
      if (mounted) {
        setState(() {
          _isInitialized = false;
        });
      }
    });

    _controller?.addListener(_onControllerUpdate);
  }

  void _onControllerUpdate() {
    if (widget.transcriptionService != null && mounted && _controller != null) {
       widget.transcriptionService!.updatePlaybackPosition(_controller!.value.position);
    }
  }

  @override
  void dispose() {
    _controller?.removeListener(_onControllerUpdate);
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized || _controller == null) {
      return const Center(child: CircularProgressIndicator());
    }

    // Use MediaKit only
    final mediaKitController = _controller as MediaKitPlayerController;
    return Video(
      controller: mediaKitController.videoController,
      fit: widget.fit,
    );
  }
}
