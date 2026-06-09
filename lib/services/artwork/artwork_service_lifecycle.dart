part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceLifecycle on LiveTvArtworkService {
  /// Initialize the service by loading cached data.
  Future<void> initialize() async {
    await Future.wait([
      _loadProgramArtworkTitleCache(),
      _loadProgramArtworkNegativeCache(),
      _cleanupOldCacheKeys(),
    ]);
  }

  /// Remove stale cache keys from previous versions so they don't
  /// consume SharedPreferences storage forever.
  Future<void> _cleanupOldCacheKeys() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      const oldKeys = [
        'live_tv_program_artwork_title_cache_v4',
        'live_tv_program_artwork_negative_cache_v5',
        'live_tv_program_artwork_title_cache_v3',
        'live_tv_program_artwork_negative_cache_v4',
      ];
      for (final key in oldKeys) {
        if (prefs.containsKey(key)) {
          await prefs.remove(key);
          debugLog('LiveTV artwork: Removed stale cache key $key');
        }
      }
    } catch (e) {
      debugLog('LiveTV artwork: Error cleaning old cache keys: $e');
    }
  }

  /// Drop in-memory artwork maps before opening the player (OOM on TV).
  void releaseMemoryForPlayback() {
    _artworkThrottle?.cancel();
    _artworkTitleSaveDebounce?.cancel();
    _artworkNegativeSaveDebounce?.cancel();
    _artworkUiDebounce?.cancel();
    _artworkQueueHigh.clear();
    _artworkQueueLow.clear();
    _queuedArtworkIds.clear();
    _artworkRequests.clear();
    _pendingArtworkRequests.clear();
    _pendingArtworkByTitle.clear();
    // Keep title/negative caches — bounded; wiping them made cards bare until
    // async prefs reload after player return.
    _programArtwork.clear();
    _programArtworkOrder.clear();
    _artworkRetryAfter.clear();
    _artworkFailureCounts.clear();
    debugLog('LiveTV artwork: released in-memory caches for playback');
  }

  /// Dispose of timers and resources.
  void dispose() {
    _isDisposed = true;
    _artworkThrottle?.cancel();
    _artworkTitleSaveDebounce?.cancel();
    _artworkNegativeSaveDebounce?.cancel();
    _artworkUiDebounce?.cancel();
    _artworkQueueHigh.clear();
    _artworkQueueLow.clear();
    _queuedArtworkIds.clear();
    _artworkRequests.clear();
    _pendingArtworkRequests.clear();
    _pendingArtworkByTitle.clear();
  }

  /// Clear all artwork caches to remove old/bad data.
  Future<void> clearAllCaches() async {
    _programArtwork.clear();
    _programArtworkByTitle.clear();
    _programArtworkByTitleTimestamps.clear();
    _programArtworkNegativeByTitle.clear();
    _programTitleLogos.clear();
    _programArtworkOrder.clear();
    _programArtworkTitleOrder.clear();
    _programArtworkNegativeTitleOrder.clear();
    _programTitleLogoOrder.clear();
    _artworkRetryAfter.clear();
    _artworkFailureCounts.clear();

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(LiveTvArtworkService._programArtworkTitleCacheKey);
      await prefs.remove(LiveTvArtworkService._programArtworkNegativeCacheKey);
      debugLog('LiveTV artwork: All caches cleared successfully');
    } catch (e) {
      debugLog('LiveTV artwork: Error clearing caches: $e');
    }

    onArtworkUpdate();
  }
}
