part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceHero on LiveTvArtworkService {
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
              LiveTvArtworkService._fanartEnabled ||
              LiveTvArtworkService._sportsDbEnabled ||
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
}
