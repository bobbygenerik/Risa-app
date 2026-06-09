part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceLogos on LiveTvArtworkService {
  /// Request a title logo for a program.
  Future<void> fetchTitleLogo(Program program, Channel channel) async {
    if (ProgramClassifier.isNewsProgram(program, channel)) return;
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
    final channelHint = (channel.tvgId ?? channel.id).trim().isNotEmpty
        ? (channel.tvgId ?? channel.id).trim()
        : (channel.groupTitle?.trim().isNotEmpty == true
            ? channel.groupTitle!.trim()
            : channel.name);
    return '${isSports ? 'sports' : 'general'}|$normalized|${_normalizeForFilter(channelHint)}';
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
}
