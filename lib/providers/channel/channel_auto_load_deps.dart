import 'dart:async';

import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Callbacks bridging [ChannelAutoLoad] and [ChannelProvider] state.
class ChannelAutoLoadDeps {
  const ChannelAutoLoadDeps({
    required this.channelMaps,
    required this.clearChannelCache,
    required this.getHasLoadedPlaylist,
    required this.setHasLoadedPlaylist,
    required this.getAutoLoadInProgress,
    required this.setAutoLoadInProgress,
    required this.getIsLoading,
    required this.setIsLoading,
    required this.getIsColdStartLoad,
    required this.setIsColdStartLoad,
    required this.getNoPlaylistConfigured,
    required this.setNoPlaylistConfigured,
    required this.getLoadingStatus,
    required this.setLoadingStatus,
    required this.getLoadingProgress,
    required this.setLoadingProgress,
    required this.getErrorMessage,
    required this.getLastPlaylistUrl,
    required this.getCachedCategories,
    required this.setCachedCategories,
    required this.clearCachedCategories,
    required this.getChannelCountDb,
    required this.setChannelCountDb,
    required this.getDbReady,
    required this.setDbReady,
    required this.getDb,
    required this.getEpgService,
    required this.notifyListeners,
    required this.notifyListenersThrottled,
    required this.loadWatchCounts,
    required this.setWakeLock,
    required this.ensureDb,
    required this.ensureStablePlaylistIdentity,
    required this.loadPlaylistCounts,
    required this.rebuildChannelCachesAsync,
    required this.setCurrentEpgMapSignature,
    required this.invalidateCategoryCaches,
    required this.loadCachedCategoriesFromPrefs,
    required this.computeCategoriesAsync,
    required this.updateEpgAllowedChannels,
    required this.scheduleEpgRefresh,
    required this.refreshSmartChannelCache,
    required this.backgroundSync,
    required this.restoreChannelsFromPrefsCache,
    required this.loadPlaylistFromUrl,
    required this.httpPrefixRe,
    required this.leadingSlashRe,
  });

  final List<Map<String, dynamic>> channelMaps;

  final void Function() clearChannelCache;
  final bool Function() getHasLoadedPlaylist;
  final void Function(bool value) setHasLoadedPlaylist;
  final bool Function() getAutoLoadInProgress;
  final void Function(bool value) setAutoLoadInProgress;
  final bool Function() getIsLoading;
  final void Function(bool value) setIsLoading;
  final bool Function() getIsColdStartLoad;
  final void Function(bool value) setIsColdStartLoad;
  final bool Function() getNoPlaylistConfigured;
  final void Function(bool value) setNoPlaylistConfigured;
  final String Function() getLoadingStatus;
  final void Function(String value) setLoadingStatus;
  final double Function() getLoadingProgress;
  final void Function(double value) setLoadingProgress;
  final String? Function() getErrorMessage;
  final String? Function() getLastPlaylistUrl;
  final List<String>? Function() getCachedCategories;
  final void Function(List<String>? value) setCachedCategories;
  final void Function() clearCachedCategories;
  final int Function() getChannelCountDb;
  final void Function(int value) setChannelCountDb;
  final bool Function() getDbReady;
  final void Function(bool value) setDbReady;
  final LocalDbService Function() getDb;
  final IncrementalEpgService? Function() getEpgService;

  final void Function() notifyListeners;
  final void Function() notifyListenersThrottled;

  final Future<void> Function() loadWatchCounts;
  final Future<bool> Function(bool enable) setWakeLock;
  final Future<void> Function() ensureDb;
  final Future<String?> Function(
    SharedPreferences prefs, {
    String? playlistUrl,
  }) ensureStablePlaylistIdentity;
  final Map<String, int>? Function({
    required SharedPreferences prefs,
    required String? playlistUrl,
  }) loadPlaylistCounts;

  final Future<void> Function() rebuildChannelCachesAsync;
  final Future<void> Function({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required String? epgUrl,
    required int channelCount,
    String? channelsFile,
  }) setCurrentEpgMapSignature;
  final void Function() invalidateCategoryCaches;
  final Future<void> Function() loadCachedCategoriesFromPrefs;
  final Future<void> Function() computeCategoriesAsync;
  final void Function() updateEpgAllowedChannels;
  final void Function({bool forceRefresh}) scheduleEpgRefresh;
  final void Function() refreshSmartChannelCache;
  final Future<void> Function({
    required SharedPreferences prefs,
    required String? url,
  }) backgroundSync;
  final Future<bool> Function({
    required SharedPreferences prefs,
    String? playlistUrl,
    String? epgUrl,
    String? reason,
  }) restoreChannelsFromPrefsCache;
  final Future<void> Function(String url) loadPlaylistFromUrl;

  final RegExp httpPrefixRe;
  final RegExp leadingSlashRe;
}
