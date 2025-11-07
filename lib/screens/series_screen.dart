import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;

class SeriesScreen extends StatefulWidget {
  const SeriesScreen({super.key});

  @override
  State<SeriesScreen> createState() => _SeriesScreenState();
}

class _SeriesScreenState extends State<SeriesScreen> {
  int _featuredIndex = 0;
  final FocusNode _firstContentFocusNode = FocusNode();

  // Call this from navigation shell to focus first content item
  void requestFirstContentFocus() {
    if (_firstContentFocusNode.canRequestFocus) {
      _firstContentFocusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ContentProvider>(
      builder: (context, contentProvider, child) {
        final series = contentProvider.series;
        final recentSeries = contentProvider.recentlyAddedSeries;

        if (series.isEmpty) {
          return _buildEmptyState(context);
        }

        // Get unique series for featured section
        final seriesMap = <String, Content>{};
        for (final show in (recentSeries.isNotEmpty ? recentSeries : series)) {
          if (!seriesMap.containsKey(show.title)) {
            seriesMap[show.title] = show;
          }
          if (seriesMap.length >= 5) break;
        }
        final featuredSeries = seriesMap.values.toList();

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Featured Hero Section (Netflix/Disney+ style)
              _buildFeaturedHero(context, featuredSeries),

              SizedBox(height: AppSizes.xl),

              // Content Rows
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Recently Added Series
                    if (recentSeries.isNotEmpty) ...[
                      _buildSectionHeader(context, 'Recently Added Series'),
                      SizedBox(height: AppSizes.md),
                      _buildSeriesRow(context, recentSeries),
                      SizedBox(height: AppSizes.xl),
                    ],

                    // All Series by Genre
                    ..._buildGenreSections(context, series),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFeaturedHero(BuildContext context, List<Content> featuredSeries) {
    if (featuredSeries.isEmpty) return SizedBox.shrink();

    final featured = featuredSeries[_featuredIndex % featuredSeries.length];
    final screenWidth = MediaQuery.of(context).size.width;
    final heroHeight = math.min(screenWidth * 0.5, 600.0);

    return Container(
      height: heroHeight,
      child: Stack(
        children: [
          // Background Image with Gradient
          Positioned.fill(
            child: Stack(
              children: [
                // Image
                if (featured.imageUrl != null)
                  Image.network(
                    featured.imageUrl!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppTheme.primaryBlue.withOpacity(0.3),
                              AppTheme.darkBackground,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      );
                    },
                  )
                else
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppTheme.primaryBlue.withOpacity(0.3),
                          AppTheme.darkBackground,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                
                // Dark gradient overlay (bottom to top)
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.3),
                          AppTheme.darkBackground.withOpacity(0.9),
                          AppTheme.darkBackground,
                        ],
                        stops: [0.0, 0.5, 0.85, 1.0],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Content Overlay
          Positioned(
            left: AppSizes.xl * 2,
            right: AppSizes.xl * 2,
            bottom: AppSizes.xl * 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title
                Text(
                  featured.title,
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 8,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                
                SizedBox(height: AppSizes.sm),
                
                // Metadata
                Row(
                  children: [
                    if (featured.year != null)
                      Text(
                        '${featured.year}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.9),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    if (featured.year != null && featured.rating != null)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    if (featured.rating != null)
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppTheme.accentOrange,
                            size: 18,
                          ),
                          SizedBox(width: 4),
                          Text(
                            featured.ratingDisplay,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    if (featured.seasonNumber != null && featured.episodeNumber != null)
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppTheme.primaryBlue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'S${featured.seasonNumber} E${featured.episodeNumber}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    if (featured.genres != null && featured.genres!.isNotEmpty) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text(
                        featured.genres!.take(2).join(', '),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ],
                ),
                
                SizedBox(height: AppSizes.lg),
                
                // Action Buttons
                Row(
                  children: [
                    BrandPrimaryButton(
                      icon: Icons.play_arrow,
                      label: 'Play',
                      onPressed: () {
                        context.push('/content/${featured.id}', extra: featured);
                      },
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    ),
                    SizedBox(width: AppSizes.md),
                    BrandSecondaryButton(
                      icon: Icons.info_outline,
                      label: 'More Info',
                      onPressed: () {
                        context.push('/content/${featured.id}', extra: featured);
                      },
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Indicator Dots (if multiple featured series)
          if (featuredSeries.length > 1)
            Positioned(
              bottom: AppSizes.md,
              right: AppSizes.xl,
              child: Row(
                children: List.generate(featuredSeries.length, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    width: index == _featuredIndex % featuredSeries.length ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: index == _featuredIndex % featuredSeries.length
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                }),
              ),
            ),

          // Navigation Arrows
          if (featuredSeries.length > 1) ...[
            Positioned(
              left: AppSizes.lg,
              top: 0,
              bottom: 0,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _featuredIndex = (_featuredIndex - 1 + featuredSeries.length) % featuredSeries.length;
                    });
                  },
                  icon: Icon(Icons.chevron_left, size: 48),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              right: AppSizes.lg,
              top: 0,
              bottom: 0,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _featuredIndex = (_featuredIndex + 1) % featuredSeries.length;
                    });
                  },
                  icon: Icon(Icons.chevron_right, size: 48),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ),
          ],
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
            Icons.tv,
            size: 80,
            color: AppTheme.primaryBlue.withOpacity(0.5),
          ),
          SizedBox(height: AppSizes.lg),
          Text(
            'No Series Available',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: AppSizes.sm),
          Text(
            'Load a playlist with VOD content from Settings',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSizes.xl),
          ElevatedButton.icon(
            onPressed: () => context.go('/settings'),
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

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildSeriesRow(BuildContext context, List<Content> series) {
    // Group episodes by series title
    final seriesMap = <String, List<Content>>{};
    for (final episode in series) {
      seriesMap.putIfAbsent(episode.title, () => []).add(episode);
    }

    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: seriesMap.length,
        itemBuilder: (context, index) {
          final seriesTitle = seriesMap.keys.elementAt(index);
          final episodes = seriesMap[seriesTitle]!;
          if (index == 0) {
            return Focus(
              focusNode: _firstContentFocusNode,
              child: _buildSeriesCard(context, seriesTitle, episodes),
            );
          }
          return _buildSeriesCard(context, seriesTitle, episodes);
        },
      ),
    );
  }

  Widget _buildSeriesCard(
    BuildContext context,
    String title,
    List<Content> episodes,
  ) {
    final firstEpisode = episodes.first;

    return Focus(
      onFocusChange: (_) => setState(() {}),
      child: Builder(
        builder: (context) {
          final bool isFocused = Focus.of(context).hasFocus;
          return AnimatedScale(
            scale: isFocused ? 1.08 : 1.0,
            duration: AppDurations.fast,
            curve: Curves.easeOut,
            child: AnimatedContainer(
              duration: AppDurations.fast,
              width: 140,
              margin: EdgeInsets.only(right: AppSizes.md),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                border: isFocused
                    ? Border.all(color: AppTheme.primaryBlue, width: 3)
                    : Border.all(color: Colors.transparent, width: 3),
                boxShadow: isFocused
                    ? [
                        BoxShadow(
                          color: AppTheme.primaryBlue.withOpacity(0.6),
                          blurRadius: 20,
                          spreadRadius: 3,
                        ),
                      ]
                    : [],
              ),
              child: InkWell(
                onTap: () {
                  context.push('/content/${firstEpisode.id}', extra: firstEpisode);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            // Series Poster
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                child: Stack(
                  children: [
                    Container(
                      color: AppTheme.cardBackground,
                      child: firstEpisode.imageUrl != null
                          ? Image.network(
                              firstEpisode.imageUrl!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                              errorBuilder: (context, error, stackTrace) {
                                return _buildPlaceholder(title);
                              },
                            )
                          : _buildPlaceholder(title),
                    ),
                    // Episode count badge
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryBlue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          '${episodes.length} EP',
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
            SizedBox(height: AppSizes.xs),
            // Series Title
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            // Year and Rating
            if (firstEpisode.year != null || firstEpisode.rating != null)
              Text(
                '${firstEpisode.year ?? ''} ${firstEpisode.rating != null ? '★${firstEpisode.ratingDisplay}' : ''}',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
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

  Widget _buildPlaceholder(String title) {
    return Container(
      color: AppTheme.cardBackground,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.tv,
              size: 40,
              color: AppTheme.primaryBlue.withOpacity(0.3),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                title,
                style: TextStyle(color: AppTheme.textSecondary, fontSize: 11),
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildGenreSections(BuildContext context, List<Content> series) {
    // Group series by genre
    final genreMap = <String, List<Content>>{};
    for (final show in series) {
      if (show.genres != null) {
        for (final genre in show.genres!) {
          genreMap.putIfAbsent(genre, () => []).add(show);
        }
      } else {
        genreMap.putIfAbsent('Other', () => []).add(show);
      }
    }

    // Build section for each genre
    final sections = <Widget>[];
    for (final entry in genreMap.entries) {
      sections.addAll([
        _buildSectionHeader(context, entry.key),
        SizedBox(height: AppSizes.md),
        _buildSeriesRow(context, entry.value),
        SizedBox(height: AppSizes.xl),
      ]);
    }

    return sections;
  }
}
