part of '../channel_provider.dart';

/// Thin delegates and load lifecycle helpers for [ChannelProvider].
extension ChannelProviderGlue on ChannelProvider {
  void _buildIndicesForChunk(
          List<Map<String, dynamic>> chunk, int startIndex) =>
      _channelIndexCache.buildIndicesForChunk(chunk, startIndex);

  Future<void> _rebuildChannelCachesAsync() =>
      _channelIndexCache.rebuildChannelCachesAsync();

  void _refreshSmartChannelCache({bool allowConversion = true}) =>
      _channelIndexCache.refreshSmartChannelCache(
        allowConversion: allowConversion,
      );

  Future<String?> _ensureStablePlaylistIdentity(
    SharedPreferences prefs, {
    String? playlistUrl,
  }) =>
      _channelPlaylistPersistence.ensureStablePlaylistIdentity(
        prefs,
        playlistUrl: playlistUrl,
      );

  Future<void> _persistPlaylistCounts({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required int channelCount,
  }) =>
      _channelPlaylistPersistence.persistPlaylistCounts(
        prefs: prefs,
        playlistUrl: playlistUrl,
        channelCount: channelCount,
      );

  Map<String, int>? _loadPlaylistCounts({
    required SharedPreferences prefs,
    required String? playlistUrl,
  }) =>
      _channelPlaylistPersistence.loadPlaylistCounts(
        prefs: prefs,
        playlistUrl: playlistUrl,
      );

  Future<bool> _setWakeLock(bool enable) async {
    try {
      if (enable) {
        await WakelockPlus.enable();
      } else {
        await WakelockPlus.disable();
      }
      return true;
    } catch (e) {
      debugLog('ChannelProvider: Failed to set wakelock: $e');
      return false;
    }
  }

  void _updateEpgAllowedChannels() =>
      _epgIntegration.updateEpgAllowedChannels();

  Future<int> _applyXtreamEpgMapFromCache() =>
      _epgIntegration.applyXtreamEpgMapFromCache();

  void _scheduleEpgRefresh({bool forceRefresh = false}) =>
      _epgIntegration.scheduleEpgRefresh(forceRefresh: forceRefresh);

  Future<void> _buildEpgMapping() => _epgIntegration.buildEpgMapping();

  Future<void> _setCurrentEpgMapSignature({
    required SharedPreferences prefs,
    required String? playlistUrl,
    required String? epgUrl,
    required int channelCount,
    String? channelsFile,
  }) =>
      _epgIntegration.setCurrentEpgMapSignature(
        prefs: prefs,
        playlistUrl: playlistUrl,
        epgUrl: epgUrl,
        channelCount: channelCount,
        channelsFile: channelsFile,
      );

  void _prepareForegroundPlaylistLoad() {
    _channelMaps.clear();
    _channelCache.clear();
    _channelIndexById.clear();
    _channelIndicesByGroup.clear();
    _channelLowerNames.clear();
    _channelLowerGroups.clear();
    _invalidateCategoryCaches();
    _channelCountDb = 0;
  }

  void _finalizeBackgroundPlaylistLoad(List<Map<String, dynamic>> buffer) {
    if (_dbReady &&
        _channelMaps.isNotEmpty &&
        buffer.length > _channelMaps.length) {
      _channelCountDb = buffer.length;
      _invalidateCategoryCaches();
      notifyListeners();
      debugLog(
        'ChannelProvider: Background sync kept DB-first memory preview '
        '(${_channelMaps.length}/${buffer.length} channels loaded)',
      );
      return;
    }

    _channelMaps.clear();
    _channelMaps.addAll(buffer);
    _channelCountDb = _channelMaps.length;
    _invalidateCategoryCaches();
    notifyListeners();
  }

  Future<void> _deferredDbInsert() =>
      _channelPlaylistPersistence.deferredDbInsert();

  Future<String?> _stageChannelsJsonl(String source) =>
      _channelPlaylistPersistence.stageChannelsJsonl(source);

  Future<void> _upsertSavedPlaylist({
    required String sourceUrl,
    String? epgUrl,
  }) =>
      _channelPlaylistPersistence.upsertSavedPlaylist(
        sourceUrl: sourceUrl,
        epgUrl: epgUrl,
      );
}
