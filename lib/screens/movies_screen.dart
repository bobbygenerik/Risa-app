import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
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
        final movies = contentProvider.movies;
        final recentMovies = contentProvider.recentlyAddedMovies;

        if (movies.isEmpty) {
          return _buildEmptyState(context);
        }

        // Get featured movies (up to 5 recent or random movies)
        final featuredMovies = recentMovies.isNotEmpty 
            ? recentMovies.take(5).toList()
            : (movies.length > 5 ? movies.take(5).toList() : movies);

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Featured Hero Section (Netflix/Disney+ style)
              _buildFeaturedHero(context, featuredMovies),

              SizedBox(height: AppSizes.xl),

              // Content Rows
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.lg),
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
            ],
          ),
        );
      },
    );
  }

  Widget _buildFeaturedHero(BuildContext context, List<Content> featuredMovies) {
    if (featuredMovies.isEmpty) return SizedBox.shrink();

    final featured = featuredMovies[_featuredIndex % featuredMovies.length];
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

          // Indicator Dots (if multiple featured movies)
          if (featuredMovies.length > 1)
            Positioned(
              bottom: AppSizes.md,
              right: AppSizes.xl,
              child: Row(
                children: List.generate(featuredMovies.length, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    width: index == _featuredIndex % featuredMovies.length ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: index == _featuredIndex % featuredMovies.length
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                }),
              ),
            ),

          // Navigation Arrows
          if (featuredMovies.length > 1) ...[
            Positioned(
              left: AppSizes.lg,
              top: 0,
              bottom: 0,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _featuredIndex = (_featuredIndex - 1 + featuredMovies.length) % featuredMovies.length;
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
                      _featuredIndex = (_featuredIndex + 1) % featuredMovies.length;
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
            Icons.movie,
            size: 80,
            color: AppTheme.primaryBlue.withOpacity(0.5),
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
          BrandPrimaryButton(
            icon: Icons.settings,
            label: 'Go to Settings',
            onPressed: () => context.go('/settings'),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
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
          if (index == 0) {
            return Focus(
              focusNode: _firstContentFocusNode,
              child: _buildMovieCard(context, movie),
            );
          }
          return _buildMovieCard(context, movie);
        },
      ),
    );
  }

  Widget _buildMovieCard(BuildContext context, Content movie) {
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
                          backgroundColor: AppTheme.highlight,
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
              Icons.movie,
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
