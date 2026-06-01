import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
import 'package:iptv_player/screens/live_tv/artwork_url_guard.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';

/// A candidate artwork URL from cache or EPG, in priority order.
class ArtworkSourceCandidate {
  const ArtworkSourceCandidate({
    required this.url,
    required this.source,
    required this.isEpgFallback,
  });

  final String? url;
  final String source;
  final bool isEpgFallback;
}

/// Reads shared program artwork sources (cache + EPG). Does not apply slot policy.
class ArtworkSourceResolver {
  ArtworkSourceResolver(this._service);

  final LiveTvArtworkService _service;

  Iterable<ArtworkSourceCandidate> candidates(
    Program program,
    Channel channel, {
    required ArtworkSlot slot,
  }) sync* {
    final heroSizing = slot == ArtworkSlot.hero;
    final cached = LiveTvArtworkUrlGuard.normalizeArtworkUrl(
      _service.getArtwork(program.id),
      isHero: heroSizing,
    );
    if (cached != null && cached.isNotEmpty) {
      yield ArtworkSourceCandidate(
        url: cached,
        source: '${slot.name}_cached',
        isEpgFallback: false,
      );
    }

    final byTitle = LiveTvArtworkUrlGuard.normalizeArtworkUrl(
      _service.getArtworkByTitle(program, channel),
      isHero: heroSizing,
    );
    if (byTitle != null && byTitle.isNotEmpty) {
      yield ArtworkSourceCandidate(
        url: byTitle,
        source: '${slot.name}_title_cache',
        isEpgFallback: false,
      );
    }

    final epg = LiveTvArtworkUrlGuard.normalizeArtworkUrl(
      program.imageUrl,
      isHero: heroSizing,
    );
    if (epg != null && epg.isNotEmpty) {
      yield ArtworkSourceCandidate(
        url: epg,
        source: '${slot.name}_epg',
        isEpgFallback: true,
      );
    }
  }
}
