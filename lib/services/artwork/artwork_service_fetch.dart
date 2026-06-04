part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceFetch on LiveTvArtworkService {
  /// Ensure fresh artwork is available for a program.
  void ensureFreshProgramArtwork(
    Program program,
    Channel channel, {
    bool highPriority = false,
  }) {
    debugLog(
        'LiveTV artwork: ensureFreshProgramArtwork called for "${program.title}" (tmdb=$_tmdbEnabled fanart=${LiveTvArtworkService._fanartEnabled} sports=${LiveTvArtworkService._sportsDbEnabled} tvdb=$_tvdbEnabled)');
    if (!(_tmdbEnabled ||
        LiveTvArtworkService._fanartEnabled ||
        LiveTvArtworkService._sportsDbEnabled ||
        _tvdbEnabled)) {
      diagSkipServicesDisabled++;
      debugLog(
        'LiveTV artwork SKIP: program="${program.title}" channel="${channel.name}" '
        'reason=all_services_disabled (tmdb=$_tmdbEnabled fanart=${LiveTvArtworkService._fanartEnabled} sports=${LiveTvArtworkService._sportsDbEnabled} tvdb=$_tvdbEnabled)',
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
    final globalTitleKey = _canUseGlobalTitleCache(program, channel)
        ? _globalTitleCacheKey(program, channel)
        : '';
    final cachedByTitle = getArtworkByTitle(program, channel);
    if (cachedByTitle != null && cachedByTitle.isNotEmpty) {
      if (ImageValidationService.isKnownInvalid(cachedByTitle)) {
        _removeProgramArtworkTitle(titleKey);
        if (globalTitleKey.isNotEmpty) {
          _removeProgramArtworkTitle(globalTitleKey);
        }
      } else if (await ImageValidationService.isValid(cachedByTitle)) {
        _setProgramArtwork(program.id, cachedByTitle);
        return cachedByTitle;
      } else {
        _removeProgramArtworkTitle(titleKey);
        if (globalTitleKey.isNotEmpty) {
          _removeProgramArtworkTitle(globalTitleKey);
        }
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
    return null;
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
    return null;
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
}
