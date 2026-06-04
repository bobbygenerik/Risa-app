part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceCache on LiveTvArtworkService {
  void _setProgramArtwork(String key, String value) {
    if (value.isEmpty) return;
    if (!_isLikelyLandscapeUrl(value)) return;
    _registerProgramArtworkEntry(key, value);
    _scheduleArtworkUiRefresh();
  }

  void _registerProgramArtworkEntry(String key, String value) {
    _programArtwork[key] = value;
    _programArtworkOrder.remove(key);
    _programArtworkOrder.addLast(key);
    while (_programArtworkOrder.length > _programArtworkEntryLimit()) {
      final removed = _programArtworkOrder.removeFirst();
      _programArtwork.remove(removed);
      _programChannelLookup.remove(removed);
    }
  }

  void _setProgramArtworkByTitle(
    Program program,
    String value, [
    Channel? channel,
  ]) {
    if (value.isEmpty) return;
    if (!_isLikelyLandscapeUrl(value)) return;
    if (!_isTitleCacheEligible(program)) return;
    _registerProgramArtworkTitle(_titleCacheKey(program, channel), value);
    if (_canUseGlobalTitleCache(program, channel)) {
      _registerProgramArtworkTitle(
          _globalTitleCacheKey(program, channel), value);
    }
  }

  void _registerProgramArtworkTitle(String key, String value) {
    _programArtworkByTitle[key] = value;
    _programArtworkByTitleTimestamps[key] = DateTime.now();
    _programArtworkTitleOrder.remove(key);
    _programArtworkTitleOrder.addLast(key);
    while (_programArtworkTitleOrder.length > _programArtworkTitleLimit()) {
      final removed = _programArtworkTitleOrder.removeFirst();
      _programArtworkByTitle.remove(removed);
      _programArtworkByTitleTimestamps.remove(removed);
    }
    _scheduleProgramArtworkTitleSave();
  }

  void _removeProgramArtworkTitle(String key) {
    if (key.isEmpty) return;
    final removed = _programArtworkByTitle.remove(key);
    if (removed == null) return;
    _programArtworkByTitleTimestamps.remove(key);
    _programArtworkTitleOrder.remove(key);
    _scheduleProgramArtworkTitleSave();
  }

  void _registerProgramArtworkNegativeTitle(String key, DateTime until) {
    _programArtworkNegativeByTitle[key] = until;
    _programArtworkNegativeTitleOrder.remove(key);
    _programArtworkNegativeTitleOrder.addLast(key);
    while (_programArtworkNegativeTitleOrder.length >
        _programArtworkNegativeLimit()) {
      final removed = _programArtworkNegativeTitleOrder.removeFirst();
      _programArtworkNegativeByTitle.remove(removed);
    }
    _scheduleProgramArtworkNegativeSave();
  }

  void _setProgramTitleLogo(String key, String value) {
    _registerProgramTitleLogoEntry(key, value);
    _scheduleArtworkUiRefresh();
  }

  void _registerProgramTitleLogoEntry(String key, String value) {
    _programTitleLogos[key] = value;
    _programTitleLogoOrder.remove(key);
    _programTitleLogoOrder.addLast(key);
    while (_programTitleLogoOrder.length > _programTitleLogoLimit()) {
      final removed = _programTitleLogoOrder.removeFirst();
      _programTitleLogos.remove(removed);
    }
  }

  int _programArtworkEntryLimit() {
    return MemoryManager.isLowMemory
        ? 200
        : LiveTvArtworkService._maxProgramArtworkEntries;
  }

  int _programArtworkTitleLimit() {
    return MemoryManager.isLowMemory
        ? 200
        : LiveTvArtworkService._maxProgramArtworkTitleEntries;
  }

  int _programArtworkNegativeLimit() {
    return MemoryManager.isLowMemory
        ? 100
        : LiveTvArtworkService._maxProgramArtworkNegativeEntries;
  }

  int _programTitleLogoLimit() {
    return MemoryManager.isLowMemory
        ? 50
        : LiveTvArtworkService._maxProgramTitleLogoEntries;
  }

  void _scheduleArtworkUiRefresh() {
    if (_isDisposed) return;
    _artworkUiDirty = true;
    if (_artworkUiDebounce?.isActive ?? false) return;
    _artworkUiDebounce = Timer(const Duration(milliseconds: 80), () {
      if (_isDisposed) return;
      if (_artworkUiDirty) {
        onArtworkUpdate();
        _artworkUiDirty = false;
      }
    });
  }
}
