import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/channel.dart';
import 'enhanced_video_player_screen.dart';
import 'minimal_live_player_screen.dart';

bool isUsableStreamUrl(String? url) => url != null && url.trim().isNotEmpty;

class VideoPlayerRouter extends StatelessWidget {
  final Channel? channel;
  final String? streamUrl;
  final String? videoUrl;
  final String? title;
  final String? subtitle;
  final bool isLive;

  const VideoPlayerRouter({
    super.key,
    this.channel,
    this.streamUrl,
    this.videoUrl,
    this.title,
    this.subtitle,
    this.isLive = false,
  });

  @override
  Widget build(BuildContext context) {
    final url = videoUrl ?? streamUrl ?? channel?.url ?? '';
    if (!isUsableStreamUrl(url)) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline,
                  color: Colors.redAccent, size: 48),
              const SizedBox(height: 16),
              const Text(
                'Playback Error',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'No stream URL was provided.',
                style: TextStyle(color: Colors.white.withValues(alpha: 0.72)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    if (!kIsWeb && Platform.isAndroid && isLive && url.isNotEmpty) {
      return MinimalLivePlayerScreen(
        channel: channel,
        streamUrl: url,
        title: title ?? channel?.name,
      );
    }

    return EnhancedVideoPlayerScreen(
      channel: channel,
      streamUrl: streamUrl,
      videoUrl: videoUrl,
      title: title,
      subtitle: subtitle,
      isLive: isLive,
    );
  }
}
