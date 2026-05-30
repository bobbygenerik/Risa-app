import 'dart:io';

import 'package:iptv_player/models/program.dart';

/// Callbacks into [IncrementalEpgService] for channel-list loading.
class EpgChannelListLoaderDeps {
  const EpgChannelListLoaderDeps({
    required this.hasEpgUrl,
    required this.isLoading,
    required this.isDownloading,
    required this.isParsing,
    required this.setLoading,
    required this.setDownloading,
    required this.setParsing,
    required this.setError,
    required this.setHasParsed,
    required this.notifyListeners,
    required this.resetMatchDiagnostics,
    required this.getCacheFile,
    required this.isCacheValid,
    required this.downloadEpgIfNeeded,
    required this.restoreDbIfClosed,
    required this.isDbDisabled,
    required this.isDbReady,
    required this.handleDbError,
    required this.dbProgramCount,
    required this.getAllProgramsByChannel,
    required this.getNormalizedChannels,
    required this.setNormalizedChannels,
    required this.loadNormalizedMappingFromPrefs,
    required this.saveNormalizedMappingToPrefs,
    required this.normalize,
    required this.clearProgramsByChannel,
    required this.invalidateProgramIndexCache,
    required this.setChannelPrograms,
    required this.programsByChannel,
    required this.replaceProgramsByChannel,
    required this.clearAvailableChannels,
    required this.addAvailableChannels,
    required this.replaceAvailableChannels,
    required this.availableChannelCount,
    required this.clearInternalMapping,
    required this.rebuildEpgIdIndex,
    required this.rebuildFuzzyCandidates,
    required this.setDisplayNames,
    required this.epgIdsRawCount,
    required this.hasLoadedPrograms,
    required this.loadedProgramChannelCount,
    required this.programsByChannelKeyCount,
    required this.hasAllowedChannels,
    required this.allowedChannelCount,
    required this.expectedChannelCount,
    required this.epgFutureHours,
    required this.enableMatchingDiagnostics,
    required this.dbMappingCount,
    required this.resetLoadingState,
    required this.getEpgChannelHashes,
    required this.startParseProgressTimer,
    required this.stopParseProgressTimer,
    required this.setLastParseDurationMs,
    required this.catchupHoursByNormalizedId,
    required this.setEpgProgress,
    required this.ingestProgramsFromFile,
    required this.purgeCacheFiles,
    required this.backupCacheFile,
    required this.epgUrl,
    required this.upsertEpgChannelHashes,
    required this.persistProgramsToDb,
    required this.refreshFromNetwork,
    required this.scheduleEpgWindowExtension,
  });

  final bool Function() hasEpgUrl;
  final bool Function() isLoading;
  final bool Function() isDownloading;
  final bool Function() isParsing;
  final void Function(bool value) setLoading;
  final void Function(bool value) setDownloading;
  final void Function(bool value) setParsing;
  final void Function(String? value) setError;
  final void Function(bool value) setHasParsed;
  final void Function() notifyListeners;
  final void Function() resetMatchDiagnostics;
  final Future<File> Function() getCacheFile;
  final Future<bool> Function({bool allowStale}) isCacheValid;
  final Future<void> Function({bool forceRefresh}) downloadEpgIfNeeded;
  final Future<void> Function() restoreDbIfClosed;
  final bool Function() isDbDisabled;
  final bool Function() isDbReady;
  final void Function(Object error) handleDbError;
  final Future<int> Function() dbProgramCount;
  final Future<Map<String, List<Map<String, dynamic>>>> Function({
    required int pastHours,
    required int futureHours,
  }) getAllProgramsByChannel;
  final Map<String, List<String>>? Function() getNormalizedChannels;
  final void Function(Map<String, List<String>>? value) setNormalizedChannels;
  final Future<void> Function() loadNormalizedMappingFromPrefs;
  final Future<void> Function(Map<String, List<String>>? mapping)
      saveNormalizedMappingToPrefs;
  final String Function(String text) normalize;
  final void Function() clearProgramsByChannel;
  final void Function() invalidateProgramIndexCache;
  final void Function(String epgId, List<Program> programs) setChannelPrograms;
  final Map<String, List<Program>> Function() programsByChannel;
  final void Function(Map<String, List<Program>> programs)
      replaceProgramsByChannel;
  final void Function() clearAvailableChannels;
  final void Function(Iterable<String> ids) addAvailableChannels;
  final void Function(Iterable<String> ids) replaceAvailableChannels;
  final int Function() availableChannelCount;
  final void Function() clearInternalMapping;
  final void Function() rebuildEpgIdIndex;
  final void Function() rebuildFuzzyCandidates;
  final void Function(Map<String, List<String>> displayNames) setDisplayNames;
  final int Function() epgIdsRawCount;
  final bool Function() hasLoadedPrograms;
  final int Function() loadedProgramChannelCount;
  final int Function() programsByChannelKeyCount;
  final bool Function() hasAllowedChannels;
  final int Function() allowedChannelCount;
  final int Function() expectedChannelCount;
  final int Function() epgFutureHours;
  final bool Function() enableMatchingDiagnostics;
  final Future<int> Function() dbMappingCount;
  final void Function() resetLoadingState;
  final Future<Map<String, String>> Function() getEpgChannelHashes;
  final void Function() startParseProgressTimer;
  final void Function() stopParseProgressTimer;
  final void Function(int ms) setLastParseDurationMs;
  final Map<String, int> Function() catchupHoursByNormalizedId;
  final void Function(double value, {String? label}) setEpgProgress;
  final Future<void> Function(
    String? path, {
    Map<String, List<Program>>? target,
    Set<String>? skipChannels,
    int? totalPrograms,
    bool skipDbWrites,
    void Function(int processed, int total)? onProgress,
  }) ingestProgramsFromFile;
  final Future<void> Function() purgeCacheFiles;
  final Future<void> Function() backupCacheFile;
  final String? Function() epgUrl;
  final Future<void> Function(Map<String, String> hashes)
      upsertEpgChannelHashes;
  final Future<void> Function() persistProgramsToDb;
  final Future<void> Function() refreshFromNetwork;
  final void Function({required bool fromBackgroundRefresh})
      scheduleEpgWindowExtension;
}
