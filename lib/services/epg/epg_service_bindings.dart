part of '../incremental_epg_service.dart';

void wireEpgServiceModules(IncrementalEpgService s) {
  WidgetsBinding.instance.addObserver(s);
  // _channelMatcher before _publicApi: onMappingResolved closes over _publicApi.
  s._channelMatcher = EpgChannelMatcher(
    availableChannels: s._availableChannels,
    manualMappings: s._manualMappingsStore.manualMappings,
    normalizedChannelsGetter: () => s._normalizedAvailableChannels,
    enableDiagnostics: s._enableMatchingDiagnostics,
    onMappingResolved: (channelId, epgId) =>
        s._publicApi.cacheResolvedMapping(channelId, epgId),
  );
  s._publicApi = EpgPublicApi(
    channelMatcher: s._channelMatcher,
    internalToEpgIdMapping: s._internalToEpgIdMapping,
    availableChannels: s._availableChannels,
    db: s._db,
    isDbDisabled: () => s._dbDisabled,
    handleDbError: s._handleDbError,
  );
  s._programDbLoader = EpgProgramDbLoader(
    deps: EpgProgramDbLoaderDeps(
      programsByChannel: s._programsByChannel,
      catchupHoursByNormalizedId: s._catchupHoursByNormalizedId,
      epgFutureWindowHours: IncrementalEpgService._epgFutureWindowHours,
      isDbDisabled: () => s._dbDisabled,
      isDbReady: () => s._db.isReady,
      initDb: () => s._db.init(),
      getProgramsForEpgId: (epgId,
              {required startMs, required endMs, required limit}) =>
          s._db.getProgramsForEpgId(epgId,
              startMs: startMs, endMs: endMs, limit: limit),
      getProgramsForEpgIds: (epgIds, {required startMs, required endMs}) =>
          s._db.getProgramsForEpgIds(epgIds, startMs: startMs, endMs: endMs),
      buildCatchupUrl: s._buildCatchupUrl,
      registerAvailableChannel: s._publicApi.registerAvailableChannel,
      notifyListeners: s.notifyListeners,
      cancelBatchTimer: () => s._channelBatchLoader.cancelBatchTimer(),
      handleDbError: s._handleDbError,
    ),
  );
  s._programIngest = EpgProgramIngest(
    deps: EpgProgramIngestDeps(
      programsByChannel: s._programsByChannel,
      isDbDisabled: () => s._dbDisabled,
      buildCatchupUrl: s._buildCatchupUrl,
      insertPrograms: (epgId, payload, {required clearExisting}) =>
          s._db.insertPrograms(epgId, payload, clearExisting: clearExisting),
      deleteProgramsForEpgIds: (ids) => s._db.deleteProgramsForEpgIds(ids),
      insertAllPrograms: (buffer) => s._db.insertAllPrograms(buffer),
      handleDbError: s._handleDbError,
      notifyListeners: s.notifyListeners,
    ),
  );
  s._programQuery = EpgProgramQuery(
    deps: EpgProgramQueryDeps(
      channelMatcher: s._channelMatcher,
      internalToEpgIdMapping: s._internalToEpgIdMapping,
      programsByChannel: s._programsByChannel,
      allowedChannelIdsNormalized: () => s._allowedChannelIdsNormalized,
      normalizedChannelCount: () => s._normalizedAvailableChannels?.length ?? 0,
      isParsing: () => s._isParsing,
      isLoading: () => s._isLoading,
      availableChannelCount: () => s._availableChannels.length,
      cacheResolvedMapping: s._publicApi.cacheResolvedMapping,
      normalize: s._normalize,
      registerAvailableChannel: s._publicApi.registerAvailableChannel,
      addNormalizedChannel: (normalized, epgId) {
        s._normalizedAvailableChannels ??= {};
        s._normalizedAvailableChannels!
            .putIfAbsent(normalized, () => [])
            .add(epgId);
      },
      notifyListeners: s.notifyListeners,
      loadProgramsFromDb: s._programDbLoader.loadPrograms,
      loadMappingsFromDb: s.loadMappingsFromDb,
    ),
  );
  s._channelBatchLoader = EpgChannelBatchLoader(
    deps: EpgChannelBatchLoaderDeps(
      isDbDisabled: () => s._dbDisabled,
      isBusy: () => s._isParsing || s._isLoading || s._isDownloading,
      findEpgId: (channelId, name) =>
          s._internalToEpgIdMapping[channelId] ??
          s._channelMatcher.findBestEpgId(channelId, name),
      cacheMapping: (channelId, epgId) =>
          s._publicApi.cacheResolvedMapping(channelId, epgId),
      registerChannel: s._publicApi.registerAvailableChannel,
      channelHasPrograms: (epgId) {
        final programs = s._programsByChannel[epgId];
        return programs != null && programs.isNotEmpty;
      },
      loadProgramsFromDbBatch: s._programDbLoader.loadProgramsBatch,
      loadChannelBatch: s.loadChannelBatch,
      log: debugLog,
    ),
    channelsPerBatch: IncrementalEpgService._channelsPerBatch,
  );
  s._channelListLoader = EpgChannelListLoader(
    deps: EpgChannelListLoaderDeps(
      hasEpgUrl: () => s._epgUrl != null && s._epgUrl!.isNotEmpty,
      isLoading: () => s._isLoading,
      isDownloading: () => s._isDownloading,
      isParsing: () => s._isParsing,
      setLoading: (v) => s._isLoading = v,
      setDownloading: (v) => s._isDownloading = v,
      setParsing: (v) => s._isParsing = v,
      setError: (v) => s._error = v,
      setHasParsed: (v) => s._hasParsed = v,
      notifyListeners: s.notifyListeners,
      resetMatchDiagnostics: s._resetMatchDiagnostics,
      getCacheFile: s._getCacheFile,
      isCacheValid: s._isCacheValid,
      downloadEpgIfNeeded: ({bool forceRefresh = false}) =>
          s._refreshCoordinator.downloadEpgIfNeeded(forceRefresh: forceRefresh),
      restoreDbIfClosed: s._restoreDbIfClosed,
      isDbDisabled: () => s._dbDisabled,
      isDbReady: () => s._db.isReady,
      handleDbError: s._handleDbError,
      dbProgramCount: () => s._db.programCount(),
      getAllProgramsByChannel: ({required pastHours, required futureHours}) =>
          s._db.getAllProgramsByChannel(
        pastHours: pastHours,
        futureHours: futureHours,
      ),
      getNowNextProgramsByChannel: ({required futureHours}) =>
          s._db.getNowNextProgramsByChannel(futureHours: futureHours),
      getNormalizedChannels: () => s._normalizedAvailableChannels,
      setNormalizedChannels: (v) => s._normalizedAvailableChannels = v,
      loadNormalizedMappingFromPrefs: s._loadNormalizedMappingFromPrefs,
      hydrateFuzzyMatchIndexFromDisk: s._hydrateFuzzyMatchIndexFromDisk,
      saveNormalizedMappingToPrefs: (mapping) =>
          s._normalizedMappingStore.save(mapping),
      saveDisplayNamesToPrefs: (names) => s._displayNamesStore.save(names),
      normalize: s._normalize,
      clearProgramsByChannel: () {
        s._programsByChannel.clear();
      },
      invalidateProgramIndexCache: s._programQuery.invalidateIndexCache,
      setChannelPrograms: (epgId, programs) =>
          s._programsByChannel[epgId] = programs,
      programsByChannel: () => s._programsByChannel,
      replaceProgramsByChannel: (programs) {
        s._programsByChannel
          ..clear()
          ..addAll(programs);
      },
      clearAvailableChannels: () => s._availableChannels.clear(),
      addAvailableChannels: (ids) => s._availableChannels.addAll(ids),
      replaceAvailableChannels: (ids) {
        s._availableChannels
          ..clear()
          ..addAll(ids);
      },
      availableChannelCount: () => s._availableChannels.length,
      clearInternalMapping: () => s._internalToEpgIdMapping.clear(),
      rebuildEpgIdIndex: () =>
          s._channelMatcher.rebuildEpgIdIndexFromIds(s._availableChannels),
      rebuildFuzzyCandidates: () => s._channelMatcher.rebuildFuzzyCandidates(),
      setDisplayNames: (names) => s._channelMatcher.setDisplayNames(names),
      epgIdsRawCount: () => s._channelMatcher.epgIdsRaw.length,
      hasLoadedPrograms: () => s.hasLoadedPrograms,
      loadedProgramChannelCount: () => s.loadedProgramChannelCount,
      programsByChannelKeyCount: () => s._programsByChannel.length,
      hasAllowedChannels: () => s._allowedChannelIdsNormalized.isNotEmpty,
      allowedChannelCount: () => s._allowedChannelIdsNormalized.length,
      expectedChannelCount: () =>
          s._allowedChannelCount > 0 ? s._allowedChannelCount : 0,
      epgFutureHours: () => s._epgFutureHours,
      enableMatchingDiagnostics: () => s._enableMatchingDiagnostics,
      dbMappingCount: () => s._db.mappingCount(),
      resetLoadingState: s._resetLoadingState,
      clearLoadingFlags: s._clearLoadingFlags,
      clearAttemptedLoads: () => s._channelBatchLoader.clearAttemptedLoads(),
      flushDeferredChannelRequests: () =>
          s._channelBatchLoader.flushDeferredChannelRequests(),
      getEpgChannelHashes: () => s._db.getEpgChannelHashes(),
      startParseProgressTimer: s._startParseProgressTimer,
      stopParseProgressTimer: s._stopParseProgressTimer,
      setLastParseDurationMs: (ms) => s._lastParseDurationMs = ms,
      catchupHoursByNormalizedId: () => s._catchupHoursByNormalizedId,
      setEpgProgress: s._setEpgProgress,
      ingestProgramsFromFile: s._programIngest.ingestFromFile,
      purgeCacheFiles: s._purgeCacheFiles,
      backupCacheFile: s._backupCacheFile,
      epgUrl: () => s._epgUrl,
      upsertEpgChannelHashes: (hashes) => s._db.upsertEpgChannelHashes(hashes),
      persistProgramsToDb: () => s._refreshCoordinator.persistProgramsToDb(),
      refreshFromNetwork: () => s._refreshCoordinator.refreshFromNetwork(),
      scheduleEpgWindowExtension: ({required bool fromBackgroundRefresh}) =>
          s._refreshCoordinator.scheduleEpgWindowExtension(
        fromBackgroundRefresh: fromBackgroundRefresh,
      ),
      scheduleSecondaryMerge: ({bool forceRefresh = false}) =>
          s._secondaryLoader.scheduleMerge(forceRefresh: forceRefresh),
      scheduleDeferredFullXmlParse: () =>
          s._refreshCoordinator.scheduleDeferredFullXmlParse(),
      scheduleDeferredFullEpgHydrate: () =>
          s._refreshCoordinator.scheduleDeferredFullEpgHydrate(),
    ),
    maxRetries: IncrementalEpgService._maxRetries,
    epgPastWindowHours: IncrementalEpgService._epgPastWindowHours,
    epgFutureWindowHours: IncrementalEpgService._epgFutureWindowHours,
  );
  s._refreshCoordinator = EpgRefreshCoordinator(
    deps: EpgRefreshCoordinatorDeps(
      epgUrl: () => s._epgUrl,
      lastDownloadTime: () => s._lastDownloadTime,
      setLastDownloadTime: (v) => s._lastDownloadTime = v,
      refreshInFlight: () => s._refreshInFlight,
      setRefreshInFlight: (v) => s._refreshInFlight = v,
      isDownloading: () => s._isDownloading,
      setDownloading: (v) => s._isDownloading = v,
      setParsing: (v) => s._isParsing = v,
      setLoading: (v) => s._isLoading = v,
      setError: (v) => s._error = v,
      setEpgProgress: s._setEpgProgress,
      resetEpgProgress: () {
        s._epgProgress = 0.0;
        s._epgProgressLabel = '';
      },
      hasLoadedPrograms: () => s.hasLoadedPrograms,
      programsByChannel: () => s._programsByChannel,
      notifyListeners: s.notifyListeners,
      fileCache: s._fileCache,
      db: s._db,
      channelListLoader: s._channelListLoader,
      epgFutureHours: () => s._epgFutureHours,
      setEpgFutureHours: (h) => s._epgFutureHours = h,
      fullFutureHours: IncrementalEpgService._fullFutureHours,
      extendedWindowScheduled: () => s._extendedWindowScheduled,
      setExtendedWindowScheduled: (v) => s._extendedWindowScheduled = v,
      extendingWindow: () => s._extendingWindow,
      setExtendingWindow: (v) => s._extendingWindow = v,
      isParsing: () => s._isParsing,
    ),
  );
  s._secondaryLoader = EpgSecondaryLoader(
    deps: EpgSecondaryLoaderDeps(
      secondaryEpgUrl: () => s._secondaryEpgUrl,
      lastSecondaryDownloadTime: () => s._lastSecondaryDownloadTime,
      setLastSecondaryDownloadTime: (v) => s._lastSecondaryDownloadTime = v,
      secondaryMergeInFlight: () => s._secondaryMergeInFlight,
      setSecondaryMergeInFlight: (v) => s._secondaryMergeInFlight = v,
      fileCache: s._fileCache,
      epgFutureHours: () => s._epgFutureHours,
      catchupHoursByNormalizedId: () => s._catchupHoursByNormalizedId,
      programsByChannel: () => s._programsByChannel,
      getNormalizedChannels: () => s._normalizedAvailableChannels,
      setNormalizedChannels: (v) => s._normalizedAvailableChannels = v,
      mergeDisplayNames: s._channelMatcher.mergeDisplayNames,
      addAvailableChannels: s._availableChannels.addAll,
      rebuildEpgIdIndex: () =>
          s._channelMatcher.rebuildEpgIdIndexFromIds(s._availableChannels),
      rebuildFuzzyCandidates: s._channelMatcher.rebuildFuzzyCandidates,
      clearInternalMapping: () => s._internalToEpgIdMapping.clear(),
      saveNormalizedMappingToPrefs: (mapping) =>
          s._normalizedMappingStore.save(mapping),
      saveDisplayNamesToPrefs: (names) => s._displayNamesStore.save(names),
      getDisplayNames: () =>
          Map<String, List<String>>.from(s._channelMatcher.epgDisplayNamesById),
      ingestProgramsFromFile: (path, {skipChannels, skipDbWrites = false}) =>
          s._programIngest.ingestFromFile(
        path,
        skipChannels: skipChannels,
        skipDbWrites: skipDbWrites,
      ),
      persistProgramsToDb: () => s._refreshCoordinator.persistProgramsToDb(),
      isDbDisabled: () => s._dbDisabled,
      notifyListeners: s.notifyListeners,
    ),
  );
  s._serviceInit = EpgServiceInit(
    deps: EpgServiceInitDeps(
      isLoading: () => s._isLoading,
      isDownloading: () => s._isDownloading,
      isParsing: () => s._isParsing,
      initInFlight: () => s._initInFlight,
      setInitInFlight: (v) => s._initInFlight = v,
      pendingAllowedRefresh: () => s._pendingAllowedRefresh,
      setPendingAllowedRefresh: (v) => s._pendingAllowedRefresh = v,
      hasParsed: () => s._hasParsed,
      setHasParsed: (v) => s._hasParsed = v,
      hasLoadedPrograms: () => s.hasLoadedPrograms,
      programsByChannelKeyCount: () => s._programsByChannel.length,
      restoreDbIfClosed: s._restoreDbIfClosed,
      initDb: () => s._db.init(),
      handleDbError: s._handleDbError,
      setCacheDuration: (d) => s._fileCache.cacheDuration = d,
      setEpgUrl: (url) => s._epgUrl = url,
      epgUrl: () => s._epgUrl,
      setSecondaryEpgUrl: (url) => s._secondaryEpgUrl = url,
      setError: (v) => s._error = v,
      resetLoadingState: s._resetLoadingState,
      notifyListeners: s.notifyListeners,
      handleCacheUrlChange: (prefs, url, {required onUrlChanged}) => s
          ._fileCache
          .handleCacheUrlChange(prefs, url, onUrlChanged: onUrlChanged),
      syncManualMappingsIdentity: () =>
          s._manualMappingsStore.setPlaylistIdentity(s._playlistIdentity),
      loadManualMappingsFromPrefs: (prefs) =>
          s._manualMappingsStore.loadFromPrefs(prefs),
      applyManualMappingsToService: () => s._manualMappingsStore.applyToService(
        internalToEpgIdMapping: s._internalToEpgIdMapping,
        registerAvailableChannel: s._publicApi.registerAvailableChannel,
      ),
      setEpgFutureHours: (h) => s._epgFutureHours = h,
      initialFutureHours: IncrementalEpgService._initialFutureHours,
      setExtendedWindowScheduled: (v) => s._extendedWindowScheduled = v,
      setExtendingWindow: (v) => s._extendingWindow = v,
      loadNormalizedMappingFromPrefs: s._loadNormalizedMappingFromPrefs,
      loadMappingsFromDb: s.loadMappingsFromDb,
      loadChannelList: s._loadChannelList,
      availableChannelCount: () => s._availableChannels.length,
      hasAllowedChannels: () => s._allowedChannelIdsNormalized.isNotEmpty,
      saveNormalizedMappingToPrefs: (mapping) =>
          s._normalizedMappingStore.save(mapping),
      setNormalizedChannels: (v) => s._normalizedAvailableChannels = v,
      clearAvailableChannels: () => s._availableChannels.clear(),
      resetChannelMatcherIndex: () => s._channelMatcher.resetIndex(),
      clearInternalMapping: () => s._internalToEpgIdMapping.clear(),
      clearProgramsByChannel: () => s._programsByChannel.clear(),
      invalidateProgramIndexCache: s._invalidateProgramIndexCache,
      setLastDownloadTime: (v) => s._lastDownloadTime = v,
      clearAttemptedLoads: () => s._channelBatchLoader.clearAttemptedLoads(),
      clearNormalizeCache: EpgManualMappingFacade.clearNormalizeCache,
      clearManualMappingsStore: () => s._manualMappingsStore.clear(),
      clearProgramFailureTracker: () => s._programQuery.failureTracker.clear(),
      resetMatchDiagnostics: s._resetMatchDiagnostics,
      clearEpgDb: () => s._db.clearEpg(),
      purgeCacheFiles: s._purgeCacheFiles,
      normalizedMapFileNameForPlaylist: () =>
          s._normalizedMappingStore.fileNameForPlaylist(),
      normalizedMapFileName: EpgNormalizedMappingStore.defaultFileName,
      displayNamesMapFileNameForPlaylist: () =>
          s._displayNamesStore.fileNameForPlaylist(),
      displayNamesMapFileName: EpgDisplayNamesStore.defaultFileName,
      manualMappingsStorageKey: () => s._manualMappingsStore.storageKey(),
      manualMappingsKey: EpgManualMappingsStore.manualMappingsKey,
      epgCacheTimeKey: EpgFileCache.epgCacheTimeKey,
      epgCacheUrlKey: EpgFileCache.epgCacheUrlKey,
    ),
  );
}
