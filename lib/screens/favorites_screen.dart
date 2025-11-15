import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/widgets/top_navigation_bar.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  late String _currentTime;
  late Timer _timeTimer;

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timeTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() => _updateTime());
      }
    });
  }

  @override
  void dispose() {
    _timeTimer.cancel();
    super.dispose();
  }

  void _updateTime() {
    final now = DateTime.now();
    final hour = now.hour == 0 ? 12 : (now.hour > 12 ? now.hour - 12 : now.hour);
    final period = now.hour < 12 ? 'AM' : 'PM';
    _currentTime = '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $period';
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChannelProvider>(
      builder: (context, channelProvider, child) {
        final favorites = channelProvider.favoriteChannels;

        return PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            if (!didPop) {
              context.go('/home');
            }
          },
          child: Scaffold(
          backgroundColor: AppTheme.darkBackground,
          body: Stack(
            children: [
              // Main content
              SingleChildScrollView(
                child: Column(
                  children: [
                    // Top padding for floating nav
                    SizedBox(height: 100),
                    // Page title
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: Row(
                        children: [
                          Icon(Icons.favorite, color: AppTheme.accentRed, size: 28),
                          SizedBox(width: 12),
                          Text(
                            'My Favorites',
                            style: TextStyle(
                              color: AppTheme.textPrimary,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          if (favorites.isNotEmpty)
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: AppTheme.primaryBlue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                '${favorites.length} channels',
                                style: TextStyle(
                                  color: AppTheme.primaryBlue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    // Content
                    favorites.isEmpty
                        ? _buildEmptyState(context)
                        : _buildFavoritesList(context, favorites),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              // Floating Navigation Bar
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: TopNavigationBar(
                  activeTab: 'favorites',
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
        ),
        );
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Container(
      height: 400,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 80,
              color: AppTheme.primaryBlue.withOpacity(0.5),
            ),
            SizedBox(height: 24),
            Text(
              'No Favorite Channels Yet',
              style: TextStyle(
                color: AppTheme.textPrimary,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Add channels to favorites by tapping the heart icon',
              style: TextStyle(
                color: AppTheme.textSecondary,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            ElevatedButton.icon(
              icon: Icon(Icons.home),
              label: Text('Browse Channels'),
              onPressed: () => context.go('/home'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryBlue,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFavoritesList(BuildContext context, List<Channel> favorites) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 1200 ? 6 : 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final channel = favorites[index];
          return _buildChannelCard(context, channel);
        },
      ),
    );
  }

  Widget _buildChannelCard(BuildContext context, Channel channel) {
    final channelProvider = Provider.of<ChannelProvider>(context, listen: false);

    return GestureDetector(
      onTap: () => context.push('/player', extra: channel),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppTheme.cardBackground,
          border: Border.all(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Channel Logo/Thumbnail
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                    child: Container(
                      width: double.infinity,
                      color: AppTheme.cardBackground,
                      child: channel.logoUrl != null && channel.logoUrl!.isNotEmpty
                          ? Image.network(
                              channel.logoUrl!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                              errorBuilder: (_, __, ___) => _buildChannelPlaceholder(channel.name),
                            )
                          : _buildChannelPlaceholder(channel.name),
                    ),
                  ),
                  // Live badge
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.circle, color: Colors.white, size: 6),
                          SizedBox(width: 4),
                          Text(
                            'LIVE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Remove from favorites button
                  Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () {
                        channelProvider.removeFromFavorites(channel);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${channel.name} removed from favorites'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: AppTheme.accentRed,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Channel Info
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    channel.name,
                    style: TextStyle(
                      color: AppTheme.textPrimary,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (channel.groupTitle != null) ...[
                    SizedBox(height: 4),
                    Text(
                      channel.groupTitle!,
                      style: TextStyle(
                        color: AppTheme.textSecondary,
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChannelPlaceholder(String name) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.live_tv,
            size: 40,
            color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              name.substring(0, name.length > 15 ? 15 : name.length),
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 11),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
