import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_models.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';

/// Cached hero candidate list for the Live TV hero carousel.
///
/// Only channels with a current program and validated landscape hero artwork
/// enter the pool. [isPoolComplete] becomes true once the pool holds
/// [targetPoolSize] entries or EPG has loaded for every channel.
class LiveTvHeroCandidateCache {
  static const int targetPoolSize = 15;

  List<LiveTvHeroCandidate>? _cached;
  bool _valid = false;
  bool _poolComplete = false;

  bool get isValid => _valid;

  bool get isPoolComplete => _poolComplete;

  void invalidate() {
    _valid = false;
    _poolComplete = false;
  }

  List<LiveTvHeroCandidate> build(
    List<Channel> channels,
    IncrementalEpgService epgService,
    LiveTvArtworkResolver artworkResolver, {
    bool forceRefresh = false,
    Set<String> rejectedHeroUrls = const {},
  }) {
    if (channels.isEmpty) {
      _poolComplete = true;
      _cached = const [];
      _valid = true;
      return _cached!;
    }

    if (!forceRefresh && _valid && _cached != null) {
      return _cached!;
    }

    var eligibleChannelCount = 0;
    final withArt = <LiveTvHeroCandidate>[];
    for (final channel in channels) {
      final channelId = channel.epgLookupId;
      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.epgLookupNameFallback,
      )) {
        continue;
      }
      eligibleChannelCount++;

      final program = epgService.getCurrentProgram(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      if (program == null) continue;

      final heroImage = artworkResolver.resolveHeroImage(
        program,
        channel,
        allowFetch: false,
      );
      if (heroImage == null || heroImage.isEmpty) continue;
      if (rejectedHeroUrls.contains(heroImage)) continue;
      if (ImageFailureCache.shouldSkip(heroImage, slot: ArtworkSlot.hero)) {
        continue;
      }

      withArt.add(LiveTvHeroCandidate(
        channel: channel,
        program: program,
        heroImage: heroImage,
      ));
    }

    withArt.sort((a, b) {
      if (a.program != null && b.program == null) return -1;
      if (a.program == null && b.program != null) return 1;
      return 0;
    });

    final result = withArt.take(targetPoolSize).toList();
    _poolComplete = result.length >= targetPoolSize ||
        (eligibleChannelCount > 0 &&
            epgService.loadedProgramChannelCount >= eligibleChannelCount);
    _cached = result;
    _valid = true;
    return result;
  }
}

/// Resolved hero channel/program for the current carousel index.
class LiveTvHeroSelection {
  const LiveTvHeroSelection({
    required this.activeChannel,
    required this.program,
    required this.candidateCount,
    this.selectedHero,
  });

  final Channel activeChannel;
  final Program? program;
  final int candidateCount;
  final LiveTvHeroCandidate? selectedHero;
}

class LiveTvHeroSelectionResolver {
  static ({
    LiveTvHeroSelection selection,
    List<LiveTvHeroCandidate> selectionPool,
    LiveTvHeroCandidate? selectedHero,
  }) resolve({
    required Channel featuredChannel,
    required List<Channel> allChannels,
    required int featuredIndex,
    required List<LiveTvHeroCandidate> heroCandidates,
  }) {
    final selectionPool = heroCandidates
        .where(
          (c) =>
              c.program != null &&
              c.heroImage.isNotEmpty &&
              !ImageFailureCache.shouldSkip(c.heroImage, slot: ArtworkSlot.hero),
        )
        .toList();

    final candidateCount = selectionPool.length;

    final selectedHero = candidateCount == 0
        ? null
        : selectionPool[featuredIndex % candidateCount];

    final selection = LiveTvHeroSelection(
      activeChannel: selectedHero?.channel ?? featuredChannel,
      program: selectedHero?.program,
      candidateCount: candidateCount,
      selectedHero: selectedHero,
    );
    return (
      selection: selection,
      selectionPool: selectionPool,
      selectedHero: selectedHero,
    );
  }
}
