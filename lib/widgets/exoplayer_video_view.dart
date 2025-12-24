import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExoPlayerVideoView extends StatefulWidget {
  final String videoUrl;
  final bool autoPlay;
  final bool muted;
  final BoxFit fit;
  final Function(String)? onStateChanged;
  final Function(String)? onError;

  const ExoPlayerVideoView({
    super.key,
    required this.videoUrl,
    this.autoPlay = true,
    this.muted = true,
    this.fit = BoxFit.fitWidth,
    this.onStateChanged,
    this.onError,
  });

  @override
  State<ExoPlayerVideoView> createState() => _ExoPlayerVideoViewState();
}

class _ExoPlayerVideoViewState extends State<ExoPlayerVideoView> {
  MethodChannel? _channel;
  bool _isInitialized = false;

  @override
  void didUpdateWidget(ExoPlayerVideoView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.videoUrl != oldWidget.videoUrl && _isInitialized) {
      _loadVideo();
    }
  }

  void _onPlatformViewCreated(int id) {
    _channel = MethodChannel('com.streamhub.iptv/exoplayer_$id');
    _channel?.setMethodCallHandler(_handleMethodCall);
    _isInitialized = true;
    _loadVideo();
  }

  Future<void> _handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'onPlaybackStateChanged':
        final state = call.arguments['state'];
        debugPrint('ExoPlayer state: $state');
        if (widget.onStateChanged != null) widget.onStateChanged!(state);
        break;
      case 'onPlayerError':
        final error = call.arguments['error'];
        debugPrint('ExoPlayer error: $error');
        if (widget.onError != null) widget.onError!(error);
        break;
    }
  }

  Future<void> _loadVideo() async {
    try {
      await _channel?.invokeMethod('loadVideo', {
        'videoUrl': widget.videoUrl,
        'autoPlay': widget.autoPlay,
      });
      // Native implementation doesn't have a specific 'setMuted' but we could add it
      // or handle it via volume. For now, native ExoPlayer is initialized
      // and we just load the URL.
    } catch (e) {
      debugPrint('Error loading video in ExoPlayerVideoView: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform != TargetPlatform.android) {
      return const Center(
          child: Text('ExoPlayer is only available on Android'));
    }

    const String viewType = 'com.streamhub.iptv/exoplayer';
    final Map<String, dynamic> creationParams = <String, dynamic>{
      'videoUrl': widget.videoUrl,
      'autoPlay': widget.autoPlay,
      'muted': widget.muted,
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
