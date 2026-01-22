import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/widgets/channel_card_fallback_background.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen>
    with ContentFocusRegistrant<FavoritesScreen> {
  Timer? _updateTimer;

  @override
  void initState() {
    super.initState();
    _updateTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _updateTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompatPopScope(
      onWillPop: () async {
        context.go('/home');
        return false;
      },
      child: Consumer<ChannelProvider>(
        builder: (context, channelProvider, child) {
          final favorites = channelProvider.favoriteChannels;

          return Scaffold(
            backgroundColor: AppTheme.darkBackground,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  left: AppSpacing.sidebarCollapsedWidth + AppSizes.md,
                  right: AppSizes.lg,
                  top: AppSizes.md,
                  bottom: AppSizes.lg,
                ),
                child: Column(
                  children: [
                    _buildGlassAppBar(favorites.length),
                    Expanded(
                      child: favorites.isEmpty
                          ? _buildEmptyState(context)
                          : _buildFavoritesList(context, favorites),
                    ),
                  ],
                ),
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
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.lg, vertical: AppSizes.md),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          const Icon(Icons.playlist_add_check,
              color: AppTheme.primaryBlue, size: 24),
          const SizedBox(width: AppSizes.md),
          Text(
            'My List',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(),
          if (favCount > 0)
            Padding(
              padding: const EdgeInsets.only(right: AppSizes.lg),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.md, vertical: AppSizes.xs),
                decoration: BoxDecoration(
                  color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
                  borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                ),
                child: Text(
                  '$favCount',
                  style: const TextStyle(
                    color: AppTheme.primaryBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
          const SizedBox(height: AppSizes.lg),
          Text(
            'No Favorite Channels Yet',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: AppSizes.sm),
          Text(
            'Add channels to favorites by tapping the heart icon',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildFavoritesList(BuildContext context, List<Channel> favorites) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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

  @override
  bool handleContentFocusRequest() {
    return true;
  }

  Widget _buildChannelCard(BuildContext context, Channel channel) {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );

    return Focus(
      canRequestFocus: true,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter ||
              event.logicalKey == LogicalKeyboardKey.space) {
            context.push('/player', extra: channel);
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return InkWell(
            onTap: () {
              context.push('/player', extra: channel);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                border: isFocused
                    ? Border.all(color: AppTheme.focusBorder, width: 3)
                    : null,
              ),
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
                            decoration: const BoxDecoration(
                              color: AppTheme.cardBackground,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(AppSizes.radiusMd),
                              ),
                            ),
                            child: channel.logoUrl != null &&
                                    channel.logoUrl!.isNotEmpty
                                ? ClipRRect(
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(AppSizes.radiusMd),
                                    ),
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        final dpr =
                                            MediaQuery.of(context).devicePixelRatio;
                                        final cacheWidth = math.min(
                                          400,
                                          (constraints.maxWidth * dpr).round(),
                                        );
                                        final cacheHeight = math.min(
                                          300,
                                          (constraints.maxHeight * dpr).round(),
                                        );
                                        if (ImageFailureCache.shouldSkip(
                                            channel.logoUrl!)) {
                                          return _buildChannelPlaceholder(
                                              channel.name);
                                        }
                                        return CachedNetworkImage(
                                          imageUrl: channel.logoUrl!,
                                          httpHeaders: {
                                            ...HttpClientService().imageHeaders,
                                            'User-Agent':
                                                'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
                                          },
                                          fit: BoxFit.contain,
                                          width: double.infinity,
                                          height: double.infinity,
                                          memCacheWidth: cacheWidth,
                                          memCacheHeight: cacheHeight,
                                          imageBuilder:
                                              (context, imageProvider) {
                                            ImageFailureCache.recordSuccess(
                                                channel.logoUrl!);
                                            return Image(
                                              image: imageProvider,
                                              fit: BoxFit.contain,
                                              width: double.infinity,
                                              height: double.infinity,
                                              gaplessPlayback: true,
                                            );
                                          },
                                          placeholder: (context, url) =>
                                              _buildChannelPlaceholder(
                                                  channel.name),
                                          errorWidget: (context, url, error) {
                                            ImageFailureCache.recordFailure(
                                                url, error);
                                            return _buildChannelPlaceholder(
                                                channel.name);
                                          },
                                          useOldImageOnUrlChange: true,
                                        );
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
                              padding: const EdgeInsets.symmetric(
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
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
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
                                color:
                                    Colors.black.withAlpha((0.6 * 255).round()),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.favorite,
                                  color: AppTheme.accentRed,
                                  size: 20,
                                ),
                                onPressed: () {
                                  channelProvider.removeFromFavorites(channel);
                                  showAppSnackBar(
                                    context,
                                    SnackBar(
                                      content: Text(
                                        '${channel.name} removed from favorites',
                                      ),
                                      duration: const Duration(seconds: 2),
                                    ),
                                  );
                                },
                                padding: const EdgeInsets.all(4),
                                constraints: const BoxConstraints(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Channel Info
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.sm),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            channel.name,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (channel.groupTitle != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              channel.groupTitle!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
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
            ),
          );
        },
      ),
    );
  }

  Widget _buildChannelPlaceholder(String name) {
    return Container(
      alignment: Alignment.center,
      child: ChannelCardFallbackBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.live_tv,
                size: 40,
                color: Colors.white.withAlpha((0.7 * 255).round()),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  name.substring(0, name.length > 15 ? 15 : name.length),
                  style: const TextStyle(color: Colors.white70, fontSize: 11),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
