import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/widgets/cached_image.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/go_to_settings_button.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/brand_badge.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/app_icons.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:iptv_player/services/focus_pool_service.dart';

/// A focused Live TV screen. Shows a hero for the currently airing program
/// on a featured channel, plus channel rows below.
class LiveTVScreen extends StatefulWidget {
  const LiveTVScreen({super.key});

  @override
  State<LiveTVScreen> createState() => _LiveTVScreenState();
}

class _LiveTVScreenState extends State<LiveTVScreen>
    with ContentFocusRegistrant<LiveTVScreen> {
  int _featuredIndex = 0;
  final TimerService _timerService = TimerService();
  final FocusPoolService _focusPool = FocusPoolService();
  late final ScrollController _scrollController;
  
  late final FocusNode _heroFocus;
  late final FocusNode _settingsButtonFocus;
  final Map<String, String?> _programArtwork = {};
  final Set<String> _artworkRequests = {};
  late final bool _tmdbEnabled;

  bool _heroVideoPreview = false;

  @override
  void initState() {
    super.initState();
    _tmdbEnabled = ServiceValidator.isTmdbAvailable;
    
    // Initialize scroll controller
    _scrollController = ScrollController();
    
    // Get focus nodes from pool
    _heroFocus = _focusPool.getFocusNode('live_tv_hero', debugLabel: 'Live TV Hero');
    _settingsButtonFocus = _focusPool.getFocusNode('live_tv_settings', debugLabel: 'Live TV Settings');
    // Start carousel once the widget is built - will be updated when channels load
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _startCarouselIfNeeded();
        _loadHeroVideoPreferenceSetting();
      },
    );
  }







  @override
  void dispose() {
    _timerService.unregister('live_tv_carousel');
    _scrollController.dispose();
    _focusPool.returnFocusNodes(['live_tv_hero', 'live_tv_settings']);
    super.dispose();
  }

  @override
  bool handleContentFocusRequest() {
    return _focusPrimaryAction();
  }

  bool _focusPrimaryAction() {
    if (!mounted) return false;
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    if (channelProvider.channels.isEmpty) {
      _settingsButtonFocus.requestFocus();
      return true;
    }
    // Find first focusable channel card
    final firstFocusable = FocusScope.of(context).children.firstWhere(
          (node) => node.canRequestFocus && node.context != null,
          orElse: () => _heroFocus,
        );
    firstFocusable.requestFocus();
    return true;
  }

  void _goToSettings() {
    final router = GoRouter.of(context);
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) router.go('/settings');
    });
  }

  void _startCarouselIfNeeded() {
    // Register carousel timer (8 seconds)
    _timerService.registerCustomCallback('live_tv_carousel', 8, () {
      _nextHero();
    });
    // Focus is managed by navigation bar - don't auto-focus content
  }

  void _nextHero() {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    if (!channelProvider.hasChannels) return;
    setState(() {
      // Simply cycle to next channel without EPG dependency
      _featuredIndex = (_featuredIndex + 1) % channelProvider.channelCount;
    });
  }

  void _previousHero() {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    if (!channelProvider.hasChannels) return;
    setState(() {
      // Simply cycle to previous channel without EPG dependency
      _featuredIndex = (_featuredIndex - 1 + channelProvider.channelCount) % channelProvider.channelCount;
    });
  }



  @override
  Widget build(BuildContext context) {

    final body = Container(
      decoration: const BoxDecoration(
        color: AppColors.background,
      ),
      child: Consumer2<ChannelProvider, IncrementalEpgService>(
        builder: (context, channelProvider, epgService, _) {
          final hasChannels = channelProvider.hasChannels;

          // Show skeleton only when channels are loading
          if (!hasChannels && channelProvider.isLoading) {
            return _buildSkeletonLoader();
          }

          if (!hasChannels) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  context.iconXxl(
                    AppIcons.liveTV,
                    color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
                  ),
                  SizedBox(height: context.tvSpacing(24)),
                  Text(
                    'No Live TV Available',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: context.tvSpacing(8)),
                  Text(
                    'Load a playlist with Live TV channels from Settings',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: context.tvSpacing(32)),
                  GoToSettingsButton(
                    onPressed: _goToSettings,
                    focusNode: _settingsButtonFocus,
                  ),
                ],
              ),
            );
          }

          // Ensure index is valid for current channel list (using full count)
          final totalChannels = channelProvider.channelCount;
          if (_featuredIndex >= totalChannels) _featuredIndex = 0;

          final featuredChannel = channelProvider.getChannelAt(_featuredIndex);
          
          // Ensure EPG data is loaded for featured channel
          Program? currentProgram;
          try {
            final channelId = featuredChannel.tvgId ?? featuredChannel.id;
            // Always try to get current program
            currentProgram = epgService.getCurrentProgram(channelId);
            // If no program found, trigger EPG loading
            if (currentProgram == null) {
              Future.microtask(() => epgService.ensureChannelLoaded(channelId));
            }
          } catch (e) {
            // Ignore EPG errors to prevent freezing
            currentProgram = null;
          }

          // Get grouped channels (may be empty while computing in background)
          final groupedChannels = channelProvider.getGroupedChannels();
          final isGrouping = channelProvider.isGroupingChannels;
          
          // Use preview list for "allChannels" param if implicitly used, 
          // but the Hero builder doesn't really iterate it except maybe for matching? 
          // Actually it passes it. Let's pass the preview list for safety or null if unused.
          // Checking _buildFullScreenHero signature: it takes `List<Channel> allChannels`.
          final previewList = channelProvider.channels;

          // Full-screen hero background with all content inside
          return _buildFullScreenHero(
            context,
            featuredChannel,
            currentProgram,
            previewList,
            groupedChannels,
            isGrouping,
          );
        },
      ),
    );

    return body;
  }



  Widget _buildFullScreenHero(
    BuildContext context,
    Channel featuredChannel,
    Program? currentProgram,
    List<Channel> allChannels,
    Map<String, List<Channel>> groupedChannels,
    bool isGrouping,
  ) {
    final heroImage = _resolveHeroImage(currentProgram);
    final screenSize = MediaQuery.of(context).size;
    final isTV = screenSize.width >= 1920 || screenSize.height >= 1080;
    final heroHeight = screenSize.height;
    final sidebarWidth = AppSizes.sidebarCollapsedWidth + 16;

    return Focus(
      focusNode: _heroFocus,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter) {
            context.push('/player', extra: featuredChannel);
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            _previousHero();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
            _nextHero();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
            return requestNavigationFocus()
                ? KeyEventResult.handled
                : KeyEventResult.ignored;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
            _scrollController.animateTo(
              screenSize.height * 0.8,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeOutCubic,
            );
            // Focus first channel card immediately
            Future.delayed(const Duration(milliseconds: 100), () {
              if (!mounted) return;
              _focusPrimaryAction();
            });
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: AnimatedBuilder(
        animation: _scrollController,
        builder: (context, child) {
          final scrollOffset = _scrollController.hasClients ? _scrollController.offset : 0.0;
          final fadeProgress = (scrollOffset / (heroHeight * 0.5)).clamp(0.0, 1.0);
          
          return Stack(
            children: [
              // Fixed hero background
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: heroHeight,
                child: Opacity(
                  opacity: 1.0 - fadeProgress,
                  child: Stack(
                    children: [
                      _buildHeroContent(
                        featuredChannel,
                        currentProgram,
                        heroImage,
                        0.0,
                      ),
                      // Gradient fade at bottom
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        height: 120,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                AppTheme.darkBackground.withAlpha((0.8 * 255).round()),
                                AppTheme.darkBackground,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Scrollable content
              Positioned.fill(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Hero spacer
                      SizedBox(height: heroHeight),
                      // Content with sidebar alignment
                      Container(
                        color: AppTheme.darkBackground,
                        padding: EdgeInsets.only(
                          left: sidebarWidth,
                          right: 24,
                          bottom: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16),
                            if (isGrouping && groupedChannels.isEmpty)
                              _buildCategoryLoadingIndicator()
                            else
                              ..._buildCategoryRows(context, groupedChannels, isTV),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Hero info overlay
              Positioned(
                bottom: heroHeight * 0.25,
                left: sidebarWidth,
                width: screenSize.width * 0.4,
                child: Opacity(
                  opacity: 1.0 - fadeProgress,
                  child: _buildFeaturedInfo(context, featuredChannel, currentProgram),
                ),
              ),
              // Channel logo
              Positioned(
                top: AppSizes.lg,
                right: AppSizes.lg,
                child: Opacity(
                  opacity: 1.0 - fadeProgress,
                  child: _buildChannelLogo(context, featuredChannel),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildFeaturedInfo(
      BuildContext context, Channel channel, Program? program) {
    final title = program?.title ?? channel.name;
    final description = program?.description ?? '';
    final timeRange = program != null
        ? '${_formatTime(program.startTime)} - ${_formatTime(program.endTime)}'
        : '';
    final progress = program?.progressPercentage ?? 0.0;

    return Container(
      padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title - fixed height
              SizedBox(
                height: context.tvTextSize(24) * 1.3 * 2,
                child: Text(
                  title,
                  style: AppTypography.heroTitle(context),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: context.tvSpacing(8)),
              // Description - fixed height
              SizedBox(
                height: context.tvTextSize(14) * 1.3 * 3,
                child: Text(
                  description,
                  style: AppTypography.heroDescription(context),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: context.tvSpacing(8)),
              // Progress bar - fixed height
              SizedBox(
                height: 6,
                child: program != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: LinearProgressIndicator(
                          value: progress,
                          backgroundColor: AppColors.progressBackground,
                          color: AppColors.progressForeground,
                          minHeight: 6,
                        ),
                      )
                    : Container(),
              ),
              SizedBox(height: context.tvSpacing(4)),
              // Time range with LIVE badge - fixed height
              SizedBox(
                height: context.tvTextSize(13) * 1.4,
                child: Row(
                  children: [
                    if (program != null) ...[
                      const BrandBadge.live(),
                      const SizedBox(width: 8),
                    ],
                    Text(
                      timeRange,
                      style: AppTypography.smallText(context),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              BrandPrimaryButton(
                onPressed: () => context.push('/player', extra: channel),
                icon: Icons.play_arrow,
                label: 'Watch Live',
              ),
            ],
          ),
    );
  }

  Widget _buildChannelLogo(BuildContext context, Channel channel) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: CachedChannelLogo(
          logoUrl: channel.logoUrl,
          size: 24,
          fallbackIcon: Icons.tv,
        ),
      ),
    );
  }



  String? _getChannelCardImage(Program? program, Channel? channel) {
    // Try program artwork first
    if (program != null) {
      // Try cached TMDB image first (higher quality)
      final cached = _programArtwork[program.id];
      if (cached != null && cached.isNotEmpty) {
        return cached;
      }
      
      // Try direct program image
      if (program.imageUrl != null && program.imageUrl!.isNotEmpty) {
        return program.imageUrl;
      }
      
      // Fetch TMDB image if enabled and not already cached
      if (_tmdbEnabled && !_programArtwork.containsKey(program.id)) {
        _fetchProgramArtwork(program);
      }
    }
    
    // Only use channel-based TMDB artwork if no program artwork found
    // Don't fall back to channel logos for cards
    if (channel != null && program != null) {
      final channelKey = 'channel_${channel.id}';
      final cachedChannelArt = _programArtwork[channelKey];
      if (cachedChannelArt != null && cachedChannelArt.isNotEmpty) {
        return cachedChannelArt;
      }
      
      // Fetch TMDB artwork based on channel name if enabled
      if (_tmdbEnabled && !_artworkRequests.contains(channelKey)) {
        _fetchChannelArtwork(channel);
      }
    }
    
    // Return null instead of falling back to channel logo
    return null;
  }

  String? _resolveHeroImage(Program? program) {
    // Try program image first
    if (program != null) {
      final direct = program.imageUrl;
      if (direct != null && direct.isNotEmpty) return direct;

      final cached = _programArtwork[program.id];
      if (cached != null) {
        return cached.isNotEmpty ? cached : null;
      }

      if (_tmdbEnabled) {
        _fetchProgramArtwork(program);
      }
    }

    // Fallback: try channel-based artwork if no program or program has no image
    final channel = _getCurrentFeaturedChannel();
    if (channel != null) {
      final channelKey = 'channel_${channel.id}';
      final cachedChannelArt = _programArtwork[channelKey];
      // If we have a cached result (including empty string meaning "not found"), use it
      if (_programArtwork.containsKey(channelKey)) {
        if (cachedChannelArt?.isNotEmpty == true) {
          return cachedChannelArt;
        }
        // TMDB returned nothing - don't use low-quality channel logo for hero banner
        return null;
      }

      // Fetch TMDB artwork based on channel name if enabled and not already fetching
      if (_tmdbEnabled && !_artworkRequests.contains(channelKey)) {
        _fetchChannelArtwork(channel);
      }

      // While waiting for TMDB, don't use channel logo (too low quality for hero banner)
      return null;
    }

    return null;
  }

  Channel? _getCurrentFeaturedChannel() {
    final channelProvider =
        Provider.of<ChannelProvider>(context, listen: false);
    final channels = channelProvider.channels;
    if (channels.isEmpty || _featuredIndex >= channels.length) return null;
    return channels[_featuredIndex];
  }

  Future<void> _fetchChannelArtwork(Channel channel) async {
    final channelKey = 'channel_${channel.id}';
    if (_artworkRequests.contains(channelKey) ||
        _programArtwork.containsKey(channelKey)) {
      return;
    }
    _artworkRequests.add(channelKey);
    try {
      debugLog('LiveTV: Fetching TMDB art for channel: "${channel.name}"');
      final image = await TMDBService.getBestBackdrop(channel.name);
      if (!mounted) return;
      if (image != null) {
        debugLog(
            'LiveTV: Found TMDB art for channel "${channel.name}": $image');
      } else {
        debugLog('LiveTV: No TMDB art found for channel "${channel.name}"');
      }
      setState(() {
        _programArtwork[channelKey] = image ?? '';
      });
    } catch (e) {
      debugLog(
          'LiveTV: Error fetching TMDB art for channel "${channel.name}": $e');
      if (mounted) {
        setState(() {
          _programArtwork[channelKey] = '';
        });
      }
    }
    // Don't remove from _artworkRequests - keep it to prevent re-fetching
  }

  Future<void> _fetchProgramArtwork(Program program) async {
    if (_artworkRequests.contains(program.id) ||
        _programArtwork.containsKey(program.id)) {
      return;
    }
    _artworkRequests.add(program.id);
    try {
      debugLog('LiveTV: Fetching TMDB art for: "${program.title}"');
      final image = await TMDBService.getBestBackdrop(program.title);
      if (!mounted) return;
      if (image != null) {
        debugLog('LiveTV: Found TMDB art for "${program.title}": $image');
      } else {
        debugLog('LiveTV: No TMDB art found for "${program.title}"');
      }
      setState(() {
        _programArtwork[program.id] = image ?? '';
      });
    } catch (e) {
      debugLog('LiveTV: Error fetching TMDB art for "${program.title}": $e');
      if (mounted) {
        setState(() {
          _programArtwork[program.id] = '';
        });
      }
    }
    // Don't remove from _artworkRequests - keep it to prevent re-fetching
  }

  Widget _buildChannelSection(
    BuildContext context,
    String title,
    List<Channel> channels,
  ) {
    if (channels.isEmpty) return const SizedBox.shrink();

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isLandscape = screenWidth > screenHeight;
    final cardWidth = isLandscape ? (screenWidth / 7) : (screenWidth / 4.5);
    final cardHeight = cardWidth * 0.57;
    final rowHeight = cardHeight + 80;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: AppTheme.textPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: rowHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemCount: channels.length,
            itemExtent: cardWidth + AppSizes.lg,
            itemBuilder: (context, index) {
              return _buildChannelCard(
                  context, channels[index], cardWidth, cardHeight, index, channels.length);
            },
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }

  /// Build category rows from grouped channels
  List<Widget> _buildCategoryRows(
    BuildContext context,
    Map<String, List<Channel>> groupedChannels,
    bool isTV,
  ) {
    if (groupedChannels.isEmpty) return [];

    final categoriesToShow = isTV
        ? groupedChannels.entries.toList()
        : groupedChannels.entries.take(3).toList();

    return categoriesToShow.map((entry) {
      final channels = entry.value;
      if (channels.isEmpty) return const SizedBox.shrink();
      return FocusTraversalGroup(
        policy: WidgetOrderTraversalPolicy(),
        child: _buildChannelSection(context, entry.key, channels),
      );
    }).toList();
  }

  Widget _buildChannelCard(BuildContext context, Channel channel,
      double cardWidth, double cardHeight, int index, int totalCount) {
    return SizedBox(
      width: cardWidth,
      child: Focus(
        canRequestFocus: true,
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.space) {
              context.push('/player', extra: channel);
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
              _heroFocus.requestFocus();
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowLeft && index == 0) {
               // Only open sidebar if we are at the start of the list
               requestNavigationFocus();
               return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        child: Selector<IncrementalEpgService, Program?>(
          selector: (_, epgService) => epgService.getCurrentProgram(
            channel.tvgId ?? channel.id,
          ),
          builder: (context, currentProgram, _) {
            // Trigger lazy load
            if (currentProgram == null) {
               epgService.ensureChannelLoaded(channel.tvgId ?? channel.id);
            }
            final isFocused = Focus.of(context).hasFocus;
            final progress = currentProgram?.progressPercentage ?? 0.0;
            final imageUrl = _getChannelCardImage(currentProgram, channel);

            return GestureDetector(
              onTap: () => context.push('/player', extra: channel),
              child: AnimatedScale(
                scale: isFocused ? 1.05 : 1.0,
                duration: TVFocusStyle.animationDuration,
                curve: TVFocusStyle.animationCurve,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: TVFocusStyle.animationDuration,
                      curve: TVFocusStyle.animationCurve,
                      width: cardWidth,
                      height: cardHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppTheme.cardBackground,
                        border: isFocused
                            ? Border.all(color: AppTheme.primaryBlue, width: 3)
                            : null,
                        boxShadow: isFocused
                            ? [
                                BoxShadow(
                                  color: AppTheme.primaryBlue
                                      .withAlpha((0.4 * 255).round()),
                                  blurRadius: 16,
                                  spreadRadius: 2,
                                ),
                              ]
                            : TVFocusStyle.defaultShadow,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Stack(
                          children: [
                            if (imageUrl != null)
                              Positioned.fill(
                                child: CachedNetworkImage(
                                  imageUrl: imageUrl,
                                  fit: (imageUrl == channel.logoUrl) ? BoxFit.contain : BoxFit.cover,
                                  memCacheWidth: 400,
                                  placeholder: (_, __) => Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xFF2a2a3e),
                                          Color(0xFF1a1a2e),
                                          AppTheme.cardBackground
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.tv,
                                        color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
                                        size: 32,
                                      ),
                                    ),
                                  ),
                                  errorWidget: (_, __, ___) => Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xFF2a2a3e),
                                          Color(0xFF1a1a2e),
                                          AppTheme.cardBackground
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.tv,
                                        color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
                                        size: 32,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            else
                              Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF2a2a3e),
                                      Color(0xFF1a1a2e),
                                      AppTheme.cardBackground
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.tv,
                                    color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
                                    size: 32,
                                  ),
                                ),
                              ),
                            Positioned(
                              top: 8,
                              left: 8,
                              child: Container(
                                width: 40,
                                height: 24,
                                padding: const EdgeInsets.all(2),
                                child: channel.logoUrl != null &&
                                        channel.logoUrl!.isNotEmpty
                                    ? CachedNetworkImage(
                                        imageUrl: channel.logoUrl!,
                                        fit: BoxFit.contain,
                                        memCacheWidth: 100,
                                        errorWidget: (_, __, ___) => const Icon(
                                          Icons.tv,
                                          color: AppTheme.primaryBlue,
                                          size: 16,
                                        ),
                                      )
                                    : const Icon(
                                        Icons.tv,
                                        color: AppTheme.primaryBlue,
                                        size: 16,
                                      ),
                              ),
                            ),
                            if (currentProgram == null)
                              const Positioned(
                                top: 8,
                                right: 8,
                                child: BrandBadge.noEpg(
                                  fontSize: 8,
                                ),
                              ),
                            // Progress bar overlay at bottom
                            if (currentProgram != null)
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                    child: LinearProgressIndicator(
                                      value: progress,
                                      backgroundColor: Colors.black.withAlpha((0.4 * 255).round()),
                                      color: AppTheme.primaryBlue,
                                      minHeight: 4,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    if (currentProgram != null) ...[
                      const SizedBox(height: 8),
                      SizedBox(
                        width: cardWidth,
                        child: Text(
                          currentProgram.title,
                          style: AppTypography.programTitle(context),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: cardWidth,
                        child: Text(
                          '${_formatTime(currentProgram.startTime)} - ${_formatTime(currentProgram.endTime)}',
                          style: AppTypography.programTime(context),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCategoryLoadingIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppTheme.primaryBlue.withAlpha((0.7 * 255).round()),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              'Loading categories...',
              style: AppTypography.loadingText(context),
            ),
          ],
        ),
      ),
    );
  }





  Widget _buildDefaultHeroBackground() {
    return Container(
      color: AppColors.background,
    );
  }

  String _formatTime(DateTime dt) {
    final hour = dt.hour == 0 ? 12 : (dt.hour > 12 ? dt.hour - 12 : dt.hour);
    final period = dt.hour < 12 ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')} $period';
  }

  Future<void> _loadHeroVideoPreferenceSetting() async {
    final prefs = await SharedPreferences.getInstance();
    if (mounted) {
      setState(() {
        _heroVideoPreview = prefs.getBool('hero_video_preview') ?? false;
      });
    }
  }

  Widget _buildHeroContent(
    Channel featuredChannel,
    Program? currentProgram,
    String? heroImage,
    double scrollProgress,
  ) {
    // Show video if enabled, otherwise image
    if (_heroVideoPreview && featuredChannel.url.isNotEmpty) {
      return Stack(
        children: [
          // Video player (placeholder for now)
          Container(
            color: Colors.black,
            child: Center(
              child: context.iconXxl(
                Icons.play_circle_outline,
                color: AppColors.whiteWithOpacity(0.7),
              ),
            ),
          ),
          // Fallback to image if video fails
          if (heroImage != null && heroImage.isNotEmpty)
            Positioned.fill(
              child: CachedNetworkImage(
                imageUrl: heroImage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                placeholder: (_, __) => _buildDefaultHeroBackground(),
                errorWidget: (_, __, ___) => _buildDefaultHeroBackground(),
              ),
            ),
        ],
      );
    }

    // Default: show static image
    return heroImage != null && heroImage.isNotEmpty
        ? Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: heroImage,
              fit: BoxFit.cover,
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              placeholder: (_, __) => _buildDefaultHeroBackground(),
              errorWidget: (_, __, ___) => _buildDefaultHeroBackground(),
            ),
          )
        : _buildDefaultHeroBackground();
  }

  Widget _buildSkeletonLoader() {
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.height * 0.75;
    final sidebarWidth = AppSizes.sidebarCollapsedWidth + AppSizes.lg;
    final isLandscape = screenSize.width > screenSize.height;
    final cardWidth = isLandscape ? (screenSize.width / 5.5) : (screenSize.width / 3.5);
    final cardHeight = cardWidth * 0.57;
    final rowHeight = cardHeight + 120;

    return Stack(
      children: [
        // Hero background skeleton - matches your gradient background
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: heroHeight,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF1a1a2e), AppTheme.cardBackground],
              ),
            ),
          ),
        ),
        // Featured info skeleton - exact position as real content
        Positioned(
          bottom: heroHeight * 0.35,
          left: sidebarWidth,
          width: screenSize.width * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title skeleton - matches 2-line height
              Container(
                height: context.tvTextSize(24) * 1.3 * 2,
                width: screenSize.width * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(height: context.tvSpacing(8)),
              // Description skeleton - matches 3-line height
              Container(
                height: context.tvTextSize(14) * 1.3 * 3,
                width: screenSize.width * 0.35,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(height: context.tvSpacing(8)),
              // Progress bar skeleton - exact height
              Container(
                height: 6,
                width: screenSize.width * 0.25,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              SizedBox(height: context.tvSpacing(4)),
              // Time range with LIVE badge skeleton
              SizedBox(
                height: context.tvTextSize(13) * 1.4,
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 16,
                      decoration: BoxDecoration(
                        color: AppTheme.accentRed.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 100,
                      height: 13,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Channel logo skeleton - exact position
        Positioned(
          top: AppSizes.lg,
          right: AppSizes.lg,
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppTheme.cardBackground,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: 48,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
        // Scrollable content skeleton - matches exact layout
        Positioned(
          top: heroHeight,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            color: AppTheme.darkBackground,
            padding: EdgeInsets.only(
              left: sidebarWidth,
              right: AppSizes.xxl,
              top: AppSizes.xxl,
              bottom: AppSizes.xxl,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppSizes.xxl),
                ...List.generate(3, (rowIndex) => Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.lg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Category title skeleton - matches headlineSmall
                      Padding(
                        padding: EdgeInsets.only(bottom: AppSizes.sm),
                        child: Container(
                          height: 24,
                          width: [180, 140, 160][rowIndex % 3].toDouble(),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      // Channel cards row skeleton
                      SizedBox(
                        height: rowHeight,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemCount: 5,
                          itemExtent: cardWidth + AppSizes.lg,
                          itemBuilder: (context, cardIndex) => SizedBox(
                            width: cardWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Card skeleton - matches exact styling
                                Container(
                                  width: cardWidth,
                                  height: cardHeight,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppTheme.cardBackground,
                                    gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xFF2a2a3e),
                                        Color(0xFF1a1a2e),
                                        AppTheme.cardBackground
                                      ],
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      // Channel logo placeholder
                                      Positioned(
                                        top: 8,
                                        left: 8,
                                        child: Container(
                                          width: 40,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withValues(alpha: 0.1),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                      // Progress bar overlay skeleton
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 4,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withValues(alpha: 0.1),
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(12),
                                              bottomRight: Radius.circular(12),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                // Program title skeleton
                                Container(
                                  width: cardWidth,
                                  height: 14,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withValues(alpha: 0.15),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                // Time range skeleton
                                Container(
                                  width: cardWidth * 0.8,
                                  height: 11,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withValues(alpha: 0.1),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: AppSizes.lg),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
