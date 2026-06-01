import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

/// Batch EPG load helpers for Live TV rows and preview lists.
class LiveTvEpgBatch {
  LiveTvEpgBatch._();

  static void ensureChannelsForPreview(
    List<Channel> channels,
    IncrementalEpgService epgService,
  ) {
    final missingIds = <String>[];
    final missingNames = <String?>[];
    for (final channel in channels) {
      final channelId = channel.epgLookupId;
      final hasPrograms = epgService.hasProgramsForChannel(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      if (!hasPrograms) {
        missingIds.add(channelId);
        missingNames.add(channel.epgLookupNameFallback);
      }
    }
    if (missingIds.isEmpty) return;
    unawaited(epgService.ensureChannelsLoadedBatch(
      missingIds,
      channelNames: missingNames,
    ));
  }

  static void prefetchCategoryRow({
    required String category,
    required List<Channel> channels,
    required Set<String> prefetchedCategories,
    required bool Function() isMounted,
    required IncrementalEpgService Function() getEpgService,
  }) {
    if (prefetchedCategories.contains(category)) return;
    prefetchedCategories.add(category);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (!isMounted()) return;
      final epgService = getEpgService();
      final channelIds = channels
          .map((c) => c.epgLookupId)
          .where((id) => id.isNotEmpty)
          .toList();
      final channelNames =
          channels.map((c) => c.epgLookupNameFallback).toList();
      if (channelIds.isEmpty) return;
      unawaited(epgService.ensureChannelsLoadedBatch(
        channelIds,
        channelNames: channelNames,
      ));
    });
  }
}
