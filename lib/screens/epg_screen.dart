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
  final Map<String, FocusNode> _programFocusNodes = {};
  final Queue<String> _programFocusOrder = Queue<String>();
  static const int _maxProgramFocusNodes = 400;
  final Map<String, FocusNode> _channelFocusNodes = {};
  final Queue<String> _channelFocusOrder = Queue<String>();
  static const int _maxChannelFocusNodes = 400;
  // Category focus nodes for smooth D-pad navigation
  final Map<int, FocusNode> _categoryFocusNodes = {};
  static const int _maxCategoryFocusNodes = 100;
  static const String _epgSnapshotKey = 'epg_snapshot_v2';
  static const Duration _epgSnapshotTtl = Duration(hours: 6);
  static const int _epgSnapshotChannelLimit = 60;
  bool _snapshotApplied = false;
  Timer? _snapshotSaveDebounce;
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

      // Scroll to current time position (no animation for initial load)
      _scrollToCurrentTime(animate: false);

      // Ensure we have focus
      _firstChannelFocus.requestFocus();
    });
  }

  Future<void> _loadEpgData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      if (!mounted) return;

      final epgService =
          Provider.of<IncrementalEpgService>(context, listen: false);
      if (!epgService.hasUsableData) {
        unawaited(epgService.quickStart());
      }
      final epgUrl =
          prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');

      if (epgUrl != null && epgUrl.isNotEmpty && !epgService.isLoading) {
        debugLog('EPG Screen: Found EPG URL - initializing service');
        // If we have very few loaded channels compared to available, force a reload
        final loadedCount = epgService.loadedProgramChannelCount;
        final availableCount = epgService.availableChannels.length;
        if (loadedCount < 50 && availableCount > 100) {
          debugLog(
              'EPG Screen: Data sparse ($loadedCount/$availableCount loaded) - forcing refresh');
          unawaited(epgService.forceRefresh());
        } else {
          unawaited(epgService.initialize());
        }
      }
    } catch (e) {
      debugLog('EPG Screen: Failed to auto-initialize EPG: $e');
    }
  }

  Future<String?> _readPlaylistIdentity() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString('active_playlist_id') ??
          prefs.getString('m3u_url') ??
          prefs.getString('xtream_server');
    } catch (e) {
      debugLog('EPGScreen: readPlaylistIdentity failed: $e');
      return null;
    }
  }

  Future<void> _loadEpgSnapshot() async {
    if (_snapshotApplied) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_epgSnapshotKey);
      if (raw == null || raw.isEmpty) return;
      final decoded = jsonDecode(raw);
      if (decoded is! Map<String, dynamic>) return;
      final savedAt = decoded['savedAt'] as int?;
      if (savedAt == null) return;
      final age = DateTime.now()
          .difference(DateTime.fromMillisecondsSinceEpoch(savedAt));
      if (age > _epgSnapshotTtl) return;
      final playlistId = decoded['playlistId'] as String?;
      final snapshotChannelCount = decoded['channelCount'] as int?;
      final currentPlaylistId = await _readPlaylistIdentity();
      if (!mounted) return;
      if (playlistId != null &&
          currentPlaylistId != null &&
          playlistId != currentPlaylistId) {
        return;
      }
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      if (snapshotChannelCount != null &&
          provider.channelCount > 0 &&
          (snapshotChannelCount - provider.channelCount).abs() >
              math.max(20, (provider.channelCount * 0.1).round())) {
        return;
      }
      final channelsRaw = decoded['channels'];
      if (channelsRaw is! List) return;
      final selectedCategory = decoded['selectedCategory'] as String?;
      final favoriteIdsRaw = decoded['favoriteIds'];
      final favoriteIds = <String>{};
      if (favoriteIdsRaw is List) {
        for (final id in favoriteIdsRaw) {
          if (id is String && id.isNotEmpty) favoriteIds.add(id);
        }
      }
      final channels = <Channel>[];
      final programSnapshot = <String, List<Program>>{};
      for (final c in channelsRaw) {
        if (c is! Map<String, dynamic>) continue;
        final id = (c['id'] as String?) ?? '';
        final name = (c['name'] as String?) ?? '';
        final url = (c['url'] as String?) ?? '';
        if (id.isEmpty || name.isEmpty || url.isEmpty) continue;
        final channel = Channel(
          id: id,
          name: name,
          url: url,
          logoUrl: c['logoUrl'] as String?,
          groupTitle: c['groupTitle'] as String?,
          tvgId: c['tvgId'] as String?,
          channelNumber: c['channelNumber'] as int?,
          attributes: c['attributes'] is Map
              ? Map<String, String>.from(c['attributes'] as Map)
              : null,
          language: c['language'] as String?,
          country: c['country'] as String?,
        );
        channels.add(channel);
        final programsRaw = c['programs'];
        if (programsRaw is List) {
          final epgId = channel.epgLookupId;
          final programs = <Program>[];
          for (final p in programsRaw) {
            if (p is! Map<String, dynamic>) continue;
            final startTs = p['startTs'] as int? ?? 0;
            final endTs = p['endTs'] as int? ?? 0;
            if (startTs == 0 || endTs == 0) continue;
            final title = (p['title'] as String?) ?? '';
            if (title.isEmpty) continue;
            programs.add(Program(
              id: '${epgId}_$startTs',
              channelId: epgId,
              title: title,
              description: p['description'] as String?,
              startTime: DateTime.fromMillisecondsSinceEpoch(startTs),
              endTime: DateTime.fromMillisecondsSinceEpoch(endTs),
              imageUrl: p['imageUrl'] as String?,
            ));
          }
          if (programs.isNotEmpty) {
            programSnapshot[epgId] = programs;
          }
        }
      }
      if (channels.isEmpty) return;

      _snapshotApplied = true;
      if (selectedCategory != null && selectedCategory.isNotEmpty) {
        _epgState.setSelectedCategory(selectedCategory);
      }
      if (favoriteIds.isNotEmpty) {
        _epgState.setEpgFavoriteChannelIds(favoriteIds);
      }
      if (programSnapshot.isNotEmpty) {
        final epgService =
            Provider.of<IncrementalEpgService>(context, listen: false);
        epgService.applyProgramSnapshot(programSnapshot);
      }
      if (mounted) {
        setState(() {});
      }
    } catch (e) {
      debugLog('EPGScreen: loadEpgSnapshot failed: $e');
    }
  }

  void _scheduleSnapshotSave(List<Channel> channels) {
    if (channels.isEmpty) return;
    _snapshotSaveDebounce?.cancel();
    _snapshotSaveDebounce =
        Timer(const Duration(seconds: 3), () => _saveEpgSnapshot(channels));
  }

  List<Program> _snapshotProgramsForChannel(
    Channel channel,
    IncrementalEpgService epgService,
  ) {
    final channelId = channel.epgLookupId;
    final programs = epgService.getProgramsForChannel(
      channelId,
      channelName: channel.epgLookupNameFallback,
      groupTitle: channel.groupTitle,
    );
  }

  Future<void> _saveEpgSnapshot(List<Channel> channels) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final playlistId = await _readPlaylistIdentity();
      if (!mounted) return;
      final epgService =
          Provider.of<IncrementalEpgService>(context, listen: false);
      final payload = <Map<String, dynamic>>[];
      for (final channel in channels.take(_epgSnapshotChannelLimit)) {
        final programs = _snapshotProgramsForChannel(channel, epgService);
        final programPayload = programs
            .map((program) => {
                  'startTs': program.startTime.millisecondsSinceEpoch,
                  'endTs': program.endTime.millisecondsSinceEpoch,
                  'title': program.title,
                  'description': program.description,
                  'imageUrl': program.imageUrl,
                })
            .toList();
        payload.add({
          'id': channel.id,
          'name': channel.name,
          'url': channel.url,
          'logoUrl': channel.logoUrl,
          'groupTitle': channel.groupTitle,
          'tvgId': channel.tvgId,
          'channelNumber': channel.channelNumber,
          if (channel.attributes != null && channel.attributes!.isNotEmpty)
            'attributes': channel.attributes,
          'language': channel.language,
          'country': channel.country,
          if (programPayload.isNotEmpty) 'programs': programPayload,
        });
      }
      if (payload.isEmpty) return;
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      final snapshot = {
        'savedAt': DateTime.now().millisecondsSinceEpoch,
        'playlistId': playlistId,
        'channelCount': provider.channelCount,
        'selectedCategory': _epgState.selectedCategory,
        'favoriteIds': _epgState.epgFavoriteChannelIds.toList(),
        'channels': payload,
      };
      await prefs.setString(_epgSnapshotKey, jsonEncode(snapshot));
    } catch (e) {
      debugLog('EPGScreen: saveEpgSnapshot failed: $e');
    }
  }

  FocusNode _channelFocusNodeForChannel(Channel channel, int index) =>
      _focusRegistry.channelFocusNodeForChannel(channel, index);

  void _ensureInitialCategorySelection(List<String> categoryNames) {
    if (!mounted || categoryNames.isEmpty) return;
    final selectedCategory = _epgState.selectedCategory;
    final hasFavorites = _epgState.epgFavoriteChannelIds.isNotEmpty &&
        categoryNames.contains('⭐ Favorites');
    final hasSelectedCategory =
        selectedCategory != null && categoryNames.contains(selectedCategory);
    if (hasSelectedCategory) return;
    if (selectedCategory == '⭐ Favorites' && !hasFavorites) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _epgState.setSelectedCategory(categoryNames.first);
      });
      return;
    }
    if (selectedCategory == null && categoryNames.first == '⭐ Favorites') {
      final fallback = categoryNames.length > 1 ? categoryNames[1] : null;
      if (fallback == null) return;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || _epgState.selectedCategory != null) return;
        _epgState.setSelectedCategory(fallback);
      });
      return;
    }
    if (selectedCategory == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || _epgState.selectedCategory != null) return;
        _epgState.setSelectedCategory(categoryNames.first);
      });
    }
  }

  FocusNode _programFocusNodeForChannel(Channel channel) {
    final key = _focusKeyForChannel(channel);
    final existing = _programFocusNodes[key];
    if (existing != null) return existing;
    final node = FocusNode(debugLabel: 'EPGProgram:$key');
    _programFocusNodes[key] = node;
    _programFocusOrder.addLast(key);
    while (_programFocusOrder.length > _maxProgramFocusNodes) {
      final removedKey = _programFocusOrder.removeFirst();
      final removedNode = _programFocusNodes.remove(removedKey);
      removedNode?.dispose();
    }
    return node;
  }

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

  /// Scroll the channel list back to the top when category changes
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
            final hasChannels = channelProvider.hasChannels;

            if (!hasChannels) {
              return _buildEmptyState(context);
            }

            // Get category names (lightweight - no channel grouping)
            // Use cached categories if available, don't trigger expensive recomputation
            final rawCategories = channelProvider.getAllCategoryNames();
            if (rawCategories.isNotEmpty) {
              _lastCategoryNames = List<String>.from(rawCategories);
            }

            final effectiveCategories =
                rawCategories.isNotEmpty ? rawCategories : _lastCategoryNames;
            // Don't show loading spinner if we have cached categories
            final isCategoryLoading = effectiveCategories.isEmpty &&
                channelProvider.hasChannels &&
                channelProvider.isGroupingChannels;

            final seen = <String>{};
            final categoryList = <String>[];
            for (final name in effectiveCategories) {
              final trimmed = name.trim();
              if (trimmed.isEmpty || trimmed == '⭐ Favorites') continue;
              if (seen.add(trimmed)) categoryList.add(trimmed);
            }
            if (categoryList.isEmpty && channelProvider.hasChannels) {
              final preview = channelProvider.getFilteredChannels(limit: 200);
              for (final channel in preview) {
                final trimmed = (channel.groupTitle ?? '').trim();
                final name = trimmed.isEmpty ? 'Uncategorized' : trimmed;
                if (seen.add(name)) categoryList.add(name);
              }
              categoryList.remove('⭐ Favorites');
              if (seen.contains('Uncategorized') &&
                  !categoryList.contains('Uncategorized')) {
                categoryList.add('Uncategorized');
              }
            }
            final categoryNames = [
              '⭐ Favorites',
              ...categoryList
            ]; // Favorites first, then categories
            _ensureInitialCategorySelection(categoryNames);
            final showCenteredUpdating =
                isCategoryLoading && categoryList.isEmpty;

            final channelPageFuture = _ensureChannelPageFuture(channelProvider);
            return FutureBuilder<List<Channel>>(
              future: channelPageFuture,
              builder: (context, snapshot) {
                final fallbackChannels = _lastFilteredChannels;
                if (snapshot.hasError) {
                  if (fallbackChannels.isEmpty) {
                    return _buildLoadingErrorState(snapshot.error);
                  }
                }
                if (!snapshot.hasData) {
                  if (fallbackChannels.isNotEmpty) {
                    return _buildGuideContent(
                      context,
                      categoryNames,
                      fallbackChannels,
                      hasMore: false,
                      allFilteredChannels: fallbackChannels,
                      epgService: epgService,
                      isCategoryLoading: isCategoryLoading,
                      showCenteredUpdating: showCenteredUpdating,
                    );
                  }
                  return const Center(
                      child: CircularProgressIndicator(
                          color: AppTheme.primaryBlue));
                }
                final pageSize = _epgState.channelsPerPage;
                final expected = (_epgState.currentPage + 1) * pageSize;
                final rawChannels = snapshot.data!;
                final hasMore = rawChannels.length > expected;
                final allFilteredChannels = rawChannels.take(expected).toList();
                _scheduleSnapshotSave(allFilteredChannels);

                // Use the fresh data directly for this frame
                final filteredChannels = allFilteredChannels;

                // Update the local tracker for dispose-time saving without triggering rebuilds
                _lastFilteredChannels = allFilteredChannels;

                // Calculate header height for offset
                return _buildGuideContent(
                  context,
                  categoryNames,
                  filteredChannels,
                  hasMore: hasMore,
                  allFilteredChannels: allFilteredChannels,
                  epgService: epgService,
                  isCategoryLoading: isCategoryLoading,
                  showCenteredUpdating: showCenteredUpdating,
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.darkBackground,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.spacingXl(),
              vertical: context.spacingXl(),
            ),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.05 * 255).round()),
              borderRadius: BorderRadius.circular(AppSpacing.radiusXl),
              border: Border.all(
                color: Colors.white.withAlpha((0.12 * 255).round()),
                width: 1,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(context.spacingLg()),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [
                        AppTheme.primaryBlue,
                        AppTheme.accentPink,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:
                            AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: const Icon(
                    AppIcons.tvOff,
                    size: 42,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: AppSizes.xl),
                Text(
                  'Guide Not Set Up',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.xl),
                BrandPrimaryButton(
                  icon: AppIcons.add,
                  label: 'Add Playlist',
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.xl,
                    vertical: AppSizes.md,
                  ),
                  onPressed: () => context.go('/settings'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingErrorState(Object? error) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.darkBackground,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Container(
            padding: const EdgeInsets.all(AppSizes.xl),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.05 * 255).round()),
              borderRadius: BorderRadius.circular(AppSpacing.radiusXl),
              border: Border.all(
                color: Colors.white.withAlpha((0.12 * 255).round()),
                width: 1,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  AppIcons.warning,
                  size: 42,
                  color: AppTheme.accentRed,
                ),
                const SizedBox(height: AppSizes.lg),
                Text(
                  'Guide Failed To Load',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.md),
                Text(
                  '${error ?? 'Unknown error'}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: AppSizes.xl),
                BrandPrimaryButton(
                  icon: AppIcons.refresh,
                  label: 'Retry',
                  onPressed: () {
                    setState(() {
                      _channelPageFuture = null;
                      _channelPageKey = '';
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGuideContent(
    BuildContext context,
    List<String> categoryNames,
    List<Channel> filteredChannels, {
    required bool hasMore,
    required List<Channel> allFilteredChannels,
    required IncrementalEpgService epgService,
    required bool isCategoryLoading,
    required bool showCenteredUpdating,
  }) {
    const headerHeight =
        AppSpacing.epgRowHeight + 4.0; // Match row height + gap

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF080808),
            AppTheme.darkBackground,
          ],
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: headerHeight),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: AppSpacing.sidebarCollapsedWidth),
                  child: Row(
                    children: [
                      _buildCategorySidebar(
                        categoryNames,
                        isLoading: isCategoryLoading,
                        showCenteredUpdating: showCenteredUpdating,
                      ),
                      SizedBox(
                        width: context.channelSidebarWidth(),
                        child: _buildChannelColumn(
                          filteredChannels,
                          categoryNames,
                          hasMore,
                        ),
                      ),
                      Expanded(
                        child: _buildProgramGrid(
                          filteredChannels,
                          epgService,
                          allFilteredChannels,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: AppSpacing.sidebarCollapsedWidth,
            right: 0,
            child: _buildHeader(epgService),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(IncrementalEpgService epgService) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left side - Guide title
          Row(
            children: [
              context.iconMd(AppIcons.dvr, color: AppTheme.primaryBlue),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Guide',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                        ),
                  ),
                  Text(
                    DateFormat('EEEE, MMM dd').format(_epgState.selectedDate),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white.withValues(alpha: 0.7),
                          decoration: TextDecoration.none,
                        ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          // Right side - Now and Refresh buttons
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Now button
              Container(
                decoration: BoxDecoration(
                  color: AppTheme.darkBackgroundOpacity(0.3),
                  borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                ),
                child: IconButton(
                  onPressed: _scrollToCurrentTime,
                  icon: context.timeIcon(),
                  color: AppTheme.primaryBlue,
                  tooltip: 'Jump to Now',
                ),
              ),
              const SizedBox(width: 8),
              // Refresh button
              Focus(
                onKeyEvent: (node, event) {
                  if (event is KeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.arrowDown) {
                    _firstProgramFocus.requestFocus();
                    return KeyEventResult.handled;
                  }
                  return KeyEventResult.ignored;
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.darkBackgroundOpacity(0.3),
                    borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                  ),
                  child: IconButton(
                    focusNode: _refreshButtonFocus,
                    onPressed: epgService.isLoading
                        ? null
                        : () {
                            // Clear image failure cache to retry blocked logos
                            ImageFailureCache.clear();
                            unawaited(_triggerEpgRefresh());
                          },
                    icon: AnimatedBuilder(
                      animation: _refreshAnimationController,
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: epgService.isLoading
                              ? _refreshAnimationController.value * 2 * 3.14159
                              : 0,
                          child: Icon(
                            AppIcons.refresh,
                            size: 18,
                            color: epgService.isLoading
                                ? AppTheme.primaryBlue
                                : Colors.white.withValues(alpha: 0.8),
                          ),
                        );
                      },
                    ),
                    tooltip: 'Refresh EPG',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySidebar(
    List<String> categories, {
    bool isLoading = false,
    bool showCenteredUpdating = false,
  }) {
    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
    return Container(
      width: context.categoryBarWidth(),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  key: const PageStorageKey<String>('epg_category_list'),
                  physics: const BouncingScrollPhysics(),
                  primary: false,
                  itemExtent: rowHeight + rowGap,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return _buildCategoryItem(
                      name: category,
                      isSelected: _epgState.selectedCategory == category,
                      index: index,
                      onTap: () {
                        _epgState.setSelectedCategory(category);
                        // Scroll channel list to top
                        _scrollChannelListToTop();
                        // Restore focus to first channel after list rebuilds
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (mounted) {
                            _firstChannelFocus.requestFocus();
                          }
                        });
                      },
                    );
                  },
                ),
                if (showCenteredUpdating)
                  IgnorePointer(
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 14,
                            height: 14,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color:
                                  AppTheme.primaryBlue.withValues(alpha: 0.9),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Updating',
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.6),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem({
    required String name,
    required bool isSelected,
    required VoidCallback onTap,
    required int index,
  }) {
    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
    return Focus(
      focusNode: _categoryFocusNodeForIndex(index),
      canRequestFocus: true,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter) {
            onTap();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
            // Let focus traversal find the nearest channel to the right
            return KeyEventResult.ignored;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            requestNavigationFocus();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: Builder(builder: (context) {
        final bool isFocused = Focus.of(context).hasFocus;
        return GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.opaque,
          child: AnimatedScale(
            duration: const Duration(milliseconds: 90),
            curve: Curves.easeOut,
            scale: isFocused ? 1.05 : 1.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 120),
              curve: Curves.easeOut,
              height: rowHeight,
              margin: EdgeInsets.only(
                left: context.spacingXs(),
                right: context.spacingXs(),
                bottom: rowGap,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: context.spacingXs(),
              ),
              decoration: BoxDecoration(
                color: (isFocused || isSelected)
                    ? const Color(0xFF2a2a3e).withValues(alpha: 0.85)
                    : const Color(0xFF2a2a3e).withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(8),
                border: isFocused
                    ? Border.all(color: AppTheme.focusBorder, width: 2)
                    : Border.all(
                        color: Colors.white.withValues(alpha: 0.1), width: 1),
              ),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    color: isFocused || isSelected
                        ? Colors.white
                        : Colors.white.withValues(alpha: 0.7),
                    fontSize: 14,
                    fontWeight: (isFocused || isSelected)
                        ? FontWeight.w600
                        : FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildProgramGrid(List<Channel> channels,
      IncrementalEpgService epgService, List<Channel> allChannels) {
    debugLog(
        'EPG Grid: isLoading=${epgService.isLoading}, availableChannels=${epgService.availableChannels.length}, loadedChannels=${epgService.loadedChannelCount}');

    // Show loading overlay but still display the grid structure
    final bool isLoading = epgService.isLoading;
    final preloadCount = math.min(12, channels.length);
    if (preloadCount > 0) {
      final channelIds = <String>[];
      final channelNames = <String?>[];
      for (var i = 0; i < preloadCount; i++) {
        final channel = channels[i];
        channelIds.add(channel.epgLookupId);
        channelNames.add(channel.epgLookupNameFallback);
      }
      unawaited(epgService.ensureChannelsLoadedBatch(
        channelIds,
        channelNames: channelNames,
      ));
    }

    // Show loading indicator when EPG is loading
    return Stack(
      children: [
        Column(
          children: [
            if (epgService.availableChannels.isEmpty && !isLoading)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                color: AppTheme.primaryBlue.withValues(alpha: 0.2),
                child: Row(
                  children: [
                    const Icon(Icons.info_outline,
                        size: AppSizes.iconSm, color: AppTheme.primaryBlue),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'No EPG data. Configure EPG URL in Settings.',
                        style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.7),
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            // Main EPG grid
            Expanded(
              child: Column(
                children: [
                  // Time header (scrolls horizontally)
                  Container(
                    height: AppSpacing.epgRowHeight,
                    margin: const EdgeInsets.only(bottom: 4),
                    child: SingleChildScrollView(
                      controller: _timeHeaderScrollController,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: SizedBox(
                        width: _epgState.calculateProgramsGridWidth(),
                        child: _buildTimeHeaderOnly(),
                      ),
                    ),
                  ),
                  // Programs grid (lazy loaded with synchronized scroll)
                  Expanded(
                    child: EPGProgramsGrid(
                      channels: channels,
                      epgService: epgService,
                      isLoadingMore: _epgState.isLoadingMore,
                      horizontalController: _horizontalScrollController,
                      verticalController: _verticalScrollController,
                      gridWidth: _epgState.calculateProgramsGridWidth(),
                      onProgramTap: _showProgramDetails,
                      firstProgramFocusNode: _firstProgramFocus,
                      programFocusNodeForChannel: _programFocusNodeForChannel,
                      onRequestChannelFocus: (channel, index) =>
                          _channelFocusNodeForChannel(channel, index)
                              .requestFocus(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // Loading indicator overlay
        if (isLoading)
          Container(
            color: Colors.black54,
            child: const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(color: AppTheme.primaryBlue),
                  SizedBox(height: AppSizes.md),
                  Text(
                    'Loading EPG data...',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildChannelColumn(
      List<Channel> channels, List<String> categories, bool hasMore) {
    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
    return Column(
      children: [
        Container(
          height: rowHeight,
          margin: const EdgeInsets.only(bottom: rowGap, right: 4),
          decoration: BoxDecoration(
            color: const Color(0xFF2a2a3e).withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Colors.white.withValues(alpha: 0.1), width: 1),
          ),
          child: Center(
            child: Text(
              _epgState.selectedDate.day == DateTime.now().day &&
                      _epgState.selectedDate.month == DateTime.now().month &&
                      _epgState.selectedDate.year == DateTime.now().year
                  ? 'Today'
                  : '${_epgState.selectedDate.month}/${_epgState.selectedDate.day}',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.white.withValues(alpha: 0.9),
              ),
            ),
          ),
        ),
        Expanded(
          child: EPGChannelSidebar(
            channels: channels,
            isLoadingMore: _epgState.isLoadingMore,
            onLoadMore: () {
              if (!hasMore) return;
              setState(() {
                _epgState.loadMoreChannels();
              });
            },
            onChannelTap: (channel) {
              context.push('/player', extra: channel);
            },
            onChannelLongPress: (channel) =>
                _showChannelContextMenu(context, channel),
            firstChannelFocusNode: _firstChannelFocus,
            onFocusCategories: () {
              // Return to selected category, or first if none/lost
              final selected = _epgState.selectedCategory ?? 'All Channels';
              final idx = categories.indexOf(selected);
              if (idx >= 0) {
                _categoryFocusNodeForIndex(idx).requestFocus();
              } else {
                _firstCategoryFocus.requestFocus();
              }
            },
            onFocusCategoryAtIndex: null, // Disable direct index mapping
            onFocusRefresh: () => _refreshButtonFocus.requestFocus(),
            onFocusPrograms: () => _firstProgramFocus.requestFocus(),
            onFocusProgramForChannel: (channel) =>
                _programFocusNodeForChannel(channel)
                    .requestFocus(), // Removed index passing
            channelFocusNodeForChannel: (channel, index) =>
                _channelFocusNodeForChannel(channel, index),
            controller: _sidebarController,
          ),
        ),
      ],
    );
  }

  /// Time header only (no channel sidebar part)
  Widget _buildTimeHeaderOnly() {
    final now = DateTime.now();
    final startHour = now.hour; // Start from current hour, not 1 hour before
    final hoursToShow = 12;
    final cellWidth = 240.0;
    const rowHeight = AppSpacing.epgRowHeight;

    return SizedBox(
      height: rowHeight,
      child: Row(
        children: List.generate(hoursToShow, (index) {
          final hour = (startHour + index) % 24;
          final time = TimeOfDay(hour: hour, minute: 0);

          return Container(
            width: cellWidth,
            height: rowHeight,
            margin: const EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF2a2a3e).withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: Colors.white.withValues(alpha: 0.1), width: 1),
            ),
            child: Center(
              child: Text(
                time.format(context),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
              ),
            ),
          );
        }),
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
