import 'dart:async';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/artwork_url_guard.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/utils/artwork_diagnostics.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/program_classifier.dart';

/// Resolves program artwork URLs for Live TV hero and channel cards.
class LiveTvArtworkResolver {
  LiveTvArtworkResolver({
    required LiveTvArtworkService artworkService,
    this.logArtworkMatches = true,
    this.tmdbEnabled = true,
    this.fanartEnabled = true,
    this.sportsDbEnabled = true,
  }) : _artworkService = artworkService;

  final LiveTvArtworkService _artworkService;
  final bool logArtworkMatches;
  final bool tmdbEnabled;
  final bool fanartEnabled;
  final bool sportsDbEnabled;

  int diagCardArtHit = 0;
  int diagCardArtMiss = 0;
  int diagCardNoProgram = 0;
  int diagCardValidationReject = 0;
  int diagHeroArtHit = 0;
  int diagHeroArtMiss = 0;
  int diagHeroValidationReject = 0;

  String? getChannelCardImage(
    Program? program,
    Channel? channel,
    bool allowPrefetch, {
    bool highPriority = false,
  }) {
    if (program == null || channel == null) {
      diagCardNoProgram++;
      return null;
    }

    final cached = normalizeArtworkUrl(
      _artworkService.getArtwork(program.id),
      isHero: false,
    );
    if (cached != null && cached.isNotEmpty) {
      if (isValidProgramArtwork(
        cached,
        channel,
        programTitle: program.title,
        source: 'cached',
        forCard: true,
      )) {
        final normalized = normalizeImageUrl(cached);
        _logArtworkDecision(
          'LiveTV artwork: card source=cached program="${program.title}" url=$normalized',
        );
        diagCardArtHit++;
        return normalized;
      } else {
        diagCardValidationReject++;
      }
    }

    final byTitle = normalizeArtworkUrl(
      _artworkService.getArtworkByTitle(program, channel),
      isHero: false,
    );
    if (byTitle != null && byTitle.isNotEmpty) {
      if (isValidProgramArtwork(
        byTitle,
        channel,
        programTitle: program.title,
        source: 'title_cache',
        forCard: true,
      )) {
        final normalized = normalizeImageUrl(byTitle);
        _logArtworkDecision(
          'LiveTV artwork: card source=title_cache program="${program.title}" url=$normalized',
        );
        diagCardArtHit++;
        return normalized;
      } else {
        diagCardValidationReject++;
      }
    }

    if (allowPrefetch) {
      _artworkService.ensureFreshProgramArtwork(
        program,
        channel,
        highPriority: highPriority,
      );
    }

    final epgUrl = normalizeArtworkUrl(program.imageUrl, isHero: false);
    if (epgUrl != null && epgUrl.isNotEmpty) {
      if (isValidProgramArtwork(
        epgUrl,
        channel,
        programTitle: program.title,
        source: 'card_epg',
        forCard: true,
        isEpgFallback: true,
      )) {
        final normalized = normalizeImageUrl(epgUrl);
        _logArtworkDecision(
          'LiveTV artwork: card source=epg program="${program.title}" url=$normalized',
        );
        diagCardArtHit++;
        return normalized;
      } else {
        diagCardValidationReject++;
      }
    }

    diagCardArtMiss++;
    return null;
  }

  String? resolveHeroImage(
    Program? program,
    Channel channel, {
    bool allowFetch = true,
    bool highPriority = false,
  }) {
    if (program != null) {
      final cached = normalizeArtworkUrl(
        _artworkService.getArtwork(program.id),
        isHero: true,
      );
      if (cached != null && cached.isNotEmpty) {
        if (isValidProgramArtwork(
          cached,
          channel,
          programTitle: program.title,
          source: 'hero_cached',
        )) {
          final normalized = normalizeImageUrl(cached);
          _logArtworkDecision(
            'LiveTV artwork: hero source=cached program="${program.title}" url=$normalized',
          );
          diagHeroArtHit++;
          return normalized;
        } else {
          diagHeroValidationReject++;
        }
      }

      final byTitle = normalizeArtworkUrl(
        _artworkService.getArtworkByTitle(program, channel),
        isHero: true,
      );
      if (byTitle != null && byTitle.isNotEmpty) {
        if (isValidProgramArtwork(
          byTitle,
          channel,
          programTitle: program.title,
          source: 'hero_title_cache',
        )) {
          final normalized = normalizeImageUrl(byTitle);
          _logArtworkDecision(
            'LiveTV artwork: hero source=title_cache program="${program.title}" url=$normalized',
          );
          diagHeroArtHit++;
          return normalized;
        } else {
          diagHeroValidationReject++;
        }
      }

      if (allowFetch) {
        _artworkService.ensureFreshProgramArtwork(
          program,
          channel,
          highPriority: highPriority,
        );
      }

      final direct = normalizeArtworkUrl(program.imageUrl, isHero: true);
      if (isValidProgramArtwork(
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
        diagHeroArtHit++;
        return normalized;
      }
    }

    diagHeroArtMiss++;
    return null;
  }

  String? resolveProgramTitleLogo(Program? program, Channel channel) {
    if (program == null) return null;

    final cachedUrl = _artworkService.getTitleLogoForProgram(program, channel);
    if (_isValidTitleLogo(cachedUrl, channel)) {
      return cachedUrl;
    }

    final url = program.imageUrl;
    if (url != null &&
        url.isNotEmpty &&
        _isValidTitleLogo(url, channel) &&
        LiveTvArtworkUrlGuard.isLikelyTitleLogoUrl(url)) {
      return url;
    }

    if ((tmdbEnabled || fanartEnabled || sportsDbEnabled) &&
        !_artworkService.isTitleLogoRequestPendingForProgram(program, channel)) {
      unawaited(_artworkService.fetchTitleLogo(program, channel));
    }

    return null;
  }

  String displayProgramTitle(Program program, Channel? channel) {
    final trimmed = program.title.trim();
    if (trimmed.isEmpty) return program.title;
    final isNews =
        channel != null && ProgramClassifier.isNewsProgram(program, channel);
    final isSports = ProgramClassifier.isSportsProgram(program, channel);
    final isMovie =
        channel != null && ProgramClassifier.isMovieProgram(program, channel);
    return EPGMatchingUtils.normalizeForDisplayTitle(
      trimmed,
      stripEpisodeSubtitle: !(isNews || isSports || isMovie),
    );
  }

  String? normalizeArtworkUrl(
    String? url, {
    bool isHero = false,
    double? targetWidth,
  }) =>
      LiveTvArtworkUrlGuard.normalizeArtworkUrl(
        url,
        isHero: isHero,
        targetWidth: targetWidth,
      );

  bool isValidProgramArtwork(
    String? url,
    Channel channel, {
    String? programTitle,
    String? source,
    bool forCard = false,
    bool isEpgFallback = false,
  }) =>
      LiveTvArtworkUrlGuard.isValidProgramArtwork(
        url,
        channel,
        programTitle: programTitle,
        source: source,
        forCard: forCard,
        isEpgFallback: isEpgFallback,
        onDecision: _logArtworkDecision,
      );

  bool _isValidTitleLogo(String? url, Channel channel) =>
      LiveTvArtworkUrlGuard.isValidTitleLogo(url, channel);

  void _logArtworkDecision(String message) {
    if (!logArtworkMatches) return;
    ArtworkDiagnostics.record(message);
    debugLog(message);
  }
}
