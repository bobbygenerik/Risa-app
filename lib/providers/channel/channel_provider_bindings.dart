part of '../channel_provider.dart';

/// Dependency wiring for [ChannelProvider] sub-services.
extension ChannelProviderBindings on ChannelProvider {
  ChannelAccessDeps _createChannelAccessDeps() {
    return ChannelAccessDeps(
      channelMaps: _channelMaps,
      channelCache: _channelCache,
      channelIndicesByGroup: _channelIndicesByGroup,
      channelIndexById: _channelIndexById,
      favoriteChannels: _favoriteChannels,
      watchCounts: _watchCounts,
      getChannelCountDb: () => _channelCountDb,
      setChannelCountDb: (value) => _channelCountDb = value,
      clearChannelCache: _channelCache.clear,
      rebuildChannelCachesAsync: _rebuildChannelCachesAsync,
      setCurrentEpgMapSignature: ({
        required SharedPreferences prefs,
        required String? playlistUrl,
        required String? epgUrl,
        required int channelCount,
      }) =>
          _setCurrentEpgMapSignature(
            prefs: prefs,
            playlistUrl: playlistUrl,
            epgUrl: epgUrl,
            channelCount: channelCount,
          ),
      invalidateCategoryCaches: _invalidateCategoryCaches,
      computeCategoriesAsync: _computeCategoriesAsync,
      updateEpgAllowedChannels: _updateEpgAllowedChannels,
      refreshSmartChannelCache: _refreshSmartChannelCache,
      scheduleEpgRefresh: _scheduleEpgRefresh,
      setIsLoading: (value) => _isLoading = value,
      setIsColdStartLoad: (value) => _isColdStartLoad = value,
      setHasLoadedPlaylist: (value) => _hasLoadedPlaylist = value,
      setNoPlaylistConfigured: (value) => _noPlaylistConfigured = value,
      notifyListeners: notifyListeners,
    );
  }

  ChannelPlaylistPersistenceDeps _createPlaylistPersistenceDeps() {
    return ChannelPlaylistPersistenceDeps(
      channelMaps: _channelMaps,
      getDbReady: () => _dbReady,
      ensureDb: _ensureDb,
      getDb: () => _db,
      getEpgService: () => _epgService,
      handleDbError: _handleDbError,
    );
  }

  ChannelIndexCacheDeps _createIndexCacheDeps() {
    return ChannelIndexCacheDeps(
      channelMaps: _channelMaps,
      channelIndexById: _channelIndexById,
      channelIndicesByGroup: _channelIndicesByGroup,
      channelLowerNames: _channelLowerNames,
      channelLowerGroups: _channelLowerGroups,
    );
  }

  ChannelAutoLoadDeps _createAutoLoadDeps() {
    return ChannelAutoLoadDeps(
      channelMaps: _channelMaps,
      clearChannelCache: _channelCache.clear,
      getHasLoadedPlaylist: () => _hasLoadedPlaylist,
      setHasLoadedPlaylist: (value) => _hasLoadedPlaylist = value,
      getAutoLoadInProgress: () => _autoLoadInProgress,
      setAutoLoadInProgress: (value) => _autoLoadInProgress = value,
      getIsLoading: () => _isLoading,
      setIsLoading: (value) => _isLoading = value,
      getIsColdStartLoad: () => _isColdStartLoad,
      setIsColdStartLoad: (value) => _isColdStartLoad = value,
      getNoPlaylistConfigured: () => _noPlaylistConfigured,
      setNoPlaylistConfigured: (value) => _noPlaylistConfigured = value,
      getLoadingStatus: () => _loadingStatus,
      setLoadingStatus: (value) => _loadingStatus = value,
      getLoadingProgress: () => _loadingProgress,
      setLoadingProgress: (value) => _loadingProgress = value,
      getErrorMessage: () => _errorMessage,
      getLastPlaylistUrl: () => _lastPlaylistUrl,
      getCachedCategories: () => _cachedCategories,
      setCachedCategories: (value) => _cachedCategories = value,
      clearCachedCategories: () => _cachedCategories = null,
      getChannelCountDb: () => _channelCountDb,
      setChannelCountDb: (value) => _channelCountDb = value,
      getDbReady: () => _dbReady,
      setDbReady: (value) => _dbReady = value,
      getDb: () => _db,
      getEpgService: () => _epgService,
      notifyListeners: notifyListeners,
      notifyListenersThrottled: notifyListenersThrottled,
      loadWatchCounts: _loadWatchCounts,
      setWakeLock: _setWakeLock,
      ensureDb: _ensureDb,
      ensureStablePlaylistIdentity: _ensureStablePlaylistIdentity,
      loadPlaylistCounts: _loadPlaylistCounts,
      rebuildChannelCachesAsync: _rebuildChannelCachesAsync,
      setCurrentEpgMapSignature: _setCurrentEpgMapSignature,
      invalidateCategoryCaches: _invalidateCategoryCaches,
      loadCachedCategoriesFromPrefs: _loadCachedCategoriesFromPrefs,
      computeCategoriesAsync: _computeCategoriesAsync,
      updateEpgAllowedChannels: _updateEpgAllowedChannels,
      scheduleEpgRefresh: _scheduleEpgRefresh,
      refreshSmartChannelCache: () => _refreshSmartChannelCache(),
      backgroundSync: _backgroundSync,
      restoreChannelsFromPrefsCache: _restoreChannelsFromPrefsCache,
      loadPlaylistFromUrl: loadPlaylistFromUrl,
      httpPrefixRe: ChannelProvider._httpPrefixRe,
      leadingSlashRe: ChannelProvider._leadingSlashRe,
    );
  }

  ChannelQueryServiceDeps _createQueryServiceDeps() {
    return ChannelQueryServiceDeps(
      channelMaps: _channelMaps,
      channelIndicesByGroup: _channelIndicesByGroup,
      channelLowerNames: _channelLowerNames,
      categoryCache: _categoryCache,
      db: _db,
      getDbReady: () => _dbReady,
      setDbReady: (value) => _dbReady = value,
      getDbDisabled: () => _dbDisabled,
      getChannelCountDb: () => _channelCountDb,
      setChannelCountDb: (value) => _channelCountDb = value,
      getCachedCategories: () => _cachedCategories,
      setCachedCategories: (value) => _cachedCategories = value,
      getCategoryTitleCache: () => _categoryTitleCache,
      setCategoryTitleCache: (value) => _categoryTitleCache = value,
      getChannelIdCache: () => _channelIdCache,
      setChannelIdCache: (value) => _channelIdCache = value,
      getHiddenFlagCache: () => _hiddenFlagCache,
      setHiddenFlagCache: (value) => _hiddenFlagCache = value,
      getCategoriesCompleter: () => _categoriesCompleter,
      setCategoriesCompleter: (value) => _categoriesCompleter = value,
      getIsGroupingChannels: () => _isGroupingChannels,
      setIsGroupingChannels: (value) => _isGroupingChannels = value,
      ensureDb: _ensureDb,
      handleDbError: _handleDbError,
      getChannelAt: _getChannelAt,
      getChannelPreview: () {
        final limit = _channelMaps.length < 30 ? _channelMaps.length : 30;
        return List.generate(limit, (i) => _getChannelAt(i));
      },
      notifyListenersSafe: _notifyListenersSafe,
    );
  }

  ChannelDbRecoveryDeps _createDbRecoveryDeps() {
    return ChannelDbRecoveryDeps(
      db: _db,
      getDbReady: () => _dbReady,
      setDbReady: (value) => _dbReady = value,
      getDbDisabled: () => _dbDisabled,
      setDbDisabled: (value) => _dbDisabled = value,
      getDbReadOnlyRecoveryInFlight: () => _dbReadOnlyRecoveryInFlight,
      setDbReadOnlyRecoveryInFlight: (value) =>
          _dbReadOnlyRecoveryInFlight = value,
      getLastDbRecoveryTime: () => _lastDbRecoveryTime,
      setLastDbRecoveryTime: (value) => _lastDbRecoveryTime = value,
      getDbClosedRecoveryInFlight: () => _dbClosedRecoveryInFlight,
      setDbClosedRecoveryInFlight: (value) =>
          _dbClosedRecoveryInFlight = value,
      getChannelCountDb: () => _channelCountDb,
      setChannelCountDb: (value) => _channelCountDb = value,
      channelMapsNotEmpty: () => _channelMaps.isNotEmpty,
      invalidateCategoryCaches: _invalidateCategoryCaches,
      clearCachedCategories: () => _cachedCategories = null,
      deferredDbInsert: _deferredDbInsert,
      updateEpgAllowedChannels: _updateEpgAllowedChannels,
      scheduleEpgRefresh: _scheduleEpgRefresh,
    );
  }

  ChannelXtreamServiceDeps _createXtreamServiceDeps() {
    return ChannelXtreamServiceDeps(
      channelMaps: _channelMaps,
      getChannelCountDb: () => _channelCountDb,
      setChannelCountDb: (value) => _channelCountDb = value,
      clearChannelCache: _channelCache.clear,
      rebuildChannelCachesAsync: _rebuildChannelCachesAsync,
      clearCachedCategories: () => _cachedCategories = null,
      updateEpgAllowedChannels: _updateEpgAllowedChannels,
      notifyListeners: notifyListeners,
      getEpgService: () => _epgService,
      scheduleEpgRefresh: _scheduleEpgRefresh,
      xtreamEpgMapStore: _xtreamEpgMapStore,
    );
  }

  ChannelEpgIntegrationDeps _createEpgIntegrationDeps() {
    return ChannelEpgIntegrationDeps(
      channelMaps: _channelMaps,
      getEpgService: () => _epgService,
      getDb: () => _db,
      getDbReady: () => _dbReady,
      handleDbError: _handleDbError,
      xtreamEpgMapStore: _xtreamEpgMapStore,
      categoryCache: _categoryCache,
      extractStreamIdFromUrl: _xtreamService.extractStreamIdFromUrl,
      clearChannelCache: _channelCache.clear,
      notifyListeners: notifyListeners,
      ensureStablePlaylistIdentity: _ensureStablePlaylistIdentity,
      getCurrentEpgMapSignature: () => _currentEpgMapSignature,
      setCurrentEpgMapSignature: (value) => _currentEpgMapSignature = value,
      getCurrentEpgMapSignatureKey: () => _currentEpgMapSignatureKey,
      setCurrentEpgMapSignatureKey: (value) =>
          _currentEpgMapSignatureKey = value,
      getCurrentEpgMapCountKey: () => _currentEpgMapCountKey,
      setCurrentEpgMapCountKey: (value) => _currentEpgMapCountKey = value,
      getEpgAllowedChannelsFromDbInFlight: () =>
          _epgAllowedChannelsFromDbInFlight,
      setEpgAllowedChannelsFromDbInFlight: (value) =>
          _epgAllowedChannelsFromDbInFlight = value,
    );
  }

  ChannelPlaylistLoaderDeps _createPlaylistLoaderDeps() {
    return ChannelPlaylistLoaderDeps(
      channelMaps: _channelMaps,
      prepareForegroundLoad: _prepareForegroundPlaylistLoad,
      finalizeBackgroundLoad: _finalizeBackgroundPlaylistLoad,
      clearChannelCache: _channelCache.clear,
      buildIndicesForChunk: _buildIndicesForChunk,
      invalidateCategoryCaches: _invalidateCategoryCaches,
      getIsLoading: () => _isLoading,
      setIsLoading: (value) => _isLoading = value,
      getIsColdStartLoad: () => _isColdStartLoad,
      setIsColdStartLoad: (value) => _isColdStartLoad = value,
      getIsBackgroundSyncing: () => _isBackgroundSyncing,
      setIsBackgroundSyncing: (value) => _isBackgroundSyncing = value,
      getHasLoadedPlaylist: () => _hasLoadedPlaylist,
      setHasLoadedPlaylist: (value) => _hasLoadedPlaylist = value,
      getNoPlaylistConfigured: () => _noPlaylistConfigured,
      setNoPlaylistConfigured: (value) => _noPlaylistConfigured = value,
      getLastPlaylistUrl: () => _lastPlaylistUrl,
      setLastPlaylistUrl: (value) => _lastPlaylistUrl = value,
      getLoadingStatus: () => _loadingStatus,
      setLoadingStatus: (value) => _loadingStatus = value,
      getLoadingProgress: () => _loadingProgress,
      setLoadingProgress: (value) => _loadingProgress = value,
      getErrorMessage: () => _errorMessage,
      setErrorMessage: (value) => _errorMessage = value,
      clearLastM3UContent: () => _lastM3UContent = null,
      getChannelCountDb: () => _channelCountDb,
      setChannelCountDb: (value) => _channelCountDb = value,
      clearCachedCategories: () => _cachedCategories = null,
      notifyListeners: notifyListeners,
      notifyListenersSafe: _notifyListenersSafe,
      setWakeLock: _setWakeLock,
      stageChannelsJsonl: _stageChannelsJsonl,
      setCurrentEpgMapSignature: _setCurrentEpgMapSignature,
      applyXtreamEpgMapFromCache: _applyXtreamEpgMapFromCache,
      primeXtreamLiveMetadata: _primeXtreamLiveMetadata,
      computeCategoriesAsync: _computeCategoriesAsync,
      rebuildChannelCachesAsync: _rebuildChannelCachesAsync,
      updateEpgAllowedChannels: _updateEpgAllowedChannels,
      scheduleEpgRefresh: _scheduleEpgRefresh,
      buildEpgMapping: _buildEpgMapping,
      deferredDbInsert: _deferredDbInsert,
      refreshSmartChannelCache: () => _refreshSmartChannelCache(),
      restoreChannelsFromPrefsCache: _restoreChannelsFromPrefsCache,
      persistPlaylistCounts: _persistPlaylistCounts,
      upsertSavedPlaylist: _upsertSavedPlaylist,
      getEpgService: () => _epgService,
      getDb: () => _db,
      getDbReady: () => _dbReady,
      clearDbChannels: () => _db.clearChannels(),
      insertDbChannels: _db.insertChannels,
    );
  }
}
