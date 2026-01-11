import 'package:iptv_player/utils/debug_helper.dart';
// ignore_for_file: sized_box_for_whitespace
import 'dart:async';
import 'dart:collection';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/no_text_selection_controls.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_icons.dart';
import 'package:iptv_player/widgets/cached_image.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:iptv_player/services/focus_pool_service.dart';
import 'package:iptv_player/widgets/epg_widgets.dart';
import 'package:iptv_player/state/epg_screen_state.dart';

class EPGScreen extends StatefulWidget {
  final Channel? initialChannel;
  final bool continuePlayback;

  const EPGScreen({
    super.key,
    this.initialChannel,
    this.continuePlayback = false,
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
  late final ScrollController _verticalScrollController; // Grid controller

  final TimerService _timerService = TimerService();
  final FocusPoolService _focusPool = FocusPoolService();

  late final FocusNode _refreshButtonFocus;
  late final FocusNode _firstCategoryFocus;
  late final FocusNode _firstChannelFocus;
  late final FocusNode _firstProgramFocus;

  Future<List<Channel>>? _channelPageFuture;
  String _channelPageKey = '';
  List<String> _lastCategoryNames = [];
  bool _categoryPrimeRequested = false;
  DateTime? _lastCategoryPrimeAttempt;
  final Map<String, FocusNode> _programFocusNodes = {};
  final Queue<String> _programFocusOrder = Queue<String>();
  static const int _maxProgramFocusNodes = 400;
  final Map<String, FocusNode> _channelFocusNodes = {};
  final Queue<String> _channelFocusOrder = Queue<String>();
  static const int _maxChannelFocusNodes = 400;

  @override
  void initState() {
    super.initState();
    _epgState = EPGScreenState();
    _epgState.addListener(_handleEpgStateChanged);
    _refreshAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    // Initialize scroll controllers
    _horizontalLinkedGroup = LinkedScrollControllerGroup();
    _horizontalScrollController = _horizontalLinkedGroup.addAndGet();
    _timeHeaderScrollController = _horizontalLinkedGroup.addAndGet();
    _linkedScrollGroup = LinkedScrollControllerGroup();
    _sidebarController = _linkedScrollGroup.addAndGet();
    _verticalScrollController = _linkedScrollGroup.addAndGet();

    // Get focus nodes from pool
    _refreshButtonFocus =
        _focusPool.getFocusNode('epg_refresh', debugLabel: 'EPG Refresh');
    _firstCategoryFocus = _focusPool.getFocusNode('epg_first_category',
        debugLabel: 'EPG First Category');
    _firstChannelFocus = _focusPool.getFocusNode('epg_first_channel',
        debugLabel: 'EPG First Channel');
    _firstProgramFocus = _focusPool.getFocusNode('epg_first_program',
        debugLabel: 'EPG First Program');

    // Sync scroll controllers
    // Horizontal controllers are linked via _horizontalLinkedGroup.

    // Start EPG auto-refresh timer (check every 30 minutes)
    _startEpgAutoRefresh();

    // Hide system UI for immersive experience
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    // Load EPG data on init - non-blocking
    _loadEpgData();
    unawaited(_primeCategories());

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Load EPG favorites from SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final favoritesList = prefs.getStringList('epg_favorite_channels') ?? [];
      _epgState.setEpgFavoriteChannelIds(Set.from(favoritesList));

      // Scroll to current time position (no animation for initial load)
      _scrollToCurrentTime(animate: false);
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
        // Initialize without forcing a refresh so cache behavior is respected
        unawaited(epgService.initialize());
      }
    } catch (e) {
      debugLog('EPG Screen: Failed to auto-initialize EPG: $e');
    }
  }

  Future<void> _primeCategories({bool force = false}) async {
    if (!force && _categoryPrimeRequested) return;
    final now = DateTime.now();
    if (force &&
        _lastCategoryPrimeAttempt != null &&
        now.difference(_lastCategoryPrimeAttempt!) <
            const Duration(seconds: 5)) {
      return;
    }
    _categoryPrimeRequested = true;
    _lastCategoryPrimeAttempt = now;
    try {
      final channelProvider =
          Provider.of<ChannelProvider>(context, listen: false);
      final categories = await channelProvider.getAllCategoryNamesAsync();
      if (!mounted) return;
      if (categories.isNotEmpty) {
        setState(() {
          _lastCategoryNames = List<String>.from(categories);
        });
      }
    } catch (e) {
      debugLog('EPG Screen: Failed to prime categories: $e');
    }
  }

  FocusNode _programFocusNodeForChannel(Channel channel) {
    final key = channel.tvgId ?? channel.id;
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

  FocusNode _channelFocusNodeForChannel(Channel channel, int index) {
    if (index == 0) {
      return _firstChannelFocus;
    }
    final key = channel.tvgId ?? channel.id;
    final existing = _channelFocusNodes[key];
    if (existing != null) return existing;
    final node = FocusNode(debugLabel: 'EPGChannel:$key');
    _channelFocusNodes[key] = node;
    _channelFocusOrder.addLast(key);
    while (_channelFocusOrder.length > _maxChannelFocusNodes) {
      final removedKey = _channelFocusOrder.removeFirst();
      final removedNode = _channelFocusNodes.remove(removedKey);
      removedNode?.dispose();
    }
    return node;
  }

  /// Scroll the EPG grid to show the current time
  void _scrollToCurrentTime({bool animate = true}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_horizontalScrollController.hasClients) return;

      // Grid starts from current time, so scroll to beginning (position 0)
      final scrollPosition = 0.0;

      if (animate) {
        unawaited(_horizontalScrollController.animateTo(
          scrollPosition,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        ));
      } else {
        _horizontalScrollController.jumpTo(scrollPosition);
      }
    });
  }

  void _startEpgAutoRefresh() {
    _timerService.registerCustomCallback('epg_auto_refresh', 1800, () async {
      // 30 minutes = 1800 seconds
      if (!mounted) return;

      try {
        final prefs = await SharedPreferences.getInstance();
        if (!mounted) return;

        final epgService =
            Provider.of<IncrementalEpgService>(context, listen: false);
        final epgUrl =
            prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');

        if (epgUrl != null && epgUrl.isNotEmpty && !epgService.isLoading) {
          debugLog('EPG Screen: Auto-refreshing EPG data...');
          await epgService.initialize();
        }
      } catch (e) {
        debugLog('EPG Screen: Auto-refresh failed: $e');
      }
    });
  }

  @override
  bool handleContentFocusRequest() {
    _firstCategoryFocus.requestFocus();
    return true;
  }

  void requestFirstContentFocus() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _firstCategoryFocus.requestFocus();
    });
  }

  @override
  void dispose() {
    // Restore system UI when leaving
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
    for (final node in _programFocusNodes.values) {
      node.dispose();
    }
    _programFocusNodes.clear();
    _programFocusOrder.clear();
    for (final node in _channelFocusNodes.values) {
      node.dispose();
    }
    _channelFocusNodes.clear();
    _channelFocusOrder.clear();
    _timerService.unregister('epg_auto_refresh');
    _epgState.removeListener(_handleEpgStateChanged);
    _epgState.dispose();
    super.dispose();
  }

  void _handleEpgStateChanged() {
    if (!mounted) return;
    setState(() {});
  }

  /// Scroll the channel list back to the top when category changes
  void _scrollChannelListToTop() {
    if (_verticalScrollController.hasClients) {
      unawaited(_verticalScrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      ));
    }
  }

  Future<void> _triggerEpgRefresh() async {
    if (!mounted) return;

    final prefs = await SharedPreferences.getInstance();
    final epgUrl =
        prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');

    if (epgUrl == null || epgUrl.isEmpty) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No EPG URL configured'),
            backgroundColor: AppTheme.accentRed,
          ),
        );
      }
      return;
    }

    // Start spinning animation
    await _refreshAnimationController.repeat();

    // Show "Refreshing..." feedback
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Refreshing EPG data...'),
          duration: Duration(seconds: 1),
        ),
      );
    }

    if (!mounted) return;
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);

    // Force refresh EPG (bypass cache)
    await epgService.forceRefresh();

    // Stop spinning
    _refreshAnimationController.stop();
    _refreshAnimationController.reset();

    // Show completion feedback
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'EPG refreshed: ${epgService.availableChannels.length} channels'),
          backgroundColor: AppTheme.accentGreen,
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  Future<void> _toggleEpgFavorite(Channel channel) async {
    _epgState.toggleEpgFavorite(channel.id);

    // Save to SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
        'epg_favorite_channels', _epgState.epgFavoriteChannelIds.toList());
  }

  Future<List<Channel>> _ensureChannelPageFuture(
      ChannelProvider channelProvider) {
    final categoryKey = _epgState.selectedCategory ?? 'all';
    final favorites = _epgState.epgFavoriteChannelIds;
    final favoritesKey = favorites.isEmpty ? '0' : favorites.take(8).join('|');
    final pageKey = '$categoryKey|${_epgState.currentPage}|$favoritesKey';
    if (_channelPageFuture == null || _channelPageKey != pageKey) {
      _channelPageKey = pageKey;
      _channelPageFuture = () async {
        final start = DateTime.now();
        final pageSize = _epgState.channelsPerPage;
        final expected = (_epgState.currentPage + 1) * pageSize;
        final fetchLimit = expected + 1;
        if (_epgState.selectedCategory == '⭐ Favorites') {
          final result = channelProvider.getFilteredChannels(
            favoriteIds: _epgState.epgFavoriteChannelIds,
            excludeHidden: true,
            limit: fetchLimit,
          );
          debugLog(
              'EPG Screen: Favorites fetch took ${DateTime.now().difference(start).inMilliseconds}ms');
          return result;
        }
        if (_epgState.selectedCategory != null) {
          final result = await channelProvider.getFilteredChannelsAsync(
            category: _epgState.selectedCategory,
            excludeHidden: true,
            limit: fetchLimit,
          );
          debugLog(
              'EPG Screen: Category "${_epgState.selectedCategory}" fetch took ${DateTime.now().difference(start).inMilliseconds}ms');
          return result;
        }
        final result = await channelProvider.getFilteredChannelsAsync(
          excludeHidden: true,
          limit: fetchLimit,
        );
        debugLog(
            'EPG Screen: All channels fetch took ${DateTime.now().difference(start).inMilliseconds}ms');
        return result;
      }();
    }
    return _channelPageFuture!;
  }

  @override
  Widget build(BuildContext context) {
    // Keep using WillPopScope for now to remain compatible with current SDK.
    // Using CompatPopScope for backward compatibility
    // ignore: deprecated_member_use
    return Scaffold(
      body: CompatPopScope(
        onWillPop: () async {
          context.go('/home');
          return false;
        },
        child: Consumer2<ChannelProvider, IncrementalEpgService>(
          builder: (context, channelProvider, epgService, child) {
            final hasChannels = channelProvider.hasChannels;

            if (!hasChannels) {
              return _buildEmptyState(context);
            }

            // Get category names (lightweight - no channel grouping)
            // Wait for categories to be computed if they're not ready yet
            final rawCategories = channelProvider.getAllCategoryNames();
            if (rawCategories.isEmpty &&
                channelProvider.hasChannels &&
                !channelProvider.isGroupingChannels) {
              // Categories not computed yet but we have channels - trigger computation.
              unawaited(channelProvider.getAllCategoryNamesAsync());
              unawaited(_primeCategories(force: true));
            }
            if (rawCategories.isNotEmpty) {
              _lastCategoryNames = List<String>.from(rawCategories);
            }

            final effectiveCategories =
                rawCategories.isNotEmpty ? rawCategories : _lastCategoryNames;
            final isCategoryLoading = effectiveCategories.isEmpty &&
                channelProvider.hasChannels &&
                (channelProvider.isGroupingChannels ||
                    (!channelProvider.hasComputedCategories &&
                        rawCategories.isEmpty));

            final seen = <String>{};
            final categoryList = <String>[];
            for (final name in effectiveCategories) {
              final trimmed = name.trim();
              if (trimmed.isEmpty || trimmed == '⭐ Favorites') continue;
              if (seen.add(trimmed)) categoryList.add(trimmed);
            }
            final categoryNames = [
              '⭐ Favorites',
              ...categoryList
            ]; // Favorites first, then categories

            final channelPageFuture = _ensureChannelPageFuture(channelProvider);
            return FutureBuilder<List<Channel>>(
              future: channelPageFuture,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                      child: CircularProgressIndicator(
                          color: AppTheme.primaryBlue));
                }
                final pageSize = _epgState.channelsPerPage;
                final expected = (_epgState.currentPage + 1) * pageSize;
                final rawChannels = snapshot.data!;
                final hasMore = rawChannels.length > expected;
                final allFilteredChannels = rawChannels.take(expected).toList();

                _epgState.setHasMore(hasMore);
                _epgState.updatePaginatedChannels(allFilteredChannels);
                final filteredChannels = _epgState.paginatedChannels;

                // Calculate header height for offset
                const headerHeight =
                    AppSpacing.epgRowHeight + 4.0; // Match row height + gap

                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF080808), // Rich Black
                        AppTheme.darkBackground, // True Black
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Content layer - starts from top, header overlays on top
                      Column(
                        children: [
                          // Spacer for header area
                          const SizedBox(height: headerHeight),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: AppSpacing.sidebarCollapsedWidth),
                              child: Row(
                                children: [
                                  // Category sidebar
                                  _buildCategorySidebar(
                                    categoryNames,
                                    isLoading: isCategoryLoading,
                                  ),
                                  const SizedBox(width: 4),
                                  SizedBox(
                                    width: context.channelSidebarWidth(),
                                    child:
                                        _buildChannelColumn(filteredChannels),
                                  ),
                                  Expanded(
                                    child: _buildProgramGrid(filteredChannels,
                                        epgService, allFilteredChannels),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Transparent header overlay
                      Positioned(
                        top: 0,
                        left: AppSpacing.sidebarCollapsedWidth,
                        right: 0,
                        child: _buildHeader(epgService),
                      ),
                    ],
                  ),
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
              Container(
                decoration: BoxDecoration(
                  color: AppTheme.darkBackgroundOpacity(0.3),
                  borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                ),
                child: IconButton(
                  focusNode: _refreshButtonFocus,
                  onPressed: epgService.isLoading
                      ? null
                      : () {
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySidebar(
    List<String> categories, {
    bool isLoading = false,
  }) {
    return Container(
      width: context.categoryBarWidth(),
      decoration: BoxDecoration(
        color: AppTheme.sidebarBackground,
        border: Border(
          right: BorderSide(
            color: Colors.white.withValues(alpha: 0.06),
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.spacingXs(),
              vertical: context.spacingXs(),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Categories',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.8),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
                if (isLoading) ...[
                  SizedBox(
                    width: 12,
                    height: 12,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppTheme.primaryBlue.withValues(alpha: 0.9),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Updating',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.6),
                      fontSize: 10,
                    ),
                  ),
                ],
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              key: const PageStorageKey<String>('epg_category_list'),
              physics: const BouncingScrollPhysics(),
              primary: false,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return _buildCategoryItem(
                  name: category,
                  isSelected: _epgState.selectedCategory == category,
                  isFirst: index == 0,
                  onTap: () {
                    _epgState.setSelectedCategory(category);
                    // Scroll channel list to top
                    _scrollChannelListToTop();
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.spacingXs()),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.white.withValues(alpha: 0.06),
                  ),
                );
              },
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
    bool isFirst = false,
  }) {
    return Focus(
      focusNode: isFirst ? _firstCategoryFocus : null,
      canRequestFocus: true,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter) {
            onTap();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
            _firstChannelFocus.requestFocus();
            return KeyEventResult.handled;
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
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: context.spacingXs(),
                vertical: context.spacingXs() * 0.25,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: context.spacingXs(),
                vertical: context.spacingXs(),
              ),
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 90),
                    curve: Curves.easeOut,
                    width: 3,
                    height: 22,
                    decoration: BoxDecoration(
                      color:
                          isFocused ? AppTheme.primaryBlue : Colors.transparent,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
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
                    ),
                  ),
                ],
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
    for (var i = 0; i < preloadCount; i++) {
      final channel = channels[i];
      final channelKey = channel.tvgId ?? channel.id;
      epgService.ensureChannelLoaded(channelKey, channelName: channel.name);
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
                    height: AppSpacing.epgRowHeight + 4.0, // Match channel item height
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

  Widget _buildChannelColumn(List<Channel> channels) {
    return Column(
      children: [
        Container(
          height: AppSpacing.epgRowHeight + 4.0, // Match channel item height
          margin: const EdgeInsets.only(bottom: 4, right: 4),
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
              if (!_epgState.hasMore) return;
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
            onFocusCategories: () => _firstCategoryFocus.requestFocus(),
            onFocusRefresh: () => _refreshButtonFocus.requestFocus(),
            onFocusPrograms: () => _firstProgramFocus.requestFocus(),
            onFocusProgramForChannel: (channel) =>
                _programFocusNodeForChannel(channel).requestFocus(),
            channelFocusNodeForChannel: _channelFocusNodeForChannel,
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

    return SizedBox(
      height: AppSpacing.epgRowHeight + 4.0, // Match channel item height
      child: Row(
        children: List.generate(hoursToShow, (index) {
          final hour = (startHour + index) % 24;
          final time = TimeOfDay(hour: hour, minute: 0);

          return Container(
            width: cellWidth,
            height: AppSpacing.epgRowHeight + 4.0, // Match channel item height
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
    final rootContext = context; // Capture parent context for snackbars
    final catchupFocus = FocusNode(debugLabel: 'EpgCatchup');
    final recordFocus = FocusNode(debugLabel: 'EpgRecord');
    final remindFocus = FocusNode(debugLabel: 'EpgRemind');
    final dialogFuture = showDialog(
      context: context,
      builder: (dialogContext) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!dialogContext.mounted) return;
          if (program.hasCatchup) {
            if (catchupFocus.canRequestFocus) {
              catchupFocus.requestFocus();
            }
          } else if (program.isFutureProgram) {
            if (recordFocus.canRequestFocus) {
              recordFocus.requestFocus();
            }
          }
        });
        return Dialog(
          backgroundColor: AppColors.cardDark,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Container(
            width: 600,
            padding: const EdgeInsets.all(AppSizes.lg),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Program image
                if (program.imageUrl != null &&
                    !_isLikelyPosterUrl(program.imageUrl!))
                  CachedImage(
                    imageUrl: program.imageUrl!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                    errorWidget: Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        color: AppTheme.darkBackground,
                      ),
                      child: const Icon(Icons.dvr, size: 64),
                    ),
                  ),

                const SizedBox(height: AppSizes.lg),

                // Title
                Text(
                  program.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),

                const SizedBox(height: AppSizes.sm),

                // Time and status
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 16,
                      color: AppTheme.textSecondary,
                    ),
                    const SizedBox(width: AppSizes.xs),
                    Text(
                      '${DateFormat.jm().format(program.startTime)} - ${DateFormat.jm().format(program.endTime)}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(width: AppSizes.md),
                    if (program.isCurrentlyPlaying)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.sm,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.accentRed,
                          borderRadius:
                              BorderRadius.circular(AppSizes.radiusSm),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.fiber_manual_record,
                              size: 8,
                              color: Colors.white,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'LIVE',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),

                const SizedBox(height: AppSizes.md),

                // Description
                if (program.description != null)
                  Text(
                    program.description!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                const SizedBox(height: AppSizes.xl),

                // Action buttons
                FocusTraversalGroup(
                  policy: WidgetOrderTraversalPolicy(),
                  child: Row(
                    children: [
                      // Watch Catch-up button (only for catchup programs)
                      if (program.hasCatchup)
                        Expanded(
                          child: BrandPrimaryButton(
                            focusNode: catchupFocus,
                            onPressed: () {
                              Navigator.pop(dialogContext);
                              _playCatchup(program);
                            },
                            icon: AppIcons.replay,
                            label: 'Watch Catch-up',
                            expand: true,
                          ),
                        ),
                      if (program.hasCatchup && program.isFutureProgram)
                        const SizedBox(width: AppSizes.sm),
                      // Record button (only for future programs)
                      if (program.isFutureProgram)
                        Expanded(
                          child: BrandSecondaryButton(
                            focusNode: recordFocus,
                            onPressed: () {
                              // Record functionality
                              Navigator.pop(dialogContext);
                              showAppSnackBar(
                                rootContext,
                                SnackBar(
                                  content: Text(
                                    'Recording scheduled for ${program.title}',
                                  ),
                                ),
                              );
                            },
                            icon: AppIcons.record,
                            label: 'Record',
                            expand: true,
                          ),
                        ),
                      // Remind button (only for future programs)
                      if (program.isFutureProgram) ...[
                        const SizedBox(width: AppSizes.sm),
                        Expanded(
                          child: BrandSecondaryButton(
                            focusNode: remindFocus,
                            onPressed: () {
                              // Set reminder
                              Navigator.pop(dialogContext);
                              showAppSnackBar(
                                rootContext,
                                SnackBar(
                                  content: Text(
                                    'Reminder set for ${program.title}',
                                  ),
                                ),
                              );
                            },
                            icon: AppIcons.alarm,
                            label: 'Remind',
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
    unawaited(dialogFuture.whenComplete(() {
      catchupFocus.dispose();
      recordFocus.dispose();
      remindFocus.dispose();
    }));
  }

  /// Show context menu for channel long press
  void _showChannelContextMenu(BuildContext ctx, Channel channel) {
    if (!mounted) return;
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    final hasMapping = epgService.hasManualMapping(channel.tvgId ?? channel.id);

    unawaited(showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1E1E2E),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CachedChannelLogo(
                    logoUrl: channel.logoUrl,
                    size: 40,
                    fallbackIcon: Icons.tv,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          channel.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'ID: ${channel.tvgId ?? channel.id}',
                          style: const TextStyle(
                              color: AppTheme.textSecondary, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            // Options
            ListTile(
              leading: Icon(
                _epgState.epgFavoriteChannelIds.contains(channel.id)
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: AppTheme.accentPink,
              ),
              title: Text(_epgState.epgFavoriteChannelIds.contains(channel.id)
                  ? 'Remove from Favorites'
                  : 'Add to Favorites'),
              onTap: () {
                Navigator.pop(ctx);
                unawaited(_toggleEpgFavorite(channel));
              },
            ),
            ListTile(
              leading: const Icon(Icons.link, color: AppTheme.primaryBlue),
              title: const Text('Match EPG Channel'),
              subtitle: hasMapping
                  ? Text(
                      'Currently: ${epgService.getManualMapping(channel.tvgId ?? channel.id)}',
                      style: const TextStyle(fontSize: 12))
                  : null,
              onTap: () {
                Navigator.pop(ctx);
                _showEpgChannelSelector(channel);
              },
            ),
            if (hasMapping)
              ListTile(
                leading: const Icon(Icons.link_off, color: AppTheme.accentRed),
                title: const Text('Remove EPG Mapping'),
                onTap: () {
                  Navigator.pop(ctx);
                  _removeEpgMapping(channel);
                },
              ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    ));
  }

  /// Show EPG channel selection dialog
  void _showEpgChannelSelector(Channel channel) {
    if (!mounted) return;
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    final epgChannelIds = epgService.getEpgChannelIds();

    if (epgChannelIds.isEmpty) {
      showAppSnackBar(
          context,
          const SnackBar(
            content: Text(
                'No EPG data loaded. Please configure EPG URL in Settings.'),
            backgroundColor: AppTheme.accentRed,
          ));
      return;
    }

    String searchQuery = '';
    final searchController = TextEditingController();

    // Get suggested matches for this channel
    final suggestions = epgService.getSuggestedMatches(
      channel.tvgId ?? channel.id,
      channel.name,
      limit: 15,
    );

    unawaited(showDialog(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, setDialogState) {
          List<String> filteredIds;
          bool showingSuggestions = searchQuery.isEmpty;

          if (searchQuery.isEmpty) {
            // Show suggestions first, then all others
            final suggestedIds = suggestions.map((e) => e.key).toSet();
            final otherIds = epgChannelIds
                .where((id) => !suggestedIds.contains(id))
                .toList();
            filteredIds = [...suggestions.map((e) => e.key), ...otherIds];
          } else {
            filteredIds = epgChannelIds.where((id) {
              final displayName = _getDisplayNameForEpgId(id).toLowerCase();
              final idLower = id.toLowerCase();
              final queryLower = searchQuery.toLowerCase();
              return displayName.contains(queryLower) ||
                  idLower.contains(queryLower);
            }).toList();
          }

          return AlertDialog(
            backgroundColor: AppTheme.darkBackground,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Match EPG for ${channel.name}',
                    style: const TextStyle(
                        fontSize: 18, color: AppTheme.textPrimary)),
                Text(
                  'ID: ${channel.tvgId ?? channel.id}',
                  style: const TextStyle(
                      fontSize: 12, color: AppTheme.textSecondary),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: searchController,
                  enableInteractiveSelection: false,
                  selectionControls: NoTextSelectionControls(),
                  showCursor: false,
                  cursorColor: Colors.transparent,
                  autofocus: true,
                  style: const TextStyle(color: Colors.white),
                  onTap: () {
                    final text = searchController.text;
                    searchController.selection =
                        TextSelection.collapsed(offset: text.length);
                  },
                  decoration: InputDecoration(
                    hintText: 'Search EPG channels...',
                    hintStyle:
                        TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                    prefixIcon: const Icon(Icons.search, color: Colors.white54),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white.withValues(alpha: 0.05),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white.withValues(alpha: 0.2)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppTheme.primaryBlue, width: 2),
                    ),
                  ),
                  onChanged: (value) {
                    setDialogState(() {
                      searchQuery = value;
                    });
                  },
                ),
              ],
            ),
            content: SizedBox(
              width: double.maxFinite,
              height: 400,
              child: filteredIds.isEmpty
                  ? Center(
                      child: Text(
                        searchQuery.isEmpty
                            ? 'No EPG channels found'
                            : 'No matches for "$searchQuery"',
                        style: TextStyle(color: AppTheme.textSecondary),
                      ),
                    )
                  : ListView.builder(
                      itemCount: filteredIds.length +
                          (showingSuggestions && suggestions.isNotEmpty
                              ? 1
                              : 0),
                      itemBuilder: (context, index) {
                        // Show "Suggested Matches" header
                        if (showingSuggestions &&
                            suggestions.isNotEmpty &&
                            index == 0) {
                          return Container(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                            child: Row(
                              children: [
                                const Icon(Icons.auto_awesome,
                                    size: 16, color: AppTheme.primaryBlue),
                                const SizedBox(width: 8),
                                Text(
                                  'Suggested Matches (${suggestions.length})',
                                  style: TextStyle(
                                    color: AppTheme.primaryBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }

                        final adjustedIndex =
                            showingSuggestions && suggestions.isNotEmpty
                                ? index - 1
                                : index;
                        if (adjustedIndex < 0 ||
                            adjustedIndex >= filteredIds.length) {
                          return const SizedBox.shrink();
                        }

                        final epgId = filteredIds[adjustedIndex];
                        final preview = epgService.getChannelPreview(epgId);
                        final currentMapping = epgService
                            .getManualMapping(channel.tvgId ?? channel.id);
                        final isCurrentlyMapped = currentMapping == epgId;
                        final isSuggested = showingSuggestions &&
                            adjustedIndex < suggestions.length;
                        final suggestionScore = isSuggested
                            ? suggestions[adjustedIndex].value
                            : 0.0;

                        // Show divider after suggestions
                        final showDivider = showingSuggestions &&
                            suggestions.isNotEmpty &&
                            adjustedIndex == suggestions.length - 1;

                        return Column(
                          children: [
                            FocusableActionDetector(
                              actions: <Type, Action<Intent>>{
                                ActivateIntent: CallbackAction<ActivateIntent>(
                                  onInvoke: (intent) {
                                    Navigator.pop(dialogContext);
                                    _setEpgMapping(channel, epgId);
                                    return null;
                                  },
                                ),
                              },
                              child: Builder(
                                builder: (context) {
                                  final isFocused = Focus.of(context).hasFocus;
                                  return ListTile(
                                    dense: true,
                                    selected: isFocused,
                                    selectedTileColor:
                                        AppTheme.primaryBlue.withValues(
                                      alpha: 0.16,
                                    ),
                                    leading: isCurrentlyMapped
                                        ? const Icon(Icons.check_circle,
                                            color: AppTheme.accentGreen)
                                        : isSuggested
                                            ? Icon(
                                                Icons.stars,
                                                color: suggestionScore > 0.7
                                                    ? AppTheme.accentGreen
                                                    : suggestionScore > 0.4
                                                        ? AppTheme.primaryBlue
                                                        : AppTheme
                                                            .textSecondary,
                                              )
                                            : const Icon(Icons.tv_outlined,
                                                color: AppTheme.textSecondary),
                                    title: Text(
                                      _getDisplayNameForEpgId(epgId),
                                      style: TextStyle(
                                        fontWeight:
                                            isCurrentlyMapped || isSuggested
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                        color: isCurrentlyMapped
                                            ? AppTheme.accentGreen
                                            : AppTheme.textPrimary,
                                      ),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (preview != null)
                                          Text(
                                            'Now: $preview',
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: AppTheme.textSecondary),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        if (isSuggested)
                                          Text(
                                            'Match: ${(suggestionScore * 100).toInt()}%',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: suggestionScore > 0.7
                                                  ? AppTheme.accentGreen
                                                  : AppTheme.textSecondary,
                                            ),
                                          ),
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.pop(dialogContext);
                                      _setEpgMapping(channel, epgId);
                                    },
                                  );
                                },
                              ),
                            ),
                            if (showDivider)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Divider(
                                            color: Colors.white
                                                .withValues(alpha: 0.1))),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        'All EPG Channels',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: AppTheme.textSecondary),
                                      ),
                                    ),
                                    Expanded(
                                        child: Divider(
                                            color: Colors.white
                                                .withValues(alpha: 0.1))),
                                  ],
                                ),
                              ),
                          ],
                        );
                      },
                    ),
            ),
            actions: [
              BrandSecondaryButton(
                onPressed: () => Navigator.pop(dialogContext),
                label: 'Cancel',
              ),
            ],
          );
        },
      ),
    ));
  }

  /// Set EPG mapping for a channel
  Future<void> _setEpgMapping(Channel channel, String epgChannelId) async {
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    await epgService.setManualMapping(
        channel.tvgId ?? channel.id, epgChannelId);

    if (mounted) {
      showAppSnackBar(
          context,
          SnackBar(
            content: Text('EPG mapped: ${channel.name} → $epgChannelId'),
            backgroundColor: AppTheme.accentGreen,
          ));
      setState(() {}); // Refresh to show new EPG data
    }
  }

  /// Remove EPG mapping for a channel
  Future<void> _removeEpgMapping(Channel channel) async {
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    await epgService.removeManualMapping(channel.tvgId ?? channel.id);

    if (mounted) {
      showAppSnackBar(
          context,
          SnackBar(
            content: Text('EPG mapping removed for ${channel.name}'),
            backgroundColor: AppTheme.primaryBlue,
          ));
      setState(() {}); // Refresh
    }
  }

  /// Convert EPG ID to readable display name
  String _getDisplayNameForEpgId(String epgId) {
    // Remove domain suffixes
    String name = epgId.split('.').first;

    // Convert common patterns to readable names
    final patterns = {
      RegExp(r'^bbc(\d+)$', caseSensitive: false): (Match m) =>
          'BBC ${m.group(1)}',
      RegExp(r'^itv(\d+)?$', caseSensitive: false): (Match m) =>
          'ITV${m.group(1) ?? ''}',
      RegExp(r'^channel(\d+)$', caseSensitive: false): (Match m) =>
          'Channel ${m.group(1)}',
      RegExp(r'^sky(\w+)$', caseSensitive: false): (Match m) =>
          'Sky ${m.group(1)!.toUpperCase()}',
      RegExp(r'^fox(\w+)?$', caseSensitive: false): (Match m) =>
          'FOX${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^cnn(\w+)?$', caseSensitive: false): (Match m) =>
          'CNN${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^abc(\w+)?$', caseSensitive: false): (Match m) =>
          'ABC${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^nbc(\w+)?$', caseSensitive: false): (Match m) =>
          'NBC${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^cbs(\w+)?$', caseSensitive: false): (Match m) =>
          'CBS${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
    };

    for (final pattern in patterns.entries) {
      final match = pattern.key.firstMatch(name);
      if (match != null) {
        return pattern.value(match);
      }
    }

    // Capitalize first letter and replace underscores/hyphens with spaces
    name = name.replaceAll(RegExp(r'[_-]'), ' ');
    if (name.isNotEmpty) {
      name = name[0].toUpperCase() + name.substring(1).toLowerCase();
    }

    return name.isEmpty ? epgId : name;
  }

  void _playCatchup(Program program) {
    if (program.catchupUrl == null) return;

    // Create a temporary channel object with catch-up URL
    final catchupChannel = Channel(
      id: '${program.channelId}_catchup_${program.id}',
      name: '${program.title} (Catch-up)',
      url: program.catchupUrl!,
      logoUrl: program.imageUrl,
      groupTitle: 'Catch-up TV',
      tvgId: program.channelId,
    );

    // Navigate to player with catch-up stream
    context.push('/player', extra: catchupChannel);
  }

  bool _isLikelyPosterUrl(String url) {
    final lower = url.toLowerCase();
    if (lower.contains('/w500') ||
        lower.contains('/w342') ||
        lower.contains('/w300') ||
        lower.contains('/w185') ||
        lower.contains('poster') ||
        lower.contains('portrait') ||
        lower.contains('cover')) {
      return true;
    }
    return false;
  }
}
