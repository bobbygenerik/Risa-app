import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
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

  @override
  void initState() {
    super.initState();
    _tmdbEnabled = ServiceValidator.isTmdbAvailable;
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await _loadEpgData();
        _findInitialChannelWithArtwork();
        _startCarouselIfNeeded();
      },
    );
  }
  
  void _findInitialChannelWithArtwork() {
    final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
    final channels = channelProvider.channels;
    if (channels.isEmpty) return;
    
    final epgService = Provider.of<EpgService>(context, listen: false);
    
    // Try to find a channel with program info AND artwork for initial display
    for (int i = 0; i < channels.length && i < 50; i++) {
      final channel = channels[i];
      final program = epgService.getCurrentProgram(
        channel.tvgId ?? channel.id,
        channelName: channel.name,
      );
      if (program == null) continue; // Skip channels without EPG data
      
      final heroImage = _resolveHeroImage(program);
      if (heroImage != null && heroImage.isNotEmpty) {
        setState(() {
          _featuredIndex = i;
        });
        return;
      }
    }
  }

  Future<void> _loadEpgData() async {
    final epgService = Provider.of<EpgService>(context, listen: false);
    
    debugPrint('LiveTV: EPG hasData=${epgService.hasData}, isLoading=${epgService.isLoading}, error=${epgService.error}');
    
    // If EPG has no data, try to load from cache or URL
    if (!epgService.hasData && !epgService.isLoading) {
      debugPrint('LiveTV: Initializing EPG service...');
      await epgService.initialize();
      debugPrint('LiveTV: EPG initialized - hasData=${epgService.hasData}, error=${epgService.error}');
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
        // Find next channel with EPG data AND artwork for hero
        int attempts = 0;
        int nextIndex = (_featuredIndex + 1) % channels.length;
        while (attempts < channels.length) {
          final channel = channels[nextIndex];
          final epgService = Provider.of<EpgService>(context, listen: false);
          final program = epgService.getCurrentProgram(
            channel.tvgId ?? channel.id,
            channelName: channel.name,
          );
          if (program != null) {
            final heroImage = _resolveHeroImage(program);
            if (heroImage != null && heroImage.isNotEmpty) {
              _featuredIndex = nextIndex;
              break;
            }
          }
          nextIndex = (nextIndex + 1) % channels.length;
          attempts++;
        }
        // Keep current index if no channels with EPG data and artwork found
      });
    });
    // Focus is managed by navigation bar - don't auto-focus content
  }
  late Size _screenSize;

  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    final body = Container(
      decoration: const BoxDecoration(
        color: Color(0xFF050710),
      ),
      child: Consumer2<ChannelProvider, EpgService>(
        builder: (context, channelProvider, epgService, _) {
          final channels = channelProvider.channels;
          
          // Show skeleton while channels loading OR EPG loading
          if (channelProvider.isLoading || epgService.isLoading) {
            return _buildSplashLoading();
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

          // Show skeleton until EPG has data
          if (!epgService.hasData) {
            return _buildSplashLoading();
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

    return Focus(
      canRequestFocus: false,
      skipTraversal: true,
      onKeyEvent: _handleDirectionalKeyEvent,
      child: body,
    );
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
    final heroHeight = screenSize.height * 0.7;

    return Focus(
      canRequestFocus: false,
      skipTraversal: true,
      onKeyEvent: _handleDirectionalKeyEvent,
      child: Container(
        color: const Color(0xFF050710),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero banner
              SizedBox(
                height: heroHeight,
                child: Stack(
                children: [
                  // Solid background
                  Positioned.fill(
                    child: Container(color: const Color(0xFF050710)),
                  ),
                  // Hero image on right 60%
                  if (heroImage != null && heroImage.isNotEmpty)
                    Positioned(
                      top: 0,
                      left: screenSize.width * 0.4,
                      right: 0,
                      height: heroHeight,
                      child: CachedNetworkImage(
                        imageUrl: heroImage,
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter,
                        placeholder: (_, __) => const SizedBox.shrink(),
                        errorWidget: (_, __, ___) => const SizedBox.shrink(),
                        imageBuilder: (context, imageProvider) {
                          if (!_heroImageReady) {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              if (mounted) setState(() => _heroImageReady = true);
                            });
                          }
                          return Image(image: imageProvider, fit: BoxFit.contain, alignment: Alignment.topCenter);
                        },
                      ),
                    ),
                  // Left gradient overlay - 75% from left (always visible)
                  Positioned(
                    top: 0,
                    left: 0,
                    width: screenSize.width * 0.75,
                    height: heroHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            const Color(0xFF050710),
                            const Color(0xFF050710),
                            const Color(0xFF050710),
                            const Color(0xFF050710).withOpacity(0.98),
                            const Color(0xFF050710).withOpacity(0.85),
                            const Color(0xFF050710).withOpacity(0.5),
                            Colors.transparent,
                          ],
                          stops: const [0.0, 0.4, 0.6, 0.75, 0.85, 0.95, 1.0],
                        ),
                      ),
                    ),
                  ),
                  // Bottom gradient - very minimal
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    height: heroHeight * 0.05,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            const Color(0xFF050710),
                            const Color(0xFF050710).withOpacity(0.8),
                            const Color(0xFF050710).withOpacity(0.5),
                            const Color(0xFF050710).withOpacity(0.2),
                            Colors.transparent,
                          ],
                          stops: const [0.0, 0.4, 0.7, 0.9, 1.0],
                        ),
                      ),
                    ),
                  ),

                  // Featured info in left area - constrained to fit
                  Positioned(
                    top: heroHeight * 0.2,
                    left: 80,
                    width: screenSize.width * 0.25,
                    height: heroHeight * 0.6,
                    child: _buildFeaturedInfo(context, featuredChannel, currentProgram),
                  ),
                  // Channel logo in top right corner (below clock, adjusted for padding)
                  Positioned(
                    top: heroHeight * 0.08 + 8,
                    right: 24,
                    child: _buildChannelLogo(context, featuredChannel),
                  ),
                  // LIVE badge in bottom right corner
                  if (currentProgram != null)
                    Positioned(
                      bottom: heroHeight * 0.08,
                      right: 24,
                      child: _buildLiveBadge(context),
                    ),
                ],
              ),
            ),
            // Channel grid sections
            Padding(
              padding: EdgeInsets.only(
                left: context.tvSpacing(48),
                right: context.tvSpacing(80),
                top: context.tvSpacing(24),
                bottom: context.tvSpacing(48),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isGrouping && groupedChannels.isEmpty)
                    _buildCategoryLoadingIndicator()
                  else
                    ..._buildCategoryRows(context, groupedChannels, isTV),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedInfo(BuildContext context, Channel channel, Program? program) {
    final title = program?.title ?? 'Live TV';
    final description = program?.description ?? '';
    final timeRange = program != null
        ? '${_formatTime(program.startTime)} - ${_formatTime(program.endTime)}'
        : '';
    final progress = program?.progressPercentage ?? 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Title
        Text(
          title,
          style: TextStyle(
            color: AppTheme.textPrimary,
            fontSize: context.tvTextSize(20),
            fontWeight: FontWeight.w700,
          ),
          maxLines: 2,
        ),
        if (description.isNotEmpty) ...[
          SizedBox(height: context.tvSpacing(6)),
          Flexible(
            child: SingleChildScrollView(
              child: Text(
                description,
                style: TextStyle(
                  color: AppTheme.textSecondary,
                  fontSize: context.tvTextSize(13),
                ),
                softWrap: true,
              ),
            ),
          ),
        ],
        if (program != null) ...[
          SizedBox(height: context.tvSpacing(8)),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.white.withAlpha((0.2 * 255).round()),
              color: AppTheme.primaryBlue,
              minHeight: 4,
            ),
          ),
        ],
        if (timeRange.isNotEmpty) ...[
          SizedBox(height: context.tvSpacing(4)),
          Text(
            timeRange,
            style: TextStyle(
              color: AppTheme.textSecondary,
              fontSize: context.tvTextSize(12),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildChannelLogo(BuildContext context, Channel channel) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: channel.logoUrl != null && channel.logoUrl!.isNotEmpty
          ? Image.network(
              channel.logoUrl!,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => const Icon(
                Icons.tv,
                color: AppTheme.primaryBlue,
                size: 20,
              ),
            )
          : const Icon(
              Icons.tv,
              color: AppTheme.primaryBlue,
              size: 20,
            ),
    );
  }

  Widget _buildLiveBadge(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppTheme.accentRed,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          'LIVE',
          style: TextStyle(
            color: Colors.white,
            fontSize: context.tvTextSize(14),
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,
          ),
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
    final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
    final channels = channelProvider.channels;
    if (channels.isEmpty || _featuredIndex >= channels.length) return null;
    return channels[_featuredIndex];
  }

  Future<void> _fetchChannelArtwork(Channel channel) async {
    final channelKey = 'channel_${channel.id}';
    if (_artworkRequests.contains(channelKey) || _programArtwork.containsKey(channelKey)) return;
    _artworkRequests.add(channelKey);
    try {
      debugPrint('LiveTV: Fetching TMDB art for channel: "${channel.name}"');
      final image = await TMDBService.getBestBackdrop(channel.name);
      if (!mounted) return;
      if (image != null) {
        debugPrint('LiveTV: Found TMDB art for channel "${channel.name}": $image');
      } else {
        debugPrint('LiveTV: No TMDB art found for channel "${channel.name}"');
      }
      setState(() {
        _programArtwork[channelKey] = image ?? '';
      });
    } catch (e) {
      debugPrint('LiveTV: Error fetching TMDB art for channel "${channel.name}": $e');
      if (mounted) {
        setState(() {
          _programArtwork[channelKey] = '';
        });
      }
    }
    // Don't remove from _artworkRequests - keep it to prevent re-fetching
  }

  Future<void> _fetchProgramArtwork(Program program) async {
    if (_artworkRequests.contains(program.id) || _programArtwork.containsKey(program.id)) return;
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
    final rowHeight = cardHeight + 80;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
          child: Text(
            title,
            style: const TextStyle(
              color: AppTheme.textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: rowHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 24), // Remove right padding
            itemCount: channels.length,
            itemExtent: cardWidth + 16,
            itemBuilder: (context, index) {
              return _buildChannelCard(context, channels[index], cardWidth, cardHeight);
            },
          ),
        ),
        const SizedBox(height: 16),
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

  Widget _buildChannelCard(BuildContext context, Channel channel, double cardWidth, double cardHeight) {
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
            final progress = currentProgram?.progressPercentage ?? 0.0;
            
            // Get image from EPG or TMDB cache
            String? cardImage = currentProgram?.imageUrl;
            if ((cardImage == null || cardImage.isEmpty) && currentProgram != null) {
              cardImage = _programArtwork[currentProgram.id];
            }
            
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
                                  color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
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
                            if (cardImage != null && cardImage.isNotEmpty)
                              Positioned.fill(
                                child: CachedNetworkImage(
                                  imageUrl: cardImage,
                                  fit: BoxFit.cover,
                                  memCacheWidth: 400,
                                  placeholder: (_, __) => Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Color(0xFF1a1a2e), AppTheme.cardBackground],
                                      ),
                                    ),
                                  ),
                                  errorWidget: (_, __, ___) => Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Color(0xFF1a1a2e), AppTheme.cardBackground],
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
                                    colors: [Color(0xFF1a1a2e), AppTheme.cardBackground],
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
                                child: channel.logoUrl != null && channel.logoUrl!.isNotEmpty
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
                            if (currentProgram != null)
                              Positioned(
                                left: 8,
                                right: 8,
                                bottom: 8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(2),
                                  child: LinearProgressIndicator(
                                    value: progress,
                                    backgroundColor: Colors.black.withAlpha((0.5 * 255).round()),
                                    color: AppTheme.primaryBlue,
                                    minHeight: 4,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    if (currentProgram != null) ...[
                      const SizedBox(height: 6),
                      SizedBox(
                        width: cardWidth,
                        child: Text(
                          currentProgram.title,
                          style: const TextStyle(
                            color: AppTheme.textPrimary,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '${_formatTime(currentProgram.startTime)} - ${_formatTime(currentProgram.endTime)}',
                        style: const TextStyle(
                          color: AppTheme.textSecondary,
                          fontSize: 10,
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

  Widget _buildSplashLoading() {
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.height * 0.7;
    final cardWidth = screenSize.width / 5.5;
    final cardHeight = cardWidth * 0.57;
    final rowHeight = cardHeight + 80;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hero skeleton
          Container(
            height: heroHeight,
            color: const Color(0xFF0a0e1a),
            child: Stack(
              children: [
                // Shimmer effect
                Positioned.fill(
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.3, end: 0.5),
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.easeInOut,
                    builder: (context, opacity, child) {
                      return Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              const Color(0xFF050710),
                              Color.lerp(const Color(0xFF050710), const Color(0xFF1a1a2e), opacity)!,
                              const Color(0xFF050710),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Info box skeleton
                Positioned(
                  top: heroHeight * 0.2,
                  left: 80,
                  width: screenSize.width * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: double.infinity * 0.8,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity * 0.9,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Channel rows skeleton
          Padding(
            padding: EdgeInsets.only(
              left: context.tvSpacing(48),
              right: context.tvSpacing(80),
              top: context.tvSpacing(24),
              bottom: context.tvSpacing(48),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(3, (rowIndex) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Category title skeleton
                    Container(
                      width: 150,
                      height: 18,
                      margin: const EdgeInsets.fromLTRB(24, 0, 24, 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    // Card row skeleton
                    SizedBox(
                      height: rowHeight,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 24),
                        itemCount: 6,
                        itemExtent: cardWidth + 16,
                        itemBuilder: (context, index) {
                          return Container(
                            width: cardWidth,
                            margin: const EdgeInsets.only(right: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: cardWidth,
                                  height: cardHeight,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.05),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  width: cardWidth * 0.7,
                                  height: 14,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.08),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildShimmerHeroBackground() {
    // A subtle shimmer/pulse effect while loading
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.3, end: 0.5),
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
      builder: (context, opacity, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFF1a1a2e),
                Color.lerp(
                  const Color(0xFF16213e),
                  AppTheme.primaryBlue,
                  opacity - 0.3,
                )!,
              ],
            ),
          ),
          child: Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white.withAlpha((0.3 * 255).round()),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDefaultHeroBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1a1a2e),
            const Color(0xFF16213e),
            AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
          ],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.live_tv,
          size: 120,
          color: Colors.white.withAlpha((0.15 * 255).round()),
        ),
      ),
    );
  }

  String _formatTime(DateTime dt) {
    final hour = dt.hour == 0 ? 12 : (dt.hour > 12 ? dt.hour - 12 : dt.hour);
    final period = dt.hour < 12 ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')} $period';
  }
}
