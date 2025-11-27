import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/go_to_settings_button.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen>
  with ContentFocusRegistrant<MoviesScreen> {
  Timer? _carouselTimer;
  int _featuredIndex = 0;
  final FocusNode _playFocus = FocusNode();
  List<Content> _curatedMovies = [];
  final Map<String, String?> _tmdbArtCache = {};
  
  // Pagination for genre sections
  final Map<String, int> _genreDisplayCounts = {};
  static const int _itemsPerPage = 12;

  @override
  void dispose() {
    _carouselTimer?.cancel();
    _playFocus.removeListener(_onPlayFocusChange);
    _playFocus.dispose();
    super.dispose();
  }

  void _onPlayFocusChange() {
    if (_playFocus.hasFocus) {
      _carouselTimer?.cancel();
    } else {
      _startCarousel();
    }
  }

  @override
  bool handleContentFocusRequest() {
    if (!mounted) return false;
    _playFocus.requestFocus();
    return true;
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
      _playFocus.addListener(_onPlayFocusChange);
      // prepare curated list (may perform TMDB lookups)
      _prepareCuratedList();
      _preloadTMDBArtwork();
      // request focus so Play gets default focus when entering the screen
      final playFocusNode = _playFocus;
      Future.delayed(const Duration(milliseconds: 300), () {
        if (mounted) playFocusNode.requestFocus();
      });
    });
  }

  void _preloadTMDBArtwork() async {
    final provider = Provider.of<ContentProvider>(context, listen: false);
    final movies = provider.movies.take(30).toList();
    
    if (movies.isEmpty) return;
    
    final titles = movies.map((m) => m.title).toList();
    
    try {
      final results = await TMDBService.getBestBackdropBatch(titles);
      if (mounted) {
        setState(() {
          _tmdbArtCache.addAll(results);
        });
      }
    } catch (e) {
      debugPrint('MoviesScreen: Error batch-fetching TMDB art: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ContentProvider>(
      builder: (context, contentProvider, child) {
        final movies = contentProvider.movies;
        final recentMovies = contentProvider.recentlyAddedMovies;

        if (movies.isEmpty) {
          return _wrapWithDirectionalFocus(_buildEmptyState(context));
        }

        final displayMovies = _curatedMovies.isNotEmpty
            ? _curatedMovies
            : movies;
        if (_featuredIndex >= displayMovies.length) _featuredIndex = 0;
        final featured = displayMovies[_featuredIndex];

        final stack = Stack(
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
                  const SizedBox(height: AppSizes.lg),

                  Container(
                    color: const Color(0xFF050710),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.lg),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Recently Added Movies
                          if (recentMovies.isNotEmpty) ...[
                            _buildSectionHeader(context, 'Recently Added'),
                            const SizedBox(height: AppSizes.md),
                            _buildMoviesRow(context, recentMovies),
                            const SizedBox(height: AppSizes.xl),
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

        return _wrapWithDirectionalFocus(stack);
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050710),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
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
              GoToSettingsButton(
                onPressed: () {
                  if (context.mounted) context.go('/settings');
                },
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

  Widget _wrapWithDirectionalFocus(Widget child) {
    return Focus(
      canRequestFocus: false,
      skipTraversal: true,
      onKeyEvent: _handleDirectionalKeyEvent,
      child: child,
    );
  }

  KeyEventResult _handleDirectionalKeyEvent(
    FocusNode node,
    KeyEvent event,
  ) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      return requestNavigationFocus()
          ? KeyEventResult.handled
          : KeyEventResult.ignored;
    }
    return KeyEventResult.ignored;
  }

  Widget _buildMoviesRow(BuildContext context, List<Content> movies) {
    if (movies.isEmpty) return const SizedBox.shrink();

    return SizedBox(
      height: 240,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: FocusTraversalGroup(
          policy: WidgetOrderTraversalPolicy(),
          child: Row(
            children:
                movies.map((movie) => _buildMovieCard(context, movie)).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildMovieCard(BuildContext context, Content movie) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSizes.md),
      child: Focus(
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.space) {
              final encodedId = Uri.encodeComponent(movie.id);
              context.push('/content/$encodedId', extra: movie);
              return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            return GestureDetector(
              onTap: () {
                final encodedId = Uri.encodeComponent(movie.id);
                context.push('/content/$encodedId', extra: movie);
              },
              child: Container(
                width: 160,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                  border: isFocused
                      ? Border.all(color: Colors.white, width: 2)
                      : null,
                  boxShadow: isFocused
                      ? [
                          BoxShadow(
                            color: Colors.black.withAlpha((0.3 * 255).round()),
                            offset: const Offset(0, 4),
                            blurRadius: 8,
                          ),
                        ]
                      : null,
                ),
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
                    const SizedBox(height: AppSizes.xs),
                    Text(
                      movie.title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (movie.year != null || movie.rating != null)
                      Text(
                        '${movie.year ?? ''} ${movie.rating != null ? '★${movie.ratingDisplay}' : ''}',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: AppTheme.textSecondary),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPlaceholder(String title) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1a1a2e),
            const Color(0xFF16213e),
            AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.movie,
              size: 48,
              color: Colors.white.withAlpha((0.2 * 255).round()),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white.withAlpha((0.5 * 255).round()),
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
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

    // Build section for each genre with pagination
    final sections = <Widget>[];
    for (final entry in genreMap.entries) {
      final genre = entry.key;
      final allMovies = entry.value;
      final displayCount = _genreDisplayCounts[genre] ?? _itemsPerPage;
      final displayMovies = allMovies.take(displayCount).toList();
      
      sections.addAll([
        _buildSectionHeader(context, genre),
        const SizedBox(height: AppSizes.md),
        _buildMoviesRow(context, displayMovies),
        if (allMovies.length > displayCount)
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _genreDisplayCounts[genre] = displayCount + _itemsPerPage;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                ),
                child: const Text(
                  'Load More',
                  style: TextStyle(color: AppTheme.primaryBlue),
                ),
              ),
            ),
          ),
        const SizedBox(height: AppSizes.xl),
      ]);
    }

    return sections;
  }

  Widget _buildHeroBannerBackground(Content featuredMovie) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
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
        height: 420,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (heroImage != null)
              Positioned.fill(
                child: Image.network(
                  heroImage,
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter,
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
                padding: const EdgeInsets.all(AppSizes.lg),
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
                              return GestureDetector(
                                onTap: () {
                                  final encodedId = Uri.encodeComponent(
                                    featuredMovie.id,
                                  );
                                  context.push(
                                    '/content/$encodedId',
                                    extra: featuredMovie,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.primaryBlue,
                                    borderRadius: BorderRadius.circular(12),
                                    border: hasFocus
                                        ? Border.all(color: Colors.white, width: 2)
                                        : null,
                                    boxShadow: hasFocus
                                        ? [
                                            BoxShadow(
                                              color: Colors.black.withAlpha((0.3 * 255).round()),
                                              offset: const Offset(0, 4),
                                              blurRadius: 8,
                                            ),
                                          ]
                                        : null,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 14,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.play_arrow, color: Colors.white),
                                      const SizedBox(width: 8),
                                      Text(
                                        'Watch',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
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
