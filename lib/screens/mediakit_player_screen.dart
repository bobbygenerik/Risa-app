import 'package:flutter/material.dart';
import 'package:iptv_player/screens/vlc_enhanced_player_screen.dart';

/// Compatibility wrapper: the project originally included a MediaKit-based
/// player. To keep the app fully functional without adding extra native
/// dependencies, this simply forwards to the existing VLC-based player.
class MediaKitPlayerScreen extends StatelessWidget {
  final String videoUrl;
  final String title;
  final String? subtitle;
  final bool isLive;

  const MediaKitPlayerScreen({
    super.key,
    required this.videoUrl,
    required this.title,
    this.subtitle,
    this.isLive = false,
  });

  @override
  Widget build(BuildContext context) {
    return VlcEnhancedPlayerScreen(
      videoUrl: videoUrl,
      title: title,
      subtitle: subtitle,
      isLive: isLive,
    );
  }
}

