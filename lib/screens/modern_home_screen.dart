import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/widgets/channel_logo_widget.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

import 'package:iptv_player/widgets/go_to_settings_button.dart';

import 'dart:async';
import 'package:flutter/services.dart';


class ModernHomeScreen extends StatefulWidget {
  const ModernHomeScreen({super.key});

  @override
  State<ModernHomeScreen> createState() => _ModernHomeScreenState();
}

class _ModernHomeScreenState extends State<ModernHomeScreen> with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  final FocusNode _heroFocusNode = FocusNode(debugLabel: 'HeroBanner');
  int _currentPage = 0;
  Timer? _autoScrollTimer;
  final Map<String, String?> _tmdbArtCache = {};
  List<Channel> _cachedFeaturedChannels = [];

  static const int _maxHeroChannels = 6;
  static const Duration _autoScrollDuration = Duration(seconds: 7);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Request focus on hero banner when entering home screen
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted && !_heroFocusNode.hasFocus) {
        _heroFocusNode.requestFocus();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
    _preloadHeroArtwork();
  }

  void _preloadHeroArtwork() async {
    final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
    final epgService = Provider.of<EpgService>(context, listen: false);
    final channels = channelProvider.channels.take(_maxHeroChannels).toList();
    
    if (channels.isEmpty) return;
    
    final titles = <String>[];
    for (final channel in channels) {
      final currentProgram = epgService.getCurrentProgram(
        channel.tvgId ?? channel.id,
        channelName: channel.name,
      );
      final showTitle = currentProgram?.title.isNotEmpty == true 
          ? currentProgram!.title 
          : channel.name;
      titles.add(showTitle);
    }
    
    try {
      final results = await TMDBService.getBestBackdropBatch(titles);
      if (mounted) {
        setState(() {
          _tmdbArtCache.addAll(results);
        });
      }
    } catch (e) {
      debugPrint('HomeScreen: Error batch-fetching TMDB art: $e');
    }
  }

  void _startAutoScroll() {
    _autoScrollTimer?.cancel();
    _autoScrollTimer = Timer.periodic(_autoScrollDuration, (_) {
      if (!mounted) return;
      setState(() {
        _currentPage = (_currentPage + 1) % _maxHeroChannels;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        _precacheHeroArt(_currentPage + 1);
        _precacheHeroArt(_currentPage - 1);
      });
    });
  }

  void _precacheHeroArt(int page) {
    final context = this.context;
    final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
    final epgService = Provider.of<EpgService>(context, listen: false);
    final channels = channelProvider.channels.take(_maxHeroChannels).toList();
    if (channels.isEmpty) return;
    final idx = (page % channels.length + channels.length) % channels.length;
    final channel = channels[idx];
    final currentProgram = epgService.getCurrentProgram(
      channel.tvgId ?? channel.id,
      channelName: channel.name,
    );
    final showTitle = currentProgram?.title.isNotEmpty == true ? currentProgram!.title : channel.name;
    _getBestArt(showTitle).then((url) {
      if (url != null && url.isNotEmpty) {
        precacheImage(NetworkImage(url.replaceFirst('/w1280', '/w780')), context);
      }
    });
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _showExitConfirmation(BuildContext context) async {
    final shouldExit = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit App?'),
        content: const Text('Do you want to exit Stream Hub?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Exit'),
          ),
        ],
      ),
    );
    
    if (shouldExit == true && context.mounted) {
      SystemNavigator.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        _showExitConfirmation(context);
      },
      child: Container(
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
      child: Consumer<ChannelProvider>(
        builder: (context, channelProvider, _) {
          final channels = channelProvider.channels;
          final isLoading = channelProvider.isLoading;
          
          // Show loading indicator if playlist is being loaded
          if (isLoading && channels.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(AppTheme.accentOrange),
                  ),
                  SizedBox(height: context.tvSpacing(24)),
                  Text(
                    'Loading Playlist...',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: context.tvSpacing(8)),
                  Text(
                    'Please wait while we load your channels',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }
          
          // Show empty state if no channels available and not loading
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
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: context.tvSpacing(32)),
                    GoToSettingsButton(
                      onPressed: () {
                        if (context.mounted) context.go('/settings');
                      },
                    ),
                ],
              ),
            );
          }
          
          return SingleChildScrollView(
            child: Column(
              children: [
                // Hero Banner (edge-to-edge)
                _buildHeroBanner(),
                // Continue Watching
                _buildSectionWithCards(
                  title: 'Continue Watching',
                  onTap: (content) {
                    context.push('/player', extra: content);
                  },
                ),
                // Featured Channels
                _buildChannelSection(
                  title: 'Featured Channels',
                  onTap: (channel) {
                    context.push('/player', extra: channel);
                  },
                ),
                // Trending Now
                _buildSectionWithCards(
                  title: 'Trending Now',
                  onTap: (content) {
                    context.push('/player', extra: content);
                  },
                ),
                const SizedBox(height: 40),
              ],
            ),
          );
        },
      ),
      ),
    );
  }

  Widget _buildHeroBanner() {
    return Consumer2<ChannelProvider, EpgService>(
      builder: (context, channelProvider, epgService, _) {
        // Show most watched channels in the hero banner
        final channels = channelProvider.mostWatchedChannels.take(_maxHeroChannels).toList();
        if (channels.isEmpty) {
          return _buildPlaceholderBanner();
        }

        return SizedBox(
          height: 420,
          child: Focus(
            focusNode: _heroFocusNode,
            onKeyEvent: (node, event) {
              if (event is! KeyDownEvent) return KeyEventResult.ignored;
              if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                setState(() {
                  _currentPage = (_currentPage - 1 + channels.length) % channels.length;
                  _pageController.animateToPage(
                    _currentPage,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                  _precacheHeroArt(_currentPage - 1);
                  _precacheHeroArt(_currentPage + 1);
                });
                return KeyEventResult.handled;
              }
              if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                setState(() {
                  _currentPage = (_currentPage + 1) % channels.length;
                  _pageController.animateToPage(
                    _currentPage,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                  _precacheHeroArt(_currentPage - 1);
                  _precacheHeroArt(_currentPage + 1);
                });
                return KeyEventResult.handled;
              }
              return KeyEventResult.ignored;
            },
            child: PageView.builder(
              controller: _pageController,
              itemCount: channels.length,
              onPageChanged: (index) {
                setState(() => _currentPage = index);
                _precacheHeroArt(index - 1);
                _precacheHeroArt(index + 1);
              },
              itemBuilder: (context, index) {
                final channel = channels[index];
                final currentProgram = epgService.getCurrentProgram(
                  channel.tvgId ?? channel.id,
                  channelName: channel.name,
                );
                final showTitle = currentProgram?.title.isNotEmpty == true ? currentProgram!.title : channel.name;
                final startTime = currentProgram?.startTime;
                final endTime = currentProgram?.endTime;
                final progress = currentProgram?.progressPercentage ?? 0.0;

                return FutureBuilder<String?>(
                  future: _getBestArt(showTitle),
                  builder: (context, snapshot) {
                    final heroImage = snapshot.data;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Focus(
                        focusNode: index == _currentPage ? _heroFocusNode : null,
                        onKeyEvent: (node, event) {
                          if (event is KeyDownEvent && 
                              (event.logicalKey == LogicalKeyboardKey.select || 
                               event.logicalKey == LogicalKeyboardKey.enter)) {
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
                                  height: 400,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    boxShadow: isFocused
                                        ? TVFocusStyle.focusedShadow
                                        : TVFocusStyle.defaultShadow,
                                    gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xFF050710),
                                        Color(0xFF0d1140),
                                      ],
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(24),
                                    child: Stack(
                                      children: [
                                        // Background image or gradient
                                        Container(
                                          color: AppTheme.cardBackground,
                                          child: heroImage != null && heroImage.isNotEmpty
                                              ? Image.network(
                                                  heroImage.replaceFirst('/w1280', '/w780'),
                                                  fit: BoxFit.cover,
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  cacheWidth: 1280,
                                                  cacheHeight: 720,
                                                  errorBuilder: (_, __, ___) => _buildPlaceholderGradient(),
                                                )
                                              : _buildPlaceholderGradient(),
                                        ),
                                        // Channel logo overlay (top left) - with enrichment
                                        Positioned(
                                          top: 20,
                                          left: 20,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black.withOpacity(0.7),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            padding: const EdgeInsets.all(6),
                                            child: ChannelLogoWidget(
                                              channelName: channel.name,
                                              logoUrl: channel.logoUrl,
                                              tvgId: channel.tvgId,
                                              width: 48,
                                              height: 48,
                                              fit: BoxFit.contain,
                                              borderRadius: BorderRadius.circular(4),
                                              errorWidget: const Icon(Icons.live_tv, color: Colors.white, size: 32),
                                            ),
                                          ),
                                        ),
                                      // Now Playing badge (top right)
                                      Positioned(
                                        top: 20,
                                        right: 20,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                          decoration: BoxDecoration(
                                            color: AppTheme.accentOrange,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Text(
                                            'NOW PLAYING',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Content overlay
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          padding: const EdgeInsets.all(24),
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
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                        Text(
                                          showTitle,
                                          style: const TextStyle(
                                            color: AppTheme.textPrimary,
                                            fontSize: 28,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(height: 8),
                                        if (startTime != null && endTime != null)
                                          Row(
                                            children: [
                                              Text(
                                                _formatTime(startTime),
                                                style: const TextStyle(
                                                  color: AppTheme.textSecondary,
                                                  fontSize: 14,
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              const Text('-', style: TextStyle(color: AppTheme.textSecondary)),
                                              const SizedBox(width: 8),
                                              Text(
                                                _formatTime(endTime),
                                                style: const TextStyle(
                                                  color: AppTheme.textSecondary,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        if (startTime != null && endTime != null)
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8, bottom: 4),
                                            child: LinearProgressIndicator(
                                              value: progress,
                                              backgroundColor: Colors.white24,
                                              color: AppTheme.accentOrange,
                                              minHeight: 6,
                                            ),
                                          ),
                                        const SizedBox(height: 12),
                                        Row(
                                          children: [
                                            const Icon(Icons.live_tv, color: AppTheme.accentOrange, size: 20),
                                            const SizedBox(width: 8),
                                            Text(
                                              channel.name,
                                              style: const TextStyle(
                                                color: AppTheme.textSecondary,
                                                fontSize: 14,
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
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    ),
  ),
);
      },
    );
  }

  Future<String?> _getBestArt(String title) async {
                            // End of itemBuilder
    if (_tmdbArtCache.containsKey(title)) {
      return _tmdbArtCache[title];
    }
    
    try {
      debugPrint('HomeScreen: Fetching TMDB art for: "$title"');
      final details = await TMDBService.getTVDetails(title) ?? await TMDBService.getMovieDetails(title);
      final art = details?['backdrop'] ?? details?['poster'];
      if (art != null) {
        debugPrint('HomeScreen: Found TMDB art for "$title": $art');
      } else {
        debugPrint('HomeScreen: No TMDB art found for "$title"');
      }
      
      // Cache the result
      if (mounted) {
        setState(() {
          _tmdbArtCache[title] = art;
        });
      }
      
      return art;
    } catch (e) {
      debugPrint('HomeScreen: Error fetching TMDB art for "$title": $e');
      return null;
    }
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  // No longer needed: always use TMDB art for hero banner

  Widget _buildPlaceholderBanner() {
    return Container(
      height: 400,
      width: double.infinity,
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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.movie,
                size: 64, color: AppTheme.textSecondary.withAlpha((0.5 * 255).round())),
            const SizedBox(height: 16),
            const Text(
              'No Content Available',
              style: TextStyle(
                color: AppTheme.textSecondary,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholderGradient() {
    return Container(
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
    );
  }

  Widget _buildSectionWithCards({
    required String title,
    required Function(Content) onTap,
  }) {
    return Consumer<ContentProvider>(
      builder: (context, contentProvider, _) {
        final movies = contentProvider.movies;
        if (movies.isEmpty) return const SizedBox.shrink();

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
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: FocusTraversalGroup(
                policy: WidgetOrderTraversalPolicy(),
                child: Row(
                  children: movies.take(6).map((content) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Focus(
                        onKeyEvent: (node, event) {
                          if (event is KeyDownEvent && 
                              (event.logicalKey == LogicalKeyboardKey.select || 
                               event.logicalKey == LogicalKeyboardKey.enter)) {
                            onTap(content);
                            return KeyEventResult.handled;
                          }
                          return KeyEventResult.ignored;
                        },
                        child: Builder(
                          builder: (context) {
                            final isFocused = Focus.of(context).hasFocus;
                            return GestureDetector(
                              onTap: () => onTap(content),
                              child: AnimatedScale(
                                scale: isFocused ? TVFocusStyle.focusScale : 1.0,
                                duration: TVFocusStyle.animationDuration,
                                curve: TVFocusStyle.animationCurve,
                                child: AnimatedContainer(
                                  duration: TVFocusStyle.animationDuration,
                                  curve: TVFocusStyle.animationCurve,
                                  width: 180,
                                  height: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppTheme.cardBackground,
                                    boxShadow: isFocused
                                        ? TVFocusStyle.focusedShadow
                                        : TVFocusStyle.defaultShadow,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Stack(
                                      children: [
                                        content.imageUrl != null
                                            ? Image.network(
                                                content.imageUrl!,
                                                fit: BoxFit.cover,
                                                width: double.infinity,
                                                height: double.infinity,
                                                cacheWidth: 320,
                                                cacheHeight: 480,
                                                errorBuilder: (_, __, ___) =>
                                                    _buildCardPlaceholder(),
                                              )
                                            : _buildCardPlaceholder(),
                                        Positioned(
                                          bottom: 0,
                                          left: 0,
                                          right: 0,
                                          child: Container(
                                            padding: const EdgeInsets.all(12),
                                            decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Color(0xFF050710),
                                                  Color(0xFF0d1140),
                                                ],
                                              ),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(12),
                                                bottomRight: Radius.circular(12),
                                              ),
                                            ),
                                            child: Text(
                                              content.title,
                                              style: const TextStyle(
                                                color: AppTheme.textPrimary,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
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
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        );
      },
    );
  }

  Widget _buildChannelSection({
    required String title,
    required Function(Channel) onTap,
  }) {
    return Consumer<ChannelProvider>(
      builder: (context, channelProvider, _) {
        // Cache random channels on first build or when channel list changes
        if (_cachedFeaturedChannels.isEmpty || 
            _cachedFeaturedChannels.length != 6 ||
            !channelProvider.channels.contains(_cachedFeaturedChannels.firstOrNull)) {
          // Filter to channels with logos for better hero display
          final allChannels = channelProvider.channels
              .where((ch) => ch.logoUrl != null && ch.logoUrl!.isNotEmpty)
              .toList();
          if (allChannels.isEmpty) {
            // Fallback to all channels if none have logos
            final fallback = List<Channel>.from(channelProvider.channels);
            if (fallback.isEmpty) return const SizedBox.shrink();
            fallback.shuffle();
            _cachedFeaturedChannels = fallback.take(6).toList();
          } else {
            allChannels.shuffle();
            _cachedFeaturedChannels = allChannels.take(6).toList();
          }
        }
        
        final channels = _cachedFeaturedChannels;
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
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SingleChildScrollView(
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
                          if (event is KeyDownEvent && 
                              (event.logicalKey == LogicalKeyboardKey.select || 
                               event.logicalKey == LogicalKeyboardKey.enter)) {
                            onTap(channel);
                            return KeyEventResult.handled;
                          }
                          return KeyEventResult.ignored;
                        },
                        child: Builder(
                          builder: (context) {
                            final isFocused = Focus.of(context).hasFocus;
                            return GestureDetector(
                              onTap: () => onTap(channel),
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
            const SizedBox(height: 24),
          ],
        );
      },
    );
  }

  Widget _buildCardPlaceholder() {
    return Container(
      color: AppTheme.cardBackground,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.movie,
                size: 48, color: AppTheme.textSecondary.withAlpha((0.5 * 255).round())),
            const SizedBox(height: 8),
            Text(
              'No Image',
              style: TextStyle(
                color: AppTheme.textSecondary.withAlpha((0.5 * 255).round()),
                fontSize: 12,
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
            Icon(Icons.live_tv,
                size: 40, color: AppTheme.textSecondary.withAlpha((0.5 * 255).round())),
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
}
