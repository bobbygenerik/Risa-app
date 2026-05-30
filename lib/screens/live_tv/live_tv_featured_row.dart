import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_section.dart';
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
  bool _initialized = false;
  bool _computeScheduled = false;
  List<Channel> _stableChannels = [];

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

    final featuredChannels = <Channel>[];
    final addedChannelIds = <String>{};
    final featuredProgramTitles = <String>{};
    final missingChannelIds = <String>{};
    final missingChannelNames = <String?>[];

    final maxMostWatched = math.min(mostWatched.length, 6);
    for (var i = 0; i < maxMostWatched; i++) {
      final channel = mostWatched[i];
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

      if (!addedChannelIds.contains(channelId)) {
        featuredChannels.add(channel);
        addedChannelIds.add(channelId);
      }
    }

    final availableChannels = widget.fallbackChannels
        .where((c) => !addedChannelIds.contains(c.epgLookupId))
        .toList();
    availableChannels.shuffle(math.Random());

    const targetFeaturedCount = 10;
    final remainingSlots = targetFeaturedCount - featuredChannels.length;
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
      if (featuredChannels.length >= targetFeaturedCount) break;
    }

    if (featuredChannels.length < targetFeaturedCount) {
      for (final channel in availableChannels) {
        if (featuredChannels.length >= targetFeaturedCount) break;
        final channelId = channel.epgLookupId;
        if (addedChannelIds.contains(channelId)) continue;
        if (epgService.shouldHideChannel(
          channelId,
          channelName: channel.epgLookupNameFallback,
        )) {
          continue;
        }
        featuredChannels.add(channel);
        addedChannelIds.add(channelId);
      }
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

    if (!mounted) return;

    final epgReady = !epgService.isLoading &&
        !epgService.isParsing &&
        !epgService.isDownloading;
    setState(() {
      _stableChannels = List<Channel>.from(featuredChannels);
      _initialized = featuredChannels.length >= 5 && epgReady;
    });
  }
}
