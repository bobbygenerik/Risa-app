part of '../epg_diagnostic_screen.dart';

extension EpgDiagnosticStats on _EpgDiagnosticScreenState {
  void _refreshStats({bool allowWhileEpgBusy = false}) {
    if (_statsInFlight) return;
    final epgService = context.read<IncrementalEpgService>();
    final channelProvider = context.read<ChannelProvider>();
    final isEpgBusy = epgService.isDownloading ||
        epgService.isParsing ||
        epgService.isLoading;
    if (!allowWhileEpgBusy && (isEpgBusy || channelProvider.isLoading)) {
      return;
    }
    final now = DateTime.now();
    if (_lastRefreshAt != null &&
        now.difference(_lastRefreshAt!).inMilliseconds < 750) {
      return;
    }
    _lastRefreshAt = now;
    setState(() {
      _statsFuture = _computeStats();
    });
  }

  void _resetPagedMatches() {
    _pageEntries.clear();
    _pageOffset = 0;
    _pageHasMore = true;
    _pageLoading = false;
  }

  void _updatePageSignature(int channelCount, int epgCount) {
    final signature = '$channelCount|$epgCount|${_matchFilter.name}';
    if (_pageSignature == signature) return;
    _pageSignature = signature;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(_resetPagedMatches);
      }
    });
  }

  Future<void> _loadNextMatchPage() async {
    if (_pageLoading || !_pageHasMore) return;
    final epgService = context.read<IncrementalEpgService>();
    final channelProvider = context.read<ChannelProvider>();
    final isEpgBusy = epgService.isDownloading ||
        epgService.isParsing ||
        epgService.isLoading;
    if (isEpgBusy || channelProvider.isLoading) return;
    setState(() => _pageLoading = true);

    final totalChannels = await channelProvider.getChannelCountAsync();
    final List<_MatchEntry> next = [];
    var offset = _pageOffset;
    var iterations = 0;

    try {
      while (
          next.length < _EpgDiagnosticScreenState._pageSize && offset < totalChannels && iterations < 5) {
        final batch = await channelProvider.getChannelsPage(
          offset: offset,
          limit: _EpgDiagnosticScreenState._scanChunkSize,
        );
        if (batch.isEmpty) break;
        offset += batch.length;
        for (final channel in batch) {
          final id = channel.epgLookupId;
          final matched = epgService.hasEpgMatch(
            id,
            channelName: channel.epgLookupNameFallback,
          );
          final passes = _matchFilter == _MatchFilter.all ||
              (_matchFilter == _MatchFilter.matched && matched) ||
              (_matchFilter == _MatchFilter.unmatched && !matched);
          if (!passes) continue;
          next.add(_MatchEntry(channel: channel, matched: matched, id: id));
          if (next.length >= _EpgDiagnosticScreenState._pageSize) break;
        }
        iterations++;
      }
    } catch (e, st) {
      debugLog('EPG Diagnostic: load page failed: $e\n$st');
    }

    if (!mounted) return;
    setState(() {
      _pageEntries.addAll(next);
      _pageOffset = offset;
      _pageHasMore = _pageOffset < totalChannels;
      _pageLoading = false;
    });
  }

  void _maybeRefreshStats(
      int channelCount, int epgCount, bool isEpgBusy, bool isPlaylistBusy) {
    if (channelCount == _lastChannelCount && epgCount == _lastEpgCount) {
      return;
    }
    if (isEpgBusy || isPlaylistBusy) {
      return;
    }
    _lastChannelCount = channelCount;
    _lastEpgCount = epgCount;

    // Only refresh stats if enough time has passed to avoid rapid rebuilds
    final now = DateTime.now();
    if (_lastRefreshAt != null &&
        now.difference(_lastRefreshAt!).inSeconds < 2) {
      return;
    }

    // Defer state update to post-frame to avoid setState during build
    Future.microtask(() {
      if (mounted) _refreshStats();
    });
  }

  void _requestInitialFocus() {
    if (_reloadFocus.hasFocus) return;
    _reloadFocus.requestFocus();
  }

  String _formatDuration(Duration duration) {
    final totalSeconds = duration.inSeconds;
    final minutes = (totalSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (totalSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  Future<void> _runFullScan() async {
    if (_fullScanInFlight) return;
    final epgService = context.read<IncrementalEpgService>();
    final channelProvider = context.read<ChannelProvider>();
    final isEpgBusy = epgService.isDownloading ||
        epgService.isParsing ||
        epgService.isLoading;
    if (isEpgBusy || channelProvider.isLoading) return;
    setState(() {
      _fullScanInFlight = true;
      _fullScanMatched = 0;
      _fullScanTotal = 0;
      _fullScanProgress = 0.0;
      _fullScanDuration = null;
    });

    final startedAt = DateTime.now();
    final totalChannels = await channelProvider.getChannelCountAsync();
    const pageSize = 300;
    int processed = 0;
    int matched = 0;

    while (processed < totalChannels) {
      final batch = await channelProvider.getChannelsPage(
        offset: processed,
        limit: pageSize,
      );
      if (batch.isEmpty) break;
      for (final channel in batch) {
        final id = channel.epgLookupId;
        if (epgService.hasEpgMatch(
          id,
          channelName: channel.epgLookupNameFallback,
        )) {
          matched++;
        }
      }
      processed += batch.length;
      if (!mounted) return;
      setState(() {
        _fullScanMatched = matched;
        _fullScanTotal = totalChannels;
        _fullScanProgress = totalChannels == 0
            ? 0.0
            : (processed / totalChannels).clamp(0.0, 1.0);
      });
      // Yield to keep UI responsive.
      await Future.delayed(const Duration(milliseconds: 1));
    }

    if (!mounted) return;
    setState(() {
      _fullScanMatched = matched;
      _fullScanTotal = totalChannels;
      _fullScanProgress = 1.0;
      _fullScanInFlight = false;
      _fullScanDuration = DateTime.now().difference(startedAt);
    });
  }

  Future<Map<String, int>> _computeStats() async {
    _statsInFlight = true;
    try {
      final channelProvider = context.read<ChannelProvider>();
      final epgService = context.read<IncrementalEpgService>();

      final totalChannels = await channelProvider.getChannelCountAsync();
      final epgAvailable = epgService.availableChannels.length;
      final loadedProgramChannels = epgService.loadedProgramChannelCount;
      if (totalChannels == 0) {
        return {
          'matched': 0,
          'total': 0,
          'scanned': 0,
          'epgChannels': epgAvailable,
          'loadedProgramChannels': loadedProgramChannels,
          'estimated': 0,
        };
      }

      if (mounted) {
        setState(() {
          _diagnosticChannelCount = totalChannels;
          _diagnosticEpgCount = epgAvailable;
        });
      }

      if (epgAvailable == 0 && loadedProgramChannels == 0) {
        return {
          'matched': 0,
          'scanned': totalChannels,
          'total': totalChannels,
          'epgChannels': epgAvailable,
          'loadedProgramChannels': loadedProgramChannels,
          'estimated': 0,
        };
      }

      final sampleLimit = math.min(1200, totalChannels);
      var scanned = 0;
      var matched = 0;
      const batchSize = 300;
      while (scanned < sampleLimit) {
        final batch = await channelProvider.getChannelsPage(
          offset: scanned,
          limit: math.min(batchSize, sampleLimit - scanned),
        );
        if (batch.isEmpty) break;
        for (final channel in batch) {
          final id = channel.epgLookupId;
          if (epgService.hasEpgMatch(
            id,
            channelName: channel.epgLookupNameFallback,
          )) {
            matched++;
          }
        }
        scanned += batch.length;
      }

      final estimated = scanned < totalChannels ? 1 : 0;
      final projectedMatched =
          scanned == 0 ? 0 : ((matched / scanned) * totalChannels).round();

      return {
        'matched': estimated == 1 ? projectedMatched : matched,
        'scanned': scanned,
        'total': totalChannels,
        'epgChannels': epgAvailable,
        'loadedProgramChannels': loadedProgramChannels,
        'estimated': estimated,
      };
    } catch (e, st) {
      debugLog('EPG Diagnostic: computeStats failed: $e\n$st');
      return {
        'matched': 0,
        'total': 0,
        'scanned': 0,
        'epgChannels': 0,
        'loadedProgramChannels': 0,
        'estimated': 0,
      };
    } finally {
      _statsInFlight = false;
    }
  }

  String _epgStatusSummary(IncrementalEpgService epgService) {
    final epgChannels = epgService.availableChannels.length;
    final loadedPrograms = epgService.loadedProgramChannelCount;
    if (epgService.isDownloading ||
        epgService.isParsing ||
        epgService.isLoading) {
      return 'Loading';
    }
    if (epgChannels == 0 && loadedPrograms == 0) {
      return 'No Data';
    }
    if (loadedPrograms == 0) {
      return 'Partial';
    }
    if (epgChannels <= 10 && loadedPrograms > 25) {
      return 'Loaded (cache-backed)';
    }
    if (epgChannels < 10) {
      return 'Partial';
    }
    return 'Loaded';
  }

  Future<Map<String, String?>> _getEpgConfiguration() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'primary':
          prefs.getString('custom_epg_url') ?? prefs.getString('epg_url'),
      'secondary': prefs.getString('secondary_epg_url'),
    };
  }

  Future<Map<String, String>> _getCacheStats() async {
    final prefs = await SharedPreferences.getInstance();
    int readIntPref(String key) {
      final raw = prefs.get(key);
      if (raw is int) return raw;
      if (raw is String) return int.tryParse(raw) ?? 0;
      return 0;
    }

    final cacheHours = readIntPref('epg_cache_duration');
    final cacheTime = readIntPref('epg_cache_time');
    final cacheUrl = prefs.getString('epg_cache_url') ?? '';
    final cacheTimeText = cacheTime == 0
        ? 'unknown'
        : DateTime.fromMillisecondsSinceEpoch(cacheTime).toString();
    return {
      'cacheHours': cacheHours.toString(),
      'cacheTime': cacheTimeText,
      'cacheUrl': cacheUrl,
    };
  }
}
