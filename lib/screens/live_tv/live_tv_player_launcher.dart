import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_category_coordinator.dart';
import 'package:iptv_player/screens/live_tv/timer_manager.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/memory_manager.dart';
import 'package:iptv_player/utils/url_redactor.dart';

/// Opens the channel player with memory cleanup and resume hooks.
class LiveTvPlayerLauncher {
  LiveTvPlayerLauncher._();

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
    timerManager.cancelAll();
    artworkService.pauseFetching();
    artworkService.suspendCaches();
    setSuspendHeroBackground(true);

    final channelId = channel.epgLookupId;
    final streamUrl = channel.url;
    debugLog('=== CHANNEL TAP START ===');
    debugLog('Channel: ${channel.name} (ID: $channelId)');
    debugLog('Stream URL: ${redactUrl(streamUrl)}');
    debugLog('Group: ${channel.groupTitle ?? "none"}');
    logToSystem('TAP: ${channel.name} -> $streamUrl', name: 'RisaTap');

    _releaseCachesForPlayback(artworkService, categoryState);

    if (!isMounted()) return;
    try {
      debugLog('Navigating to player screen...');
      await context.push('/player', extra: channel);
      debugLog('=== CHANNEL TAP END (returned from player) ===');
    } catch (e, st) {
      debugLog('=== CHANNEL TAP ERROR ===');
      debugLog('Error: $e');
      debugLog('Stack: $st');
      logToSystem('TAP ERROR: $e', name: 'RisaTap');
    } finally {
      artworkService.resumeFetching();
      artworkService.resumeCaches();
      setOpeningPlayer(false);
      if (isMounted()) {
        setSuspendHeroBackground(false);
        startFeaturedRotation();
        unawaited(categoryCoordinator.prefetchInitialRows(force: true));
      }
    }
  }

  static void _releaseCachesForPlayback(
    LiveTvArtworkService artworkService,
    LiveTvCategoryState categoryState,
  ) {
    artworkService.pauseFetching();
    artworkService.suspendCaches();
    MemoryManager.checkMemoryPressure();
    MemoryManager.clearCaches();
    MemoryManager.forceGarbageCollection();
    categoryState.channelCache.clear();
  }
}
