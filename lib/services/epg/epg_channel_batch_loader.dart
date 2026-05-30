import 'dart:async';

/// Batch/deferred loading of per-channel EPG programs from the DB.
class EpgChannelBatchLoader {
  EpgChannelBatchLoader({
    required EpgChannelBatchLoaderDeps deps,
    this.channelsPerBatch = 50,
    this.batchDebounce = const Duration(milliseconds: 300),
  }) : _deps = deps;

  final EpgChannelBatchLoaderDeps _deps;
  final int channelsPerBatch;
  final Duration batchDebounce;

  final List<String> _pendingBatch = [];
  final Set<String> _deferredChannelRequests = {};
  final Set<String> _attemptedLoads = {};
  Timer? _batchTimer;

  bool get isBatchLoading => _pendingBatch.isNotEmpty || _batchTimer != null;

  void cancelBatchTimer() {
    _batchTimer?.cancel();
    _batchTimer = null;
  }

  void clearAttemptedLoads() => _attemptedLoads.clear();

  void addDeferredChannelIds(Iterable<String> ids) {
    _deferredChannelRequests.addAll(ids);
  }

  void flushDeferredChannelRequests() {
    if (_deferredChannelRequests.isEmpty) return;
    final ids = _deferredChannelRequests.toList();
    _deferredChannelRequests.clear();
    _deps.log(
        'EPG: flushing ${ids.length} deferred channel requests after parse finished');
    Future.microtask(() {
      ensureChannelsLoadedBatch(ids);
    });
  }

  Future<void> priorityLoadVisibleChannels(
    List<String> channelIds, {
    List<String?>? channelNames,
  }) async {
    if (channelIds.isEmpty) return;
    if (_deps.isDbDisabled()) return;

    if (_deps.isBusy()) {
      _deferredChannelRequests.addAll(channelIds);
    }

    final epgIdsToLoad = _collectEpgIdsToLoad(
      channelIds,
      channelNames: channelNames,
    );
    if (epgIdsToLoad.isEmpty) {
      _deps.log(
          'EPG: priorityLoadVisibleChannels - all ${channelIds.length} channels already loaded');
      return;
    }

    _deps.log(
        'EPG: priorityLoadVisibleChannels - loading ${epgIdsToLoad.length} channels immediately');

    _pendingBatch.addAll(epgIdsToLoad);
    try {
      await _deps.loadProgramsFromDbBatch(epgIdsToLoad);
    } finally {
      _pendingBatch.removeWhere((id) => epgIdsToLoad.contains(id));
    }
  }

  Future<void> ensureChannelLoaded(
    String channelId, {
    String? channelName,
  }) async {
    if (_deps.isDbDisabled()) return;
    if (_deps.isBusy()) {
      _deferredChannelRequests.add(channelId);
    }

    final epgId = _deps.findEpgId(channelId, channelName);
    if (epgId == null) return;

    _deps.registerChannel(epgId);
    _deps.cacheMapping(channelId, epgId);

    if (_deps.channelHasPrograms(epgId) || _pendingBatch.contains(epgId)) {
      return;
    }

    _pendingBatch.add(epgId);

    _batchTimer?.cancel();
    _batchTimer = Timer(batchDebounce, () {
      final batch = List<String>.from(_pendingBatch);
      _pendingBatch.clear();
      _deps.loadChannelBatch(batch);
    });

    if (!_deps.channelHasPrograms(epgId)) {
      unawaited(_deps.loadProgramsFromDbBatch([epgId]));
    }
  }

  Future<void> ensureChannelsLoadedBatch(
    List<String> channelIds, {
    List<String?>? channelNames,
  }) async {
    if (channelIds.isEmpty) return;
    if (_deps.isDbDisabled()) return;

    if (_deps.isBusy()) {
      _deferredChannelRequests.addAll(channelIds);
    }

    _deps.log(
        'EPG: ensureChannelsLoadedBatch called with ${channelIds.length} channels');

    final epgIdsToLoad = _collectEpgIdsToLoad(
      channelIds,
      channelNames: channelNames,
    );
    if (epgIdsToLoad.isEmpty) {
      _deps.log(
          'EPG: ensureChannelsLoadedBatch - no new channels to load (all already loaded or pending)');
      return;
    }

    _deps.log('EPG: queueing ${epgIdsToLoad.length} channels for batch load');
    _pendingBatch.addAll(epgIdsToLoad);

    _batchTimer?.cancel();
    _batchTimer = Timer(batchDebounce, () async {
      final batch = List<String>.from(_pendingBatch);
      if (batch.isEmpty) return;

      _deps.log('EPG: Batch timer fired, loading ${batch.length} channels');
      await _deps.loadProgramsFromDbBatch(batch);
      _pendingBatch.clear();
    });
  }

  Future<void> loadChannelsForBatch(List<String> channelIds) async {
    final batches = <List<String>>[];
    for (int i = 0; i < channelIds.length; i += channelsPerBatch) {
      batches.add(channelIds.sublist(
          i, (i + channelsPerBatch).clamp(0, channelIds.length)));
    }

    for (final batch in batches) {
      await _deps.loadChannelBatch(batch);
    }
  }

  List<String> _collectEpgIdsToLoad(
    List<String> channelIds, {
    List<String?>? channelNames,
  }) {
    final effectiveNames =
        channelNames != null && channelNames.length == channelIds.length
            ? channelNames
            : null;

    final epgIdsToLoad = <String>[];
    final seen = <String>{};

    for (var i = 0; i < channelIds.length; i++) {
      final channelId = channelIds[i];
      final name = effectiveNames != null ? effectiveNames[i] : null;
      final epgId = _deps.findEpgId(channelId, name);
      if (epgId == null) continue;

      _deps.cacheMapping(channelId, epgId);

      if (_deps.channelHasPrograms(epgId) ||
          _pendingBatch.contains(epgId) ||
          _attemptedLoads.contains(epgId)) {
        continue;
      }
      if (!seen.add(epgId)) continue;

      _deps.registerChannel(epgId);
      epgIdsToLoad.add(epgId);
      _attemptedLoads.add(epgId);
    }

    return epgIdsToLoad;
  }
}

/// Callbacks into [IncrementalEpgService] for resolution, persistence, and DB IO.
class EpgChannelBatchLoaderDeps {
  const EpgChannelBatchLoaderDeps({
    required this.isDbDisabled,
    required this.isBusy,
    required this.findEpgId,
    required this.cacheMapping,
    required this.registerChannel,
    required this.channelHasPrograms,
    required this.loadProgramsFromDbBatch,
    required this.loadChannelBatch,
    required this.log,
  });

  final bool Function() isDbDisabled;
  final bool Function() isBusy;
  final String? Function(String channelId, String? channelName) findEpgId;
  final void Function(String channelId, String epgId) cacheMapping;
  final void Function(String epgId) registerChannel;
  final bool Function(String epgId) channelHasPrograms;
  final Future<void> Function(List<String> epgIds) loadProgramsFromDbBatch;
  final Future<void> Function(List<String> batch) loadChannelBatch;
  final void Function(String message) log;
}
