import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Wraps the native Android ExoPlayer platform view (SurfaceView) for
/// stutter-free video playback. On non-Android platforms or when the native
/// view is unavailable, falls back to [fallback] (e.g. ChewiePlayerWidget).
class NativeExoPlayerWidget extends StatefulWidget {
  final String url;
  final bool isLive;
  final bool autoPlay;
  final Widget? fallback;
  final VoidCallback? onReady;
  final ValueChanged<String>? onError;
  final ValueChanged<String>? onStateChanged;

  const NativeExoPlayerWidget({
    super.key,
    required this.url,
    this.isLive = false,
    this.autoPlay = true,
    this.fallback,
    this.onReady,
    this.onError,
    this.onStateChanged,
  });

  @override
  State<NativeExoPlayerWidget> createState() => NativeExoPlayerWidgetState();
}

class NativeExoPlayerWidgetState extends State<NativeExoPlayerWidget> {
  MethodChannel? _channel;
  bool _hasError = false;
  String? _errorMessage;

  @override
  void didUpdateWidget(NativeExoPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.url != oldWidget.url && _channel != null) {
      _loadVideo(widget.url);
    }
  }

  void _onPlatformViewCreated(int id) {
    _channel = MethodChannel('com.streamhub.iptv/exoplayer_$id');
    _channel!.setMethodCallHandler(_handleMethodCall);
    widget.onReady?.call();
  }

  Future<dynamic> _handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'onPlaybackStateChanged':
        final state = call.arguments['state'] as String?;
        if (state != null) widget.onStateChanged?.call(state);
        break;
      case 'onPlayerError':
        final error = call.arguments['error'] as String? ?? 'Unknown error';
        setState(() {
          _hasError = true;
          _errorMessage = error;
        });
        widget.onError?.call(error);
        break;
      case 'onPositionUpdate':
        // Position updates available if needed
        break;
      case 'onPlayingChanged':
        break;
    }
  }

  Future<void> _loadVideo(String url) async {
    try {
      await _channel?.invokeMethod('loadVideo', {
        'videoUrl': url,
        'autoPlay': widget.autoPlay,
      });
    } catch (e) {
      debugPrint('NativeExoPlayer: loadVideo error: $e');
    }
  }

  // Public controls
  Future<void> play() async {
    try { await _channel?.invokeMethod('play'); } catch (_) {}
  }

  Future<void> pause() async {
    try { await _channel?.invokeMethod('pause'); } catch (_) {}
  }

  Future<void> playOrPause() async {
    try { await _channel?.invokeMethod('playOrPause'); } catch (_) {}
  }

  Future<void> seekForward([int seconds = 10]) async {
    try {
      await _channel?.invokeMethod('seekForward', {'seconds': seconds});
    } catch (_) {}
  }

  Future<void> seekBackward([int seconds = 10]) async {
    try {
      await _channel?.invokeMethod('seekBackward', {'seconds': seconds});
    } catch (_) {}
  }

  Future<void> setVolume(double volume) async {
    try {
      await _channel?.invokeMethod('setVolume', {'volume': volume});
    } catch (_) {}
  }

  Future<void> stop() async {
    try { await _channel?.invokeMethod('stop'); } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    // Only available on Android
    if (defaultTargetPlatform != TargetPlatform.android) {
      return widget.fallback ?? const SizedBox.shrink();
    }

    if (_hasError) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: Colors.red, size: 48),
            const SizedBox(height: 16),
            Text(
              _errorMessage ?? 'Playback error',
              style: const TextStyle(color: Colors.white70, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _hasError = false;
                  _errorMessage = null;
                });
                _loadVideo(widget.url);
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    return AndroidView(
      viewType: 'com.streamhub.iptv/exoplayer',
      creationParams: {
        'videoUrl': widget.url,
        'surfaceType': 'surface', // SurfaceView — no GPU copy per frame
        'muted': false,
      },
      creationParamsCodec: const StandardMessageCodec(),
      onPlatformViewCreated: _onPlatformViewCreated,
    );
  }
}
