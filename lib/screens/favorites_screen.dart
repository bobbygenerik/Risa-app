import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/widgets/brand_button.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  late DateTime _currentTime;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {
      _currentTime = DateTime.now();
    });
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.go('/home');
        return false;
      },
      child: Consumer<ChannelProvider>(
        builder: (context, channelProvider, child) {
          final favorites = channelProvider.favoriteChannels;

          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
              ),
              child: Column(
              children: [
                _buildGlassAppBar(favorites.length),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(AppSizes.lg),
                    child: favorites.isEmpty
                        ? _buildEmptyState(context)
                        : _buildFavoritesList(context, favorites),
                  ),
                ),
              ],
            ),
          ),
          );
        },
      ),
    );
  }

  Widget _buildGlassAppBar(int favCount) {
    return Container(
      height: AppSizes.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.lg, vertical: AppSizes.md),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Icon(Icons.favorite, color: AppTheme.accentRed, size: 24),
          SizedBox(width: AppSizes.md),
          Text(
            'Favorites',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          if (favCount > 0)
            Padding(
              padding: EdgeInsets.only(right: AppSizes.lg),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.md, vertical: AppSizes.xs),
                decoration: BoxDecoration(
                  color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
                  borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                ),
                child: Text(
                  '$favCount',
                  style: TextStyle(
                    color: AppTheme.primaryBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          Text(
            _formatTime(_currentTime),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite_border,
            size: 80,
            color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
          ),
          SizedBox(height: AppSizes.lg),
          Text(
            'No Favorite Channels Yet',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: AppSizes.sm),
          Text(
            'Add channels to favorites by tapping the heart icon',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSizes.xl),
          BrandPrimaryButton(
            icon: Icons.home,
            label: 'Browse Channels',
            onPressed: () {
              context.go('/home');
            },
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.xl,
              vertical: AppSizes.md,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFavoritesList(BuildContext context, List<Channel> favorites) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: AppSizes.md,
        mainAxisSpacing: AppSizes.md,
        childAspectRatio: 1.5,
      ),
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        final channel = favorites[index];
        return _buildChannelCard(context, channel);
      },
    );
  }

  Widget _buildChannelCard(BuildContext context, Channel channel) {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );

    return InkWell(
      onTap: () {
        context.push('/player', extra: channel);
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Channel Logo/Thumbnail
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.cardBackground,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(AppSizes.radiusMd),
                      ),
                    ),
                    child:
                        channel.logoUrl != null && channel.logoUrl!.isNotEmpty
                        ? ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(AppSizes.radiusMd),
                            ),
                            child: Image.network(
                              channel.logoUrl!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return _buildChannelPlaceholder(channel.name);
                              },
                            ),
                          )
                        : _buildChannelPlaceholder(channel.name),
                  ),

                  // Live badge
                  Positioned(
                    top: AppSizes.sm,
                    left: AppSizes.sm,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.sm,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.accentRed,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
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
                    top: AppSizes.sm,
                    right: AppSizes.sm,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha((0.6 * 255).round()),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: AppTheme.accentRed,
                          size: 20,
                        ),
                        onPressed: () {
                          channelProvider.removeFromFavorites(channel);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                '${channel.name} removed from favorites',
                              ),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        padding: EdgeInsets.all(4),
                        constraints: BoxConstraints(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Channel Info
            Padding(
              padding: EdgeInsets.all(AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    channel.name,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (channel.groupTitle != null) ...[
                    SizedBox(height: 4),
                    Text(
                      channel.groupTitle!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppTheme.textSecondary,
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
