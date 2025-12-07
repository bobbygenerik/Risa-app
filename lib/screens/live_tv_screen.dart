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
  
  // Track if initial load is complete to show splash screen
  bool _showSplash = true;
  bool _heroImageReady = false;

  @override
  void initState() {
    super.initState();
    _tmdbEnabled = ServiceValidator.isTmdbAvailable;
    // Start carousel once the widget is built — will be updated when channels load
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _findInitialChannelWithArtwork();
        _startCarouselIfNeeded();
        // Load EPG data to populate program info and progress bars
        _loadEpgData();
      },
    );
  }
  
  void _findInitialChannelWithArtwork() {
    final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
    final channels = channelProvider.channels;
    if (channels.isEmpty) return;
    
    final epgService = Provider.of<EpgService>(context, listen: false);
    
    // Try to find a channel with artwork for initial display
    for (int i = 0; i < channels.length && i < 20; i++) {
      final channel = channels[i];
      final program = epgService.getCurrentProgram(
        channel.tvgId ?? channel.id,
        channelName: channel.name,
      );
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
  
  void _onChannelsReady() {
    // Called when channels are loaded - wait a brief moment for hero to prepare
    if (!_showSplash) return;
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted && _showSplash) {
        setState(() => _showSplash = false);
      }
    });
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
    } else {
      _heroFocus.requestFocus();
    }
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
        // Find next channel with artwork for hero
        int attempts = 0;
        int nextIndex = (_featuredIndex + 1) % channels.length;
        while (attempts < channels.length) {
          final channel = channels[nextIndex];
          final epgService = Provider.of<EpgService>(context, listen: false);
          final program = epgService.getCurrentProgram(
            channel.tvgId ?? channel.id,
            channelName: channel.name,
          );
          final heroImage = _resolveHeroImage(program);
          if (heroImage != null && heroImage.isNotEmpty) {
            _featuredIndex = nextIndex;
            break;
          }
          nextIndex = (nextIndex + 1) % channels.length;
          attempts++;
        }
        // If no channels with artwork found, just use next index
        if (attempts >= channels.length) {
          _featuredIndex = (_featuredIndex + 1) % channels.length;
        }
      });
    });
    // Focus is managed by navigation bar - don't auto-focus content
  }
  late Size _screenSize;

  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    final body = Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF050710), Color(0xFF0d1140)],
        ),
      ),
      child: Consumer2<ChannelProvider, EpgService>(
        builder: (context, channelProvider, epgService, _) {
          final channels = channelProvider.channels;
          
          // Show splash only while actively loading channels
          if (_showSplash && channelProvider.isLoading) {
            // Trigger transition once channels are available
            if (channels.isNotEmpty) {
              _onChannelsReady();
            }
            return _buildSplashLoading();
          } else if (_showSplash && !channelProvider.isLoading) {
            // Not loading, dismiss splash immediately
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted && _showSplash) {
                setState(() => _showSplash = false);
              }
            });
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
    final heroHeight = _screenSize.height * 0.65;

    return Focus(
      canRequestFocus: false,
      skipTraversal: true,
      onKeyEvent: _handleDirectionalKeyEvent,
      child: Container(
        height: _screenSize.height,
        width: double.infinity,
        child: Stack(
          children: [
            // Static hero background with featured content rotation
            Positioned.fill(
              child: heroImage != null && heroImage.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: heroImage,
                      fit: BoxFit.cover,
                      placeholder: (_, __) => _buildShimmerHeroBackground(),
                      errorWidget: (_, __, ___) => _buildDefaultHeroBackground(),
                      imageBuilder: (context, imageProvider) {
                        if (!_heroImageReady) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            if (mounted) setState(() => _heroImageReady = true);
                          });
                        }
                        return Image(image: imageProvider, fit: BoxFit.cover);
                      },
                    )
                  : _buildDefaultHeroBackground(),
            ),
            // Dark gradient overlay for readability with strong top fade for nav bar
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withAlpha((0.95 * 255).round()),
                      Colors.black.withAlpha((0.2 * 255).round()),
                      Colors.black.withAlpha((0.5 * 255).round()),
                      Colors.black.withAlpha((0.75 * 255).round()),
                    ],
                    stops: const [0.0, 0.08, 0.5, 1.0],
                  ),
                ),
              ),
            ),
            // Featured info in top-right corner
            Positioned(
              top: 70,
              right: 48,
              child: _buildFeaturedInfo(context, featuredChannel, currentProgram),
            ),
            // Scrollable content on top of hero
            Positioned.fill(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.tvSpacing(48),
                      vertical: context.tvSpacing(80),
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Spacer for hero area
                      SizedBox(height: heroHeight - context.tvSpacing(180)),
                      SizedBox(height: context.tvSpacing(48)),
                      // Channel grid sections
                      if (isGrouping && groupedChannels.isEmpty)
                        _buildCategoryLoadingIndicator()
                      else
                        ..._buildCategoryRows(context, groupedChannels),
                      SizedBox(height: context.tvSpacing(40)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedInfo(BuildContext context, Channel channel, Program? program) {
    final title = program?.title ?? 'Live TV';
    final timeRange = program != null
        ? '${_formatTime(program.startTime)} — ${_formatTime(program.endTime)}'
        : '';

    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          constraints: BoxConstraints(maxWidth: context.tvSpacing(250)),
          padding: EdgeInsets.symmetric(
            horizontal: context.tvSpacing(8),
            vertical: context.tvSpacing(6),
          ),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha((0.1 * 255).round()),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
              width: 1,
            ),
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Channel logo (smaller)
          Container(
            width: context.tvSpacing(32),
            height: context.tvSpacing(32),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(4),
            ),
            child: channel.logoUrl != null && channel.logoUrl!.isNotEmpty
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      channel.logoUrl!,
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) => const Icon(
                        Icons.tv,
                        color: AppTheme.primaryBlue,
                        size: 16,
                      ),
                    ),
                  )
                : const Icon(
                    Icons.tv,
                    color: AppTheme.primaryBlue,
                    size: 16,
                  ),
          ),
          SizedBox(width: context.tvSpacing(8)),
          // Program info
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (program != null)
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.tvSpacing(4),
                      vertical: context.tvSpacing(1),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Text(
                      'LIVE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: context.tvTextSize(8),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                SizedBox(height: context.tvSpacing(3)),
                Text(
                  title,
                  style: TextStyle(
                    color: AppTheme.textPrimary,
                    fontSize: context.tvTextSize(13),
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                if (timeRange.isNotEmpty) ...[
                  SizedBox(height: context.tvSpacing(1)),
                  Text(
                    timeRange,
                    style: TextStyle(
                      color: AppTheme.textSecondary,
                      fontSize: context.tvTextSize(9),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
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
    final cardHeight = cardWidth * 0.57; // Maintain 16:9 aspect ratio
    final rowHeight = cardHeight + 40; // Reduced padding for more rows visible

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
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: FocusTraversalGroup(
              policy: WidgetOrderTraversalPolicy(),
              child: Row(
                children: channels.map((channel) {
                  return _buildChannelCard(context, channel, cardWidth, cardHeight);
                }).toList(),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16), // Reduced spacing between rows
      ],
    );
  }

  /// Build category rows from grouped channels
  List<Widget> _buildCategoryRows(
    BuildContext context,
    Map<String, List<Channel>> groupedChannels,
  ) {
    if (groupedChannels.isEmpty) return [];

    // Provider already returns sorted categories with limited channels
    return groupedChannels.entries.map((entry) {
      final channels = entry.value;
      if (channels.isEmpty) return const SizedBox.shrink();
      return _buildChannelSection(context, entry.key, channels);
    }).toList();
  }

  Widget _buildChannelCard(BuildContext context, Channel channel, double cardWidth, double cardHeight) {
    final epgService = Provider.of<EpgService>(context, listen: false);
    final currentProgram = epgService.getCurrentProgram(
      channel.tvgId ?? channel.id,
      channelName: channel.name,
    );
    final progress = currentProgram?.progressPercentage ?? 0.0;
    
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Focus(
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
            return GestureDetector(
              onTap: () => context.push('/player', extra: channel),
              child: AnimatedScale(
                scale: isFocused ? 1.05 : 1.0,
                duration: TVFocusStyle.animationDuration,
                curve: TVFocusStyle.animationCurve,
                child: AnimatedContainer(
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
                        // Program image background or gradient fallback
                        if (currentProgram?.imageUrl != null && currentProgram!.imageUrl!.isNotEmpty)
                          Positioned.fill(
                            child: CachedNetworkImage(
                              imageUrl: currentProgram.imageUrl!,
                              fit: BoxFit.cover,
                              httpHeaders: const {
                                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
                              },
                              placeholder: (_, __) => Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      const Color(0xFF1a1a2e),
                                      AppTheme.cardBackground,
                                    ],
                                  ),
                                ),
                              ),
                              errorWidget: (_, __, ___) => Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      const Color(0xFF1a1a2e),
                                      AppTheme.cardBackground,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        else
                          // Background gradient fallback
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  const Color(0xFF1a1a2e),
                                  AppTheme.cardBackground,
                                ],
                              ),
                            ),
                          ),
                        // Channel logo (smaller)
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Container(
                            width: 40,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.black.withAlpha((0.6 * 255).round()),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.all(2),
                            child: channel.logoUrl != null && channel.logoUrl!.isNotEmpty
                                ? CachedNetworkImage(
                                    imageUrl: channel.logoUrl!,
                                    fit: BoxFit.contain,
                                    httpHeaders: const {
                                      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
                                    },
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
                        // Program info
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withAlpha((0.9 * 255).round()),
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Show program info only if there's a current program
                                if (currentProgram != null) ...[
                                  // Program title
                                  Text(
                                    currentProgram.title,
                                    style: const TextStyle(
                                      color: AppTheme.textPrimary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 6),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(2),
                                    child: LinearProgressIndicator(
                                      value: progress,
                                      backgroundColor: Colors.white.withAlpha((0.2 * 255).round()),
                                      color: AppTheme.primaryBlue,
                                      minHeight: 4,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    _formatTime(currentProgram.startTime) +
                                        ' — ' +
                                        _formatTime(currentProgram.endTime),
                                    style: const TextStyle(
                                      color: AppTheme.textSecondary,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Animated logo/icon
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.8, end: 1.0),
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            builder: (context, scale, child) {
              return Transform.scale(
                scale: scale,
                child: child,
              );
            },
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                    AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                  ],
                ),
              ),
              child: const Icon(
                Icons.live_tv,
                size: 64,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 32),
          // Loading indicator
          SizedBox(
            width: 32,
            height: 32,
            child: CircularProgressIndicator(
              strokeWidth: 3,
              valueColor: AlwaysStoppedAnimation<Color>(
                AppTheme.primaryBlue.withAlpha((0.8 * 255).round()),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Loading channels...',
            style: TextStyle(
              color: Colors.white.withAlpha((0.6 * 255).round()),
              fontSize: 14,
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
