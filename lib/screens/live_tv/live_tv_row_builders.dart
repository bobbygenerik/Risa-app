import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_section.dart';
import 'package:iptv_player/screens/live_tv/live_tv_full_screen_hero_host.dart';
import 'package:iptv_player/screens/live_tv/live_tv_screen_config.dart';
import 'package:iptv_player/screens/live_tv/live_tv_screen_deps.dart';
import 'package:iptv_player/screens/live_tv/live_tv_tracked_skeleton.dart';
import 'package:iptv_player/utils/app_spacing.dart';

/// Hero and row widgets for the Live TV screen.
class LiveTvRowBuilders {
  LiveTvRowBuilders({
    required this.deps,
    required this.bindings,
    required this.onWatchChannel,
    required this.onPrefetchRowArtwork,
  });

  final LiveTvScreenDeps deps;
  final LiveTvChannelSectionBindings bindings;
  final void Function(Channel channel) onWatchChannel;
  final void Function(List<Channel> channels, {int limit}) onPrefetchRowArtwork;

  Widget channelSection(
    BuildContext context,
    String title,
    List<Channel> channels, {
    bool isFirstRow = false,
    bool isFirstCategoryRow = false,
    bool allowCategoryPaging = true,
  }) {
    return LiveTvChannelSection(
      title: title,
      channels: channels,
      bindings: bindings,
      isFirstRow: isFirstRow,
      isFirstCategoryRow: isFirstCategoryRow,
      allowCategoryPaging: allowCategoryPaging,
    );
  }

  Widget programTypeRow(
    BuildContext context,
    String title,
    List<Channel> allChannels,
    bool Function(Program?, Channel) classifier,
  ) {
    return deps.programTypeRowCache.buildRow(
      context: context,
      title: title,
      allChannels: allChannels,
      classifier: classifier,
      buildSection: (ctx, rowTitle, rowChannels) => channelSection(
        ctx,
        rowTitle,
        rowChannels,
        allowCategoryPaging: false,
      ),
    );
  }

  Widget fullScreenHero(
    BuildContext context,
    Channel featuredChannel,
    List<Channel> allChannels,
  ) {
    return LiveTvFullScreenHeroHost(
      featuredChannel: featuredChannel,
      allChannels: allChannels,
      featuredIndex: deps.featuredState.index,
      scrollController: deps.scrollController,
      heroArtworkVersion: deps.heroArtworkVersion,
      suspendHeroBackground: deps.suspendHeroBackground,
      sidebarInset: AppSpacing.sidebarCollapsedWidth,
      bindings: bindings,
      artworkResolver: deps.artworkResolver,
      artworkService: deps.artworkService,
      artworkPrefetcher: deps.artworkPrefetcher,
      heroCandidateCache: deps.heroCandidateCache,
      programTypeRowCache: deps.programTypeRowCache,
      onCandidateCount: (count) => deps.featuredState.lastHeroCandidateCount = count,
      onAdvanceFeaturedHero: () => deps.heroCarousel.advance(),
      onPrefetchRowArtwork: onPrefetchRowArtwork,
      buildProgramTypeRow: programTypeRow,
      onWatchChannel: onWatchChannel,
      watchButtonFocus: deps.watchButtonFocus,
      firstChannelFocus: deps.firstChannelFocus,
      forceRowsVisible: LiveTvScreenConfig.forceRowsVisible,
      debugRowProbe: LiveTvScreenConfig.debugRowProbe,
      fallbackSkeleton: trackedSkeleton(),
    );
  }

  Widget trackedSkeleton({
    bool? showColdStartOverlay,
    String? titleText,
    String? statusText,
    String? secondaryStatusText,
    double? progress,
  }) {
    return LiveTvTrackedSkeleton(
      controller: deps.skeletonController,
      scrollController: deps.scrollController,
      skeletonFocus: deps.skeletonFocus,
      sidebarInset: AppSpacing.sidebarCollapsedWidth,
      showColdStartOverlay: showColdStartOverlay,
      titleText: titleText,
      statusText: statusText,
      secondaryStatusText: secondaryStatusText,
      progress: progress,
    );
  }
}
