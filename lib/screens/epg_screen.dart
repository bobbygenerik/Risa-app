// ignore_for_file: sized_box_for_whitespace
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:iptv_player/widgets/brand_button.dart';

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
  late final ScrollController _verticalScrollController;

  final TimerService _timerService = TimerService();
  final FocusPoolService _focusPool = FocusPoolService();
  
  late final FocusNode _refreshButtonFocus;
  late final FocusNode _firstCategoryFocus;
  late final FocusNode _firstChannelFocus;

  @override
  void initState() {
    super.initState();
    _epgState = EPGScreenState();
    _refreshAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    
    // Initialize scroll controllers
    _horizontalScrollController = ScrollController();
    _timeHeaderScrollController = ScrollController();
    _verticalScrollController = ScrollController();
    
    // Get focus nodes from pool
    _refreshButtonFocus = _focusPool.getFocusNode('epg_refresh', debugLabel: 'EPG Refresh');
    _firstCategoryFocus = _focusPool.getFocusNode('epg_first_category', debugLabel: 'EPG First Category');
    _firstChannelFocus = _focusPool.getFocusNode('epg_first_channel', debugLabel: 'EPG First Channel');
    
    // Sync scroll controllers
    _horizontalScrollController.addListener(_syncHorizontalScroll);
    _timeHeaderScrollController.addListener(_syncTimeHeaderScroll);

    // Start EPG auto-refresh timer (check every 30 minutes)
    _startEpgAutoRefresh();

    // Hide system UI for immersive experience
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    // Load EPG data on init with retry logic
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final epgService = Provider.of<IncrementalEpgService>(context, listen: false);

      // Load EPG favorites from SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final favoritesList = prefs.getStringList('epg_favorite_channels') ?? [];
      _epgState.setEpgFavoriteChannelIds(Set.from(favoritesList));

      // Wait for EPG service to initialize (max 5 seconds)
      int initWaitCount = 0;
      while (
          !epgService.hasData && epgService.isLoading && initWaitCount < 50) {
        await Future.delayed(const Duration(milliseconds: 100));
        initWaitCount++;
      }

      debugPrint('EPG Screen: hasData = ${epgService.hasData}');
      debugPrint('EPG Screen: epgData.length = ${epgService.epgData.length}');
      debugPrint('EPG Screen: isLoading = ${epgService.isLoading}');
      debugPrint('EPG Screen: error = ${epgService.error}');

      // Load EPG if we don't have data yet (with retry)
      if (!epgService.hasData) {
        final epgUrl =
            prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');
        if (epgUrl != null && epgUrl.isNotEmpty) {
          debugPrint('EPG Screen: Loading EPG data from URL: $epgUrl');

          // Try loading with exponential backoff retry
          int retryCount = 0;
          const maxRetries = 3;
          bool success = false;

          while (!success && retryCount < maxRetries && mounted) {
            try {
              await epgService.loadEpgFromUrl(epgUrl,
                  forceRefresh: retryCount > 0);
              if (epgService.hasData) {
                success = true;
                debugPrint('EPG Screen: Successfully loaded EPG data');
              } else if (epgService.error != null) {
                throw Exception(epgService.error);
              }
            } catch (e) {
              retryCount++;
              if (retryCount < maxRetries) {
                final delaySeconds = retryCount * 2; // 2s, 4s, 6s
                debugPrint(
                    'EPG Screen: Load failed, retrying in ${delaySeconds}s... (attempt $retryCount/$maxRetries)');
                await Future.delayed(Duration(seconds: delaySeconds));
              } else {
                debugPrint(
                    'EPG Screen: Failed to load EPG after $maxRetries attempts: $e');
              }
            }
          }
        } else {
          debugPrint('EPG Screen: No EPG URL configured');
        }
      }

      if (!mounted) return;

      // Scroll to current time position (no animation for initial load)
      _scrollToCurrentTime(animate: false);


    });
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
    _timerService.registerCustomCallback('epg_auto_refresh', 1800, () async { // 30 minutes = 1800 seconds
      if (!mounted) return;

      final epgService = Provider.of<IncrementalEpgService>(context, listen: false);
      final prefs = await SharedPreferences.getInstance();
      final epgUrl =
          prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');

      if (epgUrl != null && epgUrl.isNotEmpty && !epgService.isLoading) {
        debugPrint('EPG Screen: Auto-refreshing EPG data...');
        await epgService.refresh(epgUrl);
      }
    });
  }

  @override
  bool handleContentFocusRequest() {
    requestFirstContentFocus();
    return true;
  }

  void requestFirstContentFocus() {
    // Find first focusable channel in the list
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      // Try to find a channel sidebar item to focus
      FocusNode? firstChannel;
      for (final node in FocusScope.of(context).children) {
        if (node.canRequestFocus && node.context != null) {
          firstChannel = node;
          break;
        }
      }
      if (firstChannel != null) {
        firstChannel.requestFocus();
      }
    });
  }

  void _syncHorizontalScroll() {
    if (!_epgState.syncingScroll && _timeHeaderScrollController.hasClients) {
      _epgState.setSyncingScroll(true);
      _timeHeaderScrollController.jumpTo(_horizontalScrollController.offset);
      _epgState.setSyncingScroll(false);
    }
  }
  
  void _syncTimeHeaderScroll() {
    if (!_epgState.syncingScroll && _horizontalScrollController.hasClients) {
      _epgState.setSyncingScroll(true);
      _horizontalScrollController.jumpTo(_timeHeaderScrollController.offset);
      _epgState.setSyncingScroll(false);
    }
  }

  @override
  void dispose() {
    // Restore system UI when leaving
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    _refreshAnimationController.dispose();
    _horizontalScrollController.removeListener(_syncHorizontalScroll);
    _timeHeaderScrollController.removeListener(_syncTimeHeaderScroll);
    _horizontalScrollController.dispose();
    _timeHeaderScrollController.dispose();
    _verticalScrollController.dispose();

    _focusPool.returnFocusNodes(['epg_refresh', 'epg_first_category', 'epg_first_channel']);
    _timerService.unregister('epg_auto_refresh');
    _epgState.dispose();
    super.dispose();
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

    if (!mounted) return;
    final epgService = Provider.of<IncrementalEpgService>(context, listen: false);

    // Refresh EPG in background
    await epgService.refresh(epgUrl);

    // Stop spinning
    _refreshAnimationController.stop();
    _refreshAnimationController.reset();

    // Don't show snackbar on EPG screen - user can see the data loading in the grid
  }

  Future<void> _toggleEpgFavorite(Channel channel) async {
    _epgState.toggleEpgFavorite(channel.id);

    // Save to SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
        'epg_favorite_channels', _epgState.epgFavoriteChannelIds.toList());
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
            final categoryList = channelProvider.getAllCategoryNames();
            final categoryNames = [
              '⭐ Favorites',
              ...categoryList
            ]; // Favorites first, then categories

            // Get all filtered channels for pagination
            List<Channel> allFilteredChannels;
            if (_epgState.selectedCategory == '⭐ Favorites') {
              allFilteredChannels = channelProvider.getFilteredChannels(
                favoriteIds: _epgState.epgFavoriteChannelIds,
                excludeHidden: true,
              );
            } else if (_epgState.selectedCategory != null) {
              allFilteredChannels = channelProvider.getFilteredChannels(
                category: _epgState.selectedCategory,
                excludeHidden: true,
              );
            } else {
              allFilteredChannels = channelProvider.getFilteredChannels(
                excludeHidden: true,
              );
            }
            
            // Apply pagination
            _epgState.updatePaginatedChannels(allFilteredChannels);
            final filteredChannels = _epgState.paginatedChannels;

            // Calculate header height for offset
            const headerHeight = 72.0; // Approximate header height

            return Container(
              decoration: const BoxDecoration(
                color: Color(0xFF050710),
              ),
              child: Stack(
                children: [
                  // Content layer - starts from top, header overlays on top
                  Column(
                    children: [
                      // Spacer for header area
                      const SizedBox(height: headerHeight),
                      Expanded(
                        child: Row(
                          children: [
                            // Spacer for main navigation sidebar (48px collapsed)
                            const SizedBox(width: 48),
                            // Category sidebar
                            _buildCategorySidebar(categoryNames),
                            const SizedBox(width: 16),
                            // Program grid with channel names
                            Expanded(
                              child: _buildProgramGrid(
                                  filteredChannels, epgService, allFilteredChannels),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Transparent header overlay
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: _buildHeader(epgService),
                  ),


                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF050710),
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
      padding: const EdgeInsets.fromLTRB(56, 12, 24, 12),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                focusNode: _refreshButtonFocus,
                onKeyEvent: (node, event) {
                  if (event is KeyDownEvent) {
                    if (event.logicalKey == LogicalKeyboardKey.select ||
                        event.logicalKey == LogicalKeyboardKey.enter) {
                      if (!epgService.isLoading) {
                        unawaited(_triggerEpgRefresh());
                      }
                      return KeyEventResult.handled;
                    }
                    if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                      _firstCategoryFocus.requestFocus();
                      return KeyEventResult.handled;
                    }
                  }
                  return KeyEventResult.ignored;
                },
                child: Builder(
                  builder: (context) {
                    final isFocused = Focus.of(context).hasFocus;
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(8),
                        border: isFocused
                            ? Border.all(color: AppTheme.primaryBlue, width: 2)
                            : null,
                      ),
                      child: IconButton(
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
                        onPressed: epgService.isLoading ? null : () => unawaited(_triggerEpgRefresh()),
                        tooltip: 'Refresh EPG Data',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySidebar(List<String> categories) {
    return Container(
      width: 140,
      child: ListView.builder(
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
        }
        return KeyEventResult.ignored;
      },
      onFocusChange: (_) => setState(() {}),
      child: Builder(builder: (context) {
        final bool isFocused = Focus.of(context).hasFocus;
        return GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.opaque,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
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
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
      }),
    );
  }





  Widget _buildProgramGrid(List<Channel> channels, IncrementalEpgService epgService, List<Channel> allChannels) {
    debugPrint(
        'EPG Grid: isLoading=${epgService.isLoading}, hasData=${epgService.hasData}, epgData keys=${epgService.epgData.keys.length}');

    // Show loading overlay but still display the grid structure
    final bool isLoading = epgService.isLoading;
    const channelSidebarWidth = 80.0;

    // Show loading indicator when EPG is loading
    return Stack(
      children: [
        Column(
          children: [
            if (!epgService.hasData && !isLoading)
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
                            color: Colors.white.withValues(alpha: 0.7), fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            // Main EPG grid with fixed channel sidebar
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // FIXED channel sidebar (scrolls vertically with list)
                  SizedBox(
                    width: channelSidebarWidth,
                    child: Column(
                      children: [
                        // Today header
                        Container(
                          height: 64,
                          margin: const EdgeInsets.only(bottom: 4, right: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xFF2a2a3e).withValues(alpha: 0.4),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white.withValues(alpha: 0.1), width: 1),
                          ),
                          child: Center(
                            child: Text(
                              _epgState.selectedDate.day == DateTime.now().day &&
                                      _epgState.selectedDate.month ==
                                          DateTime.now().month &&
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
                        // Channel list with pagination
                        Expanded(
                          child: EPGChannelSidebar(
                            channels: channels,
                            isLoadingMore: _epgState.isLoadingMore,
                            onLoadMore: () => _epgState.loadMoreChannels(allChannels),
                            onChannelTap: (channel) {
                              context.push('/player', extra: channel);
                            },
                            onChannelLongPress: (channel) => _showChannelContextMenu(context, channel),
                            controller: _verticalScrollController,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SCROLLABLE time header + programs section
                  Expanded(
                    child: Column(
                      children: [
                        // Time header (scrolls horizontally)
                        Container(
                          height: 64,
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
                          ),
                        ),
                      ],
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



  /// Time header only (no channel sidebar part)
  Widget _buildTimeHeaderOnly() {
    final now = DateTime.now();
    final startHour = now.hour; // Start from current hour, not 1 hour before
    final hoursToShow = 12;
    final cellWidth = 240.0;

    return SizedBox(
      height: 64,
      child: Row(
        children: List.generate(hoursToShow, (index) {
          final hour = (startHour + index) % 24;
          final time = TimeOfDay(hour: hour, minute: 0);

          return Container(
            width: cellWidth,
            height: 64,
            margin: const EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF2a2a3e).withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white.withValues(alpha: 0.1), width: 1),
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
    unawaited(showDialog(
      context: context,
      builder: (dialogContext) => Dialog(
        backgroundColor: AppColors.cardDark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(AppSizes.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Program image
              if (program.imageUrl != null)
                CachedImage(
                  imageUrl: program.imageUrl!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                  errorWidget: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color(0xFF050710),
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
                        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
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
              Row(
                children: [
                  // Watch Catch-up button (only for catchup programs)
                  if (program.hasCatchup)
                    Expanded(
                      child: BrandPrimaryButton(
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
            ],
          ),
        ),
      ),
    ));
  }




  /// Show context menu for channel long press
  void _showChannelContextMenu(BuildContext ctx, Channel channel) {
    if (!mounted) return;
    final epgService = Provider.of<IncrementalEpgService>(context, listen: false);
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
    final epgService = Provider.of<IncrementalEpgService>(context, listen: false);
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
            filteredIds = epgChannelIds
                .where((id) {
                  final displayName = _getDisplayNameForEpgId(id).toLowerCase();
                  final idLower = id.toLowerCase();
                  final queryLower = searchQuery.toLowerCase();
                  return displayName.contains(queryLower) || idLower.contains(queryLower);
                })
                .toList();
          }

          return AlertDialog(
            backgroundColor: const Color(0xFF050710),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Match EPG for ${channel.name}',
                    style: const TextStyle(fontSize: 18, color: AppTheme.textPrimary)),
                Text(
                  'ID: ${channel.tvgId ?? channel.id}',
                  style: const TextStyle(fontSize: 12, color: AppTheme.textSecondary),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: searchController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Search EPG channels...',
                    hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                    prefixIcon: const Icon(Icons.search, color: Colors.white54),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white.withValues(alpha: 0.05),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.2)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.primaryBlue, width: 2),
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
                            ListTile(
                              dense: true,
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
                                                  : AppTheme.textSecondary,
                                        )
                                      : const Icon(Icons.tv_outlined,
                                          color: AppTheme.textSecondary),
                              title: Text(
                                _getDisplayNameForEpgId(epgId),
                                style: TextStyle(
                                  fontWeight: isCurrentlyMapped || isSuggested
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: isCurrentlyMapped
                                      ? AppTheme.accentGreen
                                      : AppTheme.textPrimary,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (preview != null)
                                    Text(
                                      'Now: $preview',
                                      style: const TextStyle(fontSize: 12, color: AppTheme.textSecondary),
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
                            ),
                            if (showDivider)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    Expanded(child: Divider(color: Colors.white.withValues(alpha: 0.1))),
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
                                    Expanded(child: Divider(color: Colors.white.withValues(alpha: 0.1))),
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
    final epgService = Provider.of<IncrementalEpgService>(context, listen: false);
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
    final epgService = Provider.of<IncrementalEpgService>(context, listen: false);
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
      RegExp(r'^bbc(\d+)$', caseSensitive: false): (Match m) => 'BBC ${m.group(1)}',
      RegExp(r'^itv(\d+)?$', caseSensitive: false): (Match m) => 'ITV${m.group(1) ?? ''}',
      RegExp(r'^channel(\d+)$', caseSensitive: false): (Match m) => 'Channel ${m.group(1)}',
      RegExp(r'^sky(\w+)$', caseSensitive: false): (Match m) => 'Sky ${m.group(1)!.toUpperCase()}',
      RegExp(r'^fox(\w+)?$', caseSensitive: false): (Match m) => 'FOX${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^cnn(\w+)?$', caseSensitive: false): (Match m) => 'CNN${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^abc(\w+)?$', caseSensitive: false): (Match m) => 'ABC${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^nbc(\w+)?$', caseSensitive: false): (Match m) => 'NBC${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^cbs(\w+)?$', caseSensitive: false): (Match m) => 'CBS${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
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
}
