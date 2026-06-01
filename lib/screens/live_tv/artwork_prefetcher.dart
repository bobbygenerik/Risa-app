import 'dart:async';
import 'dart:collection';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/live_tv_models.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';

class LiveTvArtworkPrefetcher {
  LiveTvArtworkPrefetcher(this._artworkService);

  final LiveTvArtworkService _artworkService;
  final Set<String> _prefetchedTitleLogoKeys = {};
  final Queue<String> _prefetchedTitleLogoOrder = Queue<String>();
  final Set<String> _prefetchedArtworkKeys = {};
  final Queue<String> _prefetchedArtworkOrder = Queue<String>();

  void prefetchTitleLogosForCandidates(
    List<LiveTvHeroCandidate> candidates, {
    int limit = 4,
  }) {
    if (candidates.isEmpty) return;
    var queued = 0;
    for (final candidate in candidates) {
      if (queued >= limit) break;
      final program = candidate.program;
      if (program == null) continue;

      final normalized = EPGMatchingUtils.normalizeForArtwork(program.title);
      if (normalized.isEmpty) continue;
      final key = '${candidate.channel.epgLookupId}|$normalized';
      if (_prefetchedTitleLogoKeys.contains(key)) continue;

      final cached =
          _artworkService.getTitleLogoForProgram(program, candidate.channel);
      if (cached != null && cached.isNotEmpty) {
        _trackTitleLogoKey(key);
        continue;
      }

      if (_artworkService.isTitleLogoRequestPendingForProgram(
        program,
        candidate.channel,
      )) {
        continue;
      }

      _trackTitleLogoKey(key);
      unawaited(_artworkService.fetchTitleLogo(program, candidate.channel));
      queued++;
    }
  }

  void prefetchRowArtworkForChannels(
    List<Channel> channels,
    IncrementalEpgService epgService, {
    int limit = 15,
  }) {
    if (channels.isEmpty) return;
    var queued = 0;
    for (final channel in channels) {
      if (queued >= limit) break;
      final program = epgService.getCurrentProgram(
        channel.epgLookupId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      if (program == null) continue;

      final normalized = EPGMatchingUtils.normalizeForArtwork(program.title);
      if (normalized.isEmpty) continue;

      final key = '${channel.epgLookupId}|$normalized';
      if (_prefetchedArtworkKeys.contains(key)) continue;

      _prefetchedArtworkKeys.add(key);
      _prefetchedArtworkOrder.add(key);
      _trimPrefetchedArtwork();
      _artworkService.ensureFreshProgramArtwork(
        program,
        channel,
        highPriority: false,
      );
      queued++;
    }
  }

  void _trackTitleLogoKey(String key) {
    _prefetchedTitleLogoKeys.add(key);
    _prefetchedTitleLogoOrder.add(key);
    _trimPrefetchedTitleLogos();
  }

  void _trimPrefetchedTitleLogos() {
    const maxEntries = 120;
    while (_prefetchedTitleLogoOrder.length > maxEntries) {
      final removed = _prefetchedTitleLogoOrder.removeFirst();
      _prefetchedTitleLogoKeys.remove(removed);
    }
  }

  void _trimPrefetchedArtwork() {
    const maxEntries = 200;
    while (_prefetchedArtworkOrder.length > maxEntries) {
      final removed = _prefetchedArtworkOrder.removeFirst();
      _prefetchedArtworkKeys.remove(removed);
    }
  }
}
