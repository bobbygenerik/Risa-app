import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';

class BetterPlayerWidget extends StatefulWidget {
  final String url;
  final bool isLive;

  const BetterPlayerWidget({
    super.key,
    required this.url,
    this.isLive = false,
  });

  @override
  State<BetterPlayerWidget> createState() => _BetterPlayerWidgetState();
}

class _BetterPlayerWidgetState extends State<BetterPlayerWidget> {
  BetterPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    final dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      widget.url,
      liveStream: widget.isLive,
      bufferingConfiguration: const BetterPlayerBufferingConfiguration(
        minBufferMs: 2000,
        maxBufferMs: 10000,
        bufferForPlaybackMs: 1000,
        bufferForPlaybackAfterRebufferMs: 2000,
      ),
    );

    _controller = BetterPlayerController(
      const BetterPlayerConfiguration(
        autoPlay: true,
        looping: false,
        fullScreenByDefault: false,
        fit: BoxFit.contain,
        controlsConfiguration: BetterPlayerControlsConfiguration(
          enablePlayPause: true,
          enableMute: true,
          enableFullscreen: true,
          enableProgressBar: true,
          enableSkips: false,
        ),
      ),
      betterPlayerDataSource: dataSource,
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return BetterPlayer(controller: _controller!);
  }
}
