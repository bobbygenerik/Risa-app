// ignore_for_file: todo
import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ChannelProvider>(
      builder: (context, channelProvider, child) {
        if (channelProvider.isLoading) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: AppSizes.md),
                Text('Loading channels...'),
              ],
            ),
          );
        }

        final hasChannels = channelProvider.channels.isNotEmpty;
        final favoriteChannels = channelProvider.favoriteChannels;

        return SingleChildScrollView(
          padding: EdgeInsets.all(AppSizes.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Show message if no channels loaded
              if (!hasChannels) ...[
                _buildNoChannelsMessage(),
              ],

              // Live TV Channels
              if (hasChannels) ...[
                _buildSectionHeader('Live TV Channels (${channelProvider.channels.length})'),
                SizedBox(height: AppSizes.md),
                _buildChannelsRow(channelProvider.channels.take(20).toList()),
                SizedBox(height: AppSizes.xl),
              ],

              // Favorite Channels
              if (favoriteChannels.isNotEmpty) ...[
                _buildSectionHeader('Favorite Channels'),
                SizedBox(height: AppSizes.md),
                _buildChannelsRow(favoriteChannels),
                SizedBox(height: AppSizes.xl),
              ],

              // Channel Categories
              if (hasChannels) ...[
                _buildSectionHeader('Categories'),
                SizedBox(height: AppSizes.md),
                _buildCategoriesGrid(channelProvider.getGroupedChannels()),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildNoChannelsMessage() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.xxl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.live_tv,
              size: 80,
              color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
            ),
            SizedBox(height: AppSizes.lg),
            Text(
              'No Channels Loaded',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.md),
            Text(
              'Load a playlist from Settings to get started',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.xl),
            ElevatedButton.icon(
              onPressed: () {
                context.go('/settings');
              },
              icon: Icon(Icons.settings),
              label: Text('Go to Settings'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryBlue,
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.xl,
                  vertical: AppSizes.md,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildChannelsRow(List<Channel> channels) {
    if (channels.isEmpty) {
      return SizedBox(
        height: 160,
        child: Center(
          child: Text(
            'No channels available',
            style: TextStyle(color: AppTheme.textSecondary),
          ),
        ),
      );
    }

    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: channels.length,
        itemBuilder: (context, index) {
          final channel = channels[index];
          return _buildChannelCard(channel);
        },
      ),
    );
  }

  Widget _buildChannelCard(Channel channel) {
    final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
    final isFavorite = channelProvider.isFavorite(channel);

    return Container(
      width: 280,
      margin: EdgeInsets.only(right: AppSizes.md),
      child: InkWell(
        onTap: () {
          // Navigate to player with channel data
          context.push('/player', extra: channel);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
          child: Stack(
            children: [
              // Background
              Container(
                color: AppTheme.cardBackground,
                child: channel.logoUrl != null && channel.logoUrl!.isNotEmpty
                    ? Image.network(
                        channel.logoUrl!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                        errorBuilder: (context, error, stackTrace) {
                          return _buildChannelPlaceholder(channel.name);
                        },
                      )
                    : _buildChannelPlaceholder(channel.name),
              ),

              // Gradient overlay
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withAlpha((0.8 * 255).round()),
                      ],
                    ),
                  ),
                ),
              ),

              // Channel info
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.all(AppSizes.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        channel.name,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (channel.groupTitle != null) ...[
                        SizedBox(height: AppSizes.xs),
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
              ),

              // Favorite icon
              Positioned(
                top: AppSizes.sm,
                right: AppSizes.sm,
                child: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? AppTheme.accentRed : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      if (isFavorite) {
                        channelProvider.removeFromFavorites(channel);
                      } else {
                        channelProvider.addToFavorites(channel);
                      }
                    });
                  },
                ),
              ),

              // Live indicator
              Positioned(
                top: AppSizes.sm,
                left: AppSizes.sm,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.sm,
                    vertical: AppSizes.xs,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.accentRed,
                    borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
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
            ],
          ),
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
              size: 48,
              color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
            ),
            SizedBox(height: AppSizes.sm),
            Text(
              name.substring(0, name.length > 20 ? 20 : name.length),
              style: TextStyle(
                color: AppTheme.textSecondary,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesGrid(Map<String, List<Channel>> groupedChannels) {
    if (groupedChannels.isEmpty) {
      return SizedBox(
        height: 120,
        child: Center(
          child: Text(
            'No categories available',
            style: TextStyle(color: AppTheme.textSecondary),
          ),
        ),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: AppSizes.md,
        mainAxisSpacing: AppSizes.md,
        childAspectRatio: 2,
      ),
      itemCount: groupedChannels.keys.length > 12 ? 12 : groupedChannels.keys.length,
      itemBuilder: (context, index) {
        final category = groupedChannels.keys.elementAt(index);
        final channelCount = groupedChannels[category]!.length;
        return _buildCategoryCard(category, channelCount);
      },
    );
  }

  Widget _buildCategoryCard(String name, int count) {
    return InkWell(
      onTap: () {
        // Navigate to filtered view
        // TODO: Implement category filter navigation
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.primaryBlue.withAlpha((0.6 * 255).round()),
              AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
            ],
          ),
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4),
              Text(
                '$count channels',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
