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
  final FocusNode _watchFocus = FocusNode();
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
      (_) => _startCarouselIfNeeded(),
    );
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
    _watchFocus.dispose();
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
        _featuredIndex = (_featuredIndex + 1) % channels.length;
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
            child: Column(
              children: [
                _buildHero(context, featuredChannel, currentProgram),
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

    return GestureDetector(
      onTap: () => context.push('/player', extra: channel),
      child: Container(
        height: 420,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppTheme.cardBackground,
          borderRadius: BorderRadius.zero,
        ),
        child: Stack(
          children: [
            // Background image if available, otherwise gradient with TV icon
            if (heroImage != null && heroImage.isNotEmpty)
              Positioned.fill(
                child: CachedNetworkImage(
                  imageUrl: heroImage,
                  fit: BoxFit.cover,
                  placeholder: (_, __) => _buildShimmerHeroBackground(),
                  errorWidget: (_, __, ___) => _buildDefaultHeroBackground(),
                  imageBuilder: (context, imageProvider) {
                    // Mark hero as ready when image loads
                    if (!_heroImageReady) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (mounted) setState(() => _heroImageReady = true);
                      });
                    }
                    return Image(image: imageProvider, fit: BoxFit.cover);
                  },
                ),
              )
            else
              Positioned.fill(child: _buildDefaultHeroBackground()),
            // Dark gradient overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withAlpha((0.7 * 255).round()),
                    ],
                  ),
                ),
              ),
            ),
            // Hero content
            Positioned(
              left: 24,
              bottom: 24,
              right: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Channel logo with enrichment
                      ChannelLogoWidget(
                        channelName: channel.name,
                        logoUrl: channel.logoUrl,
                        tvgId: channel.tvgId,
                        width: 120,
                        height: 64,
                        fit: BoxFit.contain,
                        borderRadius: BorderRadius.circular(8),
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
                            if (event is KeyDownEvent &&
                                (event.logicalKey == LogicalKeyboardKey.select ||
                                 event.logicalKey == LogicalKeyboardKey.enter ||
                                 event.logicalKey == LogicalKeyboardKey.gameButtonA)) {
                              context.push('/player', extra: channel);
                              return KeyEventResult.handled;
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
                        onKeyEvent: (node, event) {
                          if (event is KeyDownEvent &&
                              (event.logicalKey == LogicalKeyboardKey.select ||
                               event.logicalKey == LogicalKeyboardKey.enter ||
                               event.logicalKey == LogicalKeyboardKey.gameButtonA)) {
                            context.go('/epg');
                            return KeyEventResult.handled;
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
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
          height: 140,
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
                          // Navigate up to hero Watch button
                          if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
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
                            onTap: () => context.push('/player', extra: channel),
                            child: AnimatedScale(
                              scale: isFocused ? TVFocusStyle.focusScale : 1.0,
                              duration: TVFocusStyle.animationDuration,
                              curve: TVFocusStyle.animationCurve,
                              child: AnimatedContainer(
                                duration: TVFocusStyle.animationDuration,
                                curve: TVFocusStyle.animationCurve,
                                width: 200,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppTheme.cardBackground,
                                  boxShadow: isFocused
                                      ? TVFocusStyle.focusedShadow
                                      : TVFocusStyle.defaultShadow,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: ProgramArtworkWidget(
                                    channel: channel,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                    borderRadius: BorderRadius.circular(12),
                                    placeholder: _buildChannelPlaceholder(channel.name),
                                    errorWidget: _buildChannelPlaceholder(channel.name),
                                  ),
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
