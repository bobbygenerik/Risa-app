import 'dart:async';
import 'dart:math';
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
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/widgets/vod_card_image.dart';

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
  final FocusNode _heroFocus = FocusNode();
  final FocusNode _settingsFocus = FocusNode();
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
    _heroFocus.dispose();
    _settingsFocus.dispose();
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
    final contentProvider = Provider.of<ContentProvider>(context, listen: false);
    if (contentProvider.movies.isEmpty) {
      _settingsFocus.requestFocus();
    } else {
      _playFocus.requestFocus();
    }
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
          // Find next item with artwork
          int attempts = 0;
          int nextIndex = (_featuredIndex + 1) % movies.length;
          while (attempts < movies.length) {
            final movie = movies[nextIndex];
            if (movie.backdropUrl != null || movie.imageUrl != null) {
              _featuredIndex = nextIndex;
              break;
            }
            nextIndex = (nextIndex + 1) % movies.length;
            attempts++;
          }
          // If no items with artwork found, just use next index
          if (attempts >= movies.length) {
            _featuredIndex = (_featuredIndex + 1) % movies.length;
          }
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _playFocus.addListener(_onPlayFocusChange);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      
      // Prioritize newly added content with artwork for hero banner
      final provider = Provider.of<ContentProvider>(context, listen: false);
      if (provider.movies.isNotEmpty) {
        _featuredIndex = _findNewestContentWithArtwork(provider.movies);
      }
      
      _startCarousel();
      // prepare curated list (may perform TMDB lookups)
      _prepareCuratedList();
      _preloadTMDBArtwork();
      // Focus is managed by navigation bar - don't auto-focus content
    });
  }

  /// Find the newest content (from end of list) that has artwork for hero banner
  int _findNewestContentWithArtwork(List<Content> items) {
    // Filter to only items with backdrop or image
    final itemsWithArt = <int>[];
    for (int i = 0; i < items.length; i++) {
      final item = items[i];
      if (item.backdropUrl != null || item.imageUrl != null) {
        itemsWithArt.add(i);
      }
    }
    
    if (itemsWithArt.isEmpty) {
      // Fallback to first item if none have artwork
      return 0;
    }
    
    // Select randomly from the last 12 items with artwork (newest content)
    final recentCount = itemsWithArt.length.clamp(1, 12);
    final startIndex = itemsWithArt.length - recentCount;
    final randomOffset = Random().nextInt(recentCount);
    return itemsWithArt[startIndex + randomOffset];
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

        final stack = Padding(
          padding: const EdgeInsets.only(left: 48),
          child: Stack(
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
                    const SizedBox(height: 24),

                    Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFF050710), Color(0xFF0d1140)],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Recently Added Movies
                          if (recentMovies.isNotEmpty) ...[
                            _buildSectionHeader(context, 'Recently Added'),
                            const SizedBox(height: 8),
                            _buildMoviesRow(context, recentMovies),
                            const SizedBox(height: 16),
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
          ),
        );

        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF050710), Color(0xFF0d1140)],
            ),
          ),
          child: _wrapWithDirectionalFocus(stack),
        );
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
                focusNode: _settingsFocus,
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
      style: const TextStyle(
        color: AppTheme.textPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.3,
      ),
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
    
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isLandscape = screenWidth > screenHeight;
    final cardWidth = isLandscape ? (screenWidth / 5.5) : (screenWidth / 3.5);
    final rowHeight = cardWidth * 1.7; // Extra space for title

    return SizedBox(
      height: rowHeight,
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isLandscape = screenWidth > screenHeight;
    // 4-5 cards in landscape, more in portrait
    final cardWidth = isLandscape ? (screenWidth / 5.5) : (screenWidth / 3.5);
    final cardHeight = cardWidth * 1.5; // Maintain aspect ratio
    
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Focus(
        canRequestFocus: true,
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
              child: AnimatedScale(
                scale: isFocused ? 1.05 : 1.0,
                duration: TVFocusStyle.animationDuration,
                curve: TVFocusStyle.animationCurve,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      duration: TVFocusStyle.animationDuration,
                      curve: TVFocusStyle.animationCurve,
                      width: cardWidth,
                      height: cardHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppTheme.cardBackground,
                        border: isFocused
                            ? Border.all(color: AppTheme.primaryBlue, width: 3)
                            : null,
                        boxShadow: isFocused
                            ? [
                                BoxShadow(
                                  color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
                                  blurRadius: 16,
                                  spreadRadius: 2,
                                ),
                              ]
                            : TVFocusStyle.defaultShadow,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                          child: Stack(
                            children: [
                              Container(
                                color: AppTheme.cardBackground,
                                child: VodCardImage(
                                  content: movie,
                                  fit: BoxFit.cover,
                                  placeholder: _buildPlaceholder(movie.title),
                                ),
                              ),
                              if (movie.watchProgress != null &&
                                  movie.watchProgress! > 0)
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
                          ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      movie.title,
                      style: const TextStyle(
                        color: AppTheme.textPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (movie.year != null || movie.rating != null)
                      Text(
                        '${movie.year ?? ''} ${movie.rating != null ? '★${movie.ratingDisplay}' : ''}',
                        style: const TextStyle(
                          color: AppTheme.textSecondary,
                          fontSize: 11,
                        ),
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
    // Group movies by genre (prefer TMDB genres, fallback to M3U genres)
    final genreMap = <String, List<Content>>{};
    for (final movie in movies) {
      // Use allGenres getter which prefers tmdbGenres over genres
      final movieGenres = movie.allGenres;
      if (movieGenres.isNotEmpty) {
        for (final genre in movieGenres) {
          genreMap.putIfAbsent(genre, () => []).add(movie);
        }
      } else {
        genreMap.putIfAbsent('Other', () => []).add(movie);
      }
    }

    debugPrint('Movies: Total=${movies.length}, Genres=${genreMap.keys.join(", ")}');
    for (final entry in genreMap.entries) {
      debugPrint('  ${entry.key}: ${entry.value.length} movies');
    }
    
    // Log first 3 movies to help debug genre issues
    if (movies.isNotEmpty) {
      debugPrint('Sample movies for genre debugging:');
      for (final movie in movies.take(3)) {
        debugPrint('  Title: "${movie.title}", TMDB Genres: ${movie.tmdbGenres?.join(", ") ?? "NONE"}, M3U Genres: ${movie.genres?.join(", ") ?? "NONE"}');
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
        const SizedBox(height: 8),
        _buildMoviesRow(context, displayMovies),
        if (allMovies.length > displayCount)
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Focus(
                autofocus: false,
                child: Builder(
                  builder: (context) {
                    final isFocused = Focus.of(context).hasFocus;
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: isFocused ? [
                          BoxShadow(
                            color: AppTheme.primaryBlue.withAlpha((0.6 * 255).round()),
                            blurRadius: 20,
                            spreadRadius: 2,
                          ),
                        ] : null,
                      ),
                      child: TextButton(
                        onPressed: () {
                          debugPrint('Load More pressed for genre: $genre');
                          setState(() {
                            _genreDisplayCounts[genre] = displayCount + _itemsPerPage;
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: isFocused
                              ? AppTheme.primaryBlue
                              : AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        ),
                        child: Text(
                          'Load More ($genre)',
                          style: TextStyle(
                            color: isFocused ? Colors.white : AppTheme.primaryBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        const SizedBox(height: 16),
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
    final provider = Provider.of<ContentProvider>(context, listen: false);
    final displayMovies = _curatedMovies.isNotEmpty ? _curatedMovies : provider.movies;
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.height * 0.65;
    
    return Focus(
      focusNode: _playFocus,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent &&
            (event.logicalKey == LogicalKeyboardKey.select ||
             event.logicalKey == LogicalKeyboardKey.enter)) {
          final encodedId = Uri.encodeComponent(featuredMovie.id);
          context.push('/content/$encodedId', extra: featuredMovie);
          return KeyEventResult.handled;
        }
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (displayMovies.isEmpty) return KeyEventResult.ignored;
        
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          _carouselTimer?.cancel();
          setState(() {
            _featuredIndex = (_featuredIndex - 1 + displayMovies.length) % displayMovies.length;
          });
          _startCarousel();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          _carouselTimer?.cancel();
          setState(() {
            _featuredIndex = (_featuredIndex + 1) % displayMovies.length;
          });
          _startCarousel();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: () {
          final encodedId = Uri.encodeComponent(featuredMovie.id);
          context.push('/content/$encodedId', extra: featuredMovie);
        },
        child: SizedBox(
          height: heroHeight,
          child: Stack(
            children: [
              // Solid background on left
              Positioned(
                top: 0,
                left: 0,
                width: screenSize.width * 0.45,
                height: heroHeight,
                child: Container(
                  color: const Color(0xFF050710),
                ),
              ),
              // Hero image starting at 45% from left
              if (heroImage != null)
                Positioned(
                  top: 0,
                  left: screenSize.width * 0.45,
                  right: 0,
                  height: heroHeight,
                  child: CachedNetworkImage(
                    imageUrl: heroImage,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    placeholder: (context, url) => _buildBannerPlaceholder(),
                    errorWidget: (context, url, error) {
                      debugPrint('Movie hero banner failed: $url - $error');
                      return _buildBannerPlaceholder();
                    },
                  ),
                ),
              // Left gradient cloud overlay
              Positioned(
                top: 0,
                left: screenSize.width * 0.40,
                width: screenSize.width * 0.15,
                height: heroHeight,
                child: IgnorePointer(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          const Color(0xFF050710),
                          const Color(0xFF050710).withOpacity(0.8),
                          const Color(0xFF050710).withOpacity(0.4),
                          Colors.transparent,
                        ],
                        stops: const [0.0, 0.25, 0.6, 1.0],
                      ),
                    ),
                  ),
                ),
              ),
              // Bottom gradient overlay - full width
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                height: heroHeight * 0.25,
                child: IgnorePointer(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xFF050710),
                          const Color(0xFF050710).withOpacity(0.7),
                          const Color(0xFF050710).withOpacity(0.3),
                          Colors.transparent,
                        ],
                        stops: const [0.0, 0.4, 0.7, 1.0],
                      ),
                    ),
                  ),
                ),
              ),
              // Top fade for nav bar area
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withAlpha((0.9 * 255).round()),
                        Colors.black.withAlpha(0),
                      ],
                    ),
                  ),
                ),
              ),
              // Featured info in left area
              Positioned(
                bottom: heroHeight * 0.40,
                left: 120,
                width: screenSize.width * 0.33,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 24 * 1.3 * 2,
                      child: Text(
                        featuredMovie.title,
                        style: const TextStyle(
                          color: AppTheme.textPrimary,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          height: 1.3,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 14 * 1.3 * 3,
                      child: Text(
                        featuredMovie.description ?? '',
                        style: const TextStyle(
                          color: AppTheme.textSecondary,
                          fontSize: 14,
                          height: 1.3,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 14 * 1.4,
                      child: featuredMovie.rating != null
                          ? Row(
                              children: [
                                const Icon(Icons.star, color: Colors.amber, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  featuredMovie.ratingDisplay,
                                  style: const TextStyle(
                                    color: AppTheme.textSecondary,
                                    fontSize: 14,
                                  ),
                                ),
                                if (featuredMovie.year != null) ...[
                                  const SizedBox(width: 12),
                                  Text(
                                    featuredMovie.year.toString(),
                                    style: const TextStyle(
                                      color: AppTheme.textSecondary,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ],
                            )
                          : Container(),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
      final List<Content> enhancedMovies = [];

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
                genres: (details['genres'] as List<String>?) ?? m.genres,
              );
              enhancedMovies.add(patched);
              curated.add(patched);
            } else if (m.backdropUrl != null || m.imageUrl != null) {
              curated.add(m);
            }
          } catch (_) {
            // ignore per-item TMDB failures
          }
          if (curated.length >= 12) break;
        }
        
        // Update the provider with enhanced metadata (including genres)
        if (enhancedMovies.isNotEmpty) {
          final allMovies = movies.map((m) {
            final enhanced = enhancedMovies.firstWhere(
              (e) => e.id == m.id,
              orElse: () => m,
            );
            return enhanced;
          }).toList();
          provider.loadMovies(allMovies);
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
          // Reset featured index to random position in curated list for variety
          if (limited.isNotEmpty) {
            _featuredIndex = Random().nextInt(limited.length);
          }
        });
      }
    } catch (e) {
      // ignore top-level failures
    }
  }
}
