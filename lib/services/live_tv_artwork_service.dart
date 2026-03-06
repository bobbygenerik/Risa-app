import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/fanart_service.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/services/thesportsdb_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/tvdb_service.dart';
import 'package:iptv_player/utils/artwork_diagnostics.dart';
import 'package:iptv_player/utils/artwork_validator.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/memory_manager.dart';
import 'package:iptv_player/utils/sports_classifier.dart';

// ─────────────────────────────────────────────────────────────────────────
// ISOLATE HELPERS FOR CACHE PERSISTENCE
// ─────────────────────────────────────────────────────────────────────────

/// Data class for title cache entries to pass to/from isolate.
class _TitleCacheEntry {
  final String key;
  final String url;
  final int timestamp;

  _TitleCacheEntry({
    required this.key,
    required this.url,
    required this.timestamp,
  });
}

/// Data class for negative cache entries to pass to/from isolate.
// Removed unused _NegativeCacheEntry class
/// Parses title cache JSON in an isolate.
List<_TitleCacheEntry> _parseTitleCacheJsonIsolate(String raw) {
  try {
    final decoded = jsonDecode(raw);
    if (decoded is! Map<String, dynamic>) return [];
    final now = DateTime.now();
    final entries = <_TitleCacheEntry>[];
    decoded.forEach((key, value) {
      String? url;
      int? timestamp;
      if (value is String) {
        url = value;
        timestamp = now.millisecondsSinceEpoch;
      } else if (value is Map) {
        final rawUrl = value['url'];
        if (rawUrl is String && rawUrl.isNotEmpty) {
          url = rawUrl;
        }
        final rawTs = value['ts'];
        if (rawTs is int) {
          timestamp = rawTs;
        }
      }
      if (url != null && url.isNotEmpty && timestamp != null) {
        entries.add(_TitleCacheEntry(key: key, url: url, timestamp: timestamp));
      }
    });
    return entries;
  } catch (e) {
    return [];
  }
}

/// Parses negative cache JSON in an isolate.
// Removed unused isolate functions: _parseNegativeCacheJsonIsolate, _encodeTitleCacheJsonIsolate, _encodeNegativeCacheJsonIsolate
// These were for future optimization but not currently used

/// Callback signature for when artwork is updated.
typedef ArtworkUpdateCallback = void Function();

/// Service to manage artwork fetching, caching, and queuing for Live TV.
/// Extracted from LiveTVScreen to reduce file size and improve maintainability.
class LiveTvArtworkService {
  LiveTvArtworkService({
    required this.onArtworkUpdate,
    bool? tmdbEnabled,
    bool? tvdbEnabled,
  })  : _tmdbEnabled = tmdbEnabled ?? ServiceValidator.isTmdbAvailable,
        _tvdbEnabled = tvdbEnabled ?? ServiceValidator.isTvdbAvailable;

  /// Callback to notify UI when artwork is updated.
  final ArtworkUpdateCallback onArtworkUpdate;

  // Service availability flags
  final bool _tmdbEnabled;
  final bool _tvdbEnabled;
  static const bool _fanartEnabled = true;
  static const bool _sportsDbEnabled = true;

  // Artwork caches
  final Map<String, String?> _programArtwork = {};
  final Map<String, String> _programArtworkByTitle = {};
  final Map<String, DateTime> _programArtworkByTitleTimestamps = {};
  final Map<String, DateTime> _programArtworkNegativeByTitle = {};
  final Map<String, String?> _programTitleLogos = {};

  // Artwork queues
  final Queue<Program> _artworkQueueHigh = Queue<Program>();
  final Queue<Program> _artworkQueueLow = Queue<Program>();
  final Set<String> _queuedArtworkIds = {};
  final Set<String> _artworkRequests = {};
  final Map<String, Future<String?>> _pendingArtworkRequests = {};
  final Map<String, Future<String?>> _pendingArtworkByTitle = {};

  // LRU tracking
  final Queue<String> _programArtworkOrder = Queue<String>();
  final Queue<String> _programArtworkTitleOrder = Queue<String>();
  final Queue<String> _programArtworkNegativeTitleOrder = Queue<String>();
  final Queue<String> _programTitleLogoOrder = Queue<String>();

  // Failure tracking
  final Map<String, DateTime> _artworkRetryAfter = {};
  final Map<String, int> _artworkFailureCounts = {};

  // Title lookup caches
  final Map<String, List<String>> _artworkQueryTitleCache = {};
  final Map<String, Channel> _programChannelLookup = {};
  final Set<String> _titleLogoRequests = {};

  // Hero image tracking

  // Timers
  Timer? _artworkThrottle;
  Timer? _artworkTitleSaveDebounce;
  Timer? _artworkNegativeSaveDebounce;
  Timer? _artworkUiDebounce;
  bool _artworkUiDirty = false;

  // State flags
  bool _pauseArtworkFetching = false;
  bool _suspendArtworkCaches = false;
  bool _isIdle = false;
  bool _isDisposed = false;

  // ── Diagnostic counters ──────────────────────────────────────────────
  int diagEnqueued = 0;
  int diagFetched = 0;
  int diagHits = 0;
  int diagNoMatch = 0;
  int diagSkipTitleIneligible = 0;
  int diagSkipNegativeCache = 0;
  int diagSkipServicesDisabled = 0;
  int diagSkipAlreadyInFlight = 0;
  int diagSkipExistingArt = 0;
  int diagTmdbCalls = 0;
  int diagTvdbCalls = 0;

  /// Human-readable diagnostic summary for on-screen display.
  String get diagnosticSummary {
    final queued = _artworkQueueHigh.length + _artworkQueueLow.length;
    final services = <String>[];
    if (_tmdbEnabled) services.add('TMDB');
    if (_tvdbEnabled) services.add('TVDB');
    if (_fanartEnabled) services.add('Fanart');
    if (_sportsDbEnabled) services.add('Sports');
    final svc = services.isEmpty ? 'NONE' : services.join('+');
    return 'Art: $diagHits found / $diagFetched tried | '
        '$diagNoMatch miss | $queued queued\n'
        'Services: $svc | '
        'Skip: ${diagSkipNegativeCache}neg ${diagSkipTitleIneligible}inel ${diagSkipExistingArt}exist ${diagSkipAlreadyInFlight}fly ${diagSkipServicesDisabled}dis';
  }

  // Limits
  static const int _maxProgramArtworkEntries = 2000;
  static const int _maxProgramArtworkTitleEntries = 2000;
  static const int _maxProgramArtworkNegativeEntries = 200;
  static const int _maxProgramTitleLogoEntries = 100;
  static const Duration _programArtworkTitleTtl = Duration(hours: 12);
  // Reduced from 30 min — too aggressive, blocks retries for content that
  // may match on a different query title variant.
  static const Duration _artworkNegativeTtl = Duration(minutes: 8);

  // Cache keys — bump version to invalidate stale poster/logo entries
  // v5: invalidate old caches that may contain poster URLs or logos
  static const String _programArtworkTitleCacheKey =
      'live_tv_program_artwork_title_cache_v5';
  // v6: clear negative cache so everything gets a fresh chance
  static const String _programArtworkNegativeCacheKey =
      'live_tv_program_artwork_negative_cache_v6';

  // Logging
  static const bool _logArtworkMatches = true;

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
      await prefs.remove(_programArtworkTitleCacheKey);
      await prefs.remove(_programArtworkNegativeCacheKey);
      debugLog('LiveTV artwork: All caches cleared successfully');
    } catch (e) {
      debugLog('LiveTV artwork: Error clearing caches: $e');
    }

    onArtworkUpdate();
  }

  // ─────────────────────────────────────────────────────────────────────────
  // PUBLIC GETTERS
  // ─────────────────────────────────────────────────────────────────────────

  bool get tmdbEnabled => _tmdbEnabled;
  bool get tvdbEnabled => _tvdbEnabled;
  bool get fanartEnabled => _fanartEnabled;
  bool get sportsDbEnabled => _sportsDbEnabled;

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
        DateTime.now().difference(timestamp) > _programArtworkTitleTtl) {
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

  // ─────────────────────────────────────────────────────────────────────────
  // STATE CONTROL
  // ─────────────────────────────────────────────────────────────────────────

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
    debugLog('LiveTV artwork: Timer scheduled for drain in ${interval.inMilliseconds}ms');
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

  // ─────────────────────────────────────────────────────────────────────────
  // ARTWORK FETCHING
  // ─────────────────────────────────────────────────────────────────────────

  /// Ensure fresh artwork is available for a program.
  void ensureFreshProgramArtwork(
    Program program,
    Channel channel, {
    bool highPriority = false,
  }) {
    debugLog(
        'LiveTV artwork: ensureFreshProgramArtwork called for "${program.title}" (tmdb=$_tmdbEnabled fanart=$_fanartEnabled sports=$_sportsDbEnabled tvdb=$_tvdbEnabled)');
    if (!(_tmdbEnabled || _fanartEnabled || _sportsDbEnabled || _tvdbEnabled)) {
      diagSkipServicesDisabled++;
      debugLog(
        'LiveTV artwork SKIP: program="${program.title}" channel="${channel.name}" '
        'reason=all_services_disabled (tmdb=$_tmdbEnabled fanart=$_fanartEnabled sports=$_sportsDbEnabled tvdb=$_tvdbEnabled)',
      );
      return;
    }
    if (_artworkRequests.contains(program.id)) {
      diagSkipAlreadyInFlight++;
      debugLog(
        'LiveTV artwork SKIP: program="${program.title}" channel="${channel.name}" '
        'reason=request_already_in_flight',
      );
      return;
    }
    // Register channel lookup FIRST before any checks that depend on it
    _programChannelLookup[program.id] = channel;

    if (!_shouldAttemptArtworkByTitle(program, channel)) return;
    final existing = _programArtwork[program.id];
    if (existing != null &&
        existing.isNotEmpty &&
        _isValidProgramArtwork(
          existing,
          channel,
          programTitle: program.title,
          source: 'existing',
        )) {
      diagSkipExistingArt++;
      return;
    }

    // Channel already registered above; just need to check again after potential modifications
    if (!_shouldAttemptArtworkByTitle(program, channel)) return;
    final current = _programArtwork[program.id];
    if (current != null &&
        current.isNotEmpty &&
        _isValidProgramArtwork(
          current,
          channel,
          programTitle: program.title,
          source: 'current',
        )) {
      return;
    }
    _setProgramArtwork(program.id, '');
    enqueueArtwork(program, highPriority: highPriority);
  }

  /// Fetch artwork for a program (with caching and deduplication).
  Future<String?> fetchProgramArtwork(Program program) async {
    final existing = _programArtwork[program.id];
    if (_artworkRequests.contains(program.id)) {
      return existing ?? '';
    }
    if (existing != null && existing.isNotEmpty) {
      if (!ImageValidationService.isKnownInvalid(existing)) {
        return existing;
      }
      _setProgramArtwork(program.id, '');
    }

    if (_suspendArtworkCaches) return '';

    if (!_shouldAttemptArtworkByTitle(
      program,
      _programChannelLookup[program.id],
    )) {
      return '';
    }

    final channel = _programChannelLookup[program.id];
    final titleKey = _titleCacheKey(program, channel);
    final cachedByTitle = getArtworkByTitle(program, channel);
    if (cachedByTitle != null && cachedByTitle.isNotEmpty) {
      if (ImageValidationService.isKnownInvalid(cachedByTitle)) {
        _removeProgramArtworkTitle(titleKey);
      } else if (await ImageValidationService.isValid(cachedByTitle)) {
        _setProgramArtwork(program.id, cachedByTitle);
        return cachedByTitle;
      } else {
        _removeProgramArtworkTitle(titleKey);
      }
    }

    if (titleKey.isNotEmpty) {
      final pendingByTitle = _pendingArtworkByTitle[titleKey];
      if (pendingByTitle != null) {
        return pendingByTitle;
      }
    }

    // Check for pending request
    if (_pendingArtworkRequests.containsKey(program.id)) {
      return _pendingArtworkRequests[program.id] ?? Future.value(null);
    }

    if (!_shouldAttemptArtwork(program.id)) return '';
    _artworkRequests.add(program.id);

    // Create and store the future for deduplication
    final future = _fetchArtworkWithFallback(program);
    _pendingArtworkRequests[program.id] = future;
    if (titleKey.isNotEmpty) {
      _pendingArtworkByTitle[titleKey] = future;
    }

    try {
      final result = await future;
      final normalized = normalizeArtworkUrl(result, isHero: true);
      String? validated = normalized;
      if (validated != null && validated.isNotEmpty) {
        if (!ImageValidationService.isKnownValid(validated) &&
            !await ImageValidationService.isValid(validated)) {
          _logArtworkDecision(
            'LiveTV artwork: source=final_validation program="${program.title}" url=$validated result=reject_invalid',
          );
          validated = null;
        }
      }
      _setProgramArtwork(program.id, validated ?? '');
      if (validated != null && validated.isNotEmpty) {
        _setProgramArtworkByTitle(
          program,
          validated,
          channel,
        );
        _clearArtworkNoMatch(program, channel);
        _clearArtworkFailure(program.id);
      } else {
        _markArtworkNoMatch(program, channel);
      }
      return validated ?? '';
    } finally {
      await _pendingArtworkRequests.remove(program.id);
      _artworkRequests.remove(program.id);
      if (titleKey.isNotEmpty) {
        final pending = _pendingArtworkByTitle.remove(titleKey);
        if (pending != null) {
          unawaited(pending);
        }
      }
    }
  }

  Future<String?> _fetchArtworkWithFallback(Program program) async {
    final channel = _programChannelLookup[program.id];
    final isSports = _isSportsProgram(program, channel);
    return isSports
        ? await _fetchSportsImage(program, channel)
        : await _fetchRegularImage(program);
  }

  // ─────────────────────────────────────────────────────────────────────────
  // SPORTS IMAGE FETCHING
  // ─────────────────────────────────────────────────────────────────────────

  Future<String?> _fetchSportsImage(Program program, [Channel? channel]) async {
    if (!_isSportsProgram(program, channel)) {
      return _fetchRegularImage(program);
    }
    final landscape = await _fetchSportsImageInternal(
      program,
      channel,
      preferLandscape: true,
    );
    if (landscape != null && landscape.isNotEmpty) return landscape;
    return _fetchSportsImageInternal(
      program,
      channel,
      preferLandscape: false,
    );
  }

  Future<String?> _fetchSportsImageInternal(
    Program program,
    Channel? channel, {
    required bool preferLandscape,
  }) async {
    const timeout = Duration(seconds: 10);
    final title = program.title;
    final queryTitles = _buildArtworkQueryTitles(program, channel);

    // Try SportRadar, TheSportsDB, and TVDB in parallel for each query title
    for (final queryTitle in queryTitles) {
      try {
        final results = await Future.wait([
          TheSportsDbService.getHeroImage(queryTitle).timeout(timeout),
          if (_tvdbEnabled)
            TvdbService.getBestImage(queryTitle).timeout(timeout)
          else
            Future<String?>.value(null),
        ]);

        final sportsDbImage = results[0];
        final tvdbImage = _tvdbEnabled ? results[1] : null;

        // Check TheSportsDB result
        if (_acceptArtworkUrl(
              sportsDbImage,
              preferLandscape: preferLandscape,
              programTitle: title,
              source: 'thesportsdb',
            ) &&
            await ImageValidationService.isValid(sportsDbImage)) {
          _logArtworkDecision(
            'LiveTV artwork: source=thesportsdb program="$title" query="$queryTitle" url=$sportsDbImage',
          );
          return sportsDbImage;
        }

        // Check TVDB result (if enabled)
        if (_tvdbEnabled &&
            _acceptArtworkUrl(
              tvdbImage,
              preferLandscape: preferLandscape,
              programTitle: title,
              source: 'tvdb_sports',
            ) &&
            await ImageValidationService.isValid(tvdbImage)) {
          _logArtworkDecision(
            'LiveTV artwork: source=tvdb_sports program="$title" query="$queryTitle" url=$tvdbImage',
          );
          return tvdbImage;
        }
      } catch (e) {
        debugLog('Sports image search failed for "$queryTitle": $e');
      }
    }

    if (!preferLandscape) {
      _logArtworkDecision(
        'LiveTV artwork: source=none program="$title" reason=sports_no_match',
      );
    }
    return null;
  }

  // ─────────────────────────────────────────────────────────────────────────
  // REGULAR IMAGE FETCHING
  // ─────────────────────────────────────────────────────────────────────────

  Future<String?> _fetchRegularImage(Program program) async {
    final landscape = await _fetchRegularImageInternal(
      program,
      preferLandscape: true,
    );
    if (landscape != null && landscape.isNotEmpty) return landscape;
    return _fetchRegularImageInternal(
      program,
      preferLandscape: false,
    );
  }

  Future<String?> _fetchRegularImageInternal(
    Program program, {
    required bool preferLandscape,
  }) async {
    const timeout = Duration(seconds: 10);
    final channel = _programChannelLookup[program.id];

    final title = program.title;
    final queryTitles = _buildArtworkQueryTitles(program, channel);

    // For each query title, try TVDB + TMDB in parallel to cut latency in half.
    for (final queryTitle in queryTitles) {
      try {
        final futures = <Future<String?>>[];

        if (_tvdbEnabled) {
          diagTvdbCalls++;
          futures.add(
            TvdbService.getBestImage(queryTitle)
                .timeout(timeout)
                .catchError((_) => null as String?),
          );
        }

        diagTmdbCalls++;
        futures.add(
          TMDBService.getBestBackdrop(queryTitle)
              .timeout(timeout)
              .catchError((_) => null as String?),
        );

        final results = await Future.wait(futures);

        // Check results in order: TVDB first (if enabled), then TMDB
        for (final image in results) {
          if (_acceptArtworkUrl(
                image,
                preferLandscape: preferLandscape,
                programTitle: title,
                source: 'tvdb_or_tmdb',
              ) &&
              await ImageValidationService.isValid(image)) {
            _logArtworkDecision(
              'LiveTV artwork: source=parallel program="$title" query="$queryTitle" url=$image',
            );
            return image;
          }
        }
      } catch (e) {
        debugLog('Parallel fetch failed for "$queryTitle": $e');
      }
    }

    // Fallback to Fanart.tv
    try {
      final fanartImage = await _fetchFanartArtwork(program);
      if (_acceptArtworkUrl(
            fanartImage,
            preferLandscape: preferLandscape,
            programTitle: title,
            source: 'fanart',
          ) &&
          await ImageValidationService.isValid(fanartImage)) {
        _logArtworkDecision(
          'LiveTV artwork: source=fanart program="$title" url=$fanartImage',
        );
        return fanartImage;
      }
    } catch (e) {
      debugLog('Fanart failed: $e');
    }

    if (!preferLandscape) {
      _logArtworkDecision(
        'LiveTV artwork: source=none program="$title" reason=no_match',
      );
    }
    return null;
  }

  Future<String?> _fetchFanartArtwork(Program program) async {
    final channel = _programChannelLookup[program.id];
    final queryTitles = _buildArtworkQueryTitles(program, channel);
    for (final queryTitle in queryTitles) {
      final details = await _resolveTmdbDetails(queryTitle);
      final tmdbId = details?['tmdbId'] as int?;
      final mediaType = (details?['mediaType'] as String?)?.toLowerCase();
      if (tmdbId == null || mediaType == null) {
        continue;
      }
      return FanartService.getBackdrop(
        tmdbId,
        isTv: mediaType == 'tv',
      );
    }
    _logArtworkDecision(
      'LiveTV artwork: source=fanart program="${program.title}" result=missing_tmdb_details',
    );
    return null;
  }

  Future<Map<String, dynamic>?> _resolveTmdbDetails(String title) async {
    try {
      final tvDetails = await TMDBService.getTVDetails(title);
      if (tvDetails != null) return tvDetails;
      return await TMDBService.getMovieDetails(title);
    } catch (e) {
      debugLog('TMDB details lookup failed for "$title": $e');
      return null;
    }
  }

  // ─────────────────────────────────────────────────────────────────────────
  // TITLE LOGO FETCHING
  // ─────────────────────────────────────────────────────────────────────────

  /// Request a title logo for a program.
  Future<void> fetchTitleLogo(Program program, Channel channel) async {
    final cacheKey = _titleLogoCacheKey(program, channel);
    if (_titleLogoRequests.contains(cacheKey)) return;
    _titleLogoRequests.add(cacheKey);

    try {
      String? logo;
      final isSports = _isSportsProgram(program, channel);

      if (isSports) {
        logo = await _fetchSportsLogo(program);
      } else {
        logo = await _fetchRegularLogo(program);
      }

      if (_matchesChannelLogo(logo ?? '', channel)) {
        logo = '';
      }
      final isValid = _isValidTitleLogo(logo, channel);
      final stored = isValid ? (logo ?? '') : '';
      _setProgramTitleLogo(cacheKey, stored);
      _setProgramTitleLogo(program.id, stored);
    } catch (e) {
      debugLog('Error fetching title logo for "${program.title}": $e');
      _setProgramTitleLogo(cacheKey, '');
      _setProgramTitleLogo(program.id, '');
    } finally {
      _titleLogoRequests.remove(cacheKey);
    }
  }

  Future<String?> _fetchSportsLogo(Program program) async {
    if (!_isSportsProgram(program)) {
      return _fetchRegularLogo(program);
    }
    const timeout = Duration(seconds: 10);
    final title = program.title;

    // Try TheSportsDB
    try {
      final sportsDbLogo =
          await TheSportsDbService.getHeroImage(title).timeout(timeout);
      if (sportsDbLogo != null && sportsDbLogo.isNotEmpty) {
        return sportsDbLogo;
      }
    } catch (e) {
      debugLog('TheSportsDB logo failed: $e');
    }

    // Fallback to regular logo chain
    return await _fetchRegularLogo(program);
  }

  Future<String?> _fetchRegularLogo(Program program) async {
    // Try TMDB first
    try {
      final tmdbLogo = await TMDBService.getTitleLogo(program.title);
      if (tmdbLogo != null && tmdbLogo.isNotEmpty) {
        return tmdbLogo;
      }
    } catch (e) {
      debugLog('TMDB logo failed: $e');
    }

    // Fallback to Fanart.tv
    try {
      final fanartLogo = await _fetchFanartTitleLogo(program);
      if (fanartLogo != null && fanartLogo.isNotEmpty) {
        return fanartLogo;
      }
    } catch (e) {
      debugLog('Fanart logo failed: $e');
    }

    return null;
  }

  String _titleLogoCacheKey(Program program, Channel channel) {
    final normalized = EPGMatchingUtils.normalizeForArtwork(program.title);
    final isSports = _isSportsProgram(program, channel);
    return '${isSports ? 'sports' : 'general'}|$normalized';
  }

  Future<String?> _fetchFanartTitleLogo(Program program) async {
    final channel = _programChannelLookup[program.id];
    final queryTitles = _buildArtworkQueryTitles(program, channel);
    for (final queryTitle in queryTitles) {
      final details = await _resolveTmdbDetails(queryTitle);
      final tmdbId = details?['tmdbId'] as int?;
      final mediaType = (details?['mediaType'] as String?)?.toLowerCase();
      if (tmdbId == null || mediaType == null) {
        continue;
      }
      return FanartService.getTitleLogo(
        tmdbId,
        isTv: mediaType == 'tv',
      );
    }
    _logArtworkDecision(
      'LiveTV artwork: source=fanart_logo program="${program.title}" result=missing_tmdb_details',
    );
    return null;
  }

  // ─────────────────────────────────────────────────────────────────────────
  // HERO IMAGE RESOLUTION
  // ─────────────────────────────────────────────────────────────────────────

  /// Resolve the best hero image for a channel/program.
  String? resolveHeroImage(
    Program? program,
    Channel channel, {
    bool allowFetch = true,
    bool highPriority = false,
    bool preferHighRes = false,
  }) {
    if (program != null) {
      // 1. Try cached TMDB program artwork
      final cached =
          normalizeArtworkUrl(_programArtwork[program.id], isHero: true);
      if (_isValidProgramArtwork(
        cached,
        channel,
        programTitle: program.title,
        source: 'hero_cached',
      )) {
        final normalized = normalizeImageUrl(cached!);
        _logArtworkDecision(
          'LiveTV artwork: hero source=cached program="${program.title}" url=$normalized',
        );
        return normalized;
      }

      // 1b. Try cached artwork by title
      final byTitle = normalizeArtworkUrl(
        getArtworkByTitle(program, channel),
        isHero: true,
      );
      if (_isValidProgramArtwork(
        byTitle,
        channel,
        programTitle: program.title,
        source: 'hero_title_cache',
      )) {
        final normalized = normalizeImageUrl(byTitle!);
        _logArtworkDecision(
          'LiveTV artwork: hero source=title_cache program="${program.title}" url=$normalized',
        );
        return normalized;
      }

      // 2. Trigger a fetch if any image service is enabled
      if ((_tmdbEnabled ||
              _fanartEnabled ||
              _sportsDbEnabled ||
              _tvdbEnabled) &&
          allowFetch) {
        ensureFreshProgramArtwork(
          program,
          channel,
          highPriority: highPriority,
        );
      }

      // 3. Fall back to the direct image URL provided in the EPG XML itself
      final direct = normalizeArtworkUrl(program.imageUrl, isHero: true);
      if (_isValidProgramArtwork(
        direct,
        channel,
        programTitle: program.title,
        source: 'hero_epg',
        isEpgFallback: true,
      )) {
        final normalized = normalizeImageUrl(direct!);
        _logArtworkDecision(
          'LiveTV artwork: hero source=epg program="${program.title}" url=$normalized',
        );
        return normalized;
      }
    }

    return null;
  }

  // ─────────────────────────────────────────────────────────────────────────
  // CACHE MANAGEMENT
  // ─────────────────────────────────────────────────────────────────────────

  void _setProgramArtwork(String key, String value) {
    if (value.isEmpty) return;
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
    if (!_isTitleCacheEligible(program)) return;
    _registerProgramArtworkTitle(_titleCacheKey(program, channel), value);
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
    return MemoryManager.isLowMemory ? 200 : _maxProgramArtworkEntries;
  }

  int _programArtworkTitleLimit() {
    return MemoryManager.isLowMemory ? 200 : _maxProgramArtworkTitleEntries;
  }

  int _programArtworkNegativeLimit() {
    return MemoryManager.isLowMemory ? 100 : _maxProgramArtworkNegativeEntries;
  }

  int _programTitleLogoLimit() {
    return MemoryManager.isLowMemory ? 50 : _maxProgramTitleLogoEntries;
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

  // ─────────────────────────────────────────────────────────────────────────
  // NEGATIVE CACHE / FAILURE TRACKING
  // ─────────────────────────────────────────────────────────────────────────

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
      DateTime.now().add(_artworkNegativeTtl),
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

  // ─────────────────────────────────────────────────────────────────────────
  // PERSISTENCE
  // ─────────────────────────────────────────────────────────────────────────

  Future<void> _loadProgramArtworkTitleCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_programArtworkTitleCacheKey);
      if (raw == null || raw.isEmpty) return;

      // Parse JSON off the main thread using compute()
      final entries = await compute(_parseTitleCacheJsonIsolate, raw);
      if (entries.isEmpty) return;

      _programArtworkByTitle.clear();
      _programArtworkTitleOrder.clear();
      _programArtworkByTitleTimestamps.clear();
      final now = DateTime.now();

      for (final entry in entries) {
        final url = entry.url;
        final timestamp = DateTime.fromMillisecondsSinceEpoch(entry.timestamp);

        // Skip poster URLs that may have been cached before stricter validation
        if (_isLikelyPosterUrl(url)) {
          debugLog('LiveTV artwork: skipping poster URL from disk cache: $url');
          continue;
        }
        if (now.difference(timestamp) > _programArtworkTitleTtl) {
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
      await prefs.remove(_programArtworkNegativeCacheKey);
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
        _programArtworkTitleCacheKey,
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
        _programArtworkNegativeCacheKey,
        jsonEncode(ordered),
      );
    } catch (e) {
      debugLog('ArtworkService: saveNegativeCache failed: $e');
    }
  }

  // ─────────────────────────────────────────────────────────────────────────
  // TITLE KEY GENERATION
  // ─────────────────────────────────────────────────────────────────────────

  String _titleCacheKey(Program program, [Channel? channel]) {
    final baseTitle =
        _stripEpisodeTitleForLookup(program, channel, program.title);
    final base = _normalizeForFilter(_canonicalArtworkTitle(baseTitle));
    final channelForKey = channel ?? _programChannelLookup[program.id];
    if (channelForKey == null) return base;
    final isNews = EPGMatchingUtils.isLikelyNewsTitle(baseTitle);
    if (!_isGenericTitle(base) && !isNews) {
      return base;
    }
    final channelId = channelForKey.tvgId ?? channelForKey.id;
    if (channelId.isNotEmpty) {
      return '$base|${_normalizeForFilter(channelId)}';
    }
    final hintSource = (channelForKey.groupTitle != null &&
            channelForKey.groupTitle!.trim().isNotEmpty)
        ? channelForKey.groupTitle!
        : channelForKey.name;
    final hint = _normalizeForFilter(hintSource);
    if (hint.isEmpty) return base;
    return '$base|$hint';
  }

  String _canonicalArtworkTitle(String title) {
    return EPGMatchingUtils.normalizeForArtwork(title);
  }

  String _stripEpisodeTitleForLookup(
    Program program,
    Channel? channel,
    String title,
  ) {
    final trimmed = title.trim();
    if (trimmed.isEmpty) return title;
    final isNews = channel != null && _isNewsProgram(program, channel);
    final isSports = _isSportsProgram(program, channel);
    final isMovie = channel != null && _isMovieProgram(program, channel);
    if (isNews || isSports || isMovie) return title;
    return EPGMatchingUtils.stripEpisodeSubtitleLoose(title);
  }

  static final RegExp _nonWordWhitespaceRe = RegExp(r'[^\w\s]');
  static final RegExp _whitespaceRe = RegExp(r'\s+');
  static final RegExp _channelSeparatorsRe = RegExp(r'\s*[-:|]\s*');
  static final RegExp _qualityKeywordsRe = RegExp(r'\b(hd|fhd|uhd|4k|sd|1080p|720p)\b', caseSensitive: false);
  static final RegExp _networkKeywordsRe = RegExp(r'\b(tv|channel|network)\b', caseSensitive: false);

  String _normalizeForFilter(String title) {
    return title
        .toLowerCase()
        .replaceAll(_nonWordWhitespaceRe, '')
        .replaceAll(_whitespaceRe, ' ')
        .trim();
  }

  bool _isGenericTitle(String title) {
    return EPGMatchingUtils.isGenericTitle(title);
  }

  String _cleanChannelNameForQuery(String name) {
    var cleaned = name;
    cleaned = cleaned.replaceAll(_channelSeparatorsRe, ' ');
    cleaned = cleaned.replaceAll(_qualityKeywordsRe, '');
    cleaned = cleaned.replaceAll(_networkKeywordsRe, '');
    cleaned = cleaned.replaceAll(_whitespaceRe, ' ').trim();
    return cleaned;
  }

  List<String> _buildArtworkQueryTitles(Program program, Channel? channel) {
    final rawTitle = program.title.trim();
    final stripped = _stripEpisodeTitleForLookup(program, channel, rawTitle);
    final original = stripped.trim().isEmpty ? rawTitle : stripped.trim();
    final canonical = _canonicalArtworkTitle(original).trim();
    final isNews = EPGMatchingUtils.isLikelyNewsTitle(canonical);
    final normalizedLookup = EPGMatchingUtils.normalizeTitleForLookup(
      canonical,
      aggressiveForNews: isNews,
    );
    final cacheKey = _titleCacheKey(program, channel);
    final cached = _artworkQueryTitleCache[cacheKey];
    if (cached != null && cached.isNotEmpty) {
      return cached;
    }
    final titles = <String>[];
    void add(String value) {
      if (value.isEmpty || titles.contains(value)) return;
      titles.add(value);
    }

    void addVariant(String value) {
      if (value.isEmpty) return;
      add(value);
      final normalized = _normalizeArtworkVariant(value);
      if (normalized.isNotEmpty && normalized != value) {
        add(normalized);
      }
      if (value.contains(':')) {
        final primary = value.split(':').first.trim();
        if (primary.isNotEmpty && primary != value) {
          add(primary);
          final normalizedPrimary = _normalizeArtworkVariant(primary);
          if (normalizedPrimary.isNotEmpty && normalizedPrimary != primary) {
            add(normalizedPrimary);
          }
        }
      }
    }

    final channelName =
        channel == null ? '' : _cleanChannelNameForQuery(channel.name);
    final groupTitle = channel == null
        ? ''
        : _cleanChannelNameForQuery(channel.groupTitle ?? '');
    if ((_isGenericTitle(canonical) || isNews) && channelName.isNotEmpty) {
      add('$canonical $channelName');
    }
    if ((_isGenericTitle(canonical) || isNews) && groupTitle.isNotEmpty) {
      add('$canonical $groupTitle');
    }
    if ((_isGenericTitle(canonical) || isNews) &&
        channelName.isNotEmpty &&
        groupTitle.isNotEmpty) {
      add('$canonical $channelName $groupTitle');
    }
    addVariant(canonical);
    if (normalizedLookup != canonical) {
      addVariant(normalizedLookup);
    }
    if (canonical != original) addVariant(original);
    if (original == rawTitle && canonical != rawTitle) {
      addVariant(rawTitle);
    }
    if ((_isGenericTitle(canonical) || isNews) && channelName.isNotEmpty) {
      add(channelName);
    }
    if ((_isGenericTitle(canonical) || isNews) && groupTitle.isNotEmpty) {
      add(groupTitle);
    }
    if (canonical.length <= 6 && channelName.isNotEmpty) {
      add(channelName);
    }
    if (canonical.length <= 6 && groupTitle.isNotEmpty) {
      add(groupTitle);
    }

    if (groupTitle.isNotEmpty) {
      final lowerGroup = groupTitle.toLowerCase();
      if (lowerGroup.contains('sports')) {
        addVariant('$canonical sports');
      }
      if (lowerGroup.contains('news')) {
        addVariant('$canonical news');
      }
      if (lowerGroup.contains('kids') || lowerGroup.contains('child')) {
        addVariant('$canonical kids');
      }
    }
    if (cacheKey.isNotEmpty) {
      _artworkQueryTitleCache[cacheKey] = List<String>.from(titles);
    }
    return titles;
  }

  String _normalizeArtworkVariant(String title) {
    return EPGMatchingUtils.normalizeArtworkVariant(title);
  }

  // ─────────────────────────────────────────────────────────────────────────
  // URL VALIDATION & NORMALIZATION
  // ─────────────────────────────────────────────────────────────────────────

  /// Normalize an artwork URL for display.
  String? normalizeArtworkUrl(String? url, {bool isHero = false}) {
    if (url == null || url.isEmpty) return null;
    return normalizeImageUrl(url);
  }

  bool _isValidProgramArtwork(
    String? url,
    Channel channel, {
    String? programTitle,
    String? source,
    bool isEpgFallback = false,
  }) {
    if (url == null || url.isEmpty) return false;
    if (ImageValidationService.isKnownInvalid(url)) return false;
    
    // Always reject posters, even for EPG fallback
    if (ArtworkValidator.isLikelyPosterUrl(url)) return false;
    
    // For EPG fallback, we are more permissive with small images.
    if (!isEpgFallback) {
      if (ArtworkValidator.isLikelySmallImage(url)) return false;
    }
    
    if (ArtworkValidator.isLikelyChannelLogoUrl(url)) return false;
    if (ArtworkValidator.isLikelyTitleLogoUrl(url)) return false;
    final channelLogo = channel.logoUrl;
    if (channelLogo != null && channelLogo == url) return false;
    if (_matchesChannelLogo(url, channel)) return false;
    return true;
  }

  bool _isValidTitleLogo(String? url, Channel channel) {
    if (url == null || url.isEmpty) return false;
    return true;
  }

  bool _acceptArtworkUrl(
    String? url, {
    required bool preferLandscape,
    String? programTitle,
    String? source,
  }) {
    if (url == null || url.isEmpty) return false;
    if (!preferLandscape) return true;
    return _isLikelyLandscapeUrl(url);
  }

  static final RegExp _imageExtRe = RegExp(r'\.(png|jpg|jpeg|webp)$');
  static final RegExp _imageSizeRe = RegExp(r'(\d+)x(\d+)');

  bool _isLikelyLandscapeUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();

    // Strong signals for poster/portrait or logo-like assets.
    if (_isLikelyPosterUrl(url) ||
        lower.contains('/logo') ||
        lower.contains('_logo') ||
        lower.contains('-logo') ||
        lower.contains('logo.')) {
      return false;
    }

    // Strong signals for landscape/backdrop.
    if (lower.contains('backdrop') ||
        lower.contains('background') ||
        lower.contains('fanart') ||
        lower.contains('landscape') ||
        lower.contains('banner')) {
      return true;
    }

    // If dimensions are in the filename, prefer wider aspect ratios.
    final extMatch = _imageExtRe.firstMatch(lower);
    if (extMatch != null) {
      final beforeExt = lower.substring(0, extMatch.start);
      final match = _imageSizeRe.firstMatch(beforeExt);
      if (match != null) {
        final w = int.tryParse(match.group(1) ?? '');
        final h = int.tryParse(match.group(2) ?? '');
        if (w != null && h != null) {
          return w >= (h * 1.15);
        }
      }
    }

    // If it's not clearly portrait or logo, treat as acceptable landscape.
    return true;
  }

  bool _isLikelyPosterUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();

    // Explicit keywords in path or query
    if (lower.contains('/poster') ||
        lower.contains('_poster') ||
        lower.contains('-poster') ||
        lower.contains('/portrait') ||
        lower.contains('/cover') ||
        lower.contains('type=poster') ||
        lower.contains('format=portrait')) {
      return true;
    }

    // TMDB poster-specific sizes (w92 through w500 are poster-only sizes)
    // Note: w780 and w1280 are used for BOTH posters and backdrops, so we don't
    // use those sizes to detect posters - we'd incorrectly reject valid backdrops.
    if (lower.contains('image.tmdb.org') &&
        (lower.contains('/w92/') ||
            lower.contains('/w154/') ||
            lower.contains('/w185/') ||
            lower.contains('/w342/') ||
            lower.contains('/w500/'))) {
      return true;
    }

    // TVDB poster paths
    if (lower.contains('artworks.thetvdb.com') &&
        lower.contains('/banners/posters/')) {
      return true;
    }

    // Common file naming patterns
    if (lower.endsWith('_poster.jpg') ||
        lower.endsWith('_poster.png') ||
        lower.endsWith('_cover.jpg') ||
        lower.endsWith('_cover.png')) {
      return true;
    }

    return false;
  }

  static final RegExp _digitsOnlyRe = RegExp(r'^\d+$');

  bool _isTitleCacheEligible(Program program) {
    final normalized = EPGMatchingUtils.normalizeForArtwork(program.title);
    if (normalized.isEmpty) return false;
    // Allow 2+ char titles to support short show names like "24", "ER", "FX"
    if (normalized.length < 2) return false;
    if (_digitsOnlyRe.hasMatch(normalized)) return false;
    const stopWords = <String>{
      'movie',
      'movies',
      'tv',
      'show',
      'channel',
      'documentary',
      'documentaries',
      'series',
    };
    // Only reject if the ENTIRE normalized title is a single stop word
    final lower = normalized.toLowerCase();
    if (stopWords.contains(lower)) return false;
    return true;
  }

  bool _matchesChannelLogo(String url, Channel channel) {
    if (url.isEmpty) return false;
    final logoUrl = channel.logoUrl;
    if (logoUrl == null || logoUrl.isEmpty) return false;
    final normalizedUrl = _normalizeUrl(url);
    final normalizedLogo = _normalizeUrl(logoUrl);
    if (normalizedUrl == null || normalizedLogo == null) return false;
    return normalizedUrl == normalizedLogo;
  }

  static final RegExp _doubleSlashStartRe = RegExp(r'^//');

  String? _normalizeUrl(String? url) {
    if (url == null || url.isEmpty) return null;
    try {
      final uri = Uri.parse(url);
      final normalized = uri.replace(
        scheme: '',
        userInfo: '',
        queryParameters: {},
        fragment: '',
      );
      return normalized.toString().replaceAll(_doubleSlashStartRe, '');
    } catch (e) {
      debugLog('ArtworkService: normalizeImageUrl failed: $e');
      return url;
    }
  }

  // ─────────────────────────────────────────────────────────────────────────
  // PROGRAM CLASSIFICATION (delegated to classifiers)
  // ─────────────────────────────────────────────────────────────────────────

  bool _isSportsProgram(Program program, [Channel? channel]) {
    return SportsClassifier.isSportsProgram(program, channel);
  }

  bool _isNewsProgram(Program program, Channel channel) {
    // Basic news detection - can be extended
    final title = program.title.toLowerCase();
    final channelName = channel.name.toLowerCase();
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();

    const newsKeywords = [
      'news',
      'noticias',
      'actualités',
      'nachrichten',
      'journal',
      'headlines',
      'breaking',
    ];

    for (final keyword in newsKeywords) {
      if (title.contains(keyword) ||
          channelName.contains(keyword) ||
          groupTitle.contains(keyword)) {
        return true;
      }
    }
    return false;
  }

  static final RegExp _yearTrailingRe = RegExp(r'\(\d{4}\)$');

  bool _isMovieProgram(Program program, Channel channel) {
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();

    const movieKeywords = ['movie', 'film', 'cinema', 'película', 'filme'];

    for (final keyword in movieKeywords) {
      if (groupTitle.contains(keyword)) {
        return true;
      }
    }

    // Check for movie-like patterns (year in title, etc.)
    if (_yearTrailingRe.hasMatch(program.title)) {
      return true;
    }

    return false;
  }

  void _logArtworkDecision(String message) {
    if (!_logArtworkMatches) return;
    ArtworkDiagnostics.record(message);
    debugLog(message);
  }
}
