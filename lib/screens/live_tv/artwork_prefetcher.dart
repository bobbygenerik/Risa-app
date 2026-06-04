import 'dart:async';
import 'dart:collection';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_models.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';

class LiveTvArtworkPrefetcher {
  LiveTvArtworkPrefetcher(this._artworkService);

  static const Duration defaultLookAhead = Duration(hours: 2);
  static const int defaultProgramsPerChannel = 2;

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
    Duration lookAhead = defaultLookAhead,
    int programsPerChannel = defaultProgramsPerChannel,
  }) {
    if (channels.isEmpty) return;
    var queued = 0;
    final now = DateTime.now();
    for (final channel in channels) {
      if (queued >= limit) break;
      final programs = epgService.getProgramsForChannel(
        channel.epgLookupId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      final candidates = upcomingProgramsForArtwork(
        programs,
        now: now,
        lookAhead: lookAhead,
        limit: programsPerChannel,
      );
      if (candidates.isEmpty) {
        final current = epgService.getCurrentProgram(
          channel.epgLookupId,
          channelName: channel.epgLookupNameFallback,
          groupTitle: channel.groupTitle,
        );
        if (current == null) continue;
        candidates.add(current);
      }

      for (final program in candidates) {
        if (queued >= limit) break;
        final normalized = EPGMatchingUtils.normalizeForArtwork(program.title);
        if (normalized.isEmpty) continue;

        final key = '${channel.epgLookupId}|$normalized';
        if (_prefetchedArtworkKeys.contains(key)) continue;
        if (_artworkService.hasArtworkReady(program, channel)) {
          _trackArtworkKey(key);
          continue;
        }

        _trackArtworkKey(key);
        _artworkService.ensureFreshProgramArtwork(
          program,
          channel,
          highPriority: false,
        );
        queued++;
      }
    }
  }

  static List<Program> upcomingProgramsForArtwork(
    List<Program> programs, {
    required DateTime now,
    Duration lookAhead = defaultLookAhead,
    int limit = defaultProgramsPerChannel,
  }) {
    if (programs.isEmpty || limit <= 0) return <Program>[];
    final end = now.add(lookAhead);
    final selected = <Program>[];
    final seenTitles = <String>{};
    for (final program in programs) {
      final isCurrent =
          program.startTime.isBefore(now) && program.endTime.isAfter(now);
      final isUpcoming =
          !program.startTime.isBefore(now) && program.startTime.isBefore(end);
      if (!isCurrent && !isUpcoming) continue;
      final normalized = EPGMatchingUtils.normalizeForArtwork(program.title);
      if (normalized.isEmpty || !seenTitles.add(normalized)) continue;
      selected.add(program);
      if (selected.length >= limit) break;
    }
    return selected;
  }

  void _trackArtworkKey(String key) {
    _prefetchedArtworkKeys.add(key);
    _prefetchedArtworkOrder.add(key);
    _trimPrefetchedArtwork();
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
