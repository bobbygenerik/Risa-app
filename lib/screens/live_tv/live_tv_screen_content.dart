import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_category_coordinator.dart';
import 'package:iptv_player/screens/live_tv/live_tv_category_sync.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_preview_body.dart';
import 'package:iptv_player/screens/live_tv/live_tv_content_gate.dart';
import 'package:iptv_player/screens/live_tv/live_tv_featured_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_formatters.dart';
import 'package:iptv_player/screens/live_tv/live_tv_hero_candidate_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_no_playlist_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_preview_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_program_type_row_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_skeleton_controller.dart';
import 'package:iptv_player/screens/live_tv/live_tv_tracked_skeleton.dart';
import 'package:iptv_player/screens/live_tv/timer_manager.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:provider/provider.dart';

/// Channel-provider-driven main body for the Live TV screen.
class LiveTvScreenContent extends StatelessWidget {
  const LiveTvScreenContent({
    super.key,
    required this.categoryState,
    required this.categoryCoordinator,
    required this.skeletonController,
    required this.previewState,
    required this.featuredState,
    required this.timerManager,
    required this.artworkService,
    required this.artworkResolver,
    required this.heroCandidateCache,
    required this.programTypeRowCache,
    required this.scrollController,
    required this.skeletonFocus,
    required this.settingsButtonFocus,
    required this.isMounted,
    required this.onReplaceCategories,
    required this.onRequestCategoryPrefetch,
    required this.onMaybeRefreshCategories,
    required this.onMarkSkeletonVisibility,
    required this.onGoToSettings,
    required this.onEnsureEpgForChannels,
    required this.onInvalidateCaches,
    required this.buildHero,
  });

  final LiveTvCategoryState categoryState;
  final LiveTvCategoryCoordinator categoryCoordinator;
  final LiveTvSkeletonController skeletonController;
  final LiveTvPreviewState previewState;
  final LiveTvFeaturedState featuredState;
  final LiveTvTimerManager timerManager;
  final LiveTvArtworkService artworkService;
  final LiveTvArtworkResolver artworkResolver;
  final LiveTvHeroCandidateCache heroCandidateCache;
  final LiveTvProgramTypeRowCache programTypeRowCache;
  final ScrollController scrollController;
  final FocusNode skeletonFocus;
  final FocusNode settingsButtonFocus;
  final bool Function() isMounted;
  final void Function(List<String> categories) onReplaceCategories;
  final VoidCallback onRequestCategoryPrefetch;
  final void Function(int channelCount) onMaybeRefreshCategories;
  final void Function(bool showing) onMarkSkeletonVisibility;
  final VoidCallback onGoToSettings;
  final void Function(List<Channel> channels, IncrementalEpgService epg)
      onEnsureEpgForChannels;
  final VoidCallback onInvalidateCaches;
  final Widget Function(
    BuildContext context,
    Channel featured,
    List<Channel> channels,
    IncrementalEpgService epgService,
  ) buildHero;

  @override
  Widget build(BuildContext context) {
    return Selector<
        ChannelProvider,
        ({
          bool hasChannels,
          int channelCount,
          bool noPlaylistConfigured,
          String? errorMessage,
          bool isLoading,
          bool isColdStartLoad,
          double loadingProgress,
          String loadingStatus
        })>(
      selector: (context, provider) => (
        hasChannels: provider.hasChannels,
        channelCount: provider.channelCount,
        noPlaylistConfigured: provider.noPlaylistConfigured,
        errorMessage: provider.errorMessage,
        isLoading: provider.isLoading,
        isColdStartLoad: provider.isColdStartLoad,
        loadingProgress: provider.loadingProgress,
        loadingStatus: provider.loadingStatus,
      ),
      shouldRebuild: (prev, next) =>
          prev.hasChannels != next.hasChannels ||
          prev.channelCount != next.channelCount ||
          prev.noPlaylistConfigured != next.noPlaylistConfigured ||
          prev.errorMessage != next.errorMessage ||
          prev.isLoading != next.isLoading ||
          prev.isColdStartLoad != next.isColdStartLoad ||
          prev.loadingProgress != next.loadingProgress ||
          prev.loadingStatus != next.loadingStatus,
      builder: (context, channelProviderState, _) {
        final channelProvider = context.read<ChannelProvider>();
        final hasChannels = channelProviderState.hasChannels;

        LiveTvCategorySync.scheduleBuildSync(
          latestCategories: channelProvider.getAllCategoryNames(),
          categoryState: categoryState,
          isMounted: isMounted,
          onReplace: onReplaceCategories,
          prefetchInitialRows: () => unawaited(
            categoryCoordinator.prefetchInitialCategoryRows(),
          ),
        );

        final epgService = context.read<IncrementalEpgService>();
        final hasDisplayData = hasChannels &&
            (categoryState.names.isNotEmpty ||
                categoryState.channelCache.isNotEmpty);
        final epgFlags = LiveTvContentGate.epgFlags(
          epgService,
          hasDisplayData: hasDisplayData,
        );
        final gate = LiveTvContentGate.evaluate(
          channelProvider: channelProvider,
          categoryState: categoryState,
          hasShownContent: skeletonController.hasShownContent,
          epgBusy: epgFlags.epgBusy,
          shouldBlockForEpg: epgFlags.shouldBlockForEpg,
          buildFallbackCategories: categoryCoordinator.buildFallbackCategories,
        );

        if (gate.syncCategories != null) {
          LiveTvCategorySync.applyGateSyncCategories(
            syncCategories: gate.syncCategories!,
            categoryState: categoryState,
            prefetchInitialRows: () => unawaited(
              categoryCoordinator.prefetchInitialCategoryRows(),
            ),
          );
        }

        Widget buildSkeleton() => LiveTvTrackedSkeleton(
              controller: skeletonController,
              scrollController: scrollController,
              skeletonFocus: skeletonFocus,
              sidebarInset: AppSpacing.sidebarCollapsedWidth,
              showColdStartOverlay: false,
              titleText: epgFlags.epgStatus != null ? 'Loading EPG' : null,
              statusText: LiveTvFormatters.replaceEpgWithData(
                channelProvider.loadingStatus,
              ),
              secondaryStatusText: epgFlags.epgStatus,
              progress: channelProvider.loadingProgress,
            );

        switch (gate.phase) {
          case LiveTvContentPhase.skeleton:
            return buildSkeleton();
          case LiveTvContentPhase.noPlaylist:
            onMarkSkeletonVisibility(false);
            return LiveTvNoPlaylistState(
              errorMessage: gate.errorMessage,
              onGoToSettings: onGoToSettings,
              settingsFocusNode: settingsButtonFocus,
            );
          case LiveTvContentPhase.content:
            break;
        }

        onRequestCategoryPrefetch();
        onMaybeRefreshCategories(channelProvider.channelCount);
        final previewCount = channelProvider.channelCount;
        if (previewState.future == null ||
            previewState.lastChannelCount != previewCount) {
          previewState.lastChannelCount = previewCount;
          previewState.future = channelProvider.getChannelsPage(
            offset: 0,
            limit: 60,
          );
        }

        return LiveTvChannelPreviewBody(
          previewFuture: previewState.future,
          channelProvider: channelProvider,
          artworkService: artworkService,
          artworkResolver: artworkResolver,
          timerManager: timerManager,
          featuredIndex: featuredState.index,
          featuredChannelId: featuredState.channelId,
          onFeaturedIndexChanged: (index) => featuredState.index = index,
          onFeaturedChannelIdChanged: (id) => featuredState.channelId = id,
          onEpgCacheInvalidate: onInvalidateCaches,
          onEnsureEpgForChannels: onEnsureEpgForChannels,
          onMarkContentVisible: () => onMarkSkeletonVisibility(false),
          buildSkeleton: buildSkeleton,
          buildHero: buildHero,
        );
      },
    );
  }
}
