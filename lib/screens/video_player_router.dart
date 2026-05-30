import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/channel.dart';
import 'enhanced_video_player_screen.dart';
import 'minimal_live_player_screen.dart';

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
