import 'dart:async';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_source_resolver.dart';
import 'package:iptv_player/screens/live_tv/artwork/card_artwork_policy.dart';
import 'package:iptv_player/screens/live_tv/artwork/hero_artwork_policy.dart';
import 'package:iptv_player/screens/live_tv/artwork_url_guard.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/utils/artwork_diagnostics.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/epg_title_disambiguation.dart';
import 'package:iptv_player/utils/program_classifier.dart';

/// Facade: shared artwork sources, separate hero/card policies.
class LiveTvArtworkResolver {
  LiveTvArtworkResolver({
    required LiveTvArtworkService artworkService,
    this.logArtworkMatches = true,
    this.tmdbEnabled = true,
    this.fanartEnabled = true,
    this.sportsDbEnabled = true,
    HeroArtworkPolicy? heroPolicy,
    CardArtworkPolicy? cardPolicy,
  })  : _artworkService = artworkService,
        _heroPolicy = heroPolicy ?? const HeroArtworkPolicy(),
        _cardPolicy = cardPolicy ?? const CardArtworkPolicy(),
        _sourceResolver = ArtworkSourceResolver(artworkService);

  final LiveTvArtworkService _artworkService;
  final HeroArtworkPolicy _heroPolicy;
  final CardArtworkPolicy _cardPolicy;
  final ArtworkSourceResolver _sourceResolver;
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

  CardArtworkPolicy get cardPolicy => _cardPolicy;
  HeroArtworkPolicy get heroPolicy => _heroPolicy;

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

    for (final candidate in _sourceResolver.candidates(
      program,
      channel,
      slot: ArtworkSlot.card,
    )) {
      if (_cardPolicy.acceptsUrl(
        candidate.url,
        channel,
        source: candidate.source,
        programTitle: program.title,
        isEpgFallback: candidate.isEpgFallback,
        onDecision: _logArtworkDecision,
      )) {
        final normalized = normalizeImageUrl(candidate.url!);
        _logArtworkDecision(
          'LiveTV artwork: card source=${candidate.source} '
          'program="${program.title}" url=$normalized',
        );
        diagCardArtHit++;
        return normalized;
      }
      diagCardValidationReject++;
    }

    if (allowPrefetch) {
      _artworkService.ensureFreshProgramArtwork(
        program,
        channel,
        highPriority: highPriority,
      );
    }

    diagCardArtMiss++;
    return null;
  }

  void prefetchCardArtwork(Program program, Channel channel) {
    _artworkService.ensureFreshProgramArtwork(
      program,
      channel,
      highPriority: true,
    );
  }

  String? resolveHeroImage(
    Program? program,
    Channel channel, {
    bool allowFetch = true,
    bool highPriority = false,
  }) {
    if (program == null) {
      diagHeroArtMiss++;
      return null;
    }

    for (final candidate in _sourceResolver.candidates(
      program,
      channel,
      slot: ArtworkSlot.hero,
    )) {
      if (_heroPolicy.acceptsUrl(
        candidate.url,
        channel,
        source: candidate.source,
        programTitle: program.title,
        isEpgFallback: candidate.isEpgFallback,
        onDecision: _logArtworkDecision,
      )) {
        final normalized = normalizeImageUrl(candidate.url!);
        _logArtworkDecision(
          'LiveTV artwork: hero source=${candidate.source} '
          'program="${program.title}" url=$normalized',
        );
        diagHeroArtHit++;
        return normalized;
      }
      diagHeroValidationReject++;
    }

    if (allowFetch) {
      _artworkService.ensureFreshProgramArtwork(
        program,
        channel,
        highPriority: highPriority,
      );
    }

    diagHeroArtMiss++;
    return null;
  }

  String? resolveProgramTitleLogo(Program? program, Channel channel) {
    if (program == null) return null;
    if (ProgramClassifier.isNewsProgram(program, channel)) return null;

    final cachedUrl = _artworkService.getTitleLogoForProgram(program, channel);
    if (_isValidTitleLogo(cachedUrl, channel)) return cachedUrl;

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
    return EpgTitleDisambiguation.resolveDisplayTitle(program, channel);
  }

  String? normalizeArtworkUrl(
    String? url, {
    ArtworkSlot? slot,
    bool isHero = false,
    double? targetWidth,
  }) =>
      LiveTvArtworkUrlGuard.normalizeArtworkUrl(
        url,
        slot: slot,
        isHero: isHero,
        targetWidth: targetWidth,
      );

  bool _isValidTitleLogo(String? url, Channel channel) =>
      LiveTvArtworkUrlGuard.isValidTitleLogo(url, channel);

  void _logArtworkDecision(String message) {
    if (!logArtworkMatches) return;
    ArtworkDiagnostics.record(message);
    debugLog(message);
  }
}
