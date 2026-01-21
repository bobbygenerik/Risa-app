import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/controllers/universal_player_controller.dart';
import 'package:iptv_player/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class VlcPlayerWidget extends StatefulWidget {
  final String url;
  final bool isLive;
  final IntegratedTranscriptionService? transcriptionService;
  final ValueNotifier<UniversalPlayerController?>? controllerNotifier;
  final BoxFit fit;

  const VlcPlayerWidget({
    super.key,
    required this.url,
    this.isLive = false,
    this.transcriptionService,
    this.controllerNotifier,
    this.fit = BoxFit.cover,
  });

  @override
  State<VlcPlayerWidget> createState() => _VlcPlayerWidgetState();
}

class _VlcPlayerWidgetState extends State<VlcPlayerWidget> {
  UniversalPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _initializeController();
  }

  @override
  void didUpdateWidget(VlcPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.url != oldWidget.url) {
      _controller?.dispose();
      _initializeController();
    }
  }

  void _initializeController() {
    final settings = Provider.of<SettingsProvider>(context, listen: false);

    _controller = UniversalPlayerController.create(
      url: widget.url,
      autoPlay: false,
      isLive: widget.isLive,
      preferStockOnLive: true,
      backend: 'VLC',
      hardwareAcceleration: settings.hardwareAcceleration,
    );

    if (widget.controllerNotifier != null) {
      Future.microtask(() {
        if (mounted) widget.controllerNotifier!.value = _controller;
      });
    }

    final initStart = DateTime.now();
    _controller?.initialize().then((_) {
      final initDuration = DateTime.now().difference(initStart);
      debugLog(
          'Player initialize completed in ${initDuration.inMilliseconds}ms for ${widget.url}');
      if (mounted) {
        final playStart = DateTime.now();
        _controller?.play().then((_) {
          final playDuration = DateTime.now().difference(playStart);
          debugLog(
              'Player play() returned in ${playDuration.inMilliseconds}ms for ${widget.url}');
        }).catchError((e) {
          debugLog('Player play() error: $e');
        });
      }
    }).catchError((error) {
      debugLog('Player initialization failed: $error');
    });

    _controller?.addListener(_onControllerUpdate);
  }

  void _onControllerUpdate() {
    if (widget.transcriptionService != null && mounted && _controller != null) {
      widget.transcriptionService!
          .updatePlaybackPosition(_controller!.value.position);
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
    final controller = _controller;
    if (controller is! VlcUniversalPlayerController) {
      return const Center(child: Text('Unsupported player controller'));
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final fallbackAspect = (constraints.maxWidth > 0 &&
                constraints.maxHeight > 0)
            ? (constraints.maxWidth / constraints.maxHeight)
            : (16 / 9);
        return ValueListenableBuilder<VlcPlayerValue>(
          valueListenable: controller.vlcController,
          builder: (context, value, _) {
            final aspectRatio = value.isInitialized
                ? value.aspectRatio
                : fallbackAspect;
            return FittedBox(
              fit: widget.fit,
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxWidth / aspectRatio,
                child: VlcPlayer(
                  controller: controller.vlcController,
                  aspectRatio: aspectRatio,
                  placeholder: const Center(
                    child: CircularProgressIndicator(),
                  ),
                  virtualDisplay: false,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
