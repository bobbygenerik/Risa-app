import 'package:flutter/material.dart';
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
import 'package:iptv_player/screens/live_tv/live_tv_preview_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_program_type_row_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_row_timer_callbacks.dart';
import 'package:iptv_player/screens/live_tv/live_tv_skeleton_controller.dart';
import 'package:iptv_player/screens/live_tv/live_tv_opening_player_flag.dart';
import 'package:iptv_player/screens/live_tv/live_tv_snapshot_session.dart';
import 'package:iptv_player/screens/live_tv/timer_manager.dart';
import 'package:iptv_player/services/focus_pool_service.dart';
import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/services/timer_service.dart';

/// Owned services, controllers, and focus nodes for [LiveTVScreen].
class LiveTvScreenDeps {
  LiveTvScreenDeps({
    required this.timerService,
    required this.focusPool,
    required this.scrollController,
    required this.artworkService,
    required this.artworkPrefetcher,
    required this.artworkResolver,
    required this.artworkThrottle,
    required this.heroArtworkVersion,
    required this.cardArtworkVersion,
    required this.heroCandidateCache,
    required this.programTypeRowCache,
    required this.watchButtonFocus,
    required this.settingsButtonFocus,
    required this.firstChannelFocus,
    required this.firstFeaturedFocus,
    required this.skeletonFocus,
    required this.cardFocusCache,
    required this.categoryState,
    required this.epgPrefetchedRows,
    required this.previewState,
    required this.featuredState,
    required this.timerManager,
    required this.categoryResources,
    required this.categoryCoordinator,
    required this.snapshotSession,
    required this.heroCarousel,
    required this.rowTimers,
    required this.skeletonController,
    required this.idleController,
    required this.artworkRetry,
    required this.focusedIndexBySection,
    required this.openingPlayer,
  });

  final LiveTvOpeningPlayerFlag openingPlayer;

  final TimerService timerService;
  final FocusPoolService focusPool;
  final ScrollController scrollController;
  final LiveTvArtworkService artworkService;
  final LiveTvArtworkPrefetcher artworkPrefetcher;
  final LiveTvArtworkResolver artworkResolver;
  final LiveTvArtworkUpdateThrottle artworkThrottle;
  final ValueNotifier<int> heroArtworkVersion;
  final ValueNotifier<int> cardArtworkVersion;
  final LiveTvHeroCandidateCache heroCandidateCache;
  final LiveTvProgramTypeRowCache programTypeRowCache;
  final FocusNode watchButtonFocus;
  final FocusNode settingsButtonFocus;
  final FocusNode firstChannelFocus;
  final FocusNode firstFeaturedFocus;
  final FocusNode skeletonFocus;
  final LiveTvFocusCache cardFocusCache;
  final LiveTvCategoryState categoryState;
  final Set<String> epgPrefetchedRows;
  final LiveTvPreviewState previewState;
  final LiveTvFeaturedState featuredState;
  final LiveTvTimerManager timerManager;
  final LiveTvCategoryResourceStore categoryResources;
  final LiveTvCategoryCoordinator categoryCoordinator;
  final LiveTvSnapshotSession snapshotSession;
  final LiveTvHeroCarousel heroCarousel;
  final LiveTvRowTimerCallbacks rowTimers;
  final LiveTvSkeletonController skeletonController;
  final LiveTvIdleController idleController;
  final LiveTvArtworkRetry artworkRetry;
  final Map<String, int> focusedIndexBySection;

  String? lastFocusedCardKey;
  bool initialFocusRequested = false;
  bool userHasScrolled = false;
  String? lastRoutePath;
  bool suspendHeroBackground = false;

  void scheduleSnapshotSave() => snapshotSession.scheduleSave();
}
