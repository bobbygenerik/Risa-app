import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/jank_monitor.dart';
import 'package:iptv_player/screens/live_tv/live_tv_bindings_builder.dart';
import 'package:iptv_player/screens/live_tv/live_tv_bootstrap.dart';
import 'package:iptv_player/screens/live_tv/live_tv_epg_batch.dart';
import 'package:iptv_player/screens/live_tv/live_tv_epg_mapping_actions.dart';
import 'package:iptv_player/screens/live_tv/live_tv_focus_actions.dart';
import 'package:iptv_player/screens/live_tv/live_tv_initial_focus.dart';
import 'package:iptv_player/screens/live_tv/live_tv_player_launcher.dart';
import 'package:iptv_player/screens/live_tv/live_tv_resume_refresh.dart';
import 'package:iptv_player/screens/live_tv/live_tv_route_hooks.dart';
import 'package:iptv_player/screens/live_tv/live_tv_row_builders.dart';
import 'package:iptv_player/screens/live_tv/live_tv_screen_config.dart';
import 'package:iptv_player/screens/live_tv/live_tv_screen_content.dart';
import 'package:iptv_player/screens/live_tv/live_tv_screen_deps.dart';
import 'package:iptv_player/screens/live_tv/live_tv_scroll_navigation.dart';
import 'package:iptv_player/screens/live_tv/live_tv_scroll_prefetch.dart';

/// Live TV: hero for the current program plus channel rows.
class LiveTVScreen extends StatefulWidget {
  const LiveTVScreen({super.key});

  @override
  State<LiveTVScreen> createState() => _LiveTVScreenState();
}

class _LiveTVScreenState extends State<LiveTVScreen>
    with
        AutomaticKeepAliveClientMixin<LiveTVScreen>,
        ContentFocusRegistrant<LiveTVScreen>,
        WidgetsBindingObserver {
  late final LiveTvScreenDeps _deps;

  LiveTvRowBuilders get _rows => LiveTvRowBuilders(
        deps: _deps,
        bindings: _bindingsBuilder.build(),
        onWatchChannel: _openChannelPlayer,
        onPrefetchRowArtwork: _prefetchRowArtworkForChannels,
      );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _deps = LiveTvBootstrap.create(
      context: context,
      isMounted: () => mounted,
      setState: setState,
      prefetchEpgForRow: _prefetchEpgForRow,
      prefetchRowArtwork: _prefetchRowArtworkForChannels,
    );
    _deps.scrollController.addListener(_handleScrollPrefetch);
    unawaited(_deps.snapshotSession.load());
    FocusManager.instance.addListener(_handleFocusChange);
    _deps.idleController.start();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      LiveTvBootstrap.onFirstFrame(_deps);
      _requestInitialFocus();
      _requestCategoryPrefetch();
      _deps.heroCarousel.startRotation();
    });
  }

  LiveTvBindingsBuilder get _bindingsBuilder => LiveTvBindingsBuilder(
        deps: _deps,
        context: context,
        isMounted: () => mounted,
        requestNavigationFocus: requestNavigationFocus,
        onOpenPlayer: _openChannelPlayer,
        onShowEpgSelector: _showEpgChannelSelector,
      );

  void _prefetchEpgForRow(String category, List<Channel> channels) {
    LiveTvEpgBatch.prefetchCategoryRow(
      category: category,
      channels: channels,
      prefetchedCategories: _deps.epgPrefetchedRows,
      isMounted: () => mounted,
      getEpgService: () => context.read<IncrementalEpgService>(),
    );
  }

  void _prefetchRowArtworkForChannels(List<Channel> channels, {int limit = 6}) {
    _deps.artworkPrefetcher.prefetchRowArtworkForChannels(
      channels,
      context.read<IncrementalEpgService>(),
      limit: limit,
    );
  }

  void _requestInitialFocus({bool force = false}) {
    if (!force && _deps.initialFocusRequested) return;
    _deps.initialFocusRequested = true;
    _tryInitialFocus();
  }

  void _markSkeletonVisibility(bool showing) {
    _deps.skeletonController.markVisibility(showing);
    if (!showing) {
      _requestInitialFocus(force: true);
    }
  }

  void _tryInitialFocus() {
    LiveTvInitialFocus.request(
      isMounted: () => mounted,
      watchButtonFocus: _deps.watchButtonFocus,
      firstFeaturedFocus: _deps.firstFeaturedFocus,
      firstChannelFocus: _deps.firstChannelFocus,
      skeletonFocus: _deps.skeletonFocus,
      retry: _tryInitialFocus,
    );
  }

  void _requestCategoryPrefetch() {
    final s = _deps.categoryState;
    if (s.prefetchRequested || s.names.isNotEmpty || s.loading) return;
    s.prefetchRequested = true;
    unawaited(_deps.categoryCoordinator.prefetchInitialRows());
  }

  void _handleFocusChange() => _deps.idleController.markInteraction();

  void _handleScrollPrefetch() {
    LiveTvScrollPrefetch.handle(
      scrollController: _deps.scrollController,
      categoryState: _deps.categoryState,
      coordinator: _deps.categoryCoordinator,
      context: context,
      onUserScroll: () {
        _deps.userHasScrolled = true;
        _deps.idleController.markInteraction();
      },
      setState: (fn) => setState(fn),
      safeScrollOffset: LiveTvScrollNavigation.safeOffset(_deps.scrollController),
      categoryPrefetchExtent: LiveTvScreenConfig.categoryPrefetchExtent,
      categoryChunkSize: LiveTvScreenConfig.categoryChunkSize,
      prefetchWindowRows: LiveTvScreenConfig.prefetchWindowRows,
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    FocusManager.instance.removeListener(_handleFocusChange);
    LiveTvBootstrap.dispose(_deps);
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  void _replaceCategories(List<String> categories) {
    _deps.categoryCoordinator.replaceCategories(categories);
    _deps.artworkRetry.start();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Returning from VLC keeps Live TV mounted; heavy refresh ANRs SHIELD.
      if (LiveTvPlayerLauncher.returningFromExternalPlayback) {
        LiveTvPlayerLauncher.clearExternalPlaybackFlag();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Future.delayed(const Duration(milliseconds: 2000), () {
            if (!mounted) return;
            _requestCategoryPrefetch();
          });
        });
        return;
      }
      LiveTvResumeRefresh.refresh(
        channelProvider: context.read<ChannelProvider>(),
        categoryState: _deps.categoryState,
        requestCategoryPrefetch: _requestCategoryPrefetch,
      );
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final provider = context.read<ChannelProvider>();
    LiveTvRouteHooks.handleDependencyCategories(
      provider: provider,
      categoryState: _deps.categoryState,
      isMounted: () => mounted,
      onEmptyCategories: (count) => LiveTvRouteHooks.maybeRefreshEmptyCategories(
        channelCount: count,
        categoryState: _deps.categoryState,
        requestCategoryPrefetch: _requestCategoryPrefetch,
      ),
      onReplace: _replaceCategories,
      requestRebuild: () => setState(() {}),
    );
    final routePath = GoRouterState.of(context).uri.path;
    final previousRoute = _deps.lastRoutePath;
    if (previousRoute == routePath) return;
    _deps.lastRoutePath = routePath;
    if (routePath == '/home') {
      final returningFromPlayer = previousRoute == '/player';
      if (returningFromPlayer) {
        _deps.suspendHeroBackground = false;
        _deps.artworkService.restoreAfterPlayback();
        JankMonitor.instance.mark('returned from player');
        if (mounted) setState(() {});
      }
      LiveTvRouteHooks.handleHomeRouteReturn(
        provider: provider,
        categoryState: _deps.categoryState,
        categoryResources: _deps.categoryResources,
        scrollController: _deps.scrollController,
        isMounted: () => mounted,
        resetRowScrolls: _resetRowScrollOffsets,
        resetInitialFocus: () {
          _deps.initialFocusRequested = false;
          _requestInitialFocus();
        },
        requestCategoryPrefetch: _requestCategoryPrefetch,
        returningFromPlayer: returningFromPlayer,
      );
    }
  }

  void _resetRowScrollOffsets() {
    for (final c in _deps.categoryResources.rowScrollControllers.values) {
      if (c.hasClients) c.jumpTo(0);
    }
  }

  @override
  bool handleContentFocusRequest() {
    if (!mounted) return false;
    return LiveTvFocusActions.focusPrimaryAction(
      channelProvider: context.read<ChannelProvider>(),
      settingsButtonFocus: _deps.settingsButtonFocus,
      firstChannelFocus: _deps.firstChannelFocus,
      watchButtonFocus: _deps.watchButtonFocus,
    );
  }

  void _goToSettings() {
    if (!mounted) return;
    context.go('/settings');
  }

  Future<void> _openChannelPlayer(Channel channel) async {
    if (_deps.openingPlayer.value) return;
    await LiveTvPlayerLauncher.open(
      context: context,
      channel: channel,
      artworkService: _deps.artworkService,
      categoryState: _deps.categoryState,
      categoryCoordinator: _deps.categoryCoordinator,
      timerManager: _deps.timerManager,
      isMounted: () => mounted,
      setSuspendHeroBackground: (v) => _deps.suspendHeroBackground = v,
      setOpeningPlayer: (v) => _deps.openingPlayer.value = v,
      startFeaturedRotation: _deps.heroCarousel.startRotation,
    );
  }

  void _showEpgChannelSelector(Channel channel) {
    LiveTvEpgMappingActions.showAndApply(
      context: context,
      channel: channel,
      epgService: context.read<IncrementalEpgService>(),
      isMounted: () => mounted,
      onChanged: () {
        if (mounted) setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // Don't reclaim card focus while the nav rail is expanded — the user has
    // moved to the sidebar, and the kept-alive rebuilds would otherwise steal
    // focus back to the cards during a transient-null frame.
    final navExpanded =
        ContentFocusProvider.maybeOf(context)?.isNavExpanded ?? false;
    LiveTvFocusActions.restoreCardFocusIfMissing(
      lastFocusedCardKey: _deps.lastFocusedCardKey,
      cardFocusCache: _deps.cardFocusCache,
      isMounted: () => mounted,
      suppress: navExpanded,
    );
    final shouldScrollFirst =
        LiveTvScrollNavigation.shouldScrollToTopFirst(_deps.scrollController);
    return PopScope(
      canPop: !shouldScrollFirst,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop || !shouldScrollFirst) return;
        unawaited(_deps.scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
        ));
      },
      child: Container(
        decoration: const BoxDecoration(color: AppColors.background),
        child: LiveTvScreenContent(
          categoryState: _deps.categoryState,
          categoryCoordinator: _deps.categoryCoordinator,
          skeletonController: _deps.skeletonController,
          previewState: _deps.previewState,
          featuredState: _deps.featuredState,
          timerManager: _deps.timerManager,
          artworkService: _deps.artworkService,
          artworkResolver: _deps.artworkResolver,
          heroCandidateCache: _deps.heroCandidateCache,
          programTypeRowCache: _deps.programTypeRowCache,
          scrollController: _deps.scrollController,
          skeletonFocus: _deps.skeletonFocus,
          settingsButtonFocus: _deps.settingsButtonFocus,
          isMounted: () => mounted,
          onReplaceCategories: _replaceCategories,
          onRequestCategoryPrefetch: _requestCategoryPrefetch,
          onMaybeRefreshCategories: (count) =>
              LiveTvRouteHooks.maybeRefreshEmptyCategories(
            channelCount: count,
            categoryState: _deps.categoryState,
            requestCategoryPrefetch: _requestCategoryPrefetch,
          ),
          onMarkSkeletonVisibility: _markSkeletonVisibility,
          onGoToSettings: _goToSettings,
          onEnsureEpgForChannels: LiveTvEpgBatch.ensureChannelsForPreview,
          onInvalidateCaches: () {
            if (!mounted) return;
            // Gate on the EPG data revision: this callback is re-armed by the
            // preview body on every build, including builds caused by the
            // setState below, so without the gate it cleared and rescanned all
            // program-type rows (~7k getCurrentProgram calls x 11 rows) every
            // 600ms forever.
            final revision = context.read<IncrementalEpgService>().dataRevision;
            if (!_deps.programTypeRowCache.shouldRefreshFor(revision)) return;
            setState(() {
              _deps.heroCandidateCache.invalidate();
              // No rows.clear() here: ensureFresh diffs row memberships during
              // the rebuild and evicts only rows that actually changed, so
              // unchanged rows keep their widget instances and skip rebuild.
              _deps.programTypeRowCache.invalidate();
            });
          },
          buildHero: (ctx, featured, channels, _) =>
              _rows.fullScreenHero(ctx, featured, channels),
        ),
      ),
    );
  }
}
