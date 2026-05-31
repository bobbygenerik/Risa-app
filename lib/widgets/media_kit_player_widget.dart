import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:iptv_player/services/http_client_service.dart';

class MediaKitPlayerWidget extends StatefulWidget {
  final String url;
  final bool isLive;
  final VoidCallback? onSurfaceReady;

  const MediaKitPlayerWidget({
    super.key,
    required this.url,
    this.isLive = false,
    this.onSurfaceReady,
  });

  @override
  State<MediaKitPlayerWidget> createState() => _MediaKitPlayerWidgetState();
}

class _MediaKitPlayerWidgetState extends State<MediaKitPlayerWidget> {
  late final Player _player;
  late final VideoController _controller;
  final List<StreamSubscription<dynamic>> _subscriptions = [];
  Timer? _reconnectTimer;
  String? _errorMessage;
  bool _manualPause = false;
  bool _disposed = false;
  int _reconnectAttempts = 0;

  static const int _maxReconnectAttempts = 8;

  @override
  void initState() {
    super.initState();
    _player = Player(
      configuration: const PlayerConfiguration(
        bufferSize: 128 * 1024 * 1024,
        logLevel: MPVLogLevel.warn,
      ),
    );
    _controller = VideoController(_player);
    _subscriptions.add(_player.stream.error.listen((error) {
      debugPrint('MediaKitPlayerWidget: stream error: $error');
      if (widget.isLive && !_disposed) {
        _scheduleReconnect('error: $error');
        return;
      }
      if (mounted) {
        setState(() => _errorMessage = error);
      }
    }));
    _subscriptions.add(_player.stream.completed.listen((completed) {
      if (!completed || _manualPause || _disposed) return;
      debugPrint('MediaKitPlayerWidget: stream completed, isLive=${widget.isLive}');
      if (widget.isLive) {
        _scheduleReconnect('completed');
      }
    }));
    bool surfaceNotified = false;
    _subscriptions.add(_player.stream.playing.listen((playing) {
      debugPrint('MediaKitPlayerWidget: playing=$playing');
      if (playing) {
        _reconnectAttempts = 0;
        if (!surfaceNotified) {
          surfaceNotified = true;
          widget.onSurfaceReady?.call();
        }
      }
    }));
    _subscriptions.add(_player.stream.buffering.listen((buffering) {
      debugPrint('MediaKitPlayerWidget: buffering=$buffering');
    }));
    _subscriptions.add(_player.stream.log.listen((log) {
      debugPrint('media_kit mpv: ${log.level} ${log.prefix}: ${log.text}');
    }));
    _openMedia(widget.url);
  }

  void _openMedia(String url) {
    _reconnectTimer?.cancel();
    _manualPause = false;
    final headers = HttpClientService().videoHeaders;
    _player.open(Media(url, httpHeaders: headers), play: true);
  }

  void _scheduleReconnect(String reason) {
    if (_reconnectTimer?.isActive == true) return;
    if (_reconnectAttempts >= _maxReconnectAttempts) {
      if (mounted) {
        setState(() {
          _errorMessage = 'Live stream ended repeatedly ($reason).';
        });
      }
      return;
    }

    final delaySeconds = (_reconnectAttempts + 1).clamp(1, 10);
    _reconnectAttempts++;
    debugPrint(
      'MediaKitPlayerWidget: reconnect #$_reconnectAttempts in ${delaySeconds}s ($reason)',
    );
    _reconnectTimer = Timer(Duration(seconds: delaySeconds), () {
      if (_disposed || !mounted) return;
      setState(() => _errorMessage = null);
      _player.open(
        Media(widget.url, httpHeaders: HttpClientService().videoHeaders),
        play: true,
      );
    });
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
    _disposed = true;
    _reconnectTimer?.cancel();
    for (final subscription in _subscriptions) {
      subscription.cancel();
    }
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
      child: Video(
        controller: _controller,
        controls: NoVideoControls,
      ),
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
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
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
      if (_player.state.playing) {
        _manualPause = true;
        _player.pause();
      } else {
        _manualPause = false;
        _player.play();
      }
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }
}
