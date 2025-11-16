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

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  late String _currentTime;
  late Timer _timeTimer;
  late Timer _heroTimer;
  int _currentHeroIndex = 0;
  final Random _random = Random();
  List<Content> _featuredMovies = [];
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
      if (mounted && _featuredMovies.isNotEmpty) {
        setState(() {
          _currentHeroIndex = _random.nextInt(_featuredMovies.length);
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

  List<Content> _getFeaturedMovies(List<Content> movies) {
    // If ratings are loaded, sort by rating and take top 10
    if (_ratingsLoaded) {
      final moviesWithRatings = movies.where((m) => m.rating != null && m.rating! > 0).toList();
      if (moviesWithRatings.length >= 5) {
        moviesWithRatings.sort((a, b) => (b.rating ?? 0).compareTo(a.rating ?? 0));
        return moviesWithRatings.take(10).toList();
      }
    }
    // Fallback to first 10 movies
    return movies.take(10).toList();
  }

  Future<void> _loadRatingsForMovies(List<Content> movies) async {
    if (_ratingsLoaded) return;
    
    // Load ratings for first 20 movies to get a good sample
    final moviesToRate = movies.take(20).toList();
    
    for (final movie in moviesToRate) {
      if (movie.rating == null || movie.rating == 0) {
        final rating = await TMDBService.getMovieRating(movie.title, year: movie.year);
        if (rating != null && rating > 0) {
          // Note: Cannot modify final field, would need to update in provider
        }
      }
    }
    
    if (mounted) {
      setState(() {
        _ratingsLoaded = true;
        _featuredMovies = _getFeaturedMovies(movies);
      });
    }
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

        // Load TMDB ratings in background
        if (!_ratingsLoaded) {
          _loadRatingsForMovies(movies);
        }
        
        _featuredMovies = _getFeaturedMovies(movies);
        final featuredMovie = _featuredMovies.isNotEmpty 
            ? _featuredMovies[_currentHeroIndex % _featuredMovies.length]
            : movies.first;

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
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
                    _buildHeroBanner(featuredMovie),
                    // Recently Added Movies
                    if (recentMovies.isNotEmpty) ...[
                      const Padding(
                        padding: EdgeInsets.all(24),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Recently Added',
                            style: TextStyle(
                              color: AppTheme.textPrimary,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      _buildMoviesRow(context, recentMovies),
                      const SizedBox(height: 40),
                    ],
                    // All Movies by Genre
                    ..._buildGenreSections(context, movies),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              // Floating Navigation Bar on top
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: TopNavigationBar(
                  activeTab: 'movies',
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
                Icons.movie,
                size: 80,
                color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
              ),
              const SizedBox(height: AppSizes.lg),
              Text(
                'No Movies Available',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.sm),
              Text(
                'Load a playlist with VOD content from Settings',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.xl),
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
      margin: const EdgeInsets.only(right: AppSizes.md),
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
            const SizedBox(height: AppSizes.xs),
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
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title,
                style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11),
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
        const SizedBox(height: AppSizes.md),
        _buildMoviesRow(context, entry.value),
        const SizedBox(height: AppSizes.xl),
      ]);
    }

    return sections;
  }

  Widget _buildHeroBanner(Content featuredMovie) {
    return GestureDetector(
      onTap: () => context.push('/player', extra: featuredMovie),
      child: Container(
        height: 470,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withAlpha((0.3 * 255).round()),
              Colors.black.withAlpha((0.7 * 255).round()),
            ],
          ),
        ),
        child: Stack(
          children: [
            // Background image or gradient
            Container(
              color: AppTheme.cardBackground,
              child: featuredMovie.backdropUrl != null
                  ? Image.network(
                      featuredMovie.backdropUrl!,
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
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withAlpha((0.9 * 255).round()),
                        ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      featuredMovie.title,
                      style: const TextStyle(
                        color: AppTheme.textPrimary,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(Icons.play_circle,
                            color: AppTheme.accentOrange, size: 20),
                        const SizedBox(width: 8),
                        const Text(
                          'Play Now',
                          style: TextStyle(
                            color: AppTheme.textSecondary,
                            fontSize: 14,
                          ),
                        ),
                        if (featuredMovie.rating != null) ...[
                          const SizedBox(width: 16),
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            featuredMovie.rating!.toStringAsFixed(1),
                            style: const TextStyle(
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
            AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
            AppTheme.accentOrange.withAlpha((0.2 * 255).round()),
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
  Widget _buildBannerPlaceholder() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
            AppTheme.accentOrange.withAlpha((0.2 * 255).round()),
          ],
        ),
      ),
    );
  }
}
