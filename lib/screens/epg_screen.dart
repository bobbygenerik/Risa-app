// ignore_for_file: sized_box_for_whitespace
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';

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

class _EPGScreenState extends State<EPGScreen> with SingleTickerProviderStateMixin {
    // Temporary stub to fix build error
    double _calculateProgramsGridWidth() => _calculateGridWidth();
  final DateTime _selectedDate = DateTime.now();
  final bool _isHourlyView = true;
  String? _selectedChannelId;
  String? _selectedCategory;
  Channel? _playingChannel;
  VideoPlayerController? _miniPlayerController;
  Set<String> _epgFavoriteChannelIds = {}; // EPG-specific favorites
  late AnimationController _refreshAnimationController;

  final ScrollController _horizontalScrollController = ScrollController();
  final ScrollController _verticalScrollController = ScrollController();
  final FocusNode _firstContentFocusNode = FocusNode();
  final FocusNode _miniPlayerCloseFocus = FocusNode();
  final FocusNode _miniPlayerMaximizeFocus = FocusNode();
  final FocusNode _refreshButtonFocus = FocusNode();
  Timer? _epgRefreshTimer;

  @override
  void initState() {
    super.initState();
    _refreshAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    
    // Start EPG auto-refresh timer (check every 30 minutes)
    _startEpgAutoRefresh();
    
    // Hide system UI for immersive experience
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    
    // Load EPG data on init with retry logic
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final epgService = Provider.of<EpgService>(context, listen: false);
      
      // Load EPG favorites from SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final favoritesList = prefs.getStringList('epg_favorite_channels') ?? [];
      setState(() {
        _epgFavoriteChannelIds = Set.from(favoritesList);
      });
      
      // Wait for EPG service to initialize (max 5 seconds)
      int initWaitCount = 0;
      while (!epgService.hasData && epgService.isLoading && initWaitCount < 50) {
        await Future.delayed(const Duration(milliseconds: 100));
        initWaitCount++;
      }
      
      debugPrint('EPG Screen: hasData = ${epgService.hasData}');
      debugPrint('EPG Screen: epgData.length = ${epgService.epgData.length}');
      debugPrint('EPG Screen: isLoading = ${epgService.isLoading}');
      debugPrint('EPG Screen: error = ${epgService.error}');
      
      // Load EPG if we don't have data yet (with retry)
      if (!epgService.hasData) {
        final epgUrl = prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');
        if (epgUrl != null && epgUrl.isNotEmpty) {
          debugPrint('EPG Screen: Loading EPG data from URL: $epgUrl');
          
          // Try loading with exponential backoff retry
          int retryCount = 0;
          const maxRetries = 3;
          bool success = false;
          
          while (!success && retryCount < maxRetries && mounted) {
            try {
              await epgService.loadEpgFromUrl(epgUrl, forceRefresh: retryCount > 0);
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
                debugPrint('EPG Screen: Load failed, retrying in ${delaySeconds}s... (attempt $retryCount/$maxRetries)');
                await Future.delayed(Duration(seconds: delaySeconds));
              } else {
                debugPrint('EPG Screen: Failed to load EPG after $maxRetries attempts: $e');
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
      
      // Check if we're coming back from player with mini player data
      if (widget.initialChannel != null && widget.continuePlayback) {
        // Auto-play the channel in mini player immediately
        _playChannelInMiniPlayer(widget.initialChannel!);
      }
    });
  }

  /// Scroll the EPG grid to show the current time
  void _scrollToCurrentTime({bool animate = true}) {
    // With the new layout, time starts 1 hour before current time
    // So we want to scroll to show current time about 1 cell (120px) from the left
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_horizontalScrollController.hasClients) return;
      
      // The grid now starts 1 hour before current time, so scroll position 0 
      // is already showing current time area. Scroll just a tiny bit to center current time.
      final now = DateTime.now();
      final minutesPastHour = now.minute;
      final scrollPosition = (minutesPastHour / 60) * 120.0; // Scroll based on minutes past the hour
      
      if (animate) {
        _horizontalScrollController.animateTo(
          scrollPosition,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      } else {
        _horizontalScrollController.jumpTo(scrollPosition);
      }
    });
  }

  void _startEpgAutoRefresh() {
    _epgRefreshTimer?.cancel();
    _epgRefreshTimer = Timer.periodic(const Duration(minutes: 30), (timer) async {
      if (!mounted) {
        timer.cancel();
        return;
      }
      
      final epgService = Provider.of<EpgService>(context, listen: false);
      final prefs = await SharedPreferences.getInstance();
      final epgUrl = prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');
      
      if (epgUrl != null && epgUrl.isNotEmpty && !epgService.isLoading) {
        debugPrint('EPG Screen: Auto-refreshing EPG data...');
        await epgService.refresh(epgUrl);
      }
    });
  }

  void requestFirstContentFocus() {
    if (_firstContentFocusNode.canRequestFocus) {
      _firstContentFocusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    // Restore system UI when leaving
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    _refreshAnimationController.dispose();
    _horizontalScrollController.dispose();
    _verticalScrollController.dispose();
    _miniPlayerController?.dispose();
    _miniPlayerCloseFocus.dispose();
    _miniPlayerMaximizeFocus.dispose();
    _refreshButtonFocus.dispose();
    _epgRefreshTimer?.cancel();
    super.dispose();
  }

  /// Scroll the channel list back to the top when category changes
  void _scrollChannelListToTop() {
    if (_verticalScrollController.hasClients) {
      _verticalScrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    }
  }

  void _playChannelInMiniPlayer(Channel channel) async {
    // Dispose previous controller
    _miniPlayerController?.dispose();

    setState(() {
      _playingChannel = channel;
    });

    try {
      _miniPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(channel.url),
      );

      // Initialize and play immediately
      await _miniPlayerController!.initialize();
      _miniPlayerController!.play(); // Start playing immediately without await

      if (mounted) {
        setState(() {});
      }
    } catch (e) {
      debugPrint('Error initializing mini player: $e');
    }
  }

  void _expandMiniPlayer() {
    if (_playingChannel != null) {
      // Pause mini player
      _miniPlayerController?.pause();

      // Navigate to full player
      context.push('/player', extra: _playingChannel);
    }
  }

  void _closeMiniPlayer() {
    _miniPlayerController?.dispose();
    _miniPlayerController = null;
    setState(() {
      _playingChannel = null;
    });
  }

  Future<void> _triggerEpgRefresh() async {
    if (!mounted) return;
    
    final prefs = await SharedPreferences.getInstance();
    final epgUrl = prefs.getString('epg_url') ?? 
                   prefs.getString('custom_epg_url');

    if (epgUrl == null || epgUrl.isEmpty) {
      if (mounted && context.mounted) {
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
    _refreshAnimationController.repeat();

    if (!mounted) return;
    final epgService = Provider.of<EpgService>(context, listen: false);
    
    // Refresh EPG in background
    await epgService.refresh(epgUrl);
    
    // Stop spinning
    _refreshAnimationController.stop();
    _refreshAnimationController.reset();
    
    // Don't show snackbar on EPG screen - user can see the data loading in the grid
  }

  Future<void> _toggleEpgFavorite(Channel channel) async {
    setState(() {
      if (_epgFavoriteChannelIds.contains(channel.id)) {
        _epgFavoriteChannelIds.remove(channel.id);
      } else {
        _epgFavoriteChannelIds.add(channel.id);
      }
    });
    
    // Save to SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('epg_favorite_channels', _epgFavoriteChannelIds.toList());
  }

  @override
  Widget build(BuildContext context) {
    // Keep using WillPopScope for now to remain compatible with current SDK.
    // TODO: Replace with `PopScope` when the project SDK is upgraded.
    // ignore: deprecated_member_use
    return Scaffold(
      body: CompatPopScope(
        onWillPop: () async {
          context.go('/home');
          return false;
        },
        child: Consumer2<ChannelProvider, EpgService>(
          builder: (context, channelProvider, epgService, child) {
            final hasChannels = channelProvider.hasChannels;

          if (!hasChannels) {
            return _buildEmptyState(context);
          }

          // Get category names (lightweight - no channel grouping)
          final categoryList = channelProvider.getAllCategoryNames();
          final categoryNames = ['⭐ Favorites', ...categoryList]; // Favorites first, then categories

          // Get filtered channels based on selection (limited for performance)
          List<Channel> filteredChannels;
          if (_selectedCategory == '⭐ Favorites') {
            filteredChannels = channelProvider.getFilteredChannels(
              favoriteIds: _epgFavoriteChannelIds,
              excludeHidden: true,
              limit: 500,
            );
          } else if (_selectedCategory != null) {
            filteredChannels = channelProvider.getFilteredChannels(
              category: _selectedCategory,
              excludeHidden: true,
              limit: 1000, // Allow up to 1000 channels per category
            );
          } else {
            filteredChannels = channelProvider.getFilteredChannels(
              excludeHidden: true,
              limit: 500, // Show 500 when no category selected
            );
          }
          
          // Sort by sortOrder
          filteredChannels.sort((a, b) {
                // Sort by custom order first, then by channel number, then by name
                if (a.sortOrder != null && b.sortOrder != null) {
                  return a.sortOrder!.compareTo(b.sortOrder!);
                }
                if (a.channelNumber != null && b.channelNumber != null) {
                  return a.channelNumber!.compareTo(b.channelNumber!);
                }
                return a.name.compareTo(b.name);
              });

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
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.05),
                        ),
                        child: Stack(
                          children: [
                            // Program grid with channel names - full width
                            Positioned.fill(
                              child: _buildProgramGrid(filteredChannels, epgService),
                            ),
                            // Category sidebar - overlaid on left with offset for main sidebar
                            Positioned(
                              left: 48,
                              top: 0,
                              bottom: 0,
                              width: 100,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFF050710).withOpacity(0.95),
                                  border: Border(
                                    right: BorderSide(color: Colors.white.withOpacity(0.1), width: 1),
                                  ),
                                ),
                                child: _buildCategorySidebar(categoryNames),
                              ),
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
                  left: 0,
                  right: 0,
                  child: _buildHeader(epgService),
                ),

                // Mini player overlay
                if (_playingChannel != null) _buildMiniPlayer(),
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
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF050710),
            Color(0xFF0d1140),
          ],
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.xl,
              vertical: AppSizes.xl,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.05 * 255).round()),
              borderRadius: BorderRadius.circular(AppSizes.radiusXl),
              border: Border.all(
                color: Colors.white.withAlpha((0.12 * 255).round()),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha((0.35 * 255).round()),
                  blurRadius: 40,
                  spreadRadius: 4,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSizes.lg),
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
                        color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.tv_off_outlined,
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
                  icon: Icons.playlist_add_circle,
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

  Widget _buildHeader(EpgService epgService) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          const Icon(Icons.dvr, color: Color(0xFF4a9eff), size: 20),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Electronic Program Guide',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                DateFormat('EEEE, MMM dd').format(_selectedDate),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 12,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          const Spacer(),
          // Refresh button with spinning animation when loading
          Focus(
            focusNode: _refreshButtonFocus,
            onKeyEvent: (node, event) {
              if (event is KeyDownEvent) {
                if (event.logicalKey == LogicalKeyboardKey.select ||
                    event.logicalKey == LogicalKeyboardKey.enter) {
                  if (!epgService.isLoading) {
                    _triggerEpgRefresh();
                  }
                  return KeyEventResult.handled;
                }
                if (event.logicalKey == LogicalKeyboardKey.arrowDown &&
                    _playingChannel != null) {
                  _miniPlayerCloseFocus.requestFocus();
                  return KeyEventResult.handled;
                }
              }
              return KeyEventResult.ignored;
            },
            child: Builder(
              builder: (context) {
                final isFocused = Focus.of(context).hasFocus;
                return Container(
                  decoration: isFocused
                      ? BoxDecoration(
                          border: Border.all(color: Color(0xFF4a9eff), width: 2),
                          borderRadius: BorderRadius.circular(20),
                        )
                      : null,
                  child: IconButton(
                    icon: AnimatedBuilder(
                      animation: _refreshAnimationController,
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: epgService.isLoading 
                              ? _refreshAnimationController.value * 2 * 3.14159
                              : 0,
                          child: Icon(
                            Icons.refresh,
                            size: 20,
                            color: epgService.isLoading ? Color(0xFF4a9eff) : Colors.white.withOpacity(0.7),
                          ),
                        );
                      },
                    ),
                    onPressed: epgService.isLoading
                        ? null
                        : () async {
                            final prefs = await SharedPreferences.getInstance();
                            final epgUrl = prefs.getString('epg_url') ?? 
                                           prefs.getString('custom_epg_url');

                            if (epgUrl == null || epgUrl.isEmpty) {
                              if (mounted && context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('No EPG URL configured'),
                                    backgroundColor: AppTheme.accentRed,
                                  ),
                                );
                              }
                              return;
                            }

                            _refreshAnimationController.repeat();
                            await epgService.refresh(epgUrl);
                            _refreshAnimationController.stop();
                            _refreshAnimationController.reset();
                          },
                    tooltip: 'Refresh EPG Data',
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 8),
          TextButton.icon(
            onPressed: _scrollToCurrentTime,
            icon: const Icon(Icons.access_time, size: 14),
            label: const Text('Now', style: TextStyle(fontSize: 13)),
            style: TextButton.styleFrom(
              foregroundColor: Color(0xFF4a9eff),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySidebar(List<String> categories) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return _buildCategoryItem(
          name: category,
          isSelected: _selectedCategory == category,
          onTap: () {
            setState(() {
              _selectedCategory = category;
            });
            // Scroll channel list to top
            _scrollChannelListToTop();
          },
        );
      },
    );
  }

  Widget _buildCategoryItem({
    required String name,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Focus(
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent && 
            (event.logicalKey == LogicalKeyboardKey.select || 
             event.logicalKey == LogicalKeyboardKey.enter)) {
          onTap();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      onFocusChange: (_) => setState(() {}),
      child: Builder(builder: (context) {
        final bool isFocused = Focus.of(context).hasFocus;
        final Color textColor = isFocused
            ? Colors.white
            : Colors.white.withOpacity(0.7);
        return GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.opaque,
          child: AnimatedScale(
            scale: isFocused ? 1.02 : 1.0,
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOut,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              child: Row(
                children: [
                  AnimatedOpacity(
                    opacity: isSelected ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 150),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      width: isSelected ? (isFocused ? 3 : 2) : 0,
                      height: 16,
                      decoration: isSelected
                          ? const BoxDecoration(
                              color: Color(0xFF4a9eff),
                            )
                          : null,
                    ),
                  ),
                  if (isSelected) const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 13,
                        fontWeight:
                            (isFocused || isSelected) ? FontWeight.w600 : FontWeight.w500,
                        decoration: TextDecoration.none,
                      ),
                      maxLines: 2,
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

  Widget _buildMiniPlayer() {
    if (_playingChannel == null) return const SizedBox.shrink();

    // Get current program for the channel
    final epgService = Provider.of<EpgService>(context, listen: false);
    final currentProgram = epgService.getCurrentProgram(
      _playingChannel!.tvgId ?? _playingChannel!.id,
      channelName: _playingChannel!.name,
    );

    return Positioned(
      bottom: 16,
      right: 16,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Channel info panel
          _buildChannelInfoPanel(currentProgram),
          const SizedBox(width: 12),
          // Video player
          Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(AppSizes.radiusLg),
            child: Container(
              width: 400,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                border: Border.all(color: AppTheme.primaryBlue, width: 2),
              ),
              child: Stack(
                children: [
                  // Video player
                  if (_miniPlayerController != null &&
                      _miniPlayerController!.value.isInitialized)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                      child: SizedBox.expand(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: _miniPlayerController!.value.size.width,
                            height: _miniPlayerController!.value.size.height,
                            child: VideoPlayer(_miniPlayerController!),
                          ),
                        ),
                      ),
                    )
                  else
                    const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: 8),
                          Text(
                            'Loading stream...',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),

                  // Controls overlay
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(AppSizes.sm),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
                      ),
                      child: Row(
                        children: [
                          // Channel logo
                          if (_playingChannel!.logoUrl != null)
                            Container(
                              width: 40,
                              height: 40,
                              margin: const EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.network(
                                  _playingChannel!.logoUrl!,
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Icon(
                                      Icons.dvr,
                                      color: AppTheme.primaryBlue,
                                    );
                                  },
                                ),
                              ),
                            ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _playingChannel!.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (currentProgram != null)
                                  Text(
                                    currentProgram.title,
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                              ],
                            ),
                          ),
                          Focus(
                            focusNode: _miniPlayerCloseFocus,
                            onKeyEvent: (node, event) {
                              if (event is KeyDownEvent) {
                                if (event.logicalKey == LogicalKeyboardKey.select ||
                                    event.logicalKey == LogicalKeyboardKey.enter) {
                                  _closeMiniPlayer();
                                  return KeyEventResult.handled;
                                }
                                if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                                  _refreshButtonFocus.requestFocus();
                                  return KeyEventResult.handled;
                                }
                                if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                                  _miniPlayerMaximizeFocus.requestFocus();
                                  return KeyEventResult.handled;
                                }
                              }
                              return KeyEventResult.ignored;
                            },
                            child: Builder(
                              builder: (context) {
                                final isFocused = Focus.of(context).hasFocus;
                                return Container(
                                  decoration: isFocused
                                      ? BoxDecoration(
                                          border: Border.all(color: AppTheme.primaryBlue, width: 2),
                                          borderRadius: BorderRadius.circular(4),
                                        )
                                      : null,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                    onPressed: _closeMiniPlayer,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Expand button
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Focus(
                      focusNode: _miniPlayerMaximizeFocus,
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent) {
                          if (event.logicalKey == LogicalKeyboardKey.select ||
                              event.logicalKey == LogicalKeyboardKey.enter) {
                            _expandMiniPlayer();
                            return KeyEventResult.handled;
                          }
                          if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                            _miniPlayerCloseFocus.requestFocus();
                            return KeyEventResult.handled;
                          }
                        }
                        return KeyEventResult.ignored;
                      },
                      child: Builder(
                        builder: (context) {
                          final isFocused = Focus.of(context).hasFocus;
                          return IconButton(
                            icon: const Icon(Icons.fullscreen, color: Colors.white),
                            onPressed: _expandMiniPlayer,
                            style: IconButton.styleFrom(
                              backgroundColor: isFocused
                                  ? AppTheme.primaryBlue.withAlpha((0.7 * 255).round())
                                  : Colors.black.withAlpha((0.5 * 255).round()),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChannelInfoPanel(Program? currentProgram) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(AppSizes.radiusLg),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
          color: const Color(0xE6121629), // 90% opaque dark blue
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
          border: Border.all(color: AppTheme.divider),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Current program
            if (currentProgram != null) ...[
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppTheme.accentRed,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Row(
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
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${DateFormat.jm().format(currentProgram.startTime)} - ${DateFormat.jm().format(currentProgram.endTime)}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                currentProgram.title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              if (currentProgram.description != null)
                Text(
                  currentProgram.description!,
                  style: const TextStyle(fontSize: 13, color: AppTheme.textSecondary),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
            ] else ...[
              const Text(
                'No Program Information',
                style: TextStyle(fontSize: 14, color: AppTheme.textSecondary),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildProgramGrid(List<Channel> channels, EpgService epgService) {
    debugPrint('EPG Grid: isLoading=${epgService.isLoading}, hasData=${epgService.hasData}, epgData keys=${epgService.epgData.keys.length}');
    
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
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                color: Color(0xFF4a9eff).withOpacity(0.2),
                child: Row(
                  children: [
                    const Icon(Icons.info_outline, size: 16, color: Color(0xFF4a9eff)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'No EPG data. Configure EPG URL in Settings.',
                        style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            // Main EPG grid with fixed channel sidebar
            Expanded(
              child: SingleChildScrollView(
                controller: _verticalScrollController,
                physics: const ClampingScrollPhysics(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // FIXED channel sidebar (does NOT scroll horizontally or independently)
                    // Offset by main sidebar (48px) + category sidebar (100px) = 148px
                    SizedBox(
                      width: 148 + channelSidebarWidth,
                      child: Row(
                        children: [
                          // Spacer for main sidebar + category sidebar
                          const SizedBox(width: 148),
                          // Channel column
                          SizedBox(
                            width: channelSidebarWidth,
                            child: Column(
                              children: [
                                Container(
                                  height: 48,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(color: Colors.white.withOpacity(0.1), width: 1),
                                      bottom: BorderSide(color: Colors.white.withOpacity(0.1), width: 1),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      _selectedDate.day == DateTime.now().day &&
                                          _selectedDate.month == DateTime.now().month &&
                                          _selectedDate.year == DateTime.now().year
                                          ? 'Today'
                                          : '${_selectedDate.month}/${_selectedDate.day}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        color: Colors.white.withOpacity(0.9),
                                      ),
                                    ),
                                  ),
                                ),
                                // Channel list (built as static Column - scrolls with parent)
                                ...List.generate(channels.length, (index) {
                                  final channel = channels[index];
                                  return _buildChannelSidebarItem(channel);
                                }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SCROLLABLE time header + programs section
                    Expanded(
                      child: SingleChildScrollView(
                        controller: _horizontalScrollController,
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: _calculateProgramsGridWidth(),
                          child: Column(
                            children: [
                              // Time header (scrolls horizontally)
                              _buildTimeHeaderOnly(),
                              const Divider(height: 1, color: AppTheme.divider),
                              // Programs grid (built as static Column - scrolls with parent)
                              ...List.generate(channels.length, (index) {
                                final channel = channels[index];
                                return _buildProgramRowOnly(channel, epgService);
                              }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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

  /// Channel sidebar item (fixed on left)
  Widget _buildChannelSidebarItem(Channel channel) {
    final isSelected = _selectedChannelId == channel.id;
    
    return Focus(
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent && 
            (event.logicalKey == LogicalKeyboardKey.select || 
             event.logicalKey == LogicalKeyboardKey.enter)) {
          setState(() {
            _selectedChannelId = channel.id;
          });
          _playChannelInMiniPlayer(channel);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedChannelId = channel.id;
              });
              _playChannelInMiniPlayer(channel);
            },
            onLongPress: () => _showChannelContextMenu(context, channel),
            child: Container(
              height: 48,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: isFocused 
                    ? const Color(0xFF4a9eff).withOpacity(0.15)
                    : isSelected 
                        ? const Color(0xFF4a9eff).withOpacity(0.1)
                        : Colors.transparent,
                border: Border(
                  right: BorderSide(color: Colors.white.withOpacity(0.05), width: 1),
                  bottom: BorderSide(color: Colors.white.withOpacity(0.03), width: 0.5),
                ),
              ),
              child: Center(
                child: Container(
                    width: 60,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: channel.logoUrl != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              channel.logoUrl!,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return const Center(
                                  child: Icon(
                                    Icons.dvr,
                                    color: AppTheme.primaryBlue,
                                    size: 18,
                                  ),
                                );
                              },
                            ),
                          )
                        : const Center(
                            child: Icon(
                              Icons.dvr,
                              color: AppTheme.primaryBlue,
                              size: 18,
                            ),
                          ),
                  ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Time header only (no channel sidebar part)
  Widget _buildTimeHeaderOnly() {
    final now = DateTime.now();
    final startHour = (now.hour - 1).clamp(0, 23);
    final hoursToShow = 12;
    final cellWidth = 120.0;

    return Container(
      height: 48,
      child: Row(
        children: List.generate(hoursToShow, (index) {
          final hour = (startHour + index) % 24;
          final time = TimeOfDay(hour: hour, minute: 0);

          return Container(
            width: cellWidth,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.white.withOpacity(0.1), width: 0.5),
              ),
            ),
            child: Center(
              child: Text(
                time.format(context),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  /// Program row only (no channel info part)
  Widget _buildProgramRowOnly(Channel channel, EpgService epgService) {
    final channelKey = channel.tvgId ?? channel.id;
    final programs = epgService.getProgramsForChannel(channelKey, channelName: channel.name);
    
    final now = DateTime.now();
    final startHour = (now.hour - 1).clamp(0, 23);
    final displayStart = DateTime(_selectedDate.year, _selectedDate.month, _selectedDate.day, startHour);
    final displayEnd = displayStart.add(const Duration(hours: 12));
    
    final dayPrograms = programs.where((program) {
      return program.startTime.isBefore(displayEnd) && program.endTime.isAfter(displayStart);
    }).toList();

    final cellWidth = 120.0;
    final totalWidth = 12 * cellWidth;

    return Container(
      height: 48,
      width: totalWidth,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white.withOpacity(0.03), width: 0.5),
        ),
      ),
      child: dayPrograms.isEmpty
          ? Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'No EPG data',
                style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.5)),
              ),
            )
          : Stack(
              clipBehavior: Clip.hardEdge,
              children: dayPrograms.map((program) {
                final programStart = program.startTime.isBefore(displayStart) ? displayStart : program.startTime;
                final programEnd = program.endTime.isAfter(displayEnd) ? displayEnd : program.endTime;
                
                final minutesFromStart = programStart.difference(displayStart).inMinutes;
                final leftOffset = (minutesFromStart / 60) * cellWidth;
                
                final visibleDuration = programEnd.difference(programStart).inMinutes;
                final calculatedWidth = (visibleDuration / 60) * cellWidth;
                final maxWidth = (totalWidth - leftOffset).clamp(0.0, double.infinity);
                final minWidth = maxWidth < 30.0 ? maxWidth : 30.0;
                final width = calculatedWidth.clamp(minWidth, maxWidth);
                
                return Positioned(
                  left: leftOffset,
                  top: 2,
                  bottom: 2,
                  width: width,
                  child: _buildProgramCellSimple(program),
                );
              }).toList(),
            ),
    );
  }

  /// Simple program cell (used in the new layout)
  Widget _buildProgramCellSimple(Program program) {
    final isLive = program.isCurrentlyPlaying;
    final hasCatchup = program.hasCatchup;
    
    const epgCellBackground = Color(0xFF1E1E28);
    const epgLiveColor = Color(0xFF4a4fc9);
    const epgCatchupColor = Color(0xFFcc5a2d);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: BoxDecoration(
        color: isLive ? epgLiveColor : hasCatchup ? epgCatchupColor.withAlpha((0.4 * 255).round()) : epgCellBackground,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: isLive ? epgLiveColor : hasCatchup ? epgCatchupColor : const Color(0xFF2a2a35),
          width: isLive || hasCatchup ? 2 : 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _showProgramDetails(program),
          onLongPress: () => _showProgramContextMenu(program),
          borderRadius: BorderRadius.circular(4),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    if (hasCatchup) ...[
                      const Icon(Icons.replay, size: 10, color: epgCatchupColor),
                      const SizedBox(width: 3),
                    ],
                    Expanded(
                      child: Text(
                        program.title,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: isLive ? FontWeight.w600 : FontWeight.normal,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Text(
                  '${DateFormat.jm().format(program.startTime)} - ${DateFormat.jm().format(program.endTime)}',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white.withOpacity(0.6),
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showProgramDetails(Program program) {
    final rootContext = context; // Capture parent context for snackbars
    showDialog(
      context: context,
      builder: (dialogContext) => Dialog(
        backgroundColor: AppTheme.dialogBackground,
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(AppSizes.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Program image
              if (program.imageUrl != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                  child: Image.network(
                    program.imageUrl!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF050710),
                              Color(0xFF0d1140),
                            ],
                          ),
                        ),
                        child: const Icon(Icons.dvr, size: 64),
                      );
                    },
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
                              fontSize: 10,
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
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pop(dialogContext);
                          _playCatchup(program);
                        },
                        icon: const Icon(Icons.replay),
                        label: const Text('Watch Catch-up'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.accentOrange,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                  if (program.hasCatchup && program.isFutureProgram)
                    const SizedBox(width: AppSizes.sm),
                  // Record button (only for future programs)
                  if (program.isFutureProgram)
                    Expanded(
                      child: OutlinedButton.icon(
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
                        icon: const Icon(Icons.fiber_manual_record),
                        label: const Text('Record'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          side: const BorderSide(color: AppTheme.accentRed),
                        ),
                      ),
                    ),
                  // Remind button (only for future programs)
                  if (program.isFutureProgram) ...[
                    const SizedBox(width: AppSizes.sm),
                    Expanded(
                      child: OutlinedButton.icon(
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
                        icon: const Icon(Icons.alarm),
                        label: const Text('Remind'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          side: const BorderSide(color: AppTheme.primaryBlue),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateGridWidth() {
    const hoursToShow = 12;
    const cellWidth = 120.0;
    return hoursToShow * cellWidth;
  }

  void _showChannelOptions(Channel channel) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.dialogBackground,
        title: const Text('Channel Options'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                channel.isFavorite == true
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: AppTheme.accentRed,
              ),
              title: Text(
                channel.isFavorite == true
                    ? 'Remove from Favorites'
                    : 'Add to Favorites',
              ),
              onTap: () {
                Navigator.pop(context);
                _toggleFavorite(channel);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.visibility_off,
                color: AppTheme.textSecondary,
              ),
              title: const Text('Hide Channel'),
              onTap: () {
                Navigator.pop(context);
                _hideChannel(channel);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit, color: AppTheme.primaryBlue),
              title: const Text('Edit Channel Number'),
              onTap: () {
                Navigator.pop(context);
                _editChannelNumber(channel);
              },
            ),
            ListTile(
              leading: const Icon(Icons.link, color: AppTheme.accentGreen),
              title: const Text('Assign EPG Source'),
              onTap: () {
                Navigator.pop(context);
                _assignEPGSource(channel);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _toggleFavorite(Channel channel) {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    if (channel.isFavorite == true) {
      channelProvider.removeFromFavorites(channel);
    } else {
      channelProvider.addToFavorites(channel);
    }
    showAppSnackBar(
      context,
      SnackBar(
        content: Text(
          channel.isFavorite == true
              ? 'Removed from favorites'
              : 'Added to favorites',
        ),
      ),
    );
  }

  void _hideChannel(Channel channel) {
    // This would update the channel provider to mark channel as hidden
    showAppSnackBar(
      context,
      SnackBar(
        content: Text('${channel.name} has been hidden'),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            // Undo hide action
          },
        ),
      ),
    );
  }

  void _editChannelNumber(Channel channel) {
    final controller = TextEditingController(
      text: channel.channelNumber?.toString() ?? '',
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.dialogBackground,
        title: const Text('Edit Channel Number'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Channel Number',
            hintText: 'Enter channel number',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Update channel number
              final localContext = context;
              if (localContext.mounted) {
                showAppSnackBar(localContext, const SnackBar(content: Text('Channel number updated')));
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  /// Show context menu for channel long press
  void _showChannelContextMenu(BuildContext ctx, Channel channel) {
    if (!mounted) return;
    final epgService = Provider.of<EpgService>(context, listen: false);
    final hasMapping = epgService.hasManualMapping(channel.tvgId ?? channel.id);
    
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.dialogBackground,
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
                  if (channel.logoUrl != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        channel.logoUrl!,
                        width: 40,
                        height: 40,
                        fit: BoxFit.contain,
                        errorBuilder: (_, __, ___) => const Icon(Icons.tv, size: 40),
                      ),
                    )
                  else
                    const Icon(Icons.tv, size: 40, color: AppTheme.primaryBlue),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          channel.name,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'ID: ${channel.tvgId ?? channel.id}',
                          style: TextStyle(color: AppTheme.textSecondary, fontSize: 12),
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
                _epgFavoriteChannelIds.contains(channel.id) ? Icons.favorite : Icons.favorite_border,
                color: AppTheme.accentPink,
              ),
              title: Text(_epgFavoriteChannelIds.contains(channel.id) ? 'Remove from Favorites' : 'Add to Favorites'),
              onTap: () {
                Navigator.pop(ctx);
                _toggleEpgFavorite(channel);
              },
            ),
            ListTile(
              leading: const Icon(Icons.link, color: AppTheme.primaryBlue),
              title: const Text('Match EPG Channel'),
              subtitle: hasMapping 
                  ? Text('Currently: ${epgService.getManualMapping(channel.tvgId ?? channel.id)}', 
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
    );
  }

  /// Show EPG channel selection dialog
  void _showEpgChannelSelector(Channel channel) {
    if (!mounted) return;
    final epgService = Provider.of<EpgService>(context, listen: false);
    final epgChannelIds = epgService.getEpgChannelIds();
    
    if (epgChannelIds.isEmpty) {
      showAppSnackBar(context, const SnackBar(
        content: Text('No EPG data loaded. Please configure EPG URL in Settings.'),
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
    
    showDialog(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, setDialogState) {
          List<String> filteredIds;
          bool showingSuggestions = searchQuery.isEmpty;
          
          if (searchQuery.isEmpty) {
            // Show suggestions first, then all others
            final suggestedIds = suggestions.map((e) => e.key).toSet();
            final otherIds = epgChannelIds.where((id) => !suggestedIds.contains(id)).toList();
            filteredIds = [...suggestions.map((e) => e.key), ...otherIds];
          } else {
            filteredIds = epgChannelIds.where((id) => 
                id.toLowerCase().contains(searchQuery.toLowerCase())).toList();
          }
          
          return AlertDialog(
            backgroundColor: AppTheme.dialogBackground,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Match EPG for ${channel.name}', style: const TextStyle(fontSize: 16)),
                Text(
                  'ID: ${channel.tvgId ?? channel.id}',
                  style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search EPG channels...',
                    prefixIcon: const Icon(Icons.search),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
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
                      itemCount: filteredIds.length + (showingSuggestions && suggestions.isNotEmpty ? 1 : 0),
                      itemBuilder: (context, index) {
                        // Show "Suggested Matches" header
                        if (showingSuggestions && suggestions.isNotEmpty && index == 0) {
                          return Container(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                            child: Row(
                              children: [
                                const Icon(Icons.auto_awesome, size: 16, color: AppTheme.primaryBlue),
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
                        
                        final adjustedIndex = showingSuggestions && suggestions.isNotEmpty ? index - 1 : index;
                        if (adjustedIndex < 0 || adjustedIndex >= filteredIds.length) return const SizedBox.shrink();
                        
                        final epgId = filteredIds[adjustedIndex];
                        final preview = epgService.getChannelPreview(epgId);
                        final currentMapping = epgService.getManualMapping(channel.tvgId ?? channel.id);
                        final isCurrentlyMapped = currentMapping == epgId;
                        final isSuggested = showingSuggestions && adjustedIndex < suggestions.length;
                        final suggestionScore = isSuggested ? suggestions[adjustedIndex].value : 0.0;
                        
                        // Show divider after suggestions
                        final showDivider = showingSuggestions && 
                            suggestions.isNotEmpty && 
                            adjustedIndex == suggestions.length - 1;
                        
                        return Column(
                          children: [
                            ListTile(
                              dense: true,
                              leading: isCurrentlyMapped 
                                  ? const Icon(Icons.check_circle, color: AppTheme.accentGreen)
                                  : isSuggested
                                      ? Icon(
                                          Icons.stars,
                                          color: suggestionScore > 0.7 
                                              ? AppTheme.accentGreen 
                                              : suggestionScore > 0.4 
                                                  ? AppTheme.primaryBlue 
                                                  : AppTheme.textSecondary,
                                        )
                                      : const Icon(Icons.tv_outlined, color: AppTheme.textSecondary),
                              title: Text(
                                epgId,
                                style: TextStyle(
                                  fontWeight: isCurrentlyMapped || isSuggested ? FontWeight.bold : FontWeight.normal,
                                  color: isCurrentlyMapped ? AppTheme.accentGreen : null,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (preview != null)
                                    Text(
                                      'Now: $preview',
                                      style: const TextStyle(fontSize: 11),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  if (isSuggested)
                                    Text(
                                      'Match: ${(suggestionScore * 100).toInt()}%',
                                      style: TextStyle(
                                        fontSize: 10,
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
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    const Expanded(child: Divider()),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8),
                                      child: Text(
                                        'All EPG Channels',
                                        style: TextStyle(fontSize: 11, color: AppTheme.textSecondary),
                                      ),
                                    ),
                                    const Expanded(child: Divider()),
                                  ],
                                ),
                              ),
                          ],
                        );
                      },
                    ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext),
                child: const Text('Cancel'),
              ),
            ],
          );
        },
      ),
    );
  }

  /// Set EPG mapping for a channel
  Future<void> _setEpgMapping(Channel channel, String epgChannelId) async {
    final epgService = Provider.of<EpgService>(context, listen: false);
    await epgService.setManualMapping(channel.tvgId ?? channel.id, epgChannelId);
    
    if (mounted) {
      showAppSnackBar(context, SnackBar(
        content: Text('EPG mapped: ${channel.name} → $epgChannelId'),
        backgroundColor: AppTheme.accentGreen,
      ));
      setState(() {}); // Refresh to show new EPG data
    }
  }

  /// Remove EPG mapping for a channel
  Future<void> _removeEpgMapping(Channel channel) async {
    final epgService = Provider.of<EpgService>(context, listen: false);
    await epgService.removeManualMapping(channel.tvgId ?? channel.id);
    
    if (mounted) {
      showAppSnackBar(context, SnackBar(
        content: Text('EPG mapping removed for ${channel.name}'),
        backgroundColor: AppTheme.primaryBlue,
      ));
      setState(() {}); // Refresh
    }
  }

  void _assignEPGSource(Channel channel) {
    // Use the new EPG channel selector instead of text input
    _showEpgChannelSelector(channel);
  }

  /// Show context menu for program long press
  void _showProgramContextMenu(Program program) {
    if (!mounted) return;
    final isLive = program.isCurrentlyPlaying;
    final hasCatchup = program.hasCatchup;
    final isPast = program.endTime.isBefore(DateTime.now());
    final isFuture = program.startTime.isAfter(DateTime.now());
    
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.dialogBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header with program info
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Program image or icon
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: isLive 
                          ? AppTheme.primaryBlue 
                          : hasCatchup 
                              ? const Color(0xFFcc5a2d).withAlpha((0.3 * 255).round())
                              : AppTheme.cardBackground,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: program.imageUrl != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              program.imageUrl!,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => Icon(
                                isLive ? Icons.live_tv : Icons.tv,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : Icon(
                            isLive ? Icons.live_tv : hasCatchup ? Icons.replay : Icons.tv,
                            color: Colors.white,
                            size: 28,
                          ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (isLive)
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: AppTheme.accentRed,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'LIVE',
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                ),
                              ),
                            if (hasCatchup && !isLive)
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFcc5a2d),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'CATCHUP',
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          program.title,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${DateFormat.jm().format(program.startTime)} - ${DateFormat.jm().format(program.endTime)}',
                          style: TextStyle(color: AppTheme.textSecondary, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            const SizedBox(height: 8),
            
            // Watch Catchup option (only if has catchup and not live)
            if (hasCatchup && !isLive && isPast)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: TVFocusable(
                  onPressed: () {
                    Navigator.pop(ctx);
                    _playCatchup(program);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFcc5a2d).withAlpha((0.15 * 255).round()),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.replay, color: Color(0xFFcc5a2d)),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Watch Catchup', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                              const SizedBox(height: 2),
                              Text('Watch from the beginning', 
                                style: TextStyle(fontSize: 12, color: AppTheme.textSecondary)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            
            // Record option (for future or live programs)
            if (!isPast || isLive)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: TVFocusable(
                  onPressed: () {
                    Navigator.pop(ctx);
                    _scheduleRecording(program);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppTheme.accentRed.withAlpha((0.15 * 255).round()),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.fiber_manual_record, color: AppTheme.accentRed),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(isLive ? 'Record Now' : 'Schedule Recording', 
                                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                              const SizedBox(height: 2),
                              Text(isLive ? 'Start recording this program' : 'Record when it airs',
                                style: TextStyle(fontSize: 12, color: AppTheme.textSecondary)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            
            // Set Reminder (for future programs)
            if (isFuture)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: TVFocusable(
                  onPressed: () {
                    Navigator.pop(ctx);
                    _setReminder(program);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue.withAlpha((0.15 * 255).round()),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.alarm_add, color: AppTheme.primaryBlue),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Set Reminder', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                              const SizedBox(height: 2),
                              Text('Get notified when it starts', 
                                style: TextStyle(fontSize: 12, color: AppTheme.textSecondary)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            
            // View Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: TVFocusable(
                onPressed: () {
                  Navigator.pop(ctx);
                  _showProgramDetails(program);
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppTheme.cardBackground,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.info_outline, color: AppTheme.textSecondary),
                      const SizedBox(width: 16),
                      const Text('View Details', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  /// Schedule recording for a program
  void _scheduleRecording(Program program) {
    // TODO: Implement actual recording functionality
    if (!mounted) return;
    showAppSnackBar(context, SnackBar(
      content: Text('Recording scheduled: ${program.title}'),
      backgroundColor: AppTheme.accentRed,
      action: SnackBarAction(
        label: 'Undo',
        textColor: Colors.white,
        onPressed: () {
          // Cancel recording
        },
      ),
    ));
  }

  /// Set reminder for a program
  void _setReminder(Program program) {
    // TODO: Implement actual reminder/notification functionality
    if (!mounted) return;
    final timeUntil = program.startTime.difference(DateTime.now());
    String timeStr;
    if (timeUntil.inHours > 0) {
      timeStr = '${timeUntil.inHours}h ${timeUntil.inMinutes % 60}m';
    } else {
      timeStr = '${timeUntil.inMinutes}m';
    }
    
    showAppSnackBar(context, SnackBar(
      content: Text('Reminder set for ${program.title} (in $timeStr)'),
      backgroundColor: AppTheme.primaryBlue,
      action: SnackBarAction(
        label: 'Undo',
        textColor: Colors.white,
        onPressed: () {
          // Cancel reminder
        },
      ),
    ));
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
