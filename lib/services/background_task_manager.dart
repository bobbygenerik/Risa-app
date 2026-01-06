import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';

/// Manages periodic background tasks for EPG and playlist sync.
class BackgroundTaskManager {
  static Timer? _epgTimer;
  static Timer? _playlistTimer;

  /// Call this once at app startup, passing the BuildContext.
  static void start(BuildContext context) {
    final epg = Provider.of<IncrementalEpgService>(context, listen: false);
    final channelProvider =
        Provider.of<ChannelProvider>(context, listen: false);

    // EPG refresh every 30 minutes
    _epgTimer?.cancel();
    _epgTimer = Timer.periodic(const Duration(minutes: 30), (_) async {
      if (epg.hasUsableData) {
        await epg.initialize();
      }
    });

    // Playlist sync every 60 minutes
    _playlistTimer?.cancel();
    _playlistTimer = Timer.periodic(const Duration(hours: 1), (_) {
      channelProvider.autoLoadPlaylist();
    });
  }

  static void stop() {
    _epgTimer?.cancel();
    _playlistTimer?.cancel();
  }
}
