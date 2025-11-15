import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/widgets/top_navigation_bar.dart';
import 'package:go_router/go_router.dart';

class SeriesScreen extends StatefulWidget {
  const SeriesScreen({super.key});

  @override
  State<SeriesScreen> createState() => _SeriesScreenState();
}

class _SeriesScreenState extends State<SeriesScreen> {
  late String _currentTime;
  late Timer _timeTimer;
  late Timer _heroTimer;
  int _currentHeroIndex = 0;
  final Random _random = Random();
  List<Content> _featuredSeries = [];
  bool _ratingsLoaded = false;

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timeTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() => _updateTime());
      }
    });
    _heroTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      if (mounted && _featuredSeries.isNotEmpty) {
        setState(() {
          _currentHeroIndex = _random.nextInt(_featuredSeries.length);
        });
      }
    });
  }

  @override
  void dispose() {
    _timeTimer.cancel();
    _heroTimer.cancel();
    super.dispose();
  }

  void _updateTime() {
    final now = DateTime.now();
    final hour =
        now.hour == 0 ? 12 : (now.hour > 12 ? now.hour - 12 : now.hour);
    final period = now.hour < 12 ? 'AM' : 'PM';
    _currentTime =
        '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $period';
  }

  List<Content> _getFeaturedSeries(List<Content> series) {
    // If ratings are loaded, sort by rating and take top 10
    if (_ratingsLoaded) {
      final seriesWithRatings = series.where((s) => s.rating != null && s.rating! > 0).toList();
      if (seriesWithRatings.length >= 5) {
        seriesWithRatings.sort((a, b) => (b.rating ?? 0).compareTo(a.rating ?? 0));
        return seriesWithRatings.take(10).toList();
      }
    }
    // Fallback to first 10 series
    return series.take(10).toList();
  }

  Future<void> _loadRatingsForSeries(List<Content> series) async {
    if (_ratingsLoaded) return;
    
    // Load ratings for first 20 series to get a good sample
    final seriesToRate = series.take(20).toList();
    
    for (final show in seriesToRate) {
      if (show.rating == null || show.rating == 0) {
        final rating = await TMDBService.getTVShowRating(show.title, year: show.year);
        if (rating != null && rating > 0) {
          // Note: Cannot modify final field, would need to update in provider
        }
      }
    }
    
    if (mounted) {
      setState(() {
        _ratingsLoaded = true;
        _featuredSeries = _getFeaturedSeries(series);
      });
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

        // Load TMDB ratings in background
        if (!_ratingsLoaded) {
          _loadRatingsForSeries(series);
        }
        
        _featuredSeries = _getFeaturedSeries(series);
        final featuredShow = _featuredSeries.isNotEmpty 
            ? _featuredSeries[_currentHeroIndex % _featuredSeries.length]
            : series.first;

        return PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            if (!didPop) {
              context.go('/home');
            }
          },
          child: Scaffold(
            backgroundColor: AppTheme.darkBackground,
          body: Stack(
            children: [
              // Full screen scrollable content with hero banner at top
              SingleChildScrollView(
                child: Column(
                  children: [
                    // Hero Banner (full height, edge-to-edge)
                    _buildHeroBanner(featuredShow),
                    // Recently Added Series
                    if (recentSeries.isNotEmpty) ...[
                      Padding(
                        padding: EdgeInsets.all(24),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Recently Added Series',
                            style: TextStyle(
                              color: AppTheme.textPrimary,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      _buildSeriesRow(context, recentSeries),
                      SizedBox(height: 40),
                    ],
                    // All Series by Genre
                    ..._buildGenreSections(context, series),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              // Floating Navigation Bar on top
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: TopNavigationBar(
                  activeTab: 'series',
                  tabs: [
                    NavTab(id: 'home', label: 'LIVE TV', icon: Icons.live_tv, route: '/home'),
                    NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
                    NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
                  ],
                  currentTime: _currentTime,
                  showLogoAndTime: true,
                  onSearchSubmit: (query) {
                    context.go('/search?q=$query');
                  },
                ),
              ),
            ],
          ),
        ),
        );
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.tv,
                size: 80,
                color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
              ),
              SizedBox(height: AppSizes.lg),
              Text(
                'No Series Available',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: AppSizes.sm),
              Text(
                'Load a playlist with series content from Settings',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppSizes.xl),
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
        ),
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

    return Container(
      width: 140,
      margin: EdgeInsets.only(right: AppSizes.md),
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
              color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
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

  Widget _buildHeroBanner(Content featuredSeries) {
    return GestureDetector(
      onTap: () => context.push('/player', extra: featuredSeries),
      child: Container(
        height: 470,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.7),
            ],
          ),
        ),
        child: Stack(
          children: [
            // Background image or gradient
            Container(
              color: AppTheme.cardBackground,
              child: featuredSeries.backdropUrl != null
                  ? Image.network(
                      featuredSeries.backdropUrl!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorBuilder: (_, __, ___) => _buildPlaceholderGradient(),
                    )
                  : _buildPlaceholderGradient(),
            ),
            // Content overlay
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.9),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      featuredSeries.title,
                      style: TextStyle(
                        color: AppTheme.textPrimary,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.play_circle,
                            color: AppTheme.accentOrange, size: 20),
                        SizedBox(width: 8),
                        Text(
                          'Watch Now',
                          style: TextStyle(
                            color: AppTheme.textSecondary,
                            fontSize: 14,
                          ),
                        ),
                        if (featuredSeries.rating != null) ...[
                          SizedBox(width: 16),
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 4),
                          Text(
                            featuredSeries.rating!.toStringAsFixed(1),
                            style: TextStyle(
                              color: AppTheme.textSecondary,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholderGradient() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.primaryBlue.withOpacity(0.2),
            AppTheme.accentOrange.withOpacity(0.2),
          ],
        ),
      ),
    );
  }

  Widget _buildBannerPlaceholder() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.primaryBlue.withOpacity(0.2),
            AppTheme.accentOrange.withOpacity(0.2),
          ],
        ),
      ),
    );
  }
}
