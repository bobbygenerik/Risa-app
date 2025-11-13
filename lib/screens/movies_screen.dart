import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/widgets/top_navigation_bar.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  late String _currentTime;

  @override
  void initState() {
    super.initState();
    _updateTime();
    _startTimeUpdater();
  }

  void _updateTime() {
    final now = DateTime.now();
    final hour = now.hour == 0 ? 12 : (now.hour > 12 ? now.hour - 12 : now.hour);
    final period = now.hour >= 12 ? 'PM' : 'AM';
    _currentTime = '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $period';
  }

  void _startTimeUpdater() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() => _updateTime());
        _startTimeUpdater();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ContentProvider>(
      builder: (context, contentProvider, child) {
        final movies = contentProvider.movies;
        final recentMovies = contentProvider.recentlyAddedMovies;

        if (movies.isEmpty) {
          return _buildEmptyState(context);
        }

        return Column(
          children: [
            TopNavigationBar(
              activeTab: 'movies',
              tabs: [
                NavTab(id: 'live', label: 'LIVE TV', icon: Icons.live_tv, route: '/home'),
                NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
                NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
              ],
              currentTime: _currentTime,
              showLogoAndTime: true,
              onSearch: () => context.go('/search'),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(AppSizes.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Recently Added Movies
                    if (recentMovies.isNotEmpty) ...[
                      _buildSectionHeader(context, 'Recently Added'),
                      SizedBox(height: AppSizes.md),
                      _buildMoviesRow(context, recentMovies),
                      SizedBox(height: AppSizes.xl),
                    ],

                    // All Movies by Genre
                    ..._buildGenreSections(context, movies),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.movie,
            size: 80,
            color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
          ),
          SizedBox(height: AppSizes.lg),
          Text(
            'No Movies Available',
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

  Widget _buildMoviesRow(BuildContext context, List<Content> movies) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return _buildMovieCard(context, movie);
        },
      ),
    );
  }

  Widget _buildMovieCard(BuildContext context, Content movie) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: AppSizes.md),
      child: InkWell(
        onTap: () {
          context.push('/content/${movie.id}', extra: movie);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie Poster
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                child: Stack(
                  children: [
                    Container(
                      color: AppTheme.cardBackground,
                      child: movie.imageUrl != null
                          ? Image.network(
                              movie.imageUrl!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                              errorBuilder: (context, error, stackTrace) {
                                return _buildPlaceholder(movie.title);
                              },
                            )
                          : _buildPlaceholder(movie.title),
                    ),
                    // Watch progress indicator
                    if (movie.watchProgress != null &&
                        movie.watchProgress! > 0) ...[
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: LinearProgressIndicator(
                          value: movie.watchProgress!,
                          backgroundColor: Colors.grey[800],
                          color: AppTheme.primaryBlue,
                          minHeight: 4,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            SizedBox(height: AppSizes.xs),
            // Movie Title
            Text(
              movie.title,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            // Year and Rating
            if (movie.year != null || movie.rating != null)
              Text(
                '${movie.year ?? ''} ${movie.rating != null ? '★${movie.ratingDisplay}' : ''}',
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
              Icons.movie,
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

  List<Widget> _buildGenreSections(BuildContext context, List<Content> movies) {
    // Group movies by genre
    final genreMap = <String, List<Content>>{};
    for (final movie in movies) {
      if (movie.genres != null) {
        for (final genre in movie.genres!) {
          genreMap.putIfAbsent(genre, () => []).add(movie);
        }
      } else {
        genreMap.putIfAbsent('Other', () => []).add(movie);
      }
    }

    // Build section for each genre
    final sections = <Widget>[];
    for (final entry in genreMap.entries) {
      sections.addAll([
        _buildSectionHeader(context, entry.key),
        SizedBox(height: AppSizes.md),
        _buildMoviesRow(context, entry.value),
        SizedBox(height: AppSizes.xl),
      ]);
    }

    return sections;
  }
}
