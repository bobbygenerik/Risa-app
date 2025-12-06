import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/services/epg_service.dart';

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
          padding: EdgeInsets.all(context.tvSpacing(32)), // AppSizes.lg assumed 32
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
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.tv_off,
                size: context.tvIconSize(80),
                color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
              ),
              SizedBox(height: context.tvSpacing(32)),
              Text(
                'No channels in this category',
                style: TextStyle(fontSize: context.tvTextSize(18)),
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
    final epgService = Provider.of<EpgService>(context, listen: false);
    final currentProgram = epgService.getCurrentProgram(channel.tvgId ?? channel.id, channelName: channel.name);
    final programImage = currentProgram?.imageUrl;

    return Builder(
      builder: (context) {
        return InkWell(
          onTap: () {
            context.push('/player', extra: channel);
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Channel Logo/Thumbnail with EPG artwork
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.cardBackground,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(context.tvSpacing(12)),
                      ),
                    ),
                    child: Stack(
                      children: [
                        // Show program artwork if available, otherwise logo
                        if (programImage != null && programImage.isNotEmpty)
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(context.tvSpacing(12)),
                            ),
                            child: CachedNetworkImage(
                              imageUrl: programImage,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                              httpHeaders: const {
                                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
                              },
                              placeholder: (context, url) => _buildLogoFallback(channel),
                              errorWidget: (context, url, error) => _buildLogoFallback(channel),
                            ),
                          )
                        else
                          _buildLogoFallback(channel),

                        // Live badge
                        Positioned(
                          top: context.tvSpacing(4),
                            left: context.tvSpacing(4),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.tvSpacing(6),
                              vertical: context.tvSpacing(2),
                            ),
                            decoration: BoxDecoration(
                              color: AppTheme.accentRed,
                              borderRadius: BorderRadius.circular(context.tvSpacing(3)),
                            ),
                            child: Text(
                              'LIVE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: context.tvTextSize(8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        // Favorite button
                        Positioned(
                          top: context.tvSpacing(4),
                          right: context.tvSpacing(4),
                          child: IconButton(
                            icon: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              size: context.tvIconSize(16),
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
                  padding: EdgeInsets.all(context.tvSpacing(4)), // AppSizes.xs assumed 4
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        channel.name,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: context.tvTextSize(11),
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

  Widget _buildLogoFallback(Channel channel) {
    return Builder(
      builder: (context) {
        if (channel.logoUrl != null && channel.logoUrl!.isNotEmpty) {
          return ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(context.tvSpacing(12)),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(context.tvSpacing(8)),
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
          );
        }
        return _buildChannelPlaceholder(channel.name);
      },
    );
  }

  Widget _buildChannelPlaceholder(String name) {
    return Builder(
      builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.live_tv,
                size: context.tvIconSize(40),
                color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
              ),
              SizedBox(height: context.tvSpacing(8)),
              Text(
                name.substring(0, name.length > 15 ? 15 : name.length),
                style: TextStyle(color: AppTheme.textSecondary, fontSize: context.tvTextSize(11)),
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
