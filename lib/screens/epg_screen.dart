import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:iptv_player/services/focus_pool_service.dart';
import 'package:iptv_player/state/epg_screen_state.dart';
import 'package:iptv_player/screens/epg/epg_category_helpers.dart';
import 'package:iptv_player/screens/epg/epg_channel_context_sheet.dart';
import 'package:iptv_player/screens/epg/epg_channel_page.dart';
import 'package:iptv_player/screens/epg/epg_channel_selector_dialog.dart';
import 'package:iptv_player/screens/epg/epg_focus_registry.dart';
import 'package:iptv_player/screens/epg/epg_guide_host.dart';
import 'package:iptv_player/screens/epg/epg_lifecycle.dart';
import 'package:iptv_player/screens/epg/epg_program_details_dialog.dart';
import 'package:iptv_player/screens/epg/epg_scroll_helpers.dart';
import 'package:iptv_player/screens/epg/epg_screen_actions.dart';
import 'package:iptv_player/screens/epg/epg_snapshot_session.dart';

class EPGScreen extends StatefulWidget {
  final Channel? initialChannel;
  final bool continuePlayback;
  final VoidCallback? onExit;

  const EPGScreen({
    super.key,
    this.initialChannel,
    this.continuePlayback = false,
    this.onExit,
  });

  @override
  State<EPGScreen> createState() => _EPGScreenState();
}

class _EPGScreenState extends State<EPGScreen>
    with SingleTickerProviderStateMixin, ContentFocusRegistrant {
  late final EPGScreenState _epgState;
  late AnimationController _refreshAnimationController;

  late final ScrollController _horizontalScrollController;
  late final ScrollController _timeHeaderScrollController;
  late final LinkedScrollControllerGroup _linkedScrollGroup;
  late final LinkedScrollControllerGroup _horizontalLinkedGroup;
  late final ScrollController _sidebarController;
  late final ScrollController _verticalScrollController;

  final TimerService _timerService = TimerService();
  final FocusPoolService _focusPool = FocusPoolService();

  late final FocusNode _refreshButtonFocus;
  late final FocusNode _firstCategoryFocus;
  late final FocusNode _firstChannelFocus;
  late final FocusNode _firstProgramFocus;

  final EpgChannelPageCache _channelPageCache = EpgChannelPageCache();
  List<String> _lastCategoryNames = [];
  bool _categoryPrimeRequested = false;
  DateTime? _lastCategoryPrimeAttempt;
  late final EpgFocusNodeRegistry _focusRegistry;
  late final EpgSnapshotSession _snapshotSession;
  late final EpgGuideHost _guideHost;
  List<Channel> _lastFilteredChannels = [];

  @override
  void initState() {
    super.initState();
    _epgState = EPGScreenState();
    _epgState.addListener(_handleEpgStateChanged);
    _refreshAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _horizontalLinkedGroup = LinkedScrollControllerGroup();
    _horizontalScrollController = _horizontalLinkedGroup.addAndGet();
    _timeHeaderScrollController = _horizontalLinkedGroup.addAndGet();
    _linkedScrollGroup = LinkedScrollControllerGroup();
    _sidebarController = _linkedScrollGroup.addAndGet();
    _verticalScrollController = _linkedScrollGroup.addAndGet();

    _refreshButtonFocus =
        _focusPool.getFocusNode('epg_refresh', debugLabel: 'EPG Refresh');
    _firstCategoryFocus = _focusPool.getFocusNode('epg_first_category',
        debugLabel: 'EPG First Category');
    _firstChannelFocus = _focusPool.getFocusNode('epg_first_channel',
        debugLabel: 'EPG First Channel');
    _firstProgramFocus = _focusPool.getFocusNode('epg_first_program',
        debugLabel: 'EPG First Program');
    _focusRegistry = EpgFocusNodeRegistry(
      firstChannelFocus: _firstChannelFocus,
      firstCategoryFocus: _firstCategoryFocus,
    );
    _snapshotSession = EpgSnapshotSession(
      epgState: _epgState,
      isMounted: () => mounted,
      requestRebuild: () => setState(() {}),
      getContext: () => context,
    );
    _guideHost = EpgGuideHost(
      epgState: _epgState,
      channelPageCache: _channelPageCache,
      snapshotSession: _snapshotSession,
      isMounted: () => mounted,
      onRebuild: () => setState(() {}),
      onLastCategoryNamesChanged: (names) => _lastCategoryNames = names,
      onLastFilteredChannelsChanged: (channels) =>
          _lastFilteredChannels = channels,
      sidebarController: _sidebarController,
      timeHeaderScrollController: _timeHeaderScrollController,
      horizontalScrollController: _horizontalScrollController,
      verticalScrollController: _verticalScrollController,
      refreshAnimation: _refreshAnimationController,
      firstChannelFocus: _firstChannelFocus,
      refreshButtonFocus: _refreshButtonFocus,
      firstProgramFocus: _firstProgramFocus,
      categoryFocusNodeForIndex: _categoryFocusNodeForIndex,
      channelFocusNodeForChannel: _channelFocusNodeForChannel,
      programFocusNodeForChannel: _programFocusNodeForChannel,
      onRequestNavigationFocus: requestNavigationFocus,
      onScrollChannelListToTop: _scrollChannelListToTop,
      onScrollToCurrentTime: _scrollToCurrentTime,
      onRefresh: () => unawaited(_triggerEpgRefresh()),
      onChannelLongPress: _showChannelContextMenu,
      onProgramTap: _showProgramDetails,
    );

    EpgLifecycle.startAutoRefresh(
      timerService: _timerService,
      isMounted: () => mounted,
      getContext: () => context,
    );

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    unawaited(EpgLifecycle.loadEpgData(context));
    unawaited(_primeCategories());
    unawaited(_snapshotSession.load());

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final prefs = await SharedPreferences.getInstance();
      if (!mounted) return;
      final favoritesList = prefs.getStringList('epg_favorite_channels') ?? [];
      _epgState.setEpgFavoriteChannelIds(Set.from(favoritesList));

      EpgScrollHelpers.scrollToCurrentTime(
        horizontalController: _horizontalScrollController,
        isMounted: () => mounted,
        animate: false,
      );

      _firstChannelFocus.requestFocus();
    });
  }

  Future<void> _primeCategories({bool force = false}) {
    return EpgCategoryHelpers.primeCategories(
      context: context,
      isMounted: () => mounted,
      categoryPrimeRequested: _categoryPrimeRequested,
      lastCategoryPrimeAttempt: _lastCategoryPrimeAttempt,
      force: force,
      onAttempt: (requested, attempt) {
        _categoryPrimeRequested = requested;
        _lastCategoryPrimeAttempt = attempt;
      },
      onNamesLoaded: (names) {
        if (mounted) {
          setState(() => _lastCategoryNames = names);
        }
      },
    );
  }

  FocusNode _programFocusNodeForChannel(Channel channel) =>
      _focusRegistry.programFocusNodeForChannel(channel);

  FocusNode _channelFocusNodeForChannel(Channel channel, int index) =>
      _focusRegistry.channelFocusNodeForChannel(channel, index);

  FocusNode _categoryFocusNodeForIndex(int index) =>
      _focusRegistry.categoryFocusNodeForIndex(index);

  void _scrollToCurrentTime({bool animate = true}) {
    EpgScrollHelpers.scrollToCurrentTime(
      horizontalController: _horizontalScrollController,
      isMounted: () => mounted,
      animate: animate,
    );
  }

  @override
  bool handleContentFocusRequest() {
    _firstChannelFocus.requestFocus();
    return true;
  }

  void requestFirstContentFocus() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _firstChannelFocus.requestFocus();
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    _refreshAnimationController.dispose();
    _horizontalScrollController.dispose();
    _timeHeaderScrollController.dispose();
    _verticalScrollController.dispose();

    _focusPool.returnFocusNodes(
      [
        'epg_refresh',
        'epg_first_category',
        'epg_first_channel',
        'epg_first_program'
      ],
    );
    _focusRegistry.dispose();
    _snapshotSession.dispose();
    unawaited(_snapshotSession.save(_lastFilteredChannels));
    _timerService.unregister(EpgLifecycle.autoRefreshKey);
    _epgState.removeListener(_handleEpgStateChanged);
    _epgState.dispose();
    super.dispose();
  }

  void _handleEpgStateChanged() {
    if (!mounted) return;
    setState(() {});
  }

  Future<bool> _handleBackNavigation() async {
    final onExit = widget.onExit;
    if (onExit != null) {
      onExit();
      return false;
    }
    final navigator = Navigator.of(context);
    if (navigator.canPop()) {
      context.pop();
      return false;
    }
    context.go('/home');
    return false;
  }

  void _scrollChannelListToTop() {
    EpgScrollHelpers.scrollChannelListToTop(_verticalScrollController);
  }

  Future<void> _triggerEpgRefresh() {
    return EpgScreenActions.triggerRefresh(
      context: context,
      isMounted: () => mounted,
      refreshAnimation: _refreshAnimationController,
    );
  }

  Future<void> _toggleEpgFavorite(Channel channel) {
    return EpgScreenActions.toggleFavorite(
      epgState: _epgState,
      channel: channel,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CompatPopScope(
        onWillPop: _handleBackNavigation,
        child: Consumer2<ChannelProvider, IncrementalEpgService>(
          builder: (context, channelProvider, epgService, child) {
            return _guideHost.buildBody(
              context: context,
              channelProvider: channelProvider,
              epgService: epgService,
              lastCategoryNames: _lastCategoryNames,
              lastFilteredChannels: _lastFilteredChannels,
            );
          },
        ),
      ),
    );
  }

  void _showProgramDetails(Program program) {
    unawaited(showEpgProgramDetailsDialog(
      context: context,
      program: program,
      onPlayCatchup: () => EpgScreenActions.playCatchup(
        context: context,
        program: program,
      ),
    ));
  }

  void _showChannelContextMenu(BuildContext ctx, Channel channel) {
    if (!mounted) return;
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    final hasMapping = epgService.hasManualMapping(channel.epgLookupId);

    unawaited(showEpgChannelContextSheet(
      context: context,
      channel: channel,
      isFavorite: _epgState.epgFavoriteChannelIds.contains(channel.id),
      hasMapping: hasMapping,
      currentMapping: hasMapping
          ? epgService.getManualMapping(channel.epgLookupId)
          : null,
      onToggleFavorite: () => unawaited(_toggleEpgFavorite(channel)),
      onMatchEpg: () => _showEpgChannelSelector(channel),
      onRemoveMapping: () => unawaited(_removeEpgMapping(channel)),
    ));
  }

  void _showEpgChannelSelector(Channel channel) {
    if (!mounted) return;
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);

    unawaited(showEpgChannelSelectorDialog(
      context: context,
      channel: channel,
      epgService: epgService,
      onMappingSelected: (epgChannelId) =>
          unawaited(_setEpgMapping(channel, epgChannelId)),
    ));
  }

  Future<void> _setEpgMapping(Channel channel, String epgChannelId) {
    return EpgScreenActions.setMapping(
      context: context,
      isMounted: () => mounted,
      channel: channel,
      epgChannelId: epgChannelId,
      onChanged: () => setState(() {}),
    );
  }

  Future<void> _removeEpgMapping(Channel channel) {
    return EpgScreenActions.removeMapping(
      context: context,
      isMounted: () => mounted,
      channel: channel,
      onChanged: () => setState(() {}),
    );
  }
}
