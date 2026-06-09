import 'dart:async';

import 'package:iptv_player/services/incremental_epg_service.dart';

import 'channel_xtream_epg_map.dart';

/// Callbacks bridging [ChannelXtreamService] and [ChannelProvider] state.
class ChannelXtreamServiceDeps {
  const ChannelXtreamServiceDeps({
    required this.channelMaps,
    required this.getChannelCountDb,
    required this.setChannelCountDb,
    required this.clearChannelCache,
    required this.rebuildChannelCachesAsync,
    required this.clearDbChannels,
    required this.insertDbChannels,
    required this.clearCachedCategories,
    required this.updateEpgAllowedChannels,
    required this.notifyListeners,
    required this.getEpgService,
    required this.scheduleEpgRefresh,
    required this.xtreamEpgMapStore,
  });

  final List<Map<String, dynamic>> channelMaps;
  final int Function() getChannelCountDb;
  final void Function(int value) setChannelCountDb;
  final void Function() clearChannelCache;
  final Future<void> Function() rebuildChannelCachesAsync;
  final Future<void> Function() clearDbChannels;
  final Future<void> Function(List<Map<String, dynamic>> maps) insertDbChannels;
  final void Function() clearCachedCategories;
  final void Function() updateEpgAllowedChannels;
  final void Function() notifyListeners;
  final IncrementalEpgService? Function() getEpgService;
  final void Function({bool forceRefresh}) scheduleEpgRefresh;
  final ChannelXtreamEpgMapStore xtreamEpgMapStore;
}
