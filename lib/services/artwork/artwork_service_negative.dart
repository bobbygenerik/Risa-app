part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceNegative on LiveTvArtworkService {
  bool _shouldAttemptArtworkByTitle(Program program, [Channel? channel]) {
    if (!_isTitleCacheEligible(program)) {
      diagSkipTitleIneligible++;
      debugLog(
        'LiveTV artwork SKIP: program="${program.title}" channel="${channel?.name ?? "unknown"}" '
        'reason=title_cache_ineligible',
      );
      return false;
    }
    final key = _titleCacheKey(program, channel);
    final until = _programArtworkNegativeByTitle[key];
    if (until == null) return true;
    if (DateTime.now().isAfter(until)) {
      _programArtworkNegativeByTitle.remove(key);
      _programArtworkNegativeTitleOrder.remove(key);
      return true;
    }
    diagSkipNegativeCache++;
    debugLog(
      'LiveTV artwork SKIP: program="${program.title}" channel="${channel?.name ?? "unknown"}" '
      'reason=negative_cache_hit (blocked until ${until.toIso8601String()})',
    );
    return false;
  }

  void _markArtworkNoMatch(Program program, [Channel? channel]) {
    final key = _titleCacheKey(program, channel);
    _registerProgramArtworkNegativeTitle(
      key,
      DateTime.now().add(LiveTvArtworkService._artworkNegativeTtl),
    );
  }

  void _clearArtworkNoMatch(Program program, [Channel? channel]) {
    final key = _titleCacheKey(program, channel);
    _programArtworkNegativeByTitle.remove(key);
    _programArtworkNegativeTitleOrder.remove(key);
    _scheduleProgramArtworkNegativeSave();
  }

  bool _shouldAttemptArtwork(String key) {
    final retryAfter = _artworkRetryAfter[key];
    if (retryAfter == null) return true;
    return DateTime.now().isAfter(retryAfter);
  }

  void _markArtworkFailure(String key) {
    final count = (_artworkFailureCounts[key] ?? 0) + 1;
    _artworkFailureCounts[key] = count;
    // Gentler backoff: 1, 2, 4, max 5 minutes (was 15)
    final minutes = math.min(5, math.pow(2, count - 1).round());
    _artworkRetryAfter[key] = DateTime.now().add(Duration(minutes: minutes));
  }

  void _clearArtworkFailure(String key) {
    _artworkFailureCounts.remove(key);
    _artworkRetryAfter.remove(key);
  }
}
