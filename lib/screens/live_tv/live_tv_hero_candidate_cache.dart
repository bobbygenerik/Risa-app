import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_models.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

/// Cached hero candidate list for the Live TV hero carousel.
class LiveTvHeroCandidateCache {
  List<LiveTvHeroCandidate>? _cached;
  bool _valid = false;

  bool get isValid => _valid;

  void invalidate() {
    _valid = false;
  }

  List<LiveTvHeroCandidate> build(
    List<Channel> channels,
    IncrementalEpgService epgService,
    LiveTvArtworkResolver artworkResolver, {
    bool forceRefresh = false,
  }) {
    if (channels.isEmpty) return [];

    if (!forceRefresh && _valid && _cached != null) {
      return _cached!;
    }

    final candidates = <LiveTvHeroCandidate>[];
    for (final channel in channels) {
      final channelId = channel.epgLookupId;
      final program = epgService.getCurrentProgram(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );

      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.epgLookupNameFallback,
      )) {
        continue;
      }

      final heroImage = artworkResolver.resolveHeroImage(
        program,
        channel,
        allowFetch: false,
      );

      candidates.add(LiveTvHeroCandidate(
        channel: channel,
        program: program,
        heroImage: heroImage ?? '',
      ));
    }

    candidates.sort((a, b) {
      if (a.program != null && b.program == null) return -1;
      if (a.program == null && b.program != null) return 1;
      return 0;
    });

    final result = candidates.take(15).toList();
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
    final epgHeroCandidates =
        heroCandidates.where((c) => c.program != null).toList();

    final selectionPool = epgHeroCandidates.isNotEmpty
        ? epgHeroCandidates
        : [
            if (allChannels.isNotEmpty)
              LiveTvHeroCandidate(
                channel: allChannels.first,
                heroImage: '',
              ),
          ];

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
