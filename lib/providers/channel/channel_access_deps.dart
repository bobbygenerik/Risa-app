import 'dart:async';

import 'package:iptv_player/models/channel.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Mutable channel access state shared with [ChannelAccess].
class ChannelAccessDeps {
  const ChannelAccessDeps({
    required this.channelMaps,
    required this.channelCache,
    required this.channelIndicesByGroup,
    required this.channelIndexById,
    required this.favoriteChannels,
    required this.watchCounts,
    required this.getChannelCountDb,
    required this.setChannelCountDb,
    required this.clearChannelCache,
    required this.rebuildChannelCachesAsync,
    required this.setCurrentEpgMapSignature,
    required this.invalidateCategoryCaches,
    required this.computeCategoriesAsync,
    required this.updateEpgAllowedChannels,
    required this.refreshSmartChannelCache,
    required this.scheduleEpgRefresh,
    required this.setIsLoading,
    required this.setIsColdStartLoad,
    required this.setHasLoadedPlaylist,
    required this.setNoPlaylistConfigured,
    required this.notifyListeners,
  });

  final List<Map<String, dynamic>> channelMaps;
  final Map<int, Channel> channelCache;
  final Map<String, List<int>> channelIndicesByGroup;
  final Map<String, int> channelIndexById;
  final List<Channel> favoriteChannels;
  final Map<String, int> watchCounts;

  final int Function() getChannelCountDb;
  final void Function(int value) setChannelCountDb;
  final void Function() clearChannelCache;
  final Future<void> Function() rebuildChannelCachesAsync;
  final Future<void> Function({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required String? epgUrl,
    required int channelCount,
  }) setCurrentEpgMapSignature;
  final void Function() invalidateCategoryCaches;
  final Future<void> Function() computeCategoriesAsync;
  final void Function() updateEpgAllowedChannels;
  final void Function({bool allowConversion}) refreshSmartChannelCache;
  final void Function({bool forceRefresh}) scheduleEpgRefresh;
  final void Function(bool value) setIsLoading;
  final void Function(bool value) setIsColdStartLoad;
  final void Function(bool value) setHasLoadedPlaylist;
  final void Function(bool value) setNoPlaylistConfigured;
  final void Function() notifyListeners;
}
