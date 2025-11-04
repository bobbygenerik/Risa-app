import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/widgets/preview_player_widget.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<ChannelProvider, ContentProvider>(
      builder: (context, channelProvider, contentProvider, child) {
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
        final continueWatching = contentProvider.continueWatching;

        return SingleChildScrollView(
          padding: EdgeInsets.all(AppSizes.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Show message if no channels loaded
              if (!hasChannels) ...[_buildNoChannelsMessage()],

              // Continue Watching (if user has watched something)
              if (continueWatching.isNotEmpty) ...[
                _buildSectionHeader('Continue Watching'),
                SizedBox(height: AppSizes.md),
                _buildContinueWatchingRow(continueWatching),
                SizedBox(height: AppSizes.xl),
              ],

              // Live TV Channels
              if (hasChannels) ...[
                _buildSectionHeader(
                  'Live TV Channels (${channelProvider.channels.length})',
                ),
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
              color: AppTheme.primaryBlue.withOpacity(0.5),
            ),
            SizedBox(height: AppSizes.lg),
            Text(
              'No Channels Loaded',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.md),
            Text(
              'Load a playlist to get started',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.xl),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    context.go('/playlist-login');
                  },
                  icon: Icon(Icons.playlist_add),
                  label: Text('Load Playlist'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryBlue,
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.xl,
                      vertical: AppSizes.md,
                    ),
                  ),
                ),
                SizedBox(width: AppSizes.md),
                OutlinedButton.icon(
                  onPressed: () {
                    context.go('/settings');
                  },
                  icon: Icon(Icons.settings),
                  label: Text('Settings'),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.xl,
                      vertical: AppSizes.md,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
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
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
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
                        Colors.black.withOpacity(0.8),
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
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (channel.groupTitle != null) ...[
                        SizedBox(height: AppSizes.xs),
                        Text(
                          channel.groupTitle!,
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: AppTheme.textSecondary),
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
              color: AppTheme.primaryBlue.withOpacity(0.5),
            ),
            SizedBox(height: AppSizes.sm),
            Text(
              name.substring(0, name.length > 20 ? 20 : name.length),
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 12),
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
      itemCount: groupedChannels.keys.length > 12
          ? 12
          : groupedChannels.keys.length,
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
        // Navigate to category filtered view
        context.push('/category/$name');
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.primaryBlue.withOpacity(0.6),
              AppTheme.primaryBlue.withOpacity(0.3),
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
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4),
              Text(
                '$count channels',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContinueWatchingRow(List<Content> items) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final content = items[index];
          return _buildContinueWatchingCard(content);
        },
      ),
    );
  }

  Widget _buildContinueWatchingCard(Content content) {
    // Card content without preview wrapper
    final cardContent = Container(
      width: 350,
      height: 200,
      child: Stack(
        children: [
          // Thumbnail
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.radiusLg),
            child: Container(
              color: AppTheme.cardBackground,
              width: double.infinity,
              height: double.infinity,
              child: content.backdropUrl != null
                  ? Image.network(
                      content.backdropUrl!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return _buildContentPlaceholder(content.title);
                      },
                    )
                  : _buildContentPlaceholder(content.title),
            ),
          ),

          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                ),
              ),
            ),
          ),

          // Content info
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(AppSizes.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    content.displayTitle,
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppSizes.xs),
                  // Progress bar
                  LinearProgressIndicator(
                    value: content.watchProgress ?? 0.0,
                    backgroundColor: Colors.grey[700],
                    color: AppTheme.primaryBlue,
                    minHeight: 4,
                  ),
                  SizedBox(height: AppSizes.xs),
                  Text(
                    '${((content.watchProgress ?? 0) * 100).toInt()}% complete',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    // Wrap with preview player if video URL is available
    return Container(
      margin: EdgeInsets.only(right: AppSizes.md),
      child: InkWell(
        onTap: () {
          // Navigate to content detail or player
          if (content.videoUrl != null) {
            context.push('/content/${content.id}');
          }
        },
        child: content.videoUrl != null
            ? PreviewPlayerWidget(
                videoUrl: content.videoUrl!,
                child: cardContent,
              )
            : cardContent,
      ),
    );
  }

  Widget _buildHighlightsRow(List<Channel> channels) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: channels.length,
        itemBuilder: (context, index) {
          final channel = channels[index];
          return _buildHighlightCard(channel);
        },
      ),
    );
  }

  Widget _buildHighlightCard(Channel channel) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(right: AppSizes.md),
      child: InkWell(
        onTap: () {
          context.push('/player', extra: channel);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
          child: Stack(
            children: [
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
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.8),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.all(AppSizes.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        channel.name,
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (channel.groupTitle != null) ...[
                        SizedBox(height: AppSizes.xs),
                        Text(
                          channel.groupTitle!,
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: AppTheme.textSecondary),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              // LIVE badge
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
                  child: Text(
                    'LIVE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSeriesRow(List<Content> series) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: series.length,
        itemBuilder: (context, index) {
          final content = series[index];
          return _buildSeriesCard(content);
        },
      ),
    );
  }

  Widget _buildSeriesCard(Content content) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: AppSizes.md),
      child: InkWell(
        onTap: () {
          context.push('/content/${content.id}');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                child: Container(
                  color: AppTheme.cardBackground,
                  child: content.imageUrl != null
                      ? Image.network(
                          content.imageUrl!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                          errorBuilder: (context, error, stackTrace) {
                            return _buildContentPlaceholder(content.title);
                          },
                        )
                      : _buildContentPlaceholder(content.title),
                ),
              ),
            ),
            SizedBox(height: AppSizes.sm),
            Text(
              content.title,
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (content.year != null) ...[
              SizedBox(height: 4),
              Text(
                '${content.year}',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildContentPlaceholder(String title) {
    return Container(
      color: AppTheme.cardBackground,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.movie,
              size: 48,
              color: AppTheme.primaryBlue.withOpacity(0.5),
            ),
            SizedBox(height: AppSizes.sm),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                title.substring(0, title.length > 20 ? 20 : title.length),
                style: TextStyle(color: AppTheme.textSecondary, fontSize: 12),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
