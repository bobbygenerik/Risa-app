import 'dart:async';

import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Callbacks bridging [ChannelPlaylistLoader] and [ChannelProvider] state.
class ChannelPlaylistLoaderDeps {
  const ChannelPlaylistLoaderDeps({
    required this.channelMaps,
    required this.prepareForegroundLoad,
    required this.finalizeBackgroundLoad,
    required this.clearChannelCache,
    required this.buildIndicesForChunk,
    required this.invalidateCategoryCaches,
    required this.getIsLoading,
    required this.setIsLoading,
    required this.getIsColdStartLoad,
    required this.setIsColdStartLoad,
    required this.getIsBackgroundSyncing,
    required this.setIsBackgroundSyncing,
    required this.getHasLoadedPlaylist,
    required this.setHasLoadedPlaylist,
    required this.getNoPlaylistConfigured,
    required this.setNoPlaylistConfigured,
    required this.getLastPlaylistUrl,
    required this.setLastPlaylistUrl,
    required this.getLoadingStatus,
    required this.setLoadingStatus,
    required this.getLoadingProgress,
    required this.setLoadingProgress,
    required this.getErrorMessage,
    required this.setErrorMessage,
    required this.clearLastM3UContent,
    required this.getChannelCountDb,
    required this.setChannelCountDb,
    required this.clearCachedCategories,
    required this.notifyListeners,
    required this.notifyListenersSafe,
    required this.setWakeLock,
    required this.stageChannelsJsonl,
    required this.setCurrentEpgMapSignature,
    required this.applyXtreamEpgMapFromCache,
    required this.primeXtreamLiveMetadata,
    required this.computeCategoriesAsync,
    required this.rebuildChannelCachesAsync,
    required this.updateEpgAllowedChannels,
    required this.scheduleEpgRefresh,
    required this.buildEpgMapping,
    required this.deferredDbInsert,
    required this.refreshSmartChannelCache,
    required this.restoreChannelsFromPrefsCache,
    required this.persistPlaylistCounts,
    required this.upsertSavedPlaylist,
    required this.getEpgService,
    required this.getDb,
    required this.getDbReady,
    required this.clearDbChannels,
    required this.insertDbChannels,
  });

  final List<Map<String, dynamic>> channelMaps;

  final void Function() prepareForegroundLoad;
  final void Function(List<Map<String, dynamic>> buffer) finalizeBackgroundLoad;
  final void Function() clearChannelCache;
  final void Function(List<Map<String, dynamic>> chunk, int startIndex)
      buildIndicesForChunk;
  final void Function() invalidateCategoryCaches;

  final bool Function() getIsLoading;
  final void Function(bool value) setIsLoading;
  final bool Function() getIsColdStartLoad;
  final void Function(bool value) setIsColdStartLoad;
  final bool Function() getIsBackgroundSyncing;
  final void Function(bool value) setIsBackgroundSyncing;
  final bool Function() getHasLoadedPlaylist;
  final void Function(bool value) setHasLoadedPlaylist;
  final bool Function() getNoPlaylistConfigured;
  final void Function(bool value) setNoPlaylistConfigured;
  final String? Function() getLastPlaylistUrl;
  final void Function(String? value) setLastPlaylistUrl;
  final String Function() getLoadingStatus;
  final void Function(String value) setLoadingStatus;
  final double Function() getLoadingProgress;
  final void Function(double value) setLoadingProgress;
  final String? Function() getErrorMessage;
  final void Function(String? value) setErrorMessage;
  final void Function() clearLastM3UContent;

  final int Function() getChannelCountDb;
  final void Function(int value) setChannelCountDb;
  final void Function() clearCachedCategories;

  final void Function() notifyListeners;
  final void Function() notifyListenersSafe;
  final Future<bool> Function(bool enable) setWakeLock;

  final Future<String?> Function(String source) stageChannelsJsonl;
  final Future<void> Function({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required String? epgUrl,
    required int channelCount,
    String? channelsFile,
  }) setCurrentEpgMapSignature;

  final Future<int> Function() applyXtreamEpgMapFromCache;
  final Future<void> Function(String m3uUrl) primeXtreamLiveMetadata;
  final Future<void> Function() computeCategoriesAsync;
  final Future<void> Function() rebuildChannelCachesAsync;
  final void Function() updateEpgAllowedChannels;
  final void Function({bool forceRefresh}) scheduleEpgRefresh;
  final Future<void> Function() buildEpgMapping;
  final Future<void> Function() deferredDbInsert;
  final void Function() refreshSmartChannelCache;

  final Future<bool> Function({
    required SharedPreferences prefs,
    String? playlistUrl,
    String? epgUrl,
    String? reason,
  }) restoreChannelsFromPrefsCache;

  final Future<void> Function({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required int channelCount,
  }) persistPlaylistCounts;

  final Future<void> Function({
    required String sourceUrl,
    String? epgUrl,
  }) upsertSavedPlaylist;

  final IncrementalEpgService? Function() getEpgService;
  final LocalDbService Function() getDb;
  final bool Function() getDbReady;
  final Future<void> Function() clearDbChannels;
  final Future<void> Function(List<Map<String, dynamic>> maps) insertDbChannels;
}
