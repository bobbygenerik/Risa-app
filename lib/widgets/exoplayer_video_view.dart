import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/controllers/universal_player_controller.dart';

class ExoPlayerVideoView extends StatefulWidget {
  final NativeExoPlayerController controller;
  final BoxFit fit;

  const ExoPlayerVideoView({
    super.key,
    required this.controller,
    this.fit = BoxFit.contain, // Not fully respected by Native layout yet, but passed for future
  });

  @override
  State<ExoPlayerVideoView> createState() => _ExoPlayerVideoViewState();
}

class _ExoPlayerVideoViewState extends State<ExoPlayerVideoView> {
  
  void _onPlatformViewCreated(int id) {
    // Handshake with the controller
    widget.controller.onPlatformViewCreated(id);
  }

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform != TargetPlatform.android) {
      return const Center(
          child: Text('ExoPlayer is only available on Android'));
    }

    const String viewType = 'com.streamhub.iptv/exoplayer';
    final Map<String, dynamic> creationParams = <String, dynamic>{
      'muted': false, // Controller handles this
      // Default to SurfaceView for better color stability on Android TV (NVIDIA Shield)
      'surfaceType': 'surface',
      'extensionRenderers': 'on',
    };

    return AndroidView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
      onPlatformViewCreated: _onPlatformViewCreated,
    );
  }
}
