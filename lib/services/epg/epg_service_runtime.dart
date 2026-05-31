part of '../incremental_epg_service.dart';

/// Runtime/config: DB recovery, progress, playlist config.
extension IncrementalEpgServiceRuntime on IncrementalEpgService {
  void _handleDbError(Object error) {
    final message = error.toString().toLowerCase();
    if (message.contains('read-only') ||
        message.contains('read only') ||
        message.contains('readonly') ||
        message.contains('locked')) {
      _dbDisabled = true;
    }
    if (message.contains('database_closed') ||
        message.contains('database closed')) {
      _dbClosedDetected = true;
    }
  }

  Future<void> _restoreDbIfClosed() async {
    if (!_dbClosedDetected) return;
    try {
      await _db.init().timeout(const Duration(seconds: 5));
      _dbDisabled = false;
      _dbClosedDetected = false;
      debugLog('EPG: DB reopened after close');
    } catch (e) {
      debugLog('EPG: DB reopen failed: $e');
    }
  }

  /// Clears in-flight flags without wiping progress (successful load finish).
  void _clearLoadingFlags() {
    _isLoading = false;
    _isDownloading = false;
    _isParsing = false;
    _stopParseProgressTimer();
  }

  /// Reset all loading states to ensure clean state
  void _resetLoadingState() {
    _clearLoadingFlags();
    _epgProgress = 0.0;
    _epgProgressLabel = '';
    _channelBatchLoader.clearAttemptedLoads();

    final emptyChannels = <String>[];
    for (final entry in _programsByChannel.entries) {
      if (entry.value.isEmpty) {
        emptyChannels.add(entry.key);
      }
    }
    for (final id in emptyChannels) {
      _programsByChannel.remove(id);
    }
    if (emptyChannels.isNotEmpty) {
      debugLog(
          'EPG: Cleared ${emptyChannels.length} empty-placeholder channels for retry');
      _channelBatchLoader.addDeferredChannelIds(emptyChannels);
    }

    _channelBatchLoader.flushDeferredChannelRequests();
  }

  void _setEpgProgress(double value, {String? label}) {
    final clamped = value.clamp(0.0, 1.0);
    final labelChanged = label != null && label != _epgProgressLabel;
    if ((clamped - _epgProgress).abs() < 0.01 && !labelChanged) {
      return;
    }
    _epgProgress = clamped;
    if (label != null) {
      _epgProgressLabel = label;
    }
    notifyListeners();
  }

  void _startParseProgressTimer() {
    _stopParseProgressTimer();
    final parseStart = DateTime.now();
    _setEpgProgress(0.35, label: 'Parsing EPG');
    _parseProgressTimer =
        Timer.periodic(const Duration(milliseconds: 500), (_) {
      final elapsed = DateTime.now().difference(parseStart).inMilliseconds;
      final estimate = _lastParseDurationMs > 0 ? _lastParseDurationMs : 60000;
      final ratio = (elapsed / estimate).clamp(0.0, 0.98);
      final progress = 0.35 + (0.35 * ratio);
      _setEpgProgress(progress);
    });
  }

  void _stopParseProgressTimer() {
    _parseProgressTimer?.cancel();
    _parseProgressTimer = null;
  }

  void setAllowedChannelIds(Set<String> channelIds,
      {bool triggerRefresh = false}) {
    final normalized = channelIds
        .map((id) => IncrementalEpgService.normalizeForAllowedId(id))
        .toSet();
    if (_allowedChannelIdsNormalized.length == normalized.length &&
        _allowedChannelIdsNormalized.containsAll(normalized)) {
      debugLog('EPG: Allowed channel set unchanged; skipping refresh.');
      return;
    }
    _allowedChannelIdsNormalized = normalized;
    _allowedChannelCount = _allowedChannelIdsNormalized.length;
    debugLog(
        'EPG: Allowed channel set size: ${_allowedChannelIdsNormalized.length}');
    _internalToEpgIdMapping.clear();
    if (triggerRefresh) {
      if (_isLoading || _isDownloading || _isParsing || _initInFlight) {
        _pendingAllowedRefresh = true;
      } else {
        unawaited(initialize(forceRefresh: false));
      }
    }
  }

  void setCatchupConfig(Map<String, CatchupInfo> config,
      {bool triggerRefresh = false}) {
    _catchupByNormalizedId = config;
    _catchupHoursByNormalizedId =
        config.map((key, value) => MapEntry(key, value.durationHours));
    if (triggerRefresh) {
      if (_isLoading || _isDownloading || _isParsing || _initInFlight) {
        _pendingAllowedRefresh = true;
      } else {
        unawaited(initialize(forceRefresh: false));
      }
    }
  }

  void setXtreamCredentials(
      {required String serverUrl,
      required String username,
      required String password}) {
    _xtreamServer = serverUrl;
    _xtreamUsername = username;
    _xtreamPassword = password;
  }

  void setPlaylistIdentity(String? identity) {
    final normalized = identity?.trim();
    final next =
        (normalized != null && normalized.isNotEmpty) ? normalized : null;
    if (next == _playlistIdentity) return;
    _playlistIdentity = next;
    _manualMappingsStore.setPlaylistIdentity(next);
    _normalizedMappingStore.setPlaylistIdentity(next);
    _displayNamesStore.setPlaylistIdentity(next);
    _manualMappingsStore.clear();
    unawaited(() async {
      final prefs = await SharedPreferences.getInstance();
      await _manualMappingsStore.loadFromPrefs(prefs);
      _manualMappingsStore.applyToService(
        internalToEpgIdMapping: _internalToEpgIdMapping,
        registerAvailableChannel: _publicApi.registerAvailableChannel,
      );
      notifyListeners();
    }());
  }

  Future<void> _loadNormalizedMappingFromPrefs() async {
    final result = await _normalizedMappingStore.load();
    if (result == null) return;
    _normalizedAvailableChannels = result.mapping;
    _availableChannels
        .addAll(_normalizedAvailableChannels!.values.expand((list) => list));
    _channelMatcher.rebuildEpgIdIndexFromIds(_availableChannels);
    if (result.migratedFromLegacy) {
      await _normalizedMappingStore.save(_normalizedAvailableChannels);
    }
  }

  Future<void> _hydrateFuzzyMatchIndexFromDisk() async {
    final displayNames = await _displayNamesStore.load();
    if (displayNames != null && displayNames.isNotEmpty) {
      _channelMatcher.setDisplayNames(displayNames);
    }
    _channelMatcher.rebuildFuzzyCandidates();
  }
}
