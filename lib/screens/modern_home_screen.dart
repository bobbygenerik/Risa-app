import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/widgets/top_navigation_bar.dart';

class ModernHomeScreen extends StatefulWidget {
  const ModernHomeScreen({super.key});

  @override
  State<ModernHomeScreen> createState() => _ModernHomeScreenState();
}

class _ModernHomeScreenState extends State<ModernHomeScreen> {
  late String _currentTime;
  late Timer _timeTimer;
  late Timer _heroTimer;
  int _currentHeroIndex = 0;
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timeTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() => _updateTime());
      }
    });
    _heroTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      if (mounted) {
        setState(() {
          final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
          if (channelProvider.channels.isNotEmpty) {
            _currentHeroIndex = _random.nextInt(channelProvider.channels.length);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _timeTimer.cancel();
    _heroTimer.cancel();
    super.dispose();
  }

  void _updateTime() {
    final now = DateTime.now();
    final hour =
        now.hour == 0 ? 12 : (now.hour > 12 ? now.hour - 12 : now.hour);
    final period = now.hour < 12 ? 'AM' : 'PM';
    _currentTime =
        '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $period';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: Stack(
        children: [
          // Full screen scrollable content with hero banner at top
          SingleChildScrollView(
            child: Column(
              children: [
                // Hero Banner (full height, edge-to-edge)
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
                SizedBox(height: 40),
              ],
            ),
          ),
          // Floating Navigation Bar on top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: TopNavigationBar(
              activeTab: 'home',
              tabs: [
                NavTab(id: 'home', label: 'LIVE TV', icon: Icons.live_tv, route: '/home'),
                NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
                NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
              ],
              currentTime: _currentTime,
              showLogoAndTime: true,
              onSearchSubmit: (query) {
                context.go('/search?q=$query');
              },
            ),
          ),
        ],
      ),
    );
  }



  Widget _buildHeroBanner() {
    return Consumer<ChannelProvider>(
      builder: (context, channelProvider, _) {
        final channels = channelProvider.channels;
        if (channels.isEmpty) {
          return _buildPlaceholderBanner();
        }

        final featuredChannel = channels[_currentHeroIndex % channels.length];
        return GestureDetector(
          onTap: () => context.push('/player', extra: featuredChannel),
          child: Container(
            height: 470,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
            child: Stack(
              children: [
                // Background with channel logo or gradient
                Container(
                  color: AppTheme.cardBackground,
                  child: featuredChannel.logoUrl != null && featuredChannel.logoUrl!.isNotEmpty
                      ? Image.network(
                          featuredChannel.logoUrl!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                          errorBuilder: (_, __, ___) =>
                              _buildPlaceholderGradient(),
                        )
                      : _buildPlaceholderGradient(),
                ),
                // Content overlay
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.9),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          featuredChannel.name,
                          style: TextStyle(
                            color: AppTheme.textPrimary,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 8),
                        if (featuredChannel.category != null)
                          Text(
                            featuredChannel.category!,
                            style: TextStyle(
                              color: AppTheme.textSecondary,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Icon(Icons.live_tv,
                                color: AppTheme.accentOrange, size: 20),
                            SizedBox(width: 8),
                            Text(
                              'Watch Live',
                              style: TextStyle(
                                color: AppTheme.textSecondary,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 16),
                            Icon(Icons.circle,
                                color: Colors.red, size: 8),
                            SizedBox(width: 4),
                            Text(
                              'LIVE',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
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
      },
    );
  }

  Widget _buildPlaceholderBanner() {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.primaryBlue.withOpacity(0.3),
            AppTheme.accentOrange.withOpacity(0.3),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.movie,
                size: 64, color: AppTheme.textSecondary.withOpacity(0.5)),
            SizedBox(height: 16),
            Text(
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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.primaryBlue.withOpacity(0.2),
            AppTheme.accentOrange.withOpacity(0.2),
          ],
        ),
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
        if (movies.isEmpty) return SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                title,
                style: TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: movies.take(6).map((content) {
                  return GestureDetector(
                    onTap: () => onTap(content),
                    child: Container(
                      width: 320,
                      height: 180,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppTheme.cardBackground,
                        border: Border.all(
                          color: Colors.white.withOpacity(0.1),
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Poster image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: content.imageUrl != null
                                ? Image.network(
                                    content.imageUrl!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                    errorBuilder: (_, __, ___) =>
                                        _buildCardPlaceholder(),
                                  )
                                : _buildCardPlaceholder(),
                          ),
                          // Overlay with title and progress
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.8),
                                  ],
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    content.title,
                                    style: TextStyle(
                                      color: AppTheme.textPrimary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 4),
                                  // Progress bar
                                  Container(
                                    height: 3,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: FractionallySizedBox(
                                      alignment: Alignment.centerLeft,
                                      widthFactor: content.watchProgress ?? 0.3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppTheme.primaryBlue,
                                          borderRadius: BorderRadius.circular(2),
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
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 24),
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
        final channels = channelProvider.channels.take(6).toList();
        if (channels.isEmpty) return SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                title,
                style: TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: channels.map((channel) {
                  return GestureDetector(
                    onTap: () => onTap(channel),
                    child: Container(
                      width: 200,
                      height: 120,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppTheme.cardBackground,
                        border: Border.all(
                          color: Colors.white.withOpacity(0.1),
                          width: 1,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: channel.logoUrl != null &&
                                channel.logoUrl!.isNotEmpty
                            ? Image.network(
                                channel.logoUrl!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                                errorBuilder: (_, __, ___) =>
                                    _buildChannelPlaceholder(channel.name),
                              )
                            : _buildChannelPlaceholder(channel.name),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 24),
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
                size: 48, color: AppTheme.textSecondary.withOpacity(0.5)),
            SizedBox(height: 8),
            Text(
              'No Image',
              style: TextStyle(
                color: AppTheme.textSecondary.withOpacity(0.5),
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
                size: 40, color: AppTheme.textSecondary.withOpacity(0.5)),
            SizedBox(height: 8),
            Text(
              name.length > 20 ? name.substring(0, 20) : name,
              style: TextStyle(
                color: AppTheme.textSecondary.withOpacity(0.7),
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
