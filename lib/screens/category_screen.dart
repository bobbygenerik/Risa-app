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

        return Padding(
          padding: const EdgeInsets.all(AppSizes.lg),
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.tv_off,
            size: 80,
            color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
          ),
          const SizedBox(height: AppSizes.lg),
          const Text(
            'No channels in this category',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildChannelCard(
    BuildContext context,
    Channel channel,
    ChannelProvider channelProvider,
  ) {
    final isFavorite = channelProvider.isFavorite(channel);

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
                decoration: const BoxDecoration(
                  color: AppTheme.cardBackground,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(AppSizes.radiusMd),
                  ),
                ),
                child: Stack(
                  children: [
                    // Logo
                    if (channel.logoUrl != null && channel.logoUrl!.isNotEmpty)
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(AppSizes.radiusMd),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(AppSizes.sm),
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
                      top: 4,
                      left: 4,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.accentRed,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Text(
                          'LIVE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    // Favorite button
                    Positioned(
                      top: 4,
                      right: 4,
                      child: IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 16,
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
                        constraints: const BoxConstraints(),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Channel Info
            Padding(
              padding: const EdgeInsets.all(AppSizes.xs),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    channel.name,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
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
          const SizedBox(height: 8),
          Text(
            name.substring(0, name.length > 15 ? 15 : name.length),
            style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
