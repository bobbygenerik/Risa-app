import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/fanart_service.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/services/sportradar_service.dart';
import 'package:iptv_player/services/thesportsdb_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/tvdb_service.dart';
import 'package:iptv_player/utils/artwork_diagnostics.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/memory_manager.dart';
import 'package:iptv_player/utils/sports_classifier.dart';

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
  final Map<String, Size> _heroImageSizes = {};

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

  // Limits
  static const int _maxProgramArtworkEntries = 100;
  static const int _maxProgramArtworkTitleEntries = 100;
  static const int _maxProgramArtworkNegativeEntries = 100;
  static const int _maxProgramTitleLogoEntries = 50;
  static const Duration _artworkNegativeTtl = Duration(hours: 6);

  // Cache keys
  static const String _programArtworkTitleCacheKey =
      'live_tv_program_artwork_title_cache_v2';
  static const String _programArtworkNegativeCacheKey =
      'live_tv_program_artwork_negative_cache_v2';

  // Logging
  static const bool _logArtworkMatches = true;

  /// Initialize the service by loading cached data.
  Future<void> initialize() async {
    await Future.wait([
      _loadProgramArtworkTitleCache(),
      _loadProgramArtworkNegativeCache(),
    ]);
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

  // ─────────────────────────────────────────────────────────────────────────
  // PUBLIC GETTERS
  // ─────────────────────────────────────────────────────────────────────────

  bool get tmdbEnabled => _tmdbEnabled;
  bool get tvdbEnabled => _tvdbEnabled;
  bool get fanartEnabled => _fanartEnabled;
  bool get sportsDbEnabled => _sportsDbEnabled;

  /// Get cached artwork for a program by ID.
  String? getArtwork(String programId) => _programArtwork[programId];

  /// Get cached artwork by title lookup.
  String? getArtworkByTitle(Program program, [Channel? channel]) {
    return _programArtworkByTitle[_titleCacheKey(program, channel)];
  }

  /// Get cached title logo for a program.
  String? getTitleLogo(String programId) => _programTitleLogos[programId];

  /// Check if a title logo request is pending.
  bool isTitleLogoRequestPending(String programId) =>
      _titleLogoRequests.contains(programId);

  /// Get the channel lookup for a program.
  Channel? getChannelForProgram(String programId) =>
      _programChannelLookup[programId];

  // ─────────────────────────────────────────────────────────────────────────
  // STATE CONTROL
  // ─────────────────────────────────────────────────────────────────────────

  /// Pause artwork fetching (e.g., during playback).
  void pauseFetching() {
    _pauseArtworkFetching = true;
    _artworkQueueHigh.clear();
    _artworkQueueLow.clear();
    _queuedArtworkIds.clear();
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

  /// Enter idle mode (reduces resource usage).
  void enterIdleMode() {
    _isIdle = true;
    pauseFetching();
    MemoryManager.checkMemoryPressure();
  }

  /// Exit idle mode.
  void exitIdleMode() {
    _isIdle = false;
    resumeFetching();
  }

  // ─────────────────────────────────────────────────────────────────────────
  // ARTWORK QUEUEING
  // ─────────────────────────────────────────────────────────────────────────

  /// Enqueue a program for artwork fetching.
  void enqueueArtwork(Program program, {bool highPriority = false}) {
    if (_pauseArtworkFetching || _suspendArtworkCaches) return;
    if (_queuedArtworkIds.contains(program.id)) return;
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
    if (_pauseArtworkFetching || _suspendArtworkCaches || _isIdle) {
      debugLog(
          'LiveTV: Artwork drain skipped - paused=$_pauseArtworkFetching suspended=$_suspendArtworkCaches idle=$_isIdle');
      return;
    }
    _artworkThrottle ??=
        Timer(const Duration(milliseconds: 700), _drainArtworkQueue);
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

    final batchSize = MemoryManager.isLowMemory ? 1 : 2;
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
        debugLog('LiveTV: Fetching artwork for: "${program.title}"');
        final image = await fetchProgramArtwork(program);
        if (_isDisposed) return;
        if (image != null && image.isNotEmpty) {
          debugLog('LiveTV: Found artwork for "${program.title}": $image');
        } else {
          debugLog('LiveTV: No artwork found for "${program.title}"');
        }
      } catch (e) {
        debugLog('LiveTV: Error fetching artwork for "${program.title}": $e');
        _markArtworkFailure(program.id);
      }
    }).toList();
    await Future.wait(futures);

    if (_artworkQueueHigh.isNotEmpty || _artworkQueueLow.isNotEmpty) {
      _scheduleArtworkDrain();
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
    if (!(_tmdbEnabled || _fanartEnabled || _sportsDbEnabled || _tvdbEnabled)) {
      debugLog(
        'LiveTV artwork SKIP: program="${program.title}" channel="${channel.name}" '
        'reason=all_services_disabled (tmdb=$_tmdbEnabled fanart=$_fanartEnabled sports=$_sportsDbEnabled tvdb=$_tvdbEnabled)',
      );
      return;
    }
    if (_artworkRequests.contains(program.id)) {
      debugLog(
        'LiveTV artwork SKIP: program="${program.title}" channel="${channel.name}" '
        'reason=request_already_in_flight',
      );
      return;
    }
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
      return;
    }

    _programChannelLookup[program.id] = channel;
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
    const timeout = Duration(seconds: 5);
    final title = program.title;
    final queryTitles = _buildArtworkQueryTitles(program, channel);

    // Try SportRadar first
    for (final queryTitle in queryTitles) {
      try {
        final sportRadarImage =
            await SportradarService.getHeroImage(queryTitle).timeout(timeout);
        if (_acceptArtworkUrl(
              sportRadarImage,
              preferLandscape: preferLandscape,
              programTitle: title,
              source: 'sportradar',
            ) &&
            await ImageValidationService.isValid(sportRadarImage)) {
          _logArtworkDecision(
            'LiveTV artwork: source=sportradar program="$title" query="$queryTitle" url=$sportRadarImage',
          );
          return sportRadarImage;
        }
      } catch (e) {
        debugLog('SportRadar failed: $e');
      }
    }

    // Fallback to TheSportsDB
    for (final queryTitle in queryTitles) {
      try {
        final sportsDbImage =
            await TheSportsDbService.getHeroImage(queryTitle).timeout(timeout);
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
      } catch (e) {
        debugLog('TheSportsDB failed: $e');
      }
    }

    // Fallback to TVDB for broader sports coverage
    if (_tvdbEnabled) {
      for (final queryTitle in queryTitles) {
        try {
          final tvdbImage =
              await TvdbService.getBestImage(queryTitle).timeout(timeout);
          if (_acceptArtworkUrl(
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
          debugLog('TVDB (sports) failed: $e');
        }
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
    const timeout = Duration(seconds: 5);
    final channel = _programChannelLookup[program.id];
    final isNews = channel != null && _isNewsProgram(program, channel);

    // Skip image fetching for news - will show channel logo + "News" text instead
    if (isNews) {
      return null;
    }

    final title = program.title;
    final queryTitles = _buildArtworkQueryTitles(program, channel);

    // Try TVDB first
    if (_tvdbEnabled) {
      for (final queryTitle in queryTitles) {
        try {
          final tvdbImage =
              await TvdbService.getBestImage(queryTitle).timeout(timeout);
          if (_acceptArtworkUrl(
                tvdbImage,
                preferLandscape: preferLandscape,
                programTitle: title,
                source: 'tvdb',
              ) &&
              await ImageValidationService.isValid(tvdbImage)) {
            _logArtworkDecision(
              'LiveTV artwork: source=tvdb program="$title" query="$queryTitle" url=$tvdbImage',
            );
            return tvdbImage;
          }
        } catch (e) {
          debugLog('TVDB failed: $e');
        }
      }
    }

    // Fallback to TMDB
    for (final queryTitle in queryTitles) {
      try {
        final tmdbImage =
            await TMDBService.getBestBackdrop(queryTitle).timeout(timeout);
        if (_acceptArtworkUrl(
              tmdbImage,
              preferLandscape: preferLandscape,
              programTitle: title,
              source: 'tmdb',
            ) &&
            await ImageValidationService.isValid(tmdbImage)) {
          _logArtworkDecision(
            'LiveTV artwork: source=tmdb program="$title" query="$queryTitle" url=$tmdbImage',
          );
          return tmdbImage;
        }
      } catch (e) {
        debugLog('TMDB failed: $e');
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
    final cacheKey = program.id;
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
    } catch (e) {
      debugLog('Error fetching title logo for "${program.title}": $e');
      _setProgramTitleLogo(cacheKey, '');
    } finally {
      _titleLogoRequests.remove(cacheKey);
    }
  }

  Future<String?> _fetchSportsLogo(Program program) async {
    if (!_isSportsProgram(program)) {
      return _fetchRegularLogo(program);
    }
    const timeout = Duration(seconds: 5);
    final title = program.title;

    // Try SportRadar first
    try {
      final sportRadarLogo =
          await SportradarService.getHeroImage(title).timeout(timeout);
      if (sportRadarLogo != null && sportRadarLogo.isNotEmpty) {
        return sportRadarLogo;
      }
    } catch (e) {
      debugLog('SportRadar logo failed: $e');
    }

    // Fallback to TheSportsDB
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
      final fanartLogo = await _fetchFanartArtwork(program);
      if (fanartLogo != null && fanartLogo.isNotEmpty) {
        return fanartLogo;
      }
    } catch (e) {
      debugLog('Fanart logo failed: $e');
    }

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
      )) {
        final normalized = normalizeImageUrl(direct!);
        if (!preferHighRes || _isHighResHeroImage(normalized)) {
          _logArtworkDecision(
            'LiveTV artwork: hero source=epg program="${program.title}" url=$normalized',
          );
          return normalized;
        }
        _logArtworkDecision(
          'LiveTV artwork: skip low-res epg program="${program.title}" url=$normalized',
        );
      }
    }

    return null;
  }

  // ─────────────────────────────────────────────────────────────────────────
  // CACHE MANAGEMENT
  // ─────────────────────────────────────────────────────────────────────────

  void _setProgramArtwork(String key, String value) {
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
    if (ImageValidationService.isKnownInvalid(value)) return;
    _registerProgramArtworkTitle(_titleCacheKey(program, channel), value);
  }

  void _registerProgramArtworkTitle(String key, String value) {
    _programArtworkByTitle[key] = value;
    _programArtworkTitleOrder.remove(key);
    _programArtworkTitleOrder.addLast(key);
    while (_programArtworkTitleOrder.length > _programArtworkTitleLimit()) {
      final removed = _programArtworkTitleOrder.removeFirst();
      _programArtworkByTitle.remove(removed);
    }
    _scheduleProgramArtworkTitleSave();
  }

  void _removeProgramArtworkTitle(String key) {
    if (key.isEmpty) return;
    final removed = _programArtworkByTitle.remove(key);
    if (removed == null) return;
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
    return MemoryManager.isLowMemory ? 60 : _maxProgramArtworkEntries;
  }

  int _programArtworkTitleLimit() {
    return MemoryManager.isLowMemory ? 60 : _maxProgramArtworkTitleEntries;
  }

  int _programArtworkNegativeLimit() {
    return MemoryManager.isLowMemory ? 60 : _maxProgramArtworkNegativeEntries;
  }

  int _programTitleLogoLimit() {
    return MemoryManager.isLowMemory ? 30 : _maxProgramTitleLogoEntries;
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
    final key = _titleCacheKey(program, channel);
    final until = _programArtworkNegativeByTitle[key];
    if (until == null) return true;
    if (DateTime.now().isAfter(until)) {
      _programArtworkNegativeByTitle.remove(key);
      _programArtworkNegativeTitleOrder.remove(key);
      return true;
    }
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
    final minutes = math.min(60, math.pow(2, count).round() * 2);
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
      final decoded = jsonDecode(raw);
      if (decoded is! Map<String, dynamic>) return;
      _programArtworkByTitle.clear();
      _programArtworkTitleOrder.clear();
      decoded.forEach((key, value) {
        if (value is String && value.isNotEmpty) {
          _programArtworkByTitle[key] = value;
          _programArtworkTitleOrder.addLast(key);
        }
      });
      onArtworkUpdate();
    } catch (_) {
      // Ignore cache load errors to avoid impacting startup.
    }
  }

  Future<void> _loadProgramArtworkNegativeCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_programArtworkNegativeCacheKey);
      if (raw == null || raw.isEmpty) return;
      final decoded = jsonDecode(raw);
      if (decoded is! Map<String, dynamic>) return;
      _programArtworkNegativeByTitle.clear();
      _programArtworkNegativeTitleOrder.clear();
      final now = DateTime.now();
      decoded.forEach((key, value) {
        if (value is int) {
          final until = DateTime.fromMillisecondsSinceEpoch(value);
          if (until.isAfter(now)) {
            _programArtworkNegativeByTitle[key] = until;
            _programArtworkNegativeTitleOrder.addLast(key);
          }
        }
      });
    } catch (_) {
      // Ignore cache load errors to avoid impacting startup.
    }
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
      final ordered = <String, String>{};
      for (final key in _programArtworkTitleOrder) {
        final value = _programArtworkByTitle[key];
        if (value != null && value.isNotEmpty) {
          ordered[key] = value;
        }
      }
      await prefs.setString(
        _programArtworkTitleCacheKey,
        jsonEncode(ordered),
      );
    } catch (_) {
      // Best-effort persistence only.
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
    } catch (_) {
      // Best-effort persistence only.
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

  String _normalizeForFilter(String title) {
    return title
        .toLowerCase()
        .replaceAll(RegExp(r'[^\w\s]'), '')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }

  bool _isGenericTitle(String title) {
    return EPGMatchingUtils.isGenericTitle(title);
  }

  String _cleanChannelNameForQuery(String name) {
    var cleaned = name;
    cleaned = cleaned.replaceAll(RegExp(r'\s*[-:|]\s*'), ' ');
    cleaned = cleaned.replaceAll(
        RegExp(r'\b(hd|fhd|uhd|4k|sd|1080p|720p)\b', caseSensitive: false), '');
    cleaned = cleaned.replaceAll(
        RegExp(r'\b(tv|channel|network)\b', caseSensitive: false), '');
    cleaned = cleaned.replaceAll(RegExp(r'\s+'), ' ').trim();
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
  }) {
    if (url == null || url.isEmpty) return false;
    if (ImageValidationService.isKnownInvalid(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=$source program="$programTitle" url=$url result=reject_known_invalid',
      );
      return false;
    }
    if (_isLikelyChannelLogoUrl(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=$source program="$programTitle" url=$url result=reject_channel_logo',
      );
      return false;
    }
    if (_matchesChannelLogo(url, channel)) {
      _logArtworkDecision(
        'LiveTV artwork: source=$source program="$programTitle" url=$url result=reject_matches_channel_logo',
      );
      return false;
    }
    if (_isLikelySmallImage(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=$source program="$programTitle" url=$url result=reject_small_image',
      );
      return false;
    }
    return true;
  }

  bool _isValidTitleLogo(String? url, Channel channel) {
    if (url == null || url.isEmpty) return false;
    if (ImageValidationService.isKnownInvalid(url)) return false;
    if (_matchesChannelLogo(url, channel)) return false;
    if (_isLikelyChannelLogoUrl(url)) return false;
    return true;
  }

  bool _acceptArtworkUrl(
    String? url, {
    required bool preferLandscape,
    String? programTitle,
    String? source,
  }) {
    if (url == null || url.isEmpty) return false;
    if (ImageValidationService.isKnownInvalid(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=$source program="$programTitle" url=$url result=reject_known_invalid',
      );
      return false;
    }
    if (_isLikelySmallImage(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=$source program="$programTitle" url=$url result=reject_small',
      );
      return false;
    }
    if (preferLandscape && _isLikelyPosterUrl(url)) {
      return false;
    }
    return true;
  }

  bool _isLikelyPosterUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();
    if (lower.contains('/poster') ||
        lower.contains('_poster') ||
        lower.contains('-poster')) {
      return true;
    }
    if (lower.contains('image.tmdb.org')) {
      final segments = lower.split('/');
      for (final segment in segments) {
        if (segment.startsWith('w') && segment.length <= 5) {
          final width = int.tryParse(segment.substring(1));
          if (width != null && width < 500) {
            return true;
          }
        }
      }
    }
    return false;
  }

  bool _isLikelyChannelLogoUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();
    if (lower.contains('/logo') ||
        lower.contains('_logo') ||
        lower.contains('-logo') ||
        lower.contains('logo.')) {
      return true;
    }
    return false;
  }

  bool _isLikelySmallImage(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();
    if (lower.contains('image.tmdb.org')) {
      final sizeMatch = RegExp(r'/w(\d+)/').firstMatch(lower);
      if (sizeMatch != null) {
        final width = int.tryParse(sizeMatch.group(1) ?? '');
        if (width != null && width < 300) {
          return true;
        }
      }
    }
    final extMatch = RegExp(r'\.(png|jpg|jpeg|webp)$').firstMatch(lower);
    if (extMatch != null) {
      final beforeExt = lower.substring(0, extMatch.start);
      final sizeRegex = RegExp(r'(\d+)x(\d+)');
      final match = sizeRegex.firstMatch(beforeExt);
      if (match != null) {
        final w = int.tryParse(match.group(1) ?? '');
        final h = int.tryParse(match.group(2) ?? '');
        if ((w != null && w < 200) || (h != null && h < 200)) {
          return true;
        }
      }
    }
    return false;
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
      return normalized.toString().replaceAll(RegExp(r'^//'), '');
    } catch (_) {
      return url;
    }
  }

  bool _isHighResHeroImage(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();
    if (lower.contains('image.tmdb.org')) {
      if (lower.contains('/original/') ||
          lower.contains('/w1920/') ||
          lower.contains('/w1280/')) {
        return true;
      }
    }
    final size = _heroImageSizes[url];
    if (size != null) {
      return size.width >= 1200 || size.height >= 720;
    }
    return false;
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

  bool _isMovieProgram(Program program, Channel channel) {
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();

    const movieKeywords = ['movie', 'film', 'cinema', 'película', 'filme'];

    for (final keyword in movieKeywords) {
      if (groupTitle.contains(keyword)) {
        return true;
      }
    }

    // Check for movie-like patterns (year in title, etc.)
    if (RegExp(r'\(\d{4}\)$').hasMatch(program.title)) {
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
