import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Manages periodic background tasks for EPG and playlist sync.
class BackgroundTaskManager {
  static Timer? _epgTimer;
  static Timer? _playlistTimer;

  /// Call this once at app startup, passing the BuildContext.
  static void start(BuildContext context) {
    // EPG refresh every 30 minutes
    _epgTimer?.cancel();
    _epgTimer = Timer.periodic(const Duration(minutes: 30), (_) async {
      final epg = Provider.of<EpgService>(context, listen: false);
      final prefs = await SharedPreferences.getInstance();
      final epgUrl = prefs.getString('epg_url');
      if (epgUrl != null && epgUrl.isNotEmpty) {
        await epg.refresh(epgUrl);
      }
    });
    // Playlist sync every 60 minutes
    _playlistTimer?.cancel();
    _playlistTimer = Timer.periodic(const Duration(hours: 1), (_) {
      final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
      channelProvider.autoLoadPlaylist();
    });
  }

  static void stop() {
    _epgTimer?.cancel();
    _playlistTimer?.cancel();
  }
}
