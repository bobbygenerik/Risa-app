import 'dart:async';
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
  bool _hardwareAccelerationEnabled = true;
  bool _fallbackAttempted = false;
  Timer? _initTimeoutTimer;
  VoidCallback? _vlcInitListener;

  @override
  void initState() {
    super.initState();
    _initializeController();
  }

  @override
  void didUpdateWidget(VlcPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.url != oldWidget.url) {
      _safeDisposeController();
      _initializeController();
    }
  }

  void _initializeController() {
    final settings = Provider.of<SettingsProvider>(context, listen: false);
    _hardwareAccelerationEnabled = settings.hardwareAcceleration;
    _fallbackAttempted = false;

    final url = widget.url;
    debugLog('=== VLC WIDGET INIT START ===');
    debugLog('VLC init: url=$url live=${widget.isLive} hw=$_hardwareAccelerationEnabled');
    logToSystem('VLC INIT: $url hw=$_hardwareAccelerationEnabled', name: 'RisaVLC');
    
    try {
      _controller = UniversalPlayerController.create(
        url: url,
        autoPlay: true,
        isLive: widget.isLive,
        preferStockOnLive: true,
        backend: 'VLC',
        hardwareAcceleration: _hardwareAccelerationEnabled,
      );
      debugLog('VLC controller created successfully');
    } catch (e, st) {
      debugLog('=== VLC CONTROLLER CREATE ERROR ===');
      debugLog('Error: $e');
      debugLog('Stack: $st');
      logToSystem('VLC CREATE ERROR: $e', name: 'RisaVLC');
      return;
    }

    if (widget.controllerNotifier != null) {
      Future.microtask(() {
        if (mounted) widget.controllerNotifier!.value = _controller;
      });
    }

    _controller?.addListener(_onControllerUpdate);
    
    // Delay initialization until after first frame to avoid PlatformException
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || _controller == null) return;
      _controller!.initialize().catchError((e) {
        debugLog('VLC initialize error: $e');
        _attemptFallback('init_error:$e');
      });
      _attachVlcInitListener();
      _startInitTimeout();
    });
    
    debugLog('=== VLC WIDGET INIT COMPLETE ===');
  }

  void _onControllerUpdate() {
    if (widget.transcriptionService != null && mounted && _controller != null) {
      widget.transcriptionService!
          .updatePlaybackPosition(_controller!.value.position);
    }
    if (_controller != null &&
        !_controller!.value.isInitialized &&
        _controller!.value.errorDescription != null) {
      final message =
          'VLC error: ${_controller!.value.errorDescription} url=${widget.url}';
      logToSystem(message, name: 'RisaVLC');
      // ignore: avoid_print
      print(message);
      _attemptFallback('player_error:${_controller!.value.errorDescription}');
    }
  }

  void _attemptFallback(String reason) {
    if (!mounted) return;
    if (!_hardwareAccelerationEnabled || _fallbackAttempted) return;
    _fallbackAttempted = true;
    debugLog('Player fallback to software decode: $reason');
    _controller?.removeListener(_onControllerUpdate);
    _detachVlcInitListener();
    _safeDisposeController();
    _controller = UniversalPlayerController.create(
      url: widget.url,
      autoPlay: true,
      isLive: widget.isLive,
      preferStockOnLive: true,
      backend: 'VLC',
      hardwareAcceleration: false,
    );
    if (widget.controllerNotifier != null) {
      Future.microtask(() {
        if (mounted) widget.controllerNotifier!.value = _controller;
      });
    }
    _controller?.addListener(_onControllerUpdate);
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || _controller == null) return;
      _controller!.initialize().catchError((e) {
        debugLog('VLC fallback initialize error: $e');
      });
      _attachVlcInitListener();
      _startInitTimeout();
    });
  }

  void _startInitTimeout() {
    _initTimeoutTimer?.cancel();
    _initTimeoutTimer = Timer(const Duration(seconds: 15), () {
      if (!mounted || _controller == null) return;
      if (!_controller!.value.isInitialized) {
        _attemptFallback('init_timeout');
      }
    });
  }

  void _attachVlcInitListener() {
    final controller = _controller;
    if (controller is! VlcUniversalPlayerController) return;
    if (controller.vlcController == null) return;
    
    _detachVlcInitListener();
    final initStart = DateTime.now();
    _vlcInitListener = () {
      if (!mounted) return;
      _initTimeoutTimer?.cancel();
      final initDuration = DateTime.now().difference(initStart);
      debugLog(
          'Player init ready in ${initDuration.inMilliseconds}ms for ${widget.url}');
    };
    controller.vlcController!.addOnInitListener(_vlcInitListener!);
  }

  void _detachVlcInitListener() {
    final controller = _controller;
    if (controller is! VlcUniversalPlayerController) return;
    final listener = _vlcInitListener;
    if (listener != null) {
      controller.vlcController?.removeOnInitListener(listener);
    }
    _vlcInitListener = null;
  }

  void _safeDisposeController() {
    final controller = _controller;
    if (controller == null) return;
    controller.dispose().catchError((e) {
      debugLog('VLC dispose error (widget): $e');
    });
  }

  @override
  void dispose() {
    _initTimeoutTimer?.cancel();
    _controller?.removeListener(_onControllerUpdate);
    _detachVlcInitListener();
    _safeDisposeController();
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
        
        final vlc = controller.vlcController;
        // If not initialized yet, show loading
        if (vlc == null) {
           return const Center(
             child: CircularProgressIndicator(color: Colors.white),
           );
        }
            
        return ValueListenableBuilder<VlcPlayerValue>(
          valueListenable: vlc,
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
                  controller: vlc,
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
