import 'package:shared_preferences/shared_preferences.dart';

/// Callbacks into [IncrementalEpgService] for lifecycle / initialization.
class EpgServiceInitDeps {
  const EpgServiceInitDeps({
    required this.isLoading,
    required this.isDownloading,
    required this.isParsing,
    required this.initInFlight,
    required this.setInitInFlight,
    required this.pendingAllowedRefresh,
    required this.setPendingAllowedRefresh,
    required this.hasParsed,
    required this.setHasParsed,
    required this.hasLoadedPrograms,
    required this.programsByChannelKeyCount,
    required this.restoreDbIfClosed,
    required this.initDb,
    required this.handleDbError,
    required this.setCacheDuration,
    required this.setEpgUrl,
    required this.epgUrl,
    required this.setError,
    required this.resetLoadingState,
    required this.notifyListeners,
    required this.handleCacheUrlChange,
    required this.syncManualMappingsIdentity,
    required this.loadManualMappingsFromPrefs,
    required this.applyManualMappingsToService,
    required this.setEpgFutureHours,
    required this.initialFutureHours,
    required this.setExtendedWindowScheduled,
    required this.setExtendingWindow,
    required this.loadNormalizedMappingFromPrefs,
    required this.loadMappingsFromDb,
    required this.loadChannelList,
    required this.availableChannelCount,
    required this.hasAllowedChannels,
    required this.saveNormalizedMappingToPrefs,
    required this.setNormalizedChannels,
    required this.clearAvailableChannels,
    required this.resetChannelMatcherIndex,
    required this.clearInternalMapping,
    required this.clearProgramsByChannel,
    required this.invalidateProgramIndexCache,
    required this.setLastDownloadTime,
    required this.clearAttemptedLoads,
    required this.clearNormalizeCache,
    required this.clearManualMappingsStore,
    required this.clearProgramFailureTracker,
    required this.resetMatchDiagnostics,
    required this.clearEpgDb,
    required this.purgeCacheFiles,
    required this.normalizedMapFileNameForPlaylist,
    required this.normalizedMapFileName,
    required this.manualMappingsStorageKey,
    required this.manualMappingsKey,
    required this.epgCacheTimeKey,
    required this.epgCacheUrlKey,
  });

  final bool Function() isLoading;
  final bool Function() isDownloading;
  final bool Function() isParsing;
  final bool Function() initInFlight;
  final void Function(bool value) setInitInFlight;
  final bool Function() pendingAllowedRefresh;
  final void Function(bool value) setPendingAllowedRefresh;
  final bool Function() hasParsed;
  final void Function(bool value) setHasParsed;
  final bool Function() hasLoadedPrograms;
  final int Function() programsByChannelKeyCount;
  final Future<void> Function() restoreDbIfClosed;
  final Future<void> Function() initDb;
  final void Function(Object error) handleDbError;
  final void Function(Duration duration) setCacheDuration;
  final void Function(String? url) setEpgUrl;
  final String? Function() epgUrl;
  final void Function(String? value) setError;
  final void Function() resetLoadingState;
  final void Function() notifyListeners;
  final Future<void> Function(
    SharedPreferences prefs,
    String currentUrl, {
    required Future<void> Function() onUrlChanged,
  }) handleCacheUrlChange;
  final void Function() syncManualMappingsIdentity;
  final Future<void> Function(SharedPreferences prefs)
      loadManualMappingsFromPrefs;
  final void Function() applyManualMappingsToService;
  final void Function(int hours) setEpgFutureHours;
  final int initialFutureHours;
  final void Function(bool value) setExtendedWindowScheduled;
  final void Function(bool value) setExtendingWindow;
  final Future<void> Function() loadNormalizedMappingFromPrefs;
  final Future<void> Function() loadMappingsFromDb;
  final Future<void> Function({
    bool forceRefresh,
    bool allowStaleCache,
    bool fromBackgroundRefresh,
    bool currentDayOnly,
  }) loadChannelList;
  final int Function() availableChannelCount;
  final bool Function() hasAllowedChannels;
  final Future<void> Function(Map<String, List<String>>? mapping)
      saveNormalizedMappingToPrefs;
  final void Function(Map<String, List<String>>? mapping) setNormalizedChannels;
  final void Function() clearAvailableChannels;
  final void Function() resetChannelMatcherIndex;
  final void Function() clearInternalMapping;
  final void Function() clearProgramsByChannel;
  final void Function() invalidateProgramIndexCache;
  final void Function(DateTime? value) setLastDownloadTime;
  final void Function() clearAttemptedLoads;
  final void Function() clearNormalizeCache;
  final void Function() clearManualMappingsStore;
  final void Function() clearProgramFailureTracker;
  final void Function() resetMatchDiagnostics;
  final Future<void> Function() clearEpgDb;
  final Future<void> Function() purgeCacheFiles;
  final String Function() normalizedMapFileNameForPlaylist;
  final String normalizedMapFileName;
  final String Function() manualMappingsStorageKey;
  final String manualMappingsKey;
  final String epgCacheTimeKey;
  final String epgCacheUrlKey;
}
