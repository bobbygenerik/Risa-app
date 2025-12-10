import 'dart:async';
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
import 'package:iptv_player/widgets/channel_logo_widget.dart';
import 'package:iptv_player/widgets/program_artwork_widget.dart';
import 'package:iptv_player/widgets/native_exoplayer.dart';
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
  final FocusNode _watchFocus = FocusNode();
  final FocusNode _guideFocus = FocusNode();
  final FocusNode _heroFocus = FocusNode();
  final FocusNode _settingsButtonFocus = FocusNode();
  final Map<String, String?> _programArtwork = {};
  final Set<String> _artworkRequests = {};
  late final bool _tmdbEnabled;
  NativeExoPlayerController? _heroPlayerController;
  
  // Track if initial load is complete to show splash screen
  bool _showSplash = true;
  bool _heroImageReady = false;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _tmdbEnabled = ServiceValidator.isTmdbAvailable;
    _scrollController.addListener(_onScroll);
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

  void _onScroll() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
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
    _heroPlayerController?.pause();
    _scrollController.dispose();
    _watchFocus.dispose();
    _guideFocus.dispose();
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
      _watchFocus.requestFocus();
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
        
        // Update hero video player with new channel
        final newChannel = channels[_featuredIndex];
        _heroPlayerController?.pause();
        // Video will auto-restart with new URL on next build
      });
    });
    // Focus is managed by navigation bar - don't auto-focus content
  }

  @override
  Widget build(BuildContext context) {
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
                  const SizedBox(height: 24),
                  Text(
                    'No Live TV Available',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Load a playlist with Live TV channels from Settings',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
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

          return SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Focus(
                  focusNode: _heroFocus,
                  onKeyEvent: (node, event) {
                    if (event is! KeyDownEvent) return KeyEventResult.ignored;
                    final provider = Provider.of<ChannelProvider>(context, listen: false);
                    final channels = provider.channels;
                    if (channels.isEmpty) return KeyEventResult.ignored;
                    
                    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                      _carouselTimer?.cancel();
                      setState(() {
                        // Find previous channel with artwork
                        int attempts = 0;
                        int prevIndex = (_featuredIndex - 1 + channels.length) % channels.length;
                        while (attempts < channels.length) {
                          final channel = channels[prevIndex];
                          final epgService = Provider.of<EpgService>(context, listen: false);
                          final program = epgService.getCurrentProgram(
                            channel.tvgId ?? channel.id,
                            channelName: channel.name,
                          );
                          final heroImage = _resolveHeroImage(program);
                          if (heroImage != null && heroImage.isNotEmpty) {
                            _featuredIndex = prevIndex;
                            break;
                          }
                          prevIndex = (prevIndex - 1 + channels.length) % channels.length;
                          attempts++;
                        }
                        if (attempts >= channels.length) {
                          _featuredIndex = (_featuredIndex - 1 + channels.length) % channels.length;
                        }
                      });
                      _startCarouselIfNeeded();
                      return KeyEventResult.handled;
                    }
                    if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                      _carouselTimer?.cancel();
                      setState(() {
                        // Find next channel with artwork
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
                        if (attempts >= channels.length) {
                          _featuredIndex = (_featuredIndex + 1) % channels.length;
                        }
                      });
                      _startCarouselIfNeeded();
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: _buildHero(context, featuredChannel, currentProgram),
                ),
                _buildChannelSection(
                  context,
                  'Featured Channels',
                  channels.take(6).toList(),
                ),
                const SizedBox(height: 24),
                // Show loading indicator while categories are being computed
                if (isGrouping && groupedChannels.isEmpty)
                  _buildCategoryLoadingIndicator()
                else
                  // Build category rows (limited for performance)
                  ..._buildCategoryRows(context, groupedChannels),
                const SizedBox(height: 40),
              ],
            ),
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

  Widget _buildHero(BuildContext context, Channel channel, Program? program) {
    final title = program?.title ?? channel.name;
    final subtitle = program != null
        ? '${_formatTime(program.startTime)} — ${_formatTime(program.endTime)}'
        : channel.groupTitle ?? '';

    final progress = program?.progressPercentage ?? 0.0;
    final heroImage = _resolveHeroImage(program);
    
    // Full screen height for hero background
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    
    // Calculate dynamic sizing based on scroll
    final scrollProgress = (_scrollOffset / screenHeight).clamp(0.0, 1.0);
    final heroHeight = screenHeight * (1.0 - scrollProgress * 0.35); // Shrink to 65% when scrolled
    final videoWidth = screenWidth * (0.55 + scrollProgress * 0.45); // Expand from 55% to 100%
    final infoOpacity = 1.0 - scrollProgress;

    return GestureDetector(
      onTap: () => context.push('/player', extra: channel),
      child: Container(
        height: heroHeight,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppTheme.cardBackground,
          borderRadius: BorderRadius.zero,
        ),
        child: Stack(
          children: [
            // Background - video when at top, artwork when scrolled
            Positioned(
              right: 0,
              top: 0,
              width: videoWidth,
              height: heroHeight,
              child: scrollProgress == 0.0
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: NativeExoPlayer(
                        videoUrl: channel.streamUrl,
                        autoPlay: true,
                        onCreated: (controller) {
                          _heroPlayerController = controller;
                        },
                      ),
                    )
                  : heroImage != null && heroImage.isNotEmpty
                      ? CachedNetworkImage(
                          imageUrl: heroImage,
                          fit: BoxFit.cover,
                          placeholder: (_, __) => Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  const Color(0xFF1a1a2e),
                                  AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
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
                                  AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF1a1a2e),
                                AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                              ],
                            ),
                          ),
                        ),
            ),
            // Left gradient overlay (stronger when scrolled)
            Positioned(
              left: 0,
              top: 0,
              width: screenWidth * (0.45 + scrollProgress * 0.3),
              height: heroHeight,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      const Color(0xFF050710),
                      const Color(0xFF050710).withOpacity(0.9 - scrollProgress * 0.2),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 0.7, 1.0],
                  ),
                ),
              ),
            ),
            // Bottom gradient overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withAlpha((0.3 * 255).round()),
                      Colors.black.withAlpha((0.7 * 255).round()),
                      const Color(0xFF050710),
                    ],
                    stops: const [0.0, 0.3, 0.6, 0.9],
                  ),
                ),
              ),
            ),
            // Hero content
            Positioned(
              left: 24,
              bottom: 16,
              right: 24,
              child: Opacity(
                opacity: infoOpacity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Channel logo with enrichment
                        Container(
                          width: 120,
                          height: 64,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ChannelLogoWidget(
                            channelName: channel.name,
                            logoUrl: channel.logoUrl,
                            tvgId: channel.tvgId,
                            width: 120,
                            height: 64,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  if (program != null)
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(
                                        'LIVE',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  const SizedBox(width: 8),
                                  Flexible(
                                    child: Text(
                                      title,
                                      style: const TextStyle(
                                        color: AppTheme.textPrimary,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w800,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                subtitle,
                                style: const TextStyle(
                                  color: AppTheme.textSecondary,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 12),
                              // Progress bar
                              if (program != null)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LinearProgressIndicator(
                                      value: progress,
                                      color: AppTheme.accentOrange,
                                      backgroundColor: Colors.white.withAlpha(
                                        (0.08 * 255).round(),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      '${(progress * 100).round()}% elapsed',
                                      style: const TextStyle(
                                        color: AppTheme.textSecondary,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        // TV-friendly watch button with modern focus styling (glow effect)
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Focus(
                            focusNode: _watchFocus,
                            onKeyEvent: (node, event) {
                              if (event is KeyDownEvent) {
                                if (event.logicalKey == LogicalKeyboardKey.select ||
                                    event.logicalKey == LogicalKeyboardKey.enter ||
                                    event.logicalKey == LogicalKeyboardKey.gameButtonA) {
                                  context.push('/player', extra: channel);
                                  return KeyEventResult.handled;
                                }
                                if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                                  _guideFocus.requestFocus();
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
                                    scale: isFocused ? TVFocusStyle.focusScale : 1.0,
                                    duration: TVFocusStyle.animationDuration,
                                    curve: TVFocusStyle.animationCurve,
                                    child: AnimatedContainer(
                                      duration: TVFocusStyle.animationDuration,
                                      curve: TVFocusStyle.animationCurve,
                                      decoration: BoxDecoration(
                                        color: AppTheme.primaryBlue,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: isFocused
                                            ? TVFocusStyle.focusedShadow
                                            : TVFocusStyle.defaultShadow,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 24,
                                        vertical: 14,
                                      ),
                                      child: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.play_arrow, color: Colors.white),
                                          SizedBox(width: 8),
                                          Text(
                                            'Watch',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        // Guide button with modern focus styling
                        Focus(
                          focusNode: _guideFocus,
                          onKeyEvent: (node, event) {
                            if (event is KeyDownEvent) {
                              if (event.logicalKey == LogicalKeyboardKey.select ||
                                  event.logicalKey == LogicalKeyboardKey.enter ||
                                  event.logicalKey == LogicalKeyboardKey.gameButtonA) {
                                context.go('/epg');
                                return KeyEventResult.handled;
                              }
                              if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                                _watchFocus.requestFocus();
                                return KeyEventResult.handled;
                              }
                            }
                            return KeyEventResult.ignored;
                          },
                          child: Builder(
                            builder: (context) {
                              final isFocused = Focus.of(context).hasFocus;
                              return GestureDetector(
                                onTap: () => context.go('/epg'),
                                child: AnimatedScale(
                                  scale: isFocused ? TVFocusStyle.focusScale : 1.0,
                                  duration: TVFocusStyle.animationDuration,
                                  curve: TVFocusStyle.animationCurve,
                                  child: AnimatedContainer(
                                    duration: TVFocusStyle.animationDuration,
                                    curve: TVFocusStyle.animationCurve,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: AppTheme.primaryBlue.withAlpha((0.85 * 255).round()),
                                      boxShadow: isFocused
                                          ? TVFocusStyle.focusedShadow
                                          : TVFocusStyle.defaultShadow,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 24,
                                      vertical: 14,
                                    ),
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.dvr,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Guide',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
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
    final rowHeight = cardHeight + 60; // Extra space for padding

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
          child: Text(
            title,
            style: const TextStyle(
              color: AppTheme.textPrimary,
              fontSize: 20,
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
                              scale: isFocused ? TVFocusStyle.focusScale : 1.0,
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
                                  boxShadow: isFocused
                                      ? TVFocusStyle.focusedShadow
                                      : TVFocusStyle.defaultShadow,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: channel.logoUrl != null && channel.logoUrl!.isNotEmpty
                                      ? CachedNetworkImage(
                                          imageUrl: channel.logoUrl!,
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.contain,
                                          httpHeaders: const {
                                            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
                                          },
                                          placeholder: (context, url) => _buildChannelPlaceholder(channel.name),
                                          errorWidget: (context, url, error) => _buildChannelPlaceholder(channel.name),
                                        )
                                      : _buildChannelPlaceholder(channel.name),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
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

  Widget _buildChannelPlaceholder(String name) {
    return Container(
      color: AppTheme.cardBackground,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.live_tv,
              size: 40,
              color: AppTheme.textSecondary.withAlpha((0.5 * 255).round()),
            ),
            const SizedBox(height: 8),
            Text(
              name.length > 20 ? name.substring(0, 20) : name,
              style: TextStyle(
                color: AppTheme.textSecondary.withAlpha((0.7 * 255).round()),
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
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

  String _formatTime(DateTime dt) {
    final hour = dt.hour == 0 ? 12 : (dt.hour > 12 ? dt.hour - 12 : dt.hour);
    final period = dt.hour < 12 ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')} $period';
  }
}