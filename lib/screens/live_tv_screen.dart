import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:math';

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
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:iptv_player/services/focus_pool_service.dart';
import 'package:iptv_player/widgets/shimmer.dart';

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
    _heroFocus =
        _focusPool.getFocusNode('live_tv_hero', debugLabel: 'Live TV Hero');
    _settingsButtonFocus = _focusPool.getFocusNode('live_tv_settings',
        debugLabel: 'Live TV Settings');
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.background,
      ),
      child: Consumer<ChannelProvider>(
        builder: (context, channelProvider, _) {
          final hasChannels = channelProvider.hasChannels;

          if (!hasChannels && channelProvider.isLoading) {
            return _buildSkeletonLoader();
          }

          if (!hasChannels) {
            return Center(
              child: SingleChildScrollView(
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
              ),
            );
          }

          final totalChannels = channelProvider.channelCount;
          if (_featuredIndex >= totalChannels) _featuredIndex = 0;
          final featuredChannel = channelProvider.getChannelAt(_featuredIndex);

          final epgService =
              Provider.of<IncrementalEpgService>(context, listen: false);
          final channelId = featuredChannel.tvgId ?? featuredChannel.id;
          Future.microtask(() => epgService.ensureChannelLoaded(channelId,
              channelName: featuredChannel.name));

          final groupedChannels = channelProvider.getGroupedChannels();
          final isGrouping = channelProvider.isGroupingChannels;
          final previewList = channelProvider.channels;

          return _buildFullScreenHero(
            context,
            featuredChannel,
            previewList,
            groupedChannels,
            isGrouping,
          );
        },
      ),
    );
  }

  Widget _buildFullScreenHero(
    BuildContext context,
    Channel featuredChannel,
    List<Channel> allChannels,
    Map<String, List<Channel>> groupedChannels,
    bool isGrouping,
  ) {
    final screenSize = MediaQuery.of(context).size;
    final isTV = screenSize.width >= 1920 || screenSize.height >= 1080;
    final heroHeight = screenSize.height * 0.85; // 85% height for content peek
    final sidebarWidth =
        context.sidebarCollapsedWidth() + context.spacingLg();
    
    // Calculate available width for content
    final availableWidth = screenSize.width - sidebarWidth - context.spacingLg();
    
    // Responsive width calculation
    final desiredInfoWidth = screenSize.width < 800 
        ? availableWidth 
        : screenSize.width * 0.4;

    final heroInfoWidth = min(
      desiredInfoWidth,
      screenSize.width >= 1920 ? 640.0 : 520.0,
    );

    // Use a Selector to get the current program for the featured channel
    return Selector<IncrementalEpgService, Program?>(
      selector: (_, epg) => epg.getCurrentProgram(
        featuredChannel.tvgId ?? featuredChannel.id,
        channelName: featuredChannel.name,
      ),
      builder: (context, currentProgram, _) {
        final heroImage = _resolveHeroImage(currentProgram);

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
                return requestNavigationFocus()
                    ? KeyEventResult.handled
                    : KeyEventResult.ignored;
              }
              if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                // Focus will automatically move to first row
              }
            }
            return KeyEventResult.ignored;
          },
          child: Stack(
            children: [
              // Hero Background & Gradient
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: heroHeight,
                child: Builder(builder: (context) {
                  final scrollPos = _scrollController.hasClients
                      ? _scrollController.offset
                      : 0.0;
                  final fadeProgress =
                      (scrollPos / (heroHeight * 0.5)).clamp(0.0, 1.0);

                  return Opacity(
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
                                  AppTheme.darkBackground
                                      .withAlpha((0.8 * 255).round()),
                                  AppTheme.darkBackground,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              // Hero info overlay
              Positioned(
                bottom: heroHeight *
                    0.15, // Lowered from 0.25 for better artwork exposure
                left: sidebarWidth,
                width: heroInfoWidth,
                child: Builder(builder: (context) {
                  final scrollPos = _scrollController.hasClients
                      ? _scrollController.offset
                      : 0.0;
                  final fadeProgress =
                      (scrollPos / (heroHeight * 0.5)).clamp(0.0, 1.0);
                  return Opacity(
                    opacity: 1.0 - fadeProgress,
                    child: _buildFeaturedInfo(
                        context, featuredChannel, currentProgram),
                  );
                }),
              ),
              // Channel logo
              Positioned(
                top: AppSizes.lg,
                right: AppSizes.lg,
                child: Builder(builder: (context) {
                  final scrollPos = _scrollController.hasClients
                      ? _scrollController.offset
                      : 0.0;
                  final fadeProgress =
                      (scrollPos / (heroHeight * 0.5)).clamp(0.0, 1.0);
                  return Opacity(
                    opacity: 1.0 - fadeProgress,
                    child: _buildChannelLogo(context, featuredChannel),
                  );
                }),
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
                          right: context.spacingXl(),
                          bottom: context.spacingXl(),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: context.sectionSpacing()),
                            if (isGrouping && groupedChannels.isEmpty)
                              _buildCategoryLoadingIndicator()
                            else
                              ..._buildCategoryRows(
                                  context, groupedChannels, isTV),
                            SizedBox(height: context.sectionSpacing()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
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
      padding: EdgeInsets.symmetric(
        horizontal: context.spacingXl(),
        vertical: context.spacingLg(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title - flexible height with max limit
          Container(
            constraints: BoxConstraints(
              maxHeight: context.tvTextSize(24) * 1.3 * 2,
            ),
            child: Text(
              title,
              style: AppTypography.heroTitle(context),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: context.tvSpacing(8)),
          // Description - flexible height with max limit
          Container(
            constraints: BoxConstraints(
              maxHeight: context.tvTextSize(14) * 1.3 * 3,
            ),
            child: Text(
              description.isNotEmpty ? description : 'No description available',
              style: AppTypography.heroDescription(context).copyWith(
                fontStyle:
                    description.isEmpty ? FontStyle.italic : FontStyle.normal,
                color: description.isEmpty ? Colors.white60 : null,
              ),
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
          // Time range with LIVE badge - flexible height
          Container(
            constraints: BoxConstraints(
              maxHeight: context.tvTextSize(13) * 1.5,
            ),
            child: Row(
              children: [
                if (program != null) ...[
                  const BrandBadge.live(),
                  const SizedBox(width: 8),
                ],
                Expanded(
                  child: Text(
                    timeRange,
                    style: AppTypography.smallText(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          BrandPrimaryButton(
            onPressed: () => context.push('/player', extra: channel),
            label: 'Watch',
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
    final maxCardWidth = screenWidth < 800 ? screenWidth / 2.8 : screenWidth / 5.5;
    final cardWidth = min(context.cardWidth(), maxCardWidth);
    final cardHeight = cardWidth * 0.6;
    final rowHeight = cardHeight + context.spacingXl();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: context.spacingSm()),
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                  width: constraints.maxWidth,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    itemCount: channels.length,
                    itemExtent: cardWidth + context.spacingLg(),
                    itemBuilder: (context, index) {
                      return _buildChannelCard(context, channels[index], cardWidth,
                          cardHeight, index, channels.length);
                    },
                  ),
                );
              },
            ),
        ),
        SizedBox(height: context.spacingSm()),
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
            if (event.logicalKey == LogicalKeyboardKey.arrowLeft &&
                index == 0) {
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
            channelName: channel.name,
          ),
          builder: (context, currentProgram, _) {
            // Trigger lazy load
            if (currentProgram == null) {
              Provider.of<IncrementalEpgService>(context, listen: false)
                  .ensureChannelLoaded(
                channel.tvgId ?? channel.id,
                channelName: channel.name,
              );
            }
            final isFocused = Focus.of(context).hasFocus;
            final progress = currentProgram?.progressPercentage ?? 0.0;
            final imageUrl = _getChannelCardImage(currentProgram, channel);

            return GestureDetector(
              onTap: () => context.push('/player', extra: channel),
              child: AnimatedScale(
                scale: isFocused ? TVFocusStyle.focusScale : 1.0,
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
                            ? TVFocusStyle.focusedShadow
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
                                  fit: BoxFit.contain,
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
                                        color: AppTheme.primaryBlue
                                            .withAlpha((0.4 * 255).round()),
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
                                        color: AppTheme.primaryBlue
                                            .withAlpha((0.4 * 255).round()),
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
                                    color: AppTheme.primaryBlue
                                        .withAlpha((0.4 * 255).round()),
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
                                      backgroundColor: Colors.black
                                          .withAlpha((0.4 * 255).round()),
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
    return Shimmer(
      child: Stack(
        children: [
          // Skeleton loader widgets go here
        ],
      ),
    );
  }
}
