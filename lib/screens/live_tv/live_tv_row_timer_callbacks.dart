import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iptv_player/screens/live_tv/timer_manager.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

/// Debounced row/category timer callbacks for Live TV sections.
class LiveTvRowTimerCallbacks {
  LiveTvRowTimerCallbacks({
    required this.timerManager,
    required this.isMounted,
  });

  final LiveTvTimerManager timerManager;
  final bool Function() isMounted;

  void scheduleVisibleRowEpg({
    required String sectionKey,
    required IncrementalEpgService epgService,
    required List<String> channelIds,
    required List<String?> channelNames,
  }) {
    if (channelIds.isEmpty) return;
    final idsSnapshot = List<String>.from(channelIds);
    final namesSnapshot = List<String?>.from(channelNames);
    timerManager.debounce(
      'ensure_row_$sectionKey',
      const Duration(milliseconds: 16),
      () {
        if (!isMounted()) return;
        unawaited(epgService.ensureChannelsLoadedBatch(
          idsSnapshot,
          channelNames: namesSnapshot,
        ));
      },
    );
  }

  void scheduleCategoryPage({
    required String category,
    required void Function(String category) onRequestMore,
  }) {
    timerManager.debounce(
      'category_page_$category',
      const Duration(milliseconds: 16),
      () {
        if (!isMounted()) return;
        onRequestMore(category);
      },
    );
  }

  void scheduleRowScrollReset({
    required String sectionKey,
    required ScrollController controller,
    int attempt = 0,
  }) {
    timerManager.start(
      'row_reset_$sectionKey',
      attempt == 0 ? Duration.zero : const Duration(milliseconds: 16),
      () {
        if (!isMounted()) return;
        if (controller.hasClients) {
          controller.jumpTo(0);
          return;
        }
        if (attempt < 2) {
          scheduleRowScrollReset(
            sectionKey: sectionKey,
            controller: controller,
            attempt: attempt + 1,
          );
        }
      },
    );
  }
}
