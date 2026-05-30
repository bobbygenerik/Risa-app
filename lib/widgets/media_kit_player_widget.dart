import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class MediaKitPlayerWidget extends StatefulWidget {
  final String url;
  final bool isLive;

  const MediaKitPlayerWidget({
    super.key,
    required this.url,
    this.isLive = false,
  });

  @override
  State<MediaKitPlayerWidget> createState() => _MediaKitPlayerWidgetState();
}

class _MediaKitPlayerWidgetState extends State<MediaKitPlayerWidget> {
  late final Player _player;
  late final VideoController _controller;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _player = Player();
    _controller = VideoController(_player);
    _player.stream.error.listen((error) {
      if (mounted) {
        setState(() => _errorMessage = error);
      }
    });
    _openMedia(widget.url);
  }

  void _openMedia(String url) {
    _player.open(Media(url));
  }

  @override
  void didUpdateWidget(MediaKitPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.url != oldWidget.url) {
      setState(() => _errorMessage = null);
      _openMedia(widget.url);
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_errorMessage != null) {
      return _buildErrorWidget(_errorMessage!);
    }

    return Focus(
      autofocus: true,
      onKeyEvent: _handleKeyEvent,
      child: Video(controller: _controller),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, color: Colors.red, size: 48),
          const SizedBox(height: 16),
          const Text(
            'Playback Error',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            error,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              setState(() => _errorMessage = null);
              _openMedia(widget.url);
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  KeyEventResult _handleKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    if (event.logicalKey == LogicalKeyboardKey.select ||
        event.logicalKey == LogicalKeyboardKey.enter ||
        event.logicalKey == LogicalKeyboardKey.space) {
      _player.state.playing ? _player.pause() : _player.play();
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }
}
