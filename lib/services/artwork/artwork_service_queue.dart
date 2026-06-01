part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceQueue on LiveTvArtworkService {
  /// Enqueue a program for artwork fetching.
  void enqueueArtwork(Program program, {bool highPriority = false}) {
    if (_pauseArtworkFetching || _suspendArtworkCaches) return;
    if (_queuedArtworkIds.contains(program.id)) return;
    diagEnqueued++;
    _queuedArtworkIds.add(program.id);
    if (highPriority) {
      _artworkQueueHigh.add(program);
    } else {
      _artworkQueueLow.add(program);
    }
    _scheduleArtworkDrain();
  }

  /// Register the channel for a program (needed for title-based lookups).
  void registerProgramChannel(Program program, Channel channel) {
    _programChannelLookup[program.id] = channel;
  }

  void _scheduleArtworkDrain() {
    debugLog(
        'LiveTV artwork: _scheduleArtworkDrain called (paused=$_pauseArtworkFetching suspended=$_suspendArtworkCaches idle=$_isIdle queueHigh=${_artworkQueueHigh.length} queueLow=${_artworkQueueLow.length})');
    if (_pauseArtworkFetching || _suspendArtworkCaches) {
      debugLog(
          'LiveTV: Artwork drain skipped - paused=$_pauseArtworkFetching suspended=$_suspendArtworkCaches');
      return;
    }
    // Use a slower drain interval in idle mode but don't stop entirely
    final interval = _isIdle
        ? const Duration(milliseconds: 500)
        : const Duration(milliseconds: 100);
    _artworkThrottle ??= Timer(interval, _drainArtworkQueue);
    debugLog(
        'LiveTV artwork: Timer scheduled for drain in ${interval.inMilliseconds}ms');
  }

  Future<void> _drainArtworkQueue() async {
    _artworkThrottle?.cancel();
    _artworkThrottle = null;
    if ((_artworkQueueHigh.isEmpty && _artworkQueueLow.isEmpty) ||
        _isDisposed ||
        _pauseArtworkFetching ||
        _suspendArtworkCaches) {
      return;
    }

    // Larger batches drain the queue faster — each item is an HTTP call that
    // runs in parallel, so bigger batches = more parallelism = faster results.
    final batchSize = _isIdle ? 4 : (MemoryManager.isLowMemory ? 4 : 12);
    final batch = <Program>[];
    for (var i = 0;
        i < batchSize &&
            (_artworkQueueHigh.isNotEmpty || _artworkQueueLow.isNotEmpty);
        i++) {
      final program = _artworkQueueHigh.isNotEmpty
          ? _artworkQueueHigh.removeFirst()
          : _artworkQueueLow.removeFirst();
      _queuedArtworkIds.remove(program.id);
      batch.add(program);
    }

    final futures = batch.map((program) async {
      try {
        diagFetched++;
        debugLog('LiveTV: Fetching artwork for: "${program.title}"');
        final image = await fetchProgramArtwork(program);
        if (_isDisposed) return;
        if (image != null && image.isNotEmpty) {
          diagHits++;
          debugLog('LiveTV: Found artwork for "${program.title}": $image');
        } else {
          diagNoMatch++;
          debugLog('LiveTV: No artwork found for "${program.title}"');
        }
      } catch (e) {
        debugLog('LiveTV: Error fetching artwork for "${program.title}": $e');
        _markArtworkFailure(program.id);
      }
    }).toList();
    await Future.wait(futures);

    if (_artworkQueueHigh.isNotEmpty || _artworkQueueLow.isNotEmpty) {
      // When the queue is large, drain immediately instead of waiting 200ms.
      // This prevents the queue from growing faster than we can process it.
      if (_artworkQueueHigh.length + _artworkQueueLow.length > 10) {
        _artworkThrottle ??= Timer(Duration.zero, _drainArtworkQueue);
      } else {
        _scheduleArtworkDrain();
      }
    }
  }
}
