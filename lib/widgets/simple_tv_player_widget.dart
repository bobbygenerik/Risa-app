import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/services/player_memory_service.dart';
import 'package:video_player/video_player.dart';

/// Lightweight live player for Android TV: video_player only (no Chewie, no
/// native AndroidView). Controller initializes before the platform view mounts.
class SimpleTvPlayerWidget extends StatefulWidget {
  final String url;
  final VoidCallback? onReady;
  final ValueChanged<String>? onError;

  const SimpleTvPlayerWidget({
    super.key,
    required this.url,
    this.onReady,
    this.onError,
  });

  @override
  State<SimpleTvPlayerWidget> createState() => _SimpleTvPlayerWidgetState();
}

class _SimpleTvPlayerWidgetState extends State<SimpleTvPlayerWidget> {
  static const _videoConfigChannel =
      MethodChannel('com.risa.app/video_config');

  VideoPlayerController? _controller;
  bool _showVideo = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 2800), _startPlayback);
    });
  }

  Future<void> _startPlayback() async {
    if (!mounted || widget.url.isEmpty) return;

    try {
      await PlayerMemoryService.prepareForPlayback();
      if (!mounted) return;

      if (Platform.isAndroid) {
        try {
          await _videoConfigChannel.invokeMethod<bool>('forceSurfaceView');
        } catch (_) {}
      }

      final uri = Uri.parse(widget.url);
      final controller = VideoPlayerController.networkUrl(
        uri,
        formatHint: uri.path.endsWith('.m3u8') ? VideoFormat.hls : null,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: false),
        httpHeaders: HttpClientService().videoHeaders,
      );

      await controller.initialize().timeout(
        const Duration(seconds: 20),
        onTimeout: () => throw TimeoutException('Stream init timed out'),
      );

      if (!mounted) {
        await controller.dispose();
        return;
      }

      await controller.play();
      _controller = controller;
      setState(() => _showVideo = true);
      widget.onReady?.call();
    } catch (e) {
      debugPrint('SimpleTvPlayer init error: $e');
      if (!mounted) return;
      final message = e.toString();
      setState(() => _errorMessage = message);
      widget.onError?.call(message);
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            _errorMessage!,
            style: const TextStyle(color: Colors.white70),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    if (!_showVideo || _controller == null) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white70),
            ),
            SizedBox(height: 16),
            Text(
              'Loading stream...',
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ],
        ),
      );
    }

    final ratio = _controller!.value.aspectRatio;
    final aspect = ratio.isFinite && ratio > 0 ? ratio : 16 / 9;

    return Center(
      child: AspectRatio(
        aspectRatio: aspect,
        child: VideoPlayer(_controller!),
      ),
    );
  }
}
