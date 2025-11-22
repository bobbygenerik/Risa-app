import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:go_router/go_router.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  Timer? _carouselTimer;
  int _featuredIndex = 0;
  final FocusNode _playFocus = FocusNode();
  List<Content> _curatedMovies = [];

  @override
  void dispose() {
    _carouselTimer?.cancel();
    _playFocus.dispose();
    super.dispose();
  }

  void _startCarousel() {
    _carouselTimer?.cancel();
    _carouselTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      final provider = Provider.of<ContentProvider>(context, listen: false);
      final movies = _curatedMovies.isNotEmpty
          ? _curatedMovies
          : provider.movies;
      if (movies.isEmpty) return;
      if (mounted) {
        setState(() {
          _featuredIndex = (_featuredIndex + 1) % movies.length;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startCarousel();
      // pause carousel when hero play button receives focus
      _playFocus.addListener(() {
        if (_playFocus.hasFocus) {
          _carouselTimer?.cancel();
        } else {
          _startCarousel();
        }
      });
      // prepare curated list (may perform TMDB lookups)
      _prepareCuratedList();
      // request focus so Play gets default focus when entering the screen
      final playFocusNode = _playFocus;
      Future.delayed(const Duration(milliseconds: 300), () {
        if (mounted) playFocusNode.requestFocus();
      });
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

        final displayMovies = _curatedMovies.isNotEmpty
            ? _curatedMovies
            : movies;
        if (_featuredIndex >= displayMovies.length) _featuredIndex = 0;
        final featured = displayMovies[_featuredIndex];

        return Stack(
          children: [
            // Full-height hero banner background
            Positioned.fill(child: _buildHeroBannerBackground(featured)),
            // Content on top
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hero banner with content overlay
                  _buildHeroBannerOverlay(context, featured),
                  SizedBox(height: AppSizes.lg),

                  Container(
                    color: const Color(0xFF050710),
                    child: Padding(
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
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050710),
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF050710), Color(0xFF0d1140)],
          ),
        ),
        child: Center(
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
      margin: EdgeInsets.only(right: AppSizes.md),
      child: InkWell(
        onTap: () {
          final encodedId = Uri.encodeComponent(movie.id);
          context.push('/content/$encodedId', extra: movie);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Text(
              movie.title,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
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

  Widget _buildHeroBannerBackground(Content featuredMovie) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF050710), Color(0xFF0d1140)],
        ),
      ),
    );
  }

  Widget _buildHeroBannerOverlay(BuildContext context, Content featuredMovie) {
    final heroImage = featuredMovie.backdropUrl ?? featuredMovie.imageUrl;
    return GestureDetector(
      onTap: () {
        final encodedId = Uri.encodeComponent(featuredMovie.id);
        context.push('/content/$encodedId', extra: featuredMovie);
      },
      child: SizedBox(
        height: 300,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (heroImage != null)
              Positioned.fill(
                child: Image.network(
                  heroImage,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => _buildBannerPlaceholder(),
                ),
              )
            else
              Positioned.fill(child: _buildBannerPlaceholder()),
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Color(0xFF050710)],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      featuredMovie.title,
                      style: const TextStyle(
                        color: AppTheme.textPrimary,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Focus(
                          focusNode: _playFocus,
                          child: Builder(
                            builder: (ctx) {
                              final hasFocus = Focus.of(ctx).hasFocus;
                              return Container(
                                decoration: hasFocus
                                    ? BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: AppTheme.primaryBlue,
                                          width: 3,
                                        ),
                                      )
                                    : null,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    final encodedId = Uri.encodeComponent(
                                      featuredMovie.id,
                                    );
                                    context.push(
                                      '/content/$encodedId',
                                      extra: featuredMovie,
                                    );
                                  },
                                  icon: const Icon(Icons.play_arrow),
                                  label: const Text('Play'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppTheme.primaryBlue,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 18,
                                      vertical: 12,
                                    ),
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        if (featuredMovie.rating != null) ...[
                          const SizedBox(width: 4),
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            featuredMovie.ratingDisplay,
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

  Widget _buildBannerPlaceholder() {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF050710), Color(0xFF0d1140)],
        ),
      ),
    );
  }

  Future<void> _prepareCuratedList() async {
    try {
      final provider = Provider.of<ContentProvider>(context, listen: false);
      final movies = provider.movies;
      if (movies.isEmpty) return;

      final candidates = movies.take(20).toList();
      final List<Content> curated = [];

      if (ServiceValidator.isTmdbAvailable) {
        for (final m in candidates) {
          try {
            final details = await TMDBService.getMovieDetails(
              m.title,
              year: m.year,
            );
            if (details != null) {
              final patched = m.copyWith(
                backdropUrl: details['backdrop'] ?? m.backdropUrl,
                imageUrl: details['poster'] ?? m.imageUrl,
                rating: (details['rating'] as double?) ?? m.rating,
                description: details['overview'] ?? m.description,
              );
              curated.add(patched);
            } else if (m.backdropUrl != null || m.imageUrl != null) {
              curated.add(m);
            }
          } catch (_) {
            // ignore per-item TMDB failures
          }
          if (curated.length >= 12) break;
        }
      } else {
        curated.addAll(
          movies.where((m) => m.backdropUrl != null || m.imageUrl != null),
        );
      }

      if (mounted && curated.isNotEmpty) {
        // Prefer items with backdrops, then posters, then higher rating
        curated.sort((a, b) {
          final aBackdrop = a.backdropUrl != null;
          final bBackdrop = b.backdropUrl != null;
          if (aBackdrop != bBackdrop) return aBackdrop ? -1 : 1;

          final aPoster = a.imageUrl != null;
          final bPoster = b.imageUrl != null;
          if (aPoster != bPoster) return aPoster ? -1 : 1;

          final aRating = a.rating ?? 0.0;
          final bRating = b.rating ?? 0.0;
          return bRating.compareTo(aRating);
        });

        final limited = curated.length > 12 ? curated.sublist(0, 12) : curated;

        setState(() {
          _curatedMovies = limited;
        });
      }
    } catch (e) {
      // ignore top-level failures
    }
  }
}
