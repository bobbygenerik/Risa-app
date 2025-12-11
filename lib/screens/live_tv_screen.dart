import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/go_to_settings_button.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// A focused Live TV screen. Shows a hero for the currently airing program
/// on a featured channel, plus channel rows below.
class LiveTVScreen extends StatefulWidget {
  const LiveTVScreen({super.key});

  @override
  State<LiveTVScreen> createState() => _LiveTVScreenState();
}

class _LiveTVScreenState extends State<LiveTVScreen>
    with ContentFocusRegistrant<LiveTVScreen> {
  Timer? _carouselTimer;
  int _featuredIndex = 0;
  final ScrollController _scrollController = ScrollController();
  final FocusNode _heroFocus = FocusNode();
  final FocusNode _settingsButtonFocus = FocusNode();
  final Map<String, String?> _programArtwork = {};
  final Set<String> _artworkRequests = {};
  late final bool _tmdbEnabled;

  bool _heroImageReady = false;
  bool _heroVideoPreview = false;

  @override
  void initState() {
    super.initState();
    _tmdbEnabled = ServiceValidator.isTmdbAvailable;
    // Start carousel once the widget is built - will be updated when channels load
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _findInitialChannelWithArtwork();
        _startCarouselIfNeeded();
        _loadEpgData();
        _loadHeroVideoPreferenceSetting();
      },
    );
  }

  void _findInitialChannelWithArtwork() {
    final channelProvider =
        Provider.of<ChannelProvider>(context, listen: false);
    final channels = channelProvider.channels;
    if (channels.isEmpty) return;

    final epgService = Provider.of<EpgService>(context, listen: false);

    // Try to find a channel with complete program info
    for (int i = 0; i < channels.length && i < 20; i++) {
      final channel = channels[i];
      final program = epgService.getCurrentProgram(
        channel.tvgId ?? channel.id,
        channelName: channel.name,
      );
      final heroImage = _resolveHeroImage(program);
      if (heroImage != null && heroImage.isNotEmpty && 
          program != null && 
          program.title.isNotEmpty && 
          program.description != null && 
          program.description!.isNotEmpty) {
        setState(() {
          _featuredIndex = i;
        });
        return;
      }
    }
  }

  Future<void> _loadEpgData() async {
    final epgService = Provider.of<EpgService>(context, listen: false);

    debugPrint(
        'LiveTV: EPG hasData=${epgService.hasData}, isLoading=${epgService.isLoading}, error=${epgService.error}');

    // If EPG has no data, try to load from cache or URL
    if (!epgService.hasData && !epgService.isLoading) {
      debugPrint('LiveTV: Initializing EPG service...');
      await epgService.initialize();
      debugPrint(
          'LiveTV: EPG initialized - hasData=${epgService.hasData}, error=${epgService.error}');
    }
  }



  @override
  void dispose() {
    _carouselTimer?.cancel();
    _scrollController.dispose();
    _heroFocus.dispose();
    _settingsButtonFocus.dispose();
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
    // Cancel existing timer
    _carouselTimer?.cancel();
    // Start a timer that advances featured index every 8 seconds
    _carouselTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      final channelProvider = Provider.of<ChannelProvider>(
        context,
        listen: false,
      );
      final channels = channelProvider.channels;
      if (channels.isEmpty) return;
      setState(() {
        // Find next channel with complete program info, starting from random position for variety
        int attempts = 0;
        int startOffset = Random().nextInt(channels.length);
        int nextIndex = startOffset;
        while (attempts < channels.length) {
          final channel = channels[nextIndex];
          final epgService = Provider.of<EpgService>(context, listen: false);
          final program = epgService.getCurrentProgram(
            channel.tvgId ?? channel.id,
            channelName: channel.name,
          );
          final heroImage = _resolveHeroImage(program);
          if (heroImage != null && heroImage.isNotEmpty && 
              program != null && 
              program.title.isNotEmpty && 
              program.description != null && 
              program.description!.isNotEmpty &&
              nextIndex != _featuredIndex) { // Don't repeat same channel
            _featuredIndex = nextIndex;
            break;
          }
          nextIndex = (nextIndex + 1) % channels.length;
          attempts++;
        }
        // If no channels with complete info found, don't change index
      });
    });
    // Focus is managed by navigation bar - don't auto-focus content
  }



  @override
  Widget build(BuildContext context) {

    final body = Container(
      decoration: const BoxDecoration(
        color: Color(0xFF050710),
      ),
      child: Consumer2<ChannelProvider, EpgService>(
        builder: (context, channelProvider, epgService, _) {
          final channels = channelProvider.channels;

          // Show skeleton when no channels OR when EPG is loading for first time OR when channels exist but no EPG data
          if (channels.isEmpty && channelProvider.isLoading) {
            return _buildSkeletonLoader();
          }
          
          if (channels.isNotEmpty && epgService.isLoading && !epgService.hasData) {
            return _buildSkeletonLoader();
          }
          
          if (channels.isNotEmpty && !epgService.hasData) {
            return _buildSkeletonLoader();
          }
          
          // Also show skeleton if EPG has data but no current program for featured channel
          if (channels.isNotEmpty && epgService.hasData) {
            final featuredChannel = channels[_featuredIndex.clamp(0, channels.length - 1)];
            final currentProgram = epgService.getCurrentProgram(
              featuredChannel.tvgId ?? featuredChannel.id,
              channelName: featuredChannel.name,
            );
            if (currentProgram == null) {
              return _buildSkeletonLoader();
            }
          }

          if (channels.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.live_tv,
                    size: 80,
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

          // Ensure index is valid for current channel list
          if (_featuredIndex >= channels.length) _featuredIndex = 0;

          final featuredChannel = channels[_featuredIndex];
          final currentProgram = epgService.getCurrentProgram(
            featuredChannel.tvgId ?? featuredChannel.id,
            channelName: featuredChannel.name,
          );

          // Get grouped channels (may be empty while computing in background)
          final groupedChannels = channelProvider.getGroupedChannels();
          final isGrouping = channelProvider.isGroupingChannels;

          // Full-screen hero background with all content inside
          return _buildFullScreenHero(
            context,
            featuredChannel,
            currentProgram,
            channels,
            groupedChannels,
            isGrouping,
          );
        },
      ),
    );

    return body;
  }

  KeyEventResult _handleDirectionalKeyEvent(
    FocusNode node,
    KeyEvent event,
  ) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      return requestNavigationFocus()
          ? KeyEventResult.handled
          : KeyEventResult.ignored;
    }
    if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
      final screenHeight = MediaQuery.of(context).size.height;
      _scrollController.animateTo(
        screenHeight * 0.8,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeOutCubic,
      );
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
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
    final heroHeight = screenSize.height * 0.75;
    final sidebarWidth = AppSizes.sidebarWidth;

    return Focus(
      canRequestFocus: false,
      skipTraversal: true,
      onKeyEvent: _handleDirectionalKeyEvent,
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
                  child: _buildHeroContent(
                    featuredChannel,
                    currentProgram,
                    heroImage,
                    0.0,
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
                          left: sidebarWidth + AppSizes.lg,
                          right: AppSizes.xxl,
                          bottom: AppSizes.xxl,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: AppSizes.xxl),
                            if (isGrouping && groupedChannels.isEmpty)
                              _buildCategoryLoadingIndicator()
                            else
                              ..._buildCategoryRows(context, groupedChannels, isTV),
                            SizedBox(height: AppSizes.xxl),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Hero info overlay
              Positioned(
                bottom: heroHeight * 0.35,
                left: sidebarWidth + 8,
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

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title - fixed height
          SizedBox(
            height: context.tvTextSize(24) * 1.3 * 2,
            child: Text(
              title,
              style: TextStyle(
                color: AppTheme.textPrimary,
                fontSize: context.tvTextSize(24),
                fontWeight: FontWeight.w700,
                height: 1.3,
              ),
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
              style: TextStyle(
                color: AppTheme.textSecondary,
                fontSize: context.tvTextSize(14),
                height: 1.3,
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
                      backgroundColor: Colors.white.withAlpha((0.3 * 255).round()),
                      color: AppTheme.primaryBlue,
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
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppTheme.accentRed,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'LIVE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.tvTextSize(10),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
                Text(
                  timeRange,
                  style: TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: context.tvTextSize(13),
                  ),
                ),
              ],
            ),
          ),
        ],
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
        child: channel.logoUrl != null && channel.logoUrl!.isNotEmpty
            ? Image.network(
                channel.logoUrl!,
                fit: BoxFit.contain,
                height: 24,
                errorBuilder: (_, __, ___) => const Icon(
                  Icons.tv,
                  color: AppTheme.primaryBlue,
                  size: 24,
                ),
              )
            : const Icon(
                Icons.tv,
                color: AppTheme.primaryBlue,
                size: 24,
              ),
      ),
    );
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
      debugPrint('LiveTV: Fetching TMDB art for channel: "${channel.name}"');
      final image = await TMDBService.getBestBackdrop(channel.name);
      if (!mounted) return;
      if (image != null) {
        debugPrint(
            'LiveTV: Found TMDB art for channel "${channel.name}": $image');
      } else {
        debugPrint('LiveTV: No TMDB art found for channel "${channel.name}"');
      }
      setState(() {
        _programArtwork[channelKey] = image ?? '';
      });
    } catch (e) {
      debugPrint(
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
      debugPrint('LiveTV: Fetching TMDB art for: "${program.title}"');
      final image = await TMDBService.getBestBackdrop(program.title);
      if (!mounted) return;
      if (image != null) {
        debugPrint('LiveTV: Found TMDB art for "${program.title}": $image');
      } else {
        debugPrint('LiveTV: No TMDB art found for "${program.title}"');
      }
      setState(() {
        _programArtwork[program.id] = image ?? '';
      });
    } catch (e) {
      debugPrint('LiveTV: Error fetching TMDB art for "${program.title}": $e');
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
    final cardWidth = isLandscape ? (screenWidth / 5.5) : (screenWidth / 3.5);
    final cardHeight = cardWidth * 0.57;
    final rowHeight = cardHeight + 120;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: AppSizes.sm),
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
                  context, channels[index], cardWidth, cardHeight);
            },
          ),
        ),
        SizedBox(height: AppSizes.lg),
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
      double cardWidth, double cardHeight) {
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
              return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            final epgService = Provider.of<EpgService>(context, listen: false);
            final currentProgram = epgService.getCurrentProgram(
              channel.tvgId ?? channel.id,
              channelName: channel.name,
            );
            if (currentProgram == null) {
              debugPrint('LiveTV Card: No EPG for "${channel.name}" (tvgId: ${channel.tvgId})');
            }
            if (currentProgram == null) {
              debugPrint('LiveTV: No EPG data for channel "${channel.name}" (tvgId: ${channel.tvgId}, id: ${channel.id})');
            }
            final progress = currentProgram?.progressPercentage ?? 0.0;

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
                            if (currentProgram?.imageUrl != null &&
                                currentProgram!.imageUrl!.isNotEmpty)
                              Positioned.fill(
                                child: CachedNetworkImage(
                                  imageUrl: currentProgram.imageUrl!,
                                  fit: BoxFit.cover,
                                  memCacheWidth: 400,
                                  placeholder: (_, __) => Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xFF1a1a2e),
                                          AppTheme.cardBackground
                                        ],
                                      ),
                                    ),
                                  ),
                                  errorWidget: (_, __, ___) => Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xFF1a1a2e),
                                          AppTheme.cardBackground
                                        ],
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
                                      Color(0xFF1a1a2e),
                                      AppTheme.cardBackground
                                    ],
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
                              Positioned(
                                top: 8,
                                right: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Text(
                                    'NO EPG',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
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
                      Text(
                        currentProgram.title,
                        style: const TextStyle(
                          color: AppTheme.textPrimary,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: LinearProgressIndicator(
                          value: progress,
                          backgroundColor:
                              Colors.white.withAlpha((0.2 * 255).round()),
                          color: AppTheme.primaryBlue,
                          minHeight: 3,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${_formatTime(currentProgram.startTime)} - ${_formatTime(currentProgram.endTime)}',
                        style: const TextStyle(
                          color: AppTheme.textSecondary,
                          fontSize: 11,
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
              style: TextStyle(
                color: AppTheme.textSecondary.withAlpha((0.8 * 255).round()),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }





  Widget _buildDefaultHeroBackground() {
    return Container(
      color: const Color(0xFF050710),
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
              child: Icon(
                Icons.play_circle_outline,
                size: 80,
                color: Colors.white.withValues(alpha: 0.7),
              ),
            ),
          ),
          // Fallback to image if video fails
          if (heroImage != null && heroImage.isNotEmpty)
            Positioned.fill(
              child: CachedNetworkImage(
                imageUrl: heroImage,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                placeholder: (_, __) => _buildDefaultHeroBackground(),
                errorWidget: (_, __, ___) => _buildDefaultHeroBackground(),
              ),
            ),
        ],
      );
    }

    // Default: show static image
    return heroImage != null && heroImage.isNotEmpty
        ? CachedNetworkImage(
            imageUrl: heroImage,
            fit: BoxFit.cover,
            alignment: Alignment.center,
            placeholder: (_, __) => _buildDefaultHeroBackground(),
            errorWidget: (_, __, ___) => _buildDefaultHeroBackground(),
            imageBuilder: (context, imageProvider) {
              if (!_heroImageReady) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (mounted) setState(() => _heroImageReady = true);
                });
              }
              return Image(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  alignment: Alignment.center);
            },
          )
        : _buildDefaultHeroBackground();
  }

  Widget _buildSkeletonLoader() {
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.height * 0.75;
    final sidebarWidth = AppSizes.sidebarWidth;
    final cardWidth = screenSize.width / 5.5;
    final cardHeight = cardWidth * 0.57;
    final rowHeight = cardHeight + 120;

    return Stack(
      children: [
        // Hero skeleton
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: heroHeight,
          child: Container(
            color: AppTheme.cardBackground,
          ),
        ),
        // Info box skeleton (matches actual position)
        Positioned(
          bottom: heroHeight * 0.35,
          left: sidebarWidth + 8,
          width: screenSize.width * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title skeleton
              Container(
                height: 32,
                width: screenSize.width * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.15 * 255).round()),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(height: 8),
              // Description skeleton
              Container(
                height: 60,
                width: screenSize.width * 0.35,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.1 * 255).round()),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(height: 8),
              // Progress bar skeleton
              Container(
                height: 6,
                width: screenSize.width * 0.25,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.1 * 255).round()),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              const SizedBox(height: 8),
              // Time range skeleton
              Container(
                height: 16,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.1 * 255).round()),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
        ),
        // Channel logo skeleton
        Positioned(
          top: AppSizes.lg,
          right: AppSizes.lg,
          child: Container(
            height: 40,
            width: 80,
            decoration: BoxDecoration(
              color: AppTheme.cardBackground,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        // Scrollable content skeleton
        Positioned(
          top: heroHeight,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            color: AppTheme.darkBackground,
            padding: EdgeInsets.only(
              left: sidebarWidth + AppSizes.lg,
              right: AppSizes.xxl,
              top: AppSizes.xxl,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(3, (rowIndex) => Padding(
                padding: EdgeInsets.only(bottom: AppSizes.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Category title skeleton
                    Container(
                      height: 24,
                      width: 180,
                      margin: EdgeInsets.only(bottom: AppSizes.sm),
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha((0.15 * 255).round()),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    // Channel cards row skeleton
                    SizedBox(
                      height: rowHeight,
                      child: Row(
                        children: List.generate(5, (cardIndex) => Padding(
                          padding: EdgeInsets.only(right: AppSizes.lg),
                          child: Column(
                            children: [
                              // Card skeleton
                              Container(
                                width: cardWidth,
                                height: cardHeight,
                                decoration: BoxDecoration(
                                  color: AppTheme.cardBackground,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(height: 8),
                              // Program title skeleton
                              Container(
                                width: cardWidth,
                                height: 14,
                                decoration: BoxDecoration(
                                  color: Colors.white.withAlpha((0.1 * 255).round()),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              const SizedBox(height: 4),
                              // Progress bar skeleton
                              Container(
                                width: cardWidth,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: Colors.white.withAlpha((0.1 * 255).round()),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                              const SizedBox(height: 4),
                              // Time range skeleton
                              Container(
                                width: cardWidth * 0.8,
                                height: 11,
                                decoration: BoxDecoration(
                                  color: Colors.white.withAlpha((0.1 * 255).round()),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
