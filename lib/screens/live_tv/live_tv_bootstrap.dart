import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/artwork_prefetcher.dart';
import 'package:iptv_player/screens/live_tv/category_resource_store.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/screens/live_tv/focus_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_retry.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_update_throttle.dart';
import 'package:iptv_player/screens/live_tv/live_tv_category_coordinator.dart';
import 'package:iptv_player/screens/live_tv/live_tv_featured_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_hero_candidate_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_hero_carousel.dart';
import 'package:iptv_player/screens/live_tv/live_tv_idle_controller.dart';
import 'package:iptv_player/screens/live_tv/live_tv_opening_player_flag.dart';
import 'package:iptv_player/screens/live_tv/live_tv_preview_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_program_type_row_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_row_timer_callbacks.dart';
import 'package:iptv_player/screens/live_tv/live_tv_screen_config.dart';
import 'package:iptv_player/screens/live_tv/live_tv_screen_deps.dart';
import 'package:iptv_player/screens/live_tv/live_tv_skeleton_controller.dart';
import 'package:iptv_player/screens/live_tv/live_tv_snapshot_session.dart';
import 'package:iptv_player/screens/live_tv/timer_manager.dart';
import 'package:iptv_player/services/focus_pool_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:provider/provider.dart';

/// Wires Live TV screen services on first frame.
class LiveTvBootstrap {
  LiveTvBootstrap._();

  static LiveTvScreenDeps create({
    required BuildContext context,
    required bool Function() isMounted,
    required void Function(void Function()) setState,
    required void Function(String category, List<Channel> channels) prefetchEpgForRow,
    required void Function(List<Channel> channels, {int limit}) prefetchRowArtwork,
  }) {
    final openingPlayer = LiveTvOpeningPlayerFlag();
    final heroArtworkVersion = ValueNotifier<int>(0);
    final artworkThrottle = LiveTvArtworkUpdateThrottle(
      heroArtworkVersion: heroArtworkVersion,
      isMounted: isMounted,
      requestRebuild: () {
        if (isMounted()) setState(() {});
      },
    );
    final artworkService = LiveTvArtworkService(
      onArtworkUpdate: artworkThrottle.onArtworkUpdate,
    );
    artworkService.initialize();

    final timerManager = LiveTvTimerManager();
    final categoryState = LiveTvCategoryState();
    final categoryResources = LiveTvCategoryResourceStore();
    final featuredState = LiveTvFeaturedState();
    final timerService = TimerService();
    final focusPool = FocusPoolService();

    final heroCarousel = LiveTvHeroCarousel(
      featuredState: featuredState,
      timerManager: timerManager,
      getChannelProvider: () =>
          Provider.of<ChannelProvider>(context, listen: false),
      isMounted: isMounted,
      requestRebuild: setState,
    );

    late LiveTvSnapshotSession snapshotSession;
    final categoryCoordinator = LiveTvCategoryCoordinator(
      categoryState: categoryState,
      categoryResources: categoryResources,
      getChannelProvider: () =>
          Provider.of<ChannelProvider>(context, listen: false),
      isMounted: isMounted,
      onStateChanged: () {
        if (isMounted()) setState(() {});
      },
      onInitHeroIndex: heroCarousel.initHeroIndex,
      prefetchEpgForRow: prefetchEpgForRow,
      prefetchRowArtwork: prefetchRowArtwork,
      scheduleSnapshotSave: () => snapshotSession.scheduleSave(),
      initialCategoryPrefetchCount: LiveTvScreenConfig.initialCategoryPrefetchCount,
      rowInitialFetch: LiveTvScreenConfig.rowInitialFetch,
      rowFetchStep: LiveTvScreenConfig.rowFetchStep,
      maxCategoryLoads: LiveTvScreenConfig.maxCategoryLoads,
    );

    snapshotSession = LiveTvSnapshotSession(
      categoryState: categoryState,
      categoryCoordinator: categoryCoordinator,
      timerManager: timerManager,
      isMounted: isMounted,
      requestRebuild: () {
        if (isMounted()) setState(() {});
      },
      getChannelProvider: () =>
          Provider.of<ChannelProvider>(context, listen: false),
      getEpgService: () =>
          Provider.of<IncrementalEpgService>(context, listen: false),
      onPrefetchRowArtwork: prefetchRowArtwork,
    );

    final idleController = LiveTvIdleController(
      artworkService: artworkService,
      isMounted: isMounted,
      isOpeningPlayer: openingPlayer.isActive,
    );

    return LiveTvScreenDeps(
      timerService: timerService,
      focusPool: focusPool,
      scrollController: ScrollController(),
      artworkService: artworkService,
      artworkPrefetcher: LiveTvArtworkPrefetcher(artworkService),
      artworkResolver: LiveTvArtworkResolver(artworkService: artworkService),
      artworkThrottle: artworkThrottle,
      heroArtworkVersion: heroArtworkVersion,
      heroCandidateCache: LiveTvHeroCandidateCache(),
      programTypeRowCache: LiveTvProgramTypeRowCache(),
      watchButtonFocus: focusPool.getFocusNode(
        'live_tv_watch',
        debugLabel: 'Live TV Watch',
      ),
      settingsButtonFocus: focusPool.getFocusNode(
        'live_tv_settings',
        debugLabel: 'Live TV Settings',
      ),
      firstChannelFocus: focusPool.getFocusNode(
        'live_tv_first_card',
        debugLabel: 'Live TV First Card',
      ),
      firstFeaturedFocus: focusPool.getFocusNode(
        'live_tv_featured_card',
        debugLabel: 'Live TV Featured Card',
      ),
      skeletonFocus: focusPool.getFocusNode(
        'live_tv_skeleton',
        debugLabel: 'Live TV Skeleton',
      ),
      cardFocusCache: LiveTvFocusCache(),
      categoryState: categoryState,
      epgPrefetchedRows: {},
      previewState: LiveTvPreviewState(),
      featuredState: featuredState,
      timerManager: timerManager,
      categoryResources: categoryResources,
      categoryCoordinator: categoryCoordinator,
      snapshotSession: snapshotSession,
      heroCarousel: heroCarousel,
      rowTimers: LiveTvRowTimerCallbacks(
        timerManager: timerManager,
        isMounted: isMounted,
      ),
      skeletonController: LiveTvSkeletonController(
        isMounted: isMounted,
        requestRebuild: () {
          if (isMounted()) setState(() {});
        },
        getChannelProvider: () =>
            Provider.of<ChannelProvider>(context, listen: false),
        getCategoryCoordinator: () => categoryCoordinator,
        getCategoryState: () => categoryState,
      ),
      idleController: idleController,
      artworkRetry: LiveTvArtworkRetry(
        categoryState: categoryState,
        getEpgService: () =>
            Provider.of<IncrementalEpgService>(context, listen: false),
        artworkService: artworkService,
        isIdle: () => idleController.isIdle,
      ),
      focusedIndexBySection: {},
      openingPlayer: openingPlayer,
    );
  }

  static void dispose(LiveTvScreenDeps deps) {
    deps.artworkThrottle.dispose();
    deps.heroArtworkVersion.dispose();
    deps.artworkService.dispose();
    deps.idleController.stop();
    deps.skeletonController.dispose();
    deps.artworkRetry.dispose();
    deps.timerManager.cancelAll();
    deps.scrollController.dispose();
    deps.categoryResources.dispose();
    deps.focusPool.returnFocusNodes([
      'live_tv_watch',
      'live_tv_settings',
      'live_tv_featured_card',
      'live_tv_first_card',
      'live_tv_skeleton',
    ]);
    deps.cardFocusCache.dispose();
  }

  static void onFirstFrame(LiveTvScreenDeps deps) {
    if (deps.scrollController.hasClients) {
      deps.scrollController.jumpTo(0);
    }
  }
}
