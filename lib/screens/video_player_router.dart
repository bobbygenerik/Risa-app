import 'package:flutter/material.dart';
import '../models/channel.dart';
import '../models/content.dart';
import 'enhanced_video_player_screen.dart';

/// Always builds the `EnhancedVideoPlayerScreen` so the Flutter overlay
/// controls are used for every playback.
class VideoPlayerRouter extends StatelessWidget {
  final Channel? channel;
  final Content? content;
  final String? streamUrl;
  final String? videoUrl;
  final String? title;
  final String? subtitle;
  final bool isLive;

  const VideoPlayerRouter({
    super.key,
    this.channel,
    this.content,
    this.streamUrl,
    this.videoUrl,
    this.title,
    this.subtitle,
    this.isLive = false,
  });

  @override
  Widget build(BuildContext context) {
    return EnhancedVideoPlayerScreen(
      channel: channel,
      content: content,
      streamUrl: streamUrl,
      videoUrl: videoUrl,
      title: title,
      subtitle: subtitle,
      isLive: isLive,
    );
  }
}
