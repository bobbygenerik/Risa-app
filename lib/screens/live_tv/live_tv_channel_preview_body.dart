import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/live_tv_background_sync_indicator.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_debug_overlay.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/timer_manager.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';

/// Async channel preview list + EPG-aware hero stack.
class LiveTvChannelPreviewBody extends StatelessWidget {
  const LiveTvChannelPreviewBody({
    super.key,
    required this.previewFuture,
    required this.channelProvider,
    required this.artworkService,
    required this.artworkResolver,
    required this.timerManager,
    required this.featuredIndex,
    required this.featuredChannelId,
    required this.onFeaturedIndexChanged,
    required this.onFeaturedChannelIdChanged,
    required this.onEpgCacheInvalidate,
    required this.onEnsureEpgForChannels,
    required this.onMarkContentVisible,
    required this.buildSkeleton,
    required this.buildHero,
  });

  final Future<List<Channel>>? previewFuture;
  final ChannelProvider channelProvider;
  final LiveTvArtworkService artworkService;
  final LiveTvArtworkResolver artworkResolver;
  final LiveTvTimerManager timerManager;
  final int featuredIndex;
  final String? featuredChannelId;
  final void Function(int index) onFeaturedIndexChanged;
  final void Function(String? id) onFeaturedChannelIdChanged;
  final VoidCallback onEpgCacheInvalidate;
  final void Function(List<Channel> channels, IncrementalEpgService epg)
      onEnsureEpgForChannels;
  final VoidCallback onMarkContentVisible;
  final Widget Function() buildSkeleton;
  final Widget Function(
    BuildContext context,
    Channel featuredChannel,
    List<Channel> displayChannels,
    IncrementalEpgService epgService,
  ) buildHero;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Channel>>(
      future: previewFuture,
      builder: (context, snapshot) {
        final previewList = (snapshot.data != null && snapshot.data!.isNotEmpty)
            ? snapshot.data!
            : const <Channel>[];
        if (previewList.isEmpty) {
          return buildSkeleton();
        }

        return Selector<
            IncrementalEpgService,
            ({
              bool hasPrograms,
              bool isLoading,
              bool isParsing,
              bool isDownloading,
              bool isBatchLoading,
              bool hasUrl,
              String? error,
              bool hasUsableData
            })>(
          selector: (context, epg) => (
            hasPrograms: epg.hasLoadedPrograms,
            isLoading: epg.isLoading,
            isParsing: epg.isParsing,
            isDownloading: epg.isDownloading,
            isBatchLoading: epg.isBatchLoading,
            hasUrl: epg.hasEpgUrl,
            error: epg.error,
            hasUsableData: epg.hasUsableData,
          ),
          shouldRebuild: (prev, next) =>
              prev.hasPrograms != next.hasPrograms ||
              prev.isLoading != next.isLoading ||
              prev.isParsing != next.isParsing ||
              prev.isDownloading != next.isDownloading ||
              prev.hasUrl != next.hasUrl ||
              prev.error != next.error ||
              prev.hasUsableData != next.hasUsableData,
          builder: (context, epgState, _) {
            final epgService = context.read<IncrementalEpgService>();

            timerManager.debounce(
              'epg_cache_invalidate',
              const Duration(milliseconds: 600),
              onEpgCacheInvalidate,
            );

            timerManager.debounce(
              'epg_ensure_channels',
              const Duration(milliseconds: 50),
              () => onEnsureEpgForChannels(previewList, epgService),
            );

            var displayChannels = previewList;
            onMarkContentVisible();

            var resolvedIndex = featuredIndex;
            if (featuredChannelId != null) {
              final idx = displayChannels.indexWhere(
                (c) => c.epgLookupId == featuredChannelId,
              );
              if (idx != -1) {
                resolvedIndex = idx;
                onFeaturedIndexChanged(idx);
              }
            }

            final safeFeaturedIndex = resolvedIndex % displayChannels.length;
            final featuredChannel = displayChannels[safeFeaturedIndex];
            final featuredId = featuredChannel.epgLookupId;
            if (featuredChannelId != featuredId) {
              onFeaturedChannelIdChanged(featuredId);
            }

            final channelId = featuredChannel.epgLookupId;
            if (channelId.isNotEmpty) {
              unawaited(epgService.ensureChannelLoaded(
                channelId,
                channelName: featuredChannel.epgLookupNameFallback,
              ));
            }

            return Stack(
              children: [
                buildHero(
                    context, featuredChannel, displayChannels, epgService),
                const LiveTvBackgroundSyncIndicator(),
                LiveTvArtworkDebugOverlay(
                  artworkService: artworkService,
                  artworkResolver: artworkResolver,
                ),
              ],
            );
          },
        );
      },
    );
  }
}
