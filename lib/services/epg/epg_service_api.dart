part of '../incremental_epg_service.dart';

extension IncrementalEpgServiceApi on IncrementalEpgService {
  Future<void> loadChannelBatch(List<String> channelIds) async {
    // No-op in optimized version as all programs are loaded during init
    // but we can ensure they are available in _programsByChannel
    if (!_hasParsed) {
      await initialize();
    } else {
      // Small delay to allow batching if caller expects it
      await Future.delayed(Duration.zero);
      notifyListeners();
    }
  }

  List<Program> getProgramsForChannel(String channelId,
          {String? channelName, String? groupTitle}) =>
      _programQuery.getProgramsForChannel(channelId,
          channelName: channelName, groupTitle: groupTitle);

  void applyProgramSnapshot(
    Map<String, List<Program>> snapshot, {
    bool overrideExisting = false,
  }) =>
      _programQuery.applyProgramSnapshot(snapshot,
          overrideExisting: overrideExisting);

  bool hasProgramsForChannel(String channelId,
          {String? channelName, String? groupTitle}) =>
      _programQuery.hasProgramsForChannel(channelId,
          channelName: channelName, groupTitle: groupTitle);

  bool shouldHideChannel(String channelId, {String? channelName}) {
    if (_isUnknownChannelName(channelName)) return true;
    return _programQuery.failureTracker.shouldHide(channelId);
  }

  bool _isUnknownChannelName(String? channelName) {
    if (channelName == null || channelName.trim().isEmpty) return false;
    return channelName.toLowerCase().contains('unknown');
  }

  bool hasEpgData(String channelId) {
    return _channelMatcher.hasEpgData(channelId);
  }

  /// Debug helper: logs match counts (guarded by debug flag).
  void logMatchDiagnostics() {
    _logMatchDiagnostics(context: 'EPG');
  }

  /// Debug helper: resets match counters (guarded by debug flag).
  void resetMatchDiagnostics() {
    if (_enableMatchingDiagnostics) {
      _resetMatchDiagnostics();
    }
  }

  /// Resolve and optionally cache the EPG id for a playlist channel
  String? resolveEpgId(
    String channelId, {
    String? channelName,
    bool cache = true,
    bool allowLoose = true,
  }) =>
      _publicApi.resolveEpgId(
        channelId,
        channelName: channelName,
        cache: cache,
        allowLoose: allowLoose,
      );

  bool hasEpgMatch(String channelId, {String? channelName}) =>
      _publicApi.hasEpgMatch(channelId, channelName: channelName);

  /// True while the guide has no EPG data yet and a full load is in flight.
  bool get isGuideBootstrapBusy =>
      !hasUsableData &&
      (_isLoading || _isParsing || _isDownloading);

  /// Whether an empty guide row should show a loading placeholder.
  bool shouldShowGuideRowLoading(
    String channelId, {
    String? channelName,
  }) {
    if (isGuideBootstrapBusy) return true;
    if (!isBatchLoading) return false;
    if (!hasEpgMatch(channelId, channelName: channelName)) return false;
    return !hasProgramsForChannel(channelId, channelName: channelName);
  }

  /// Fast match estimator for diagnostics using the new pipeline
  int estimateMatchesFast(List<Map<String, dynamic>> channelMaps) {
    return _channelMatcher.estimateMatchesFast(
      channelMaps,
      internalMappingCount: _internalToEpgIdMapping.length,
    );
  }

  Program? getCurrentProgram(String channelId,
          {String? channelName, String? groupTitle}) =>
      _programQuery.getCurrentProgram(channelId,
          channelName: channelName, groupTitle: groupTitle);

  Program? getProgramForChannel(String channelId,
          {String? channelName, String? groupTitle}) =>
      _programQuery.getProgramForChannel(channelId,
          channelName: channelName, groupTitle: groupTitle);

  Future<Program?> getProgramForChannelAsync(String channelId,
          {String? channelName}) =>
      _programQuery.getProgramForChannelAsync(channelId,
          channelName: channelName);

  Future<void> priorityLoadVisibleChannels(
    List<String> channelIds, {
    List<String?>? channelNames,
  }) =>
      _channelBatchLoader.priorityLoadVisibleChannels(
        channelIds,
        channelNames: channelNames,
      );

  Future<void> ensureChannelLoaded(
    String channelId, {
    String? channelName,
  }) =>
      _channelBatchLoader.ensureChannelLoaded(
        channelId,
        channelName: channelName,
      );

  Future<void> ensureChannelsLoadedBatch(
    List<String> channelIds, {
    List<String?>? channelNames,
  }) =>
      _channelBatchLoader.ensureChannelsLoadedBatch(
        channelIds,
        channelNames: channelNames,
      );

  Future<void> loadChannelsForBatch(List<String> channelIds) =>
      _channelBatchLoader.loadChannelsForBatch(channelIds);

  bool hasManualMapping(String channelId) =>
      _mappingFacade.hasManualMapping(channelId);
  String? getManualMapping(String channelId) =>
      _mappingFacade.getManualMapping(channelId);
  List<String> getEpgChannelIds() => _mappingFacade.getEpgChannelIds();

  List<MapEntry<String, double>> getSuggestedMatches(
      String channelId, String? channelName,
      {int limit = 10}) =>
      _publicApi.getSuggestedMatches(channelId, channelName, limit: limit);

  String? getChannelPreview(String epgChannelId) =>
      _mappingFacade.getChannelPreview(epgChannelId);

  Future<void> setManualMapping(String channelId, String epgChannelId) =>
      _mappingFacade.setManualMapping(channelId, epgChannelId);

  Future<void> removeManualMapping(String channelId) =>
      _mappingFacade.removeManualMapping(channelId);

  Future<void> loadMappingsFromDb() => _mappingFacade.loadMappingsFromDb();
}
