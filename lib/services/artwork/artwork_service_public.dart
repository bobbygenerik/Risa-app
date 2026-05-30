part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServicePublic on LiveTvArtworkService {
  // ─────────────────────────────────────────────────────────────────────────
  // PUBLIC GETTERS
  // ─────────────────────────────────────────────────────────────────────────

  bool get tmdbEnabled => _tmdbEnabled;
  bool get tvdbEnabled => _tvdbEnabled;
  bool get fanartEnabled => LiveTvArtworkService._fanartEnabled;
  bool get sportsDbEnabled => LiveTvArtworkService._sportsDbEnabled;

  int get programArtworkCacheSize => _programArtwork.length;
  int get titleArtworkCacheSize => _programArtworkByTitle.length;

  /// Get cached artwork for a program by ID.
  String? getArtwork(String programId) => _programArtwork[programId];

  /// Get cached artwork by title lookup.
  String? getArtworkByTitle(Program program, [Channel? channel]) {
    if (!_isTitleCacheEligible(program)) return null;
    final key = _titleCacheKey(program, channel);
    final url = _programArtworkByTitle[key];
    if (url == null || url.isEmpty) return null;
    final timestamp = _programArtworkByTitleTimestamps[key];
    if (timestamp == null ||
        DateTime.now().difference(timestamp) > LiveTvArtworkService._programArtworkTitleTtl) {
      _programArtworkByTitle.remove(key);
      _programArtworkByTitleTimestamps.remove(key);
      _programArtworkTitleOrder.remove(key);
      _scheduleProgramArtworkTitleSave();
      debugLog(
        'LiveTV artwork SKIP: program="${program.title}" channel="${channel?.name ?? "unknown"}" '
        'reason=title_cache_expired',
      );
      return null;
    }
    return url;
  }

  /// Get cached title logo for a program.
  String? getTitleLogo(String programId) => _programTitleLogos[programId];
  String? getTitleLogoForProgram(Program program, Channel channel) =>
      _programTitleLogos[_titleLogoCacheKey(program, channel)];

  /// Check if a title logo request is pending.
  bool isTitleLogoRequestPending(String programId) =>
      _titleLogoRequests.contains(programId);
  bool isTitleLogoRequestPendingForProgram(Program program, Channel channel) =>
      _titleLogoRequests.contains(_titleLogoCacheKey(program, channel));

  /// Get the channel lookup for a program.
  Channel? getChannelForProgram(String programId) =>
      _programChannelLookup[programId];

  /// Check if a program has artwork ready (cached) for display.
  /// Returns true if we have cached artwork for this program.
  bool hasArtworkReady(Program program, Channel channel) {
    // Check by program ID
    final byId = _programArtwork[program.id];
    if (byId != null && byId.isNotEmpty) return true;

    // Check by title cache
    if (_isTitleCacheEligible(program)) {
      final byTitle = _programArtworkByTitle[_titleCacheKey(program, channel)];
      if (byTitle != null && byTitle.isNotEmpty) return true;
    }

    // Check EPG-provided image URL
    if (program.imageUrl != null && program.imageUrl!.isNotEmpty) {
      // EPG provides an image - consider ready
      return true;
    }

    return false;
  }

  /// Prefetch artwork for visible programs and report readiness status.
  /// Returns a map of channelId -> ready status.
  /// Will wait up to [timeout] for artwork to become available.
  Future<Map<String, bool>> prefetchVisibleArtwork(
    List<Program> programs,
    List<Channel> channels, {
    Duration timeout = const Duration(seconds: 10),
  }) async {
    if (programs.isEmpty || channels.isEmpty) {
      return {};
    }

    final result = <String, bool>{};
    final pending = <String, bool>{};

    // Build lookup map
    final channelMap = <String, Channel>{};
    for (final channel in channels) {
      channelMap[channel.epgLookupId] = channel;
    }

    // Check initial readiness and queue fetches for missing artwork
    for (final program in programs) {
      final channel = channelMap[program.channelId];
      if (channel == null) continue;

      final channelId = channel.epgLookupId;
      if (hasArtworkReady(program, channel)) {
        result[channelId] = true;
      } else {
        pending[channelId] = false;
        // Queue high-priority fetch
        ensureFreshProgramArtwork(program, channel, highPriority: true);
      }
    }

    // If all are ready, return immediately
    if (pending.isEmpty) {
      return result;
    }

    // Wait for pending artwork with timeout
    final startTime = DateTime.now();
    while (
        pending.isNotEmpty && DateTime.now().difference(startTime) < timeout) {
      await Future.delayed(const Duration(milliseconds: 200));

      // Check if any pending became ready
      final nowReady = <String>[];
      for (final channelId in pending.keys) {
        final program = programs.firstWhere(
          (p) => p.channelId == channelId,
          orElse: () => programs.first,
        );
        final channel = channelMap[channelId];
        if (channel != null && hasArtworkReady(program, channel)) {
          nowReady.add(channelId);
          result[channelId] = true;
        }
      }

      for (final id in nowReady) {
        pending.remove(id);
      }
    }

    // Mark remaining as not ready
    for (final channelId in pending.keys) {
      result[channelId] = false;
    }

    debugLog(
        'LiveTV artwork: prefetchVisibleArtwork completed - ${result.values.where((v) => v).length}/${result.length} ready');
    return result;
  }

  /// Get count of ready artwork for a list of channels/programs
  int countReadyArtwork(List<Program> programs, List<Channel> channels) {
    int count = 0;
    final channelMap = <String, Channel>{};
    for (final channel in channels) {
      channelMap[channel.epgLookupId] = channel;
    }
    for (final program in programs) {
      final channel = channelMap[program.channelId];
      if (channel != null && hasArtworkReady(program, channel)) {
        count++;
      }
    }
    return count;
  }
}
