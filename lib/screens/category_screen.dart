import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/brand_badge.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/app_icons.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/memory_manager.dart';

class CategoryScreen extends StatefulWidget {
  final String category;

  const CategoryScreen({super.key, required this.category});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    super.initState();
    MemoryManager.checkMemoryPressure();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Consumer<ChannelProvider>(
        builder: (context, channelProvider, child) {
          final totalCount =
              channelProvider.getChannelCountForCategory(widget.category);

          return Padding(
            padding: context.screenPaddingInsets,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      tooltip: 'Back',
                      icon: context.backIcon(),
                      onPressed: () => context.go('/home'),
                    ),
                    context.spacingSmBox,
                    Text(
                      widget.category,
                      style: AppTypography.screenTitle(context),
                    ),
                    const Spacer(),
                    Text(
                      '$totalCount channels',
                      style: AppTypography.countText(context),
                    ),
                  ],
                ),
                context.spacingXlBox,
                Expanded(
                  child: totalCount == 0
                      ? _buildEmptyState()
                      : GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: AppSpacing.gridSpacing,
                            mainAxisSpacing: AppSpacing.gridSpacing,
                            childAspectRatio: 0.8, // Taller cards to prevent horizontal stretching
                          ),
                          cacheExtent: 0,
                          itemCount: totalCount,
                          itemBuilder: (context, index) {
                            final channel = channelProvider
                                .getChannelInCategoryAtIndex(widget.category, index);
                            if (channel == null) {
                              return const SizedBox.shrink();
                            }
                            return _buildChannelCard(context, channel, channelProvider);
                          },
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            AppIcons.tvOff,
            size: context.tvIconSize(80),
            color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
          ),
          context.spacingXxlBox,
          Text(
            'No channels in this category',
            style: AppTypography.sectionHeader(context),
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
      onTap: () => context.push('/player', extra: channel),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    _buildChannelPlaceholder(channel.name),
                    Positioned(
                      top: context.tvSpacing(4),
                      left: context.tvSpacing(4),
                      child: BrandBadge.live(fontSize: context.tvTextSize(8)),
                    ),
                    Positioned(
                      top: context.vScale(4),
                      right: context.scale(4),
                      child: IconButton(
                        tooltip: isFavorite ? 'Remove from favorites' : 'Add to favorites',
                        icon: Icon(
                          isFavorite ? AppIcons.favorite : AppIcons.favoriteOutline,
                          size: context.tvIconSize(16),
                          color: isFavorite ? AppTheme.accentRed : AppColors.textPrimary,
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
            Padding(
              padding: EdgeInsets.all(context.tvSpacing(4)),
              child: Text(
                channel.name,
                style: AppTypography.caption(context).copyWith(
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChannelPlaceholder(String channelName) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.cardBackground,
            AppTheme.cardBackground.withAlpha((0.8 * 255).round()),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              AppIcons.liveTV,
              size: 32,
              color: AppTheme.primaryBlue.withAlpha((0.6 * 255).round()),
            ),
            const SizedBox(height: 8),
            Text(
              channelName.length > 10 
                  ? '${channelName.substring(0, 10)}...'
                  : channelName,
              style: const TextStyle(
                fontSize: 10,
                color: AppTheme.textSecondary,
                fontWeight: FontWeight.w500,
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
}