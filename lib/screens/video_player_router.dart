import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/channel.dart';
import '../models/content.dart';
import '../providers/settings_provider.dart';
import '../utils/tv_focus_helper.dart';
import 'enhanced_video_player_screen.dart';
import 'exoplayer_fullscreen_screen.dart';

/// A smart video player wrapper that routes to the appropriate player backend
/// based on user settings and device type.
/// 
/// For Android TV devices (like Nvidia Shield), ExoPlayer is preferred as it
/// provides better hardware codec compatibility. For phones/tablets, MediaKit
/// is the default as it provides more features and cross-platform consistency.
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
    final settings = context.watch<SettingsProvider>();
    final backend = settings.videoPlayerBackend;
    
    // Determine which player to use
    final bool useExoPlayer = _shouldUseExoPlayer(backend);
    
    if (useExoPlayer && defaultTargetPlatform == TargetPlatform.android) {
      return ExoPlayerFullscreenScreen(
        channel: channel,
        content: content,
        streamUrl: streamUrl,
        videoUrl: videoUrl,
        title: title,
        subtitle: subtitle,
        isLive: isLive,
      );
    } else {
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

  bool _shouldUseExoPlayer(String backend) {
    switch (backend) {
      case 'ExoPlayer':
        return true;
      case 'MediaKit':
        return false;
      case 'Auto':
      default:
        // Auto mode: use ExoPlayer on Android TV, MediaKit elsewhere
        return TVFocusHelper.isAndroidTV;
    }
  }
}
