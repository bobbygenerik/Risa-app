import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:go_router/go_router.dart';

class CategoryScreen extends StatelessWidget {
  final String category;

  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Consumer<ChannelProvider>(
      builder: (context, channelProvider, child) {
        // Get total count without converting all channels
        final totalCount = channelProvider.getChannelCountForCategory(category);

        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;
        double scale(double value) => value * (screenWidth / 1920);
        double vScale(double value) => value * (screenHeight / 1080);

        return Padding(
          padding: EdgeInsets.all(scale(32)), // AppSizes.lg assumed 32
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => context.go('/home'),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    category,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '$totalCount channels',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.xl),

              // Channels Grid - lazy loading with GridView.builder
              Expanded(
                child: totalCount == 0
                    ? _buildEmptyState()
                    : GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 6,
                          crossAxisSpacing: AppSizes.md,
                          mainAxisSpacing: AppSizes.md,
                          childAspectRatio: 0.85,
                        ),
                        itemCount: totalCount,
                        itemBuilder: (context, index) {
                          // Lazy load channel at this index
                          final channel = channelProvider.getChannelInCategoryAtIndex(category, index);
                          if (channel == null) {
                            return const SizedBox.shrink();
                          }
                          return _buildChannelCard(
                            context,
                            channel,
                            channelProvider,
                          );
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Builder(
      builder: (context) {
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;
        double scale(double value) => value * (screenWidth / 1920);
        double vScale(double value) => value * (screenHeight / 1080);
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.tv_off,
                size: scale(80),
                color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
              ),
              SizedBox(height: vScale(32)),
              Text(
                'No channels in this category',
                style: TextStyle(fontSize: scale(18)),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildChannelCard(
    BuildContext context,
    Channel channel,
    ChannelProvider channelProvider,
  ) {
    final isFavorite = channelProvider.isFavorite(channel);

    return Builder(
      builder: (context) {
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;
        double scale(double value) => value * (screenWidth / 1920);
        double vScale(double value) => value * (screenHeight / 1080);
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
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.cardBackground,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(scale(12)), // AppSizes.radiusMd assumed 12
                      ),
                    ),
                    child: Stack(
                      children: [
                        // Logo
                        if (channel.logoUrl != null && channel.logoUrl!.isNotEmpty)
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(scale(12)),
                            ),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(scale(8)), // AppSizes.sm assumed 8
                                child: CachedNetworkImage(
                                  imageUrl: channel.logoUrl!,
                                  fit: BoxFit.contain,
                                  width: double.infinity,
                                  height: double.infinity,
                                  httpHeaders: const {
                                    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
                                  },
                                  placeholder: (context, url) => _buildChannelPlaceholder(channel.name),
                                  errorWidget: (context, url, error) => _buildChannelPlaceholder(channel.name),
                                ),
                              ),
                            ),
                          )
                        else
                          _buildChannelPlaceholder(channel.name),

                        // Live badge
                        Positioned(
                          top: vScale(4),
                          left: scale(4),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: scale(6),
                              vertical: vScale(2),
                            ),
                            decoration: BoxDecoration(
                              color: AppTheme.accentRed,
                              borderRadius: BorderRadius.circular(scale(3)),
                            ),
                            child: Text(
                              'LIVE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: scale(8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        // Favorite button
                        Positioned(
                          top: vScale(4),
                          right: scale(4),
                          child: IconButton(
                            icon: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              size: scale(16),
                              color: isFavorite ? AppTheme.accentRed : Colors.white,
                            ),
                            onPressed: () {
                              if (isFavorite) {
                                channelProvider.removeFromFavorites(channel);
                              } else {
                                channelProvider.addToFavorites(channel);
                              }
                            },
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Channel Info
                Padding(
                  padding: EdgeInsets.all(scale(4)), // AppSizes.xs assumed 4
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        channel.name,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: scale(11),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildChannelPlaceholder(String name) {
    return Builder(
      builder: (context) {
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;
        double scale(double value) => value * (screenWidth / 1920);
        double vScale(double value) => value * (screenHeight / 1080);
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.live_tv,
                size: scale(40),
                color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
              ),
              SizedBox(height: vScale(8)),
              Text(
                name.substring(0, name.length > 15 ? 15 : name.length),
                style: TextStyle(color: AppTheme.textSecondary, fontSize: scale(11)),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }
}
