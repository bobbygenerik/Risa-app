import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

class ModernHomeScreen extends StatelessWidget {
  const ModernHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
      ),
      child: Consumer<ChannelProvider>(
        builder: (context, channelProvider, _) {
          final channels = channelProvider.channels;
          
          // Show empty state if no channels available
          if (channels.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.live_tv,
                    size: 80,
                    color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'No Live TV Available',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Load a playlist with Live TV channels from Settings',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton.icon(
                    onPressed: () {
                      Future.delayed(const Duration(milliseconds: 100), () {
                        if (context.mounted) context.go('/settings');
                      });
                    },
                    icon: const Icon(Icons.settings),
                    label: const Text('Go to Settings'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                    ),
                  ),
                ],
              ),
            );
          }
          
          return SingleChildScrollView(
            child: Column(
              children: [
                // Hero Banner (edge-to-edge)
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
                const SizedBox(height: 40),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeroBanner() {
    return Consumer<ContentProvider>(
      builder: (context, contentProvider, _) {
        final movies = contentProvider.movies;
        if (movies.isEmpty) {
          return _buildPlaceholderBanner();
        }

        final featured = movies.first;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: TVFocusable(
            borderRadius: BorderRadius.circular(24),
            onPressed: () => context.push('/player', extra: featured),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF050710),
                      Color(0xFF0d1140),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    // Background image or gradient
                    Container(
                      color: AppTheme.cardBackground,
                      child: featured.backdropUrl != null
                          ? Image.network(
                              featured.backdropUrl!,
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
                        padding: const EdgeInsets.all(24),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF050710),
                              Color(0xFF0d1140),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              featured.title,
                              style: const TextStyle(
                                color: AppTheme.textPrimary,
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 12),
                            const Row(
                              children: [
                                Icon(Icons.play_circle,
                                    color: AppTheme.accentOrange, size: 20),
                                SizedBox(width: 8),
                                Text(
                                  'Continue Watching',
                                  style: TextStyle(
                                    color: AppTheme.textSecondary,
                                    fontSize: 14,
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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.movie,
                size: 64, color: AppTheme.textSecondary.withAlpha((0.5 * 255).round())),
            const SizedBox(height: 16),
            const Text(
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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
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
        if (movies.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                title,
                style: const TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: FocusTraversalGroup(
                policy: WidgetOrderTraversalPolicy(),
                child: Row(
                  children: movies.take(6).map((content) {
                    return TVFocusable(
                      focusMargin: const EdgeInsets.only(right: 16),
                      borderRadius: BorderRadius.circular(12),
                      onPressed: () => onTap(content),
                      child: Container(
                        width: 180,
                        height: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppTheme.cardBackground,
                          border: Border.all(
                            color: Colors.white.withAlpha((0.1 * 255).round()),
                            width: 1,
                          ),
                        ),
                        child: Stack(
                          children: [
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
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF050710),
                                      Color(0xFF0d1140),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  content.title,
                                  style: const TextStyle(
                                    color: AppTheme.textPrimary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
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
            ),
            const SizedBox(height: 24),
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
        if (channels.isEmpty) return const SizedBox.shrink();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                title,
                style: const TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: FocusTraversalGroup(
                policy: WidgetOrderTraversalPolicy(),
                child: Row(
                  children: channels.map((channel) {
                    return TVFocusable(
                      focusMargin: const EdgeInsets.only(right: 16),
                      borderRadius: BorderRadius.circular(12),
                      onPressed: () => onTap(channel),
                      child: Container(
                        width: 200,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppTheme.cardBackground,
                          border: Border.all(
                            color: Colors.white.withAlpha((0.1 * 255).round()),
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
            ),
            const SizedBox(height: 24),
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
                size: 48, color: AppTheme.textSecondary.withAlpha((0.5 * 255).round())),
            const SizedBox(height: 8),
            Text(
              'No Image',
              style: TextStyle(
                color: AppTheme.textSecondary.withAlpha((0.5 * 255).round()),
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
                size: 40, color: AppTheme.textSecondary.withAlpha((0.5 * 255).round())),
            const SizedBox(height: 8),
            Text(
              name.length > 20 ? name.substring(0, 20) : name,
              style: TextStyle(
                color: AppTheme.textSecondary.withAlpha((0.7 * 255).round()),
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
