part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceState on LiveTvArtworkService {
  /// Pause artwork fetching (e.g., during playback).
  void pauseFetching() {
    _pauseArtworkFetching = true;
    // Keep queues intact so work resumes on resumeFetching()
    _artworkThrottle?.cancel();
    _artworkThrottle = null;
  }

  /// Resume artwork fetching.
  void resumeFetching() {
    _pauseArtworkFetching = false;
    _scheduleArtworkDrain();
  }

  /// Suspend caches (e.g., for playback memory management).
  void suspendCaches() {
    _suspendArtworkCaches = true;
  }

  /// Resume caches.
  void resumeCaches() {
    _suspendArtworkCaches = false;
  }

  /// Enter idle mode (reduces resource usage but keeps artwork fetching active).
  void enterIdleMode() {
    _isIdle = true;
    // Don't pause artwork fetching — let the queue continue draining
    // at a reduced batch size (handled in _drainArtworkQueue).
    MemoryManager.checkMemoryPressure();
  }

  /// Exit idle mode.
  void exitIdleMode() {
    _isIdle = false;
    // Kick the drain in case it was waiting
    _scheduleArtworkDrain();
  }

  // ─────────────────────────────────────────────────────────────────────────
  // ARTWORK QUEUEING
  // ─────────────────────────────────────────────────────────────────────────
}
