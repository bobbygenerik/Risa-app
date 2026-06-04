part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServicePersistence on LiveTvArtworkService {
  Future<void> _loadProgramArtworkTitleCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw =
          prefs.getString(LiveTvArtworkService._programArtworkTitleCacheKey);
      if (raw == null || raw.isEmpty) return;

      // Parse JSON off the main thread using compute()
      final entries = await compute(parseTitleCacheJsonIsolate, raw);
      if (entries.isEmpty) return;

      _programArtworkByTitle.clear();
      _programArtworkTitleOrder.clear();
      _programArtworkByTitleTimestamps.clear();
      final now = DateTime.now();

      for (final entry in entries) {
        final url = entry.url;
        final timestamp = DateTime.fromMillisecondsSinceEpoch(entry.timestamp);

        // Skip poster/logo/portrait URLs cached before stricter validation.
        if (!_isLikelyLandscapeUrl(url)) {
          debugLog(
            'LiveTV artwork: skipping non-landscape URL from disk cache: $url',
          );
          continue;
        }
        if (now.difference(timestamp) >
            LiveTvArtworkService._programArtworkTitleTtl) {
          continue;
        }

        _programArtworkByTitle[entry.key] = url;
        _programArtworkByTitleTimestamps[entry.key] = timestamp;
        _programArtworkTitleOrder.addLast(entry.key);
      }

      onArtworkUpdate();
    } catch (e) {
      debugLog('ArtworkService: loadTitleCache failed: $e');
    }
  }

  Future<void> _loadProgramArtworkNegativeCache() async {
    // Do not restore the negative cache across sessions. A previous failure
    // may have been transient (API outage, network issue) and should not block
    // fetches in a fresh session. The negative cache is still written during a
    // session to avoid hammering APIs within a single run, but it always starts
    // empty. Also clear any stale data left from a previous session.
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(LiveTvArtworkService._programArtworkNegativeCacheKey);
    } catch (_) {}
    _programArtworkNegativeByTitle.clear();
    _programArtworkNegativeTitleOrder.clear();
  }

  void _scheduleProgramArtworkTitleSave() {
    _artworkTitleSaveDebounce?.cancel();
    _artworkTitleSaveDebounce =
        Timer(const Duration(seconds: 2), _saveProgramArtworkTitleCache);
  }

  void _scheduleProgramArtworkNegativeSave() {
    _artworkNegativeSaveDebounce?.cancel();
    _artworkNegativeSaveDebounce =
        Timer(const Duration(seconds: 2), _saveProgramArtworkNegativeCache);
  }

  Future<void> _saveProgramArtworkTitleCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final ordered = <String, Map<String, dynamic>>{};
      for (final key in _programArtworkTitleOrder) {
        final value = _programArtworkByTitle[key];
        if (value != null && value.isNotEmpty) {
          ordered[key] = {
            'url': value,
            'ts': (_programArtworkByTitleTimestamps[key] ?? DateTime.now())
                .millisecondsSinceEpoch,
          };
        }
      }
      await prefs.setString(
        LiveTvArtworkService._programArtworkTitleCacheKey,
        jsonEncode(ordered),
      );
    } catch (e) {
      debugLog('ArtworkService: saveTitleCache failed: $e');
    }
  }

  Future<void> _saveProgramArtworkNegativeCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final ordered = <String, int>{};
      for (final key in _programArtworkNegativeTitleOrder) {
        final value = _programArtworkNegativeByTitle[key];
        if (value != null) {
          ordered[key] = value.millisecondsSinceEpoch;
        }
      }
      await prefs.setString(
        LiveTvArtworkService._programArtworkNegativeCacheKey,
        jsonEncode(ordered),
      );
    } catch (e) {
      debugLog('ArtworkService: saveNegativeCache failed: $e');
    }
  }
}
