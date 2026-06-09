import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_section.dart';
import 'package:iptv_player/screens/live_tv/live_tv_continue_watching_row.dart';
import 'package:iptv_player/screens/live_tv/live_tv_formatters.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:provider/provider.dart';

/// Featured channel row (most-watched + variety), with stable list when EPG is ready.
class LiveTvFeaturedRow extends StatefulWidget {
  const LiveTvFeaturedRow({
    super.key,
    required this.fallbackChannels,
    required this.bindings,
    required this.artworkResolver,
  });

  final List<Channel> fallbackChannels;
  final LiveTvChannelSectionBindings bindings;
  final LiveTvArtworkResolver artworkResolver;

  @override
  State<LiveTvFeaturedRow> createState() => _LiveTvFeaturedRowState();
}

class _LiveTvFeaturedRowState extends State<LiveTvFeaturedRow> {
  static const int _targetFeaturedCount = 10;
  // Retry budget: EPG can stay in a loading/parsing state for a long time on
  // cold start (on-demand channel loads + secondary merge), so we cannot wait
  // for an "EPG ready" signal — it may never arrive. Instead we accumulate
  // cards across retries and latch once we hit the target or exhaust the
  // budget (~25 * 400ms ≈ 10s).
  static const int _maxRetries = 25;

  bool _initialized = false;
  bool _computeScheduled = false;
  int _retries = 0;
  List<Channel> _stableChannels = [];
  // Fixed per-session seed so retry passes evaluate fallback channels in the
  // same order — cards fill in as EPG warms up instead of reshuffling.
  late final int _shuffleSeed = DateTime.now().millisecondsSinceEpoch;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scheduleFeaturedCompute();
    });
  }

  @override
  void didUpdateWidget(covariant LiveTvFeaturedRow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!_initialized &&
        oldWidget.fallbackChannels.length != widget.fallbackChannels.length) {
      _scheduleFeaturedCompute();
    }
  }

  void _scheduleFeaturedCompute() {
    if (_initialized || _computeScheduled || !mounted) return;
    _computeScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _computeScheduled = false;
      if (!mounted || _initialized) return;
      _computeFeaturedChannels();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_stableChannels.isNotEmpty) {
      return RepaintBoundary(
        child: LiveTvChannelSection(
          title: 'Featured',
          channels: _stableChannels,
          bindings: widget.bindings,
          isFirstRow: true,
          allowCategoryPaging: false,
          hideUnmatchedChannels: true,
        ),
      );
    }

    _scheduleFeaturedCompute();
    return const SizedBox.shrink();
  }

  void _computeFeaturedChannels() {
    if (!mounted || _initialized) return;
    final channelProvider = context.read<ChannelProvider>();
    final epgService = context.read<IncrementalEpgService>();
    final mostWatched = channelProvider.mostWatchedChannels;

    // Accumulate across retries: seed with channels already chosen so the row
    // only ever grows toward the target. This prevents the visible card count
    // from regressing (e.g. 10 -> 3) as "current program" results shift while
    // EPG keeps warming up.
    final featuredChannels = <Channel>[..._stableChannels];
    final addedChannelIds = <String>{};
    final featuredProgramTitles = <String>{};
    final missingChannelIds = <String>{};
    final missingChannelNames = <String?>[];

    // Channels shown in the Continue Watching row are reserved for it; exclude
    // them here so a channel never appears in both rows at the same time.
    final continueWatchingIds = mostWatched
        .take(LiveTvContinueWatchingRow.maxItems)
        .map((c) => c.epgLookupId)
        .toSet();
    addedChannelIds.addAll(continueWatchingIds);

    // Register already-chosen channels (and their current program titles) so
    // they are not re-added and so title dedup still holds across retries.
    for (final channel in _stableChannels) {
      addedChannelIds.add(channel.epgLookupId);
      final program = epgService.getCurrentProgram(
        channel.epgLookupId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      if (program != null) {
        featuredProgramTitles.add(LiveTvFormatters.normalizeTitleForFilter(
            widget.artworkResolver.displayProgramTitle(program, channel)));
      }
    }

    final maxMostWatched = math.min(mostWatched.length, 6);
    for (var i = 0; i < maxMostWatched; i++) {
      if (featuredChannels.length >= _targetFeaturedCount) break;
      final channel = mostWatched[i];
      final channelId = channel.epgLookupId;
      if (addedChannelIds.contains(channelId)) continue;
      final currentProgram = epgService.getCurrentProgram(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );

      if (currentProgram == null) {
        if (missingChannelIds.add(channelId)) {
          missingChannelNames.add(channel.epgLookupNameFallback);
        }
        continue;
      }

      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.epgLookupNameFallback,
      )) {
        continue;
      }

      final displayTitle =
          widget.artworkResolver.displayProgramTitle(currentProgram, channel);
      final normalizedTitle =
          LiveTvFormatters.normalizeTitleForFilter(displayTitle);
      if (featuredProgramTitles.contains(normalizedTitle)) {
        debugLog(
            'LiveTV: Skipping channel "${channel.name}" - program "${currentProgram.title}" already featured');
        continue;
      }
      featuredProgramTitles.add(normalizedTitle);

      if (!addedChannelIds.contains(channelId)) {
        featuredChannels.add(channel);
        addedChannelIds.add(channelId);
      }
    }

    final availableChannels = widget.fallbackChannels
        .where((c) => !addedChannelIds.contains(c.epgLookupId))
        .toList();
    availableChannels.shuffle(math.Random(_shuffleSeed));

    final remainingSlots = _targetFeaturedCount - featuredChannels.length;
    final randomCount = math.min(remainingSlots, availableChannels.length);

    for (var i = 0; i < randomCount; i++) {
      final channel = availableChannels[i];
      final channelId = channel.epgLookupId;
      final currentProgram = epgService.getCurrentProgram(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );

      if (currentProgram == null) {
        if (missingChannelIds.add(channelId)) {
          missingChannelNames.add(channel.epgLookupNameFallback);
        }
        continue;
      }

      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.epgLookupNameFallback,
      )) {
        continue;
      }

      final displayTitle =
          widget.artworkResolver.displayProgramTitle(currentProgram, channel);
      final normalizedTitle =
          LiveTvFormatters.normalizeTitleForFilter(displayTitle);
      if (featuredProgramTitles.contains(normalizedTitle)) {
        debugLog(
            'LiveTV: Skipping channel "${channel.name}" - program "${currentProgram.title}" already featured');
        continue;
      }
      featuredProgramTitles.add(normalizedTitle);

      featuredChannels.add(channel);
      addedChannelIds.add(channelId);
      if (featuredChannels.length >= _targetFeaturedCount) break;
    }

    if (missingChannelIds.isNotEmpty) {
      final capturedIds = missingChannelIds.toList();
      final capturedNames = List<String?>.from(missingChannelNames);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        unawaited(epgService.ensureChannelsLoadedBatch(
          capturedIds,
          channelNames: capturedNames,
        ));
      });
    }

    _padFeaturedFromFallback(
      featuredChannels,
      addedChannelIds,
      remainingOnly: true,
      epgService: epgService,
    );

    if (!mounted) return;

    _retries++;
    final reachedTarget = featuredChannels.length >= _targetFeaturedCount;
    final budgetExhausted = _retries >= _maxRetries;
    final stable = List<Channel>.from(featuredChannels);
    setState(() {
      _stableChannels = stable;
      // Latch only when the row is full or the retry budget is exhausted.
      _initialized = reachedTarget || budgetExhausted;
    });
    _warmFeaturedRow(stable, epgService);
    if (_retries == 1 || _initialized) {
      final withPrograms = stable
          .where((c) =>
              epgService.getCurrentProgram(
                c.epgLookupId,
                channelName: c.epgLookupNameFallback,
                groupTitle: c.groupTitle,
              ) !=
              null)
          .length;
      debugLog('LiveTV Featured: compute -> cards=${stable.length} '
          'withPrograms=$withPrograms retries=$_retries '
          'initialized=$_initialized missing=${missingChannelIds.length}');
    }

    // Not full yet and still within budget: retry shortly so cards accumulate
    // as EPG programs land in memory, instead of freezing on a partial row.
    if (!_initialized && mounted) {
      Future.delayed(const Duration(milliseconds: 400), () {
        if (mounted && !_initialized) _computeFeaturedChannels();
      });
    }
  }

  /// Fill remaining featured slots, preferring channels that already have EPG.
  void _padFeaturedFromFallback(
    List<Channel> featuredChannels,
    Set<String> addedChannelIds, {
    required bool remainingOnly,
    required IncrementalEpgService epgService,
  }) {
    if (widget.fallbackChannels.isEmpty) return;
    if (remainingOnly && featuredChannels.length >= _targetFeaturedCount) {
      return;
    }
    final pool = widget.fallbackChannels
        .where((c) =>
            c.epgLookupId.isNotEmpty && !addedChannelIds.contains(c.epgLookupId))
        .toList();
    pool.sort((a, b) {
      final aHas = epgService.getCurrentProgram(
            a.epgLookupId,
            channelName: a.epgLookupNameFallback,
            groupTitle: a.groupTitle,
          ) !=
          null;
      final bHas = epgService.getCurrentProgram(
            b.epgLookupId,
            channelName: b.epgLookupNameFallback,
            groupTitle: b.groupTitle,
          ) !=
          null;
      if (aHas == bHas) return 0;
      return aHas ? -1 : 1;
    });
    final rng = math.Random(_shuffleSeed + _retries);
    final withPrograms = pool
        .where((c) => epgService.getCurrentProgram(c.epgLookupId) != null)
        .toList();
    withPrograms.shuffle(rng);
    for (final channel in withPrograms) {
      if (featuredChannels.length >= _targetFeaturedCount) break;
      featuredChannels.add(channel);
      addedChannelIds.add(channel.epgLookupId);
    }
  }

  void _warmFeaturedRow(
    List<Channel> channels,
    IncrementalEpgService epgService,
  ) {
    if (channels.isEmpty) return;
    final ids = channels.map((c) => c.epgLookupId).toList();
    final names = channels.map((c) => c.epgLookupNameFallback).toList();
    unawaited(epgService.priorityLoadVisibleChannels(ids, channelNames: names));
    for (final channel in channels) {
      final program = epgService.getCurrentProgram(
        channel.epgLookupId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      if (program != null) {
        widget.artworkResolver.prefetchCardArtwork(program, channel);
      }
    }
  }
}
