import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_category_coordinator.dart';
import 'package:iptv_player/screens/live_tv/timer_manager.dart';
import 'package:iptv_player/services/android_native_player_service.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/services/player_memory_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/url_redactor.dart';
import 'package:provider/provider.dart';

/// Opens the channel player with memory cleanup and resume hooks.
class LiveTvPlayerLauncher {
  LiveTvPlayerLauncher._();

  static bool _pendingExternalResume = false;

  /// Set when VLC opened; cleared on next [AppLifecycleState.resumed].
  static bool get returningFromExternalPlayback => _pendingExternalResume;

  static void clearExternalPlaybackFlag() {
    _pendingExternalResume = false;
  }

  static Future<void> open({
    required BuildContext context,
    required Channel channel,
    required LiveTvArtworkService artworkService,
    required LiveTvCategoryState categoryState,
    required LiveTvCategoryCoordinator categoryCoordinator,
    required LiveTvTimerManager timerManager,
    required bool Function() isMounted,
    required void Function(bool suspend) setSuspendHeroBackground,
    required void Function(bool opening) setOpeningPlayer,
    required VoidCallback startFeaturedRotation,
  }) async {
    setOpeningPlayer(true);
    try {
      final channelId = channel.epgLookupId;
      final streamUrl = channel.url;
      debugLog('=== CHANNEL TAP START ===');
      debugLog('Channel: ${channel.name} (ID: $channelId)');
      debugLog('Stream URL: ${redactUrl(streamUrl)}');
      logToSystem('TAP: ${channel.name} -> $streamUrl', name: 'RisaTap');

      if (!isMounted() || !context.mounted) return;
      if (streamUrl.isEmpty) return;

      setSuspendHeroBackground(true);
      artworkService.releaseMemoryForPlayback();
      if (context.mounted) {
        Provider.of<ChannelProvider>(context, listen: false)
            .trimMemoryForPlayback();
      }
      await PlayerMemoryService.prepareForPlayback();
      if (!isMounted() || !context.mounted) return;

      // Prefer VLC/external player — zero in-app ExoPlayer RAM (SHIELD OOM fix).
      if (!kIsWeb && Platform.isAndroid) {
        final external =
            await AndroidNativePlayerService.openExternal(streamUrl);
        if (external) {
          debugLog('Opened stream in external player');
          _pendingExternalResume = true;
          return;
        }
        debugLog('External player unavailable, using in-app native player');
      }

      if (!context.mounted) return;
      context.go('/player', extra: <String, dynamic>{
        'streamUrl': streamUrl,
        'title': channel.name,
        'channelId': channel.id,
        'isLive': true,
      });
    } finally {
      setOpeningPlayer(false);
    }
  }
}
