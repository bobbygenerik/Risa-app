import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
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
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_icons.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/widgets/hero_info_box.dart';
import 'package:iptv_player/widgets/brand_badge.dart';
import 'package:iptv_player/widgets/shimmer.dart';

List<Map<String, dynamic>> _buildMovieGenreBucketsIsolate(
    List<Map<String, dynamic>> items) {
  final Map<String, List<int>> genreMap = {};
  for (var i = 0; i < items.length; i++) {
    final item = items[i];
    final title = (item['title'] as String?)?.toLowerCase() ?? '';
    if (title == 'movie' ||
        title == 'movie to be announced' ||
        title.startsWith('movie ') ||
        title.contains('to be announced')) {
      continue;
    }
    final genres =
        (item['genres'] as List<dynamic>?)?.cast<String>() ?? const [];
    if (genres.isEmpty) {
      genreMap.putIfAbsent('Other', () => []).add(i);
      continue;
    }
    for (final genre in genres) {
      genreMap.putIfAbsent(genre, () => []).add(i);
    }
  }
  return genreMap.entries
      .map((entry) => {'genre': entry.key, 'indices': entry.value})
      .toList();
}

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _HeroArt {
  final String? url;
  final bool isBackdrop;
  const _HeroArt(this.url, {this.isBackdrop = true});
}

class _SectionConfig {
  final String title;
  final List<Content> items;
  final String sectionKey;
  final FocusNode? firstFocusNode;
  final ValueChanged<int>? onItemFocus;
  final VoidCallback? onNearEnd;

  const _SectionConfig({
    required this.title,
    required this.items,
    required this.sectionKey,
    this.firstFocusNode,
    this.onItemFocus,
    this.onNearEnd,
  });
}

class _MoviesScreenState extends State<MoviesScreen>
    with ContentFocusRegistrant<MoviesScreen>, AutomaticKeepAliveClientMixin {
  Timer? _carouselTimer;
  int _featuredIndex = 0;
  final ScrollController _scrollController = ScrollController();
  final FocusNode _playFocus = FocusNode();
  final FocusNode _heroFocus = FocusNode();
  final FocusNode _settingsFocus = FocusNode();
  final FocusNode _firstRowFocus = FocusNode();
  List<Content> _curatedMovies = [];
  final Map<String, String?> _tmdbArtCache = {};
  final Set<String> _heroDetailsRequests = {};
  Map<String, List<int>> _genreBuckets = {};
  String _genreBucketsSignature = '';
  bool _genreBucketsLoading = false;
  int _sectionTotal = 0;
  int _visibleSectionCount = 6;
  static const int _sectionChunkSize = 6;
  static const double _sectionPrefetchExtent = 800;

  // Pagination for genre sections
  final Map<String, int> _genreDisplayCounts = {};
  final Map<String, int> _genrePrefetchCounts = {};
  final Map<String, int> _focusedIndexBySection = {};
  final Map<String, int> _rowVisibleCountBySection = {};
  static const int _rowVisibleBuffer = 2;
  static const int _itemsPerPage = 12;
  static const int _vodPageSize = 200;
  bool _isLoadingMore = false;
  bool _vodRetryRequested = false;
  int _heroImageSkipCount = 0;
  bool _heroSkipScheduled = false;
  final Map<String, FocusNode> _sectionFirstCardFocusNodes = {};

  @override
  void dispose() {
    for (final node in _sectionFirstCardFocusNodes.values) {
      node.dispose();
    }
    _carouselTimer?.cancel();
    _scrollController.removeListener(_handleSectionPrefetch);
    _scrollController.dispose();
    _playFocus.removeListener(_onPlayFocusChange);
    _playFocus.dispose();
    _heroFocus.dispose();
    _settingsFocus.dispose();
    _firstRowFocus.dispose();
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
    final contentProvider =
        Provider.of<ContentProvider>(context, listen: false);
    if (contentProvider.movies.isEmpty) {
      _settingsFocus.requestFocus();
    } else {
      _heroFocus.requestFocus();
    }
    return true;
  }

  void _startCarousel() {
    _carouselTimer?.cancel();
    _carouselTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      _nextHero();
    });
  }

  void _nextHero() {
    final provider = Provider.of<ContentProvider>(context, listen: false);
    final movies = _curatedMovies.isNotEmpty ? _curatedMovies : provider.movies;
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
  }

  @override
  void initState() {
    super.initState();
    _playFocus.addListener(_onPlayFocusChange);
    _scrollController.addListener(_handleSectionPrefetch);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      Provider.of<ChannelProvider>(context, listen: false).ensureVodLoaded();

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

  void _handleSectionPrefetch() {
    if (!_scrollController.hasClients) return;
    if (_sectionTotal == 0) return;
    if (_visibleSectionCount >= _sectionTotal) return;
    final extentAfter = _scrollController.position.extentAfter;
    if (extentAfter > _sectionPrefetchExtent) return;
    setState(() {
      _visibleSectionCount =
          (_visibleSectionCount + _sectionChunkSize).clamp(0, _sectionTotal);
    });
  }

  _HeroArt _resolveHeroArt(Content movie) {
    // 1. Try pre-fetched TMDB cache (usually higher quality backdrops)
    if (_tmdbArtCache.containsKey(movie.title)) {
      final cached = _tmdbArtCache[movie.title];
      if (cached != null && cached.isNotEmpty) {
        return _HeroArt(cached, isBackdrop: true);
      }
    }

    // 2. Try content's own backdrop URL
    if (movie.backdropUrl != null && movie.backdropUrl!.isNotEmpty) {
      return _HeroArt(movie.backdropUrl, isBackdrop: true);
    }

    // 3. Try content's image URL (poster) as a last resort
    if (movie.imageUrl != null && movie.imageUrl!.isNotEmpty) {
      return _HeroArt(movie.imageUrl, isBackdrop: false);
    }

    return const _HeroArt(null, isBackdrop: true);
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
      debugLog('MoviesScreen: Error batch-fetching TMDB art: $e');
    }
  }

  void _skipHeroWithNoImage(List<Content> candidates) {
    if (_heroSkipScheduled || candidates.isEmpty) return;
    if (_heroImageSkipCount >= candidates.length) return;
    _heroSkipScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      setState(() {
        _featuredIndex = (_featuredIndex + 1) % candidates.length;
        _heroImageSkipCount++;
        _heroSkipScheduled = false;
      });
    });
  }

  Future<void> _loadMoreMovies() async {
    if (_isLoadingMore || !mounted) return;
    final channelProvider =
        Provider.of<ChannelProvider>(context, listen: false);
    final contentProvider =
        Provider.of<ContentProvider>(context, listen: false);
    final offset = contentProvider.movies.length;
    final total = channelProvider.moviesCount;
    if (total > 0 && offset >= total) return;

    setState(() {
      _isLoadingMore = true;
    });
    try {
      final page = await channelProvider.getMovies(
        offset: offset,
        limit: _vodPageSize,
      );
      if (page.isNotEmpty) {
        contentProvider.appendMovies(page);
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoadingMore = false;
        });
      }
    }
  }

  void _maybePrefetchGenre({
    required String genre,
    required int index,
    required int displayCount,
    required int genreCount,
    required bool hasMoreOverall,
  }) {
    if (index < displayCount - 3) return;
    final lastTriggered = _genrePrefetchCounts[genre];
    if (lastTriggered != null && lastTriggered == displayCount) return;

    final nextDisplay = displayCount + _itemsPerPage;
    _genrePrefetchCounts[genre] = displayCount;
    setState(() {
      _genreDisplayCounts[genre] = nextDisplay;
    });

    if (hasMoreOverall && genreCount <= displayCount) {
      unawaited(_loadMoreMovies());
    }
  }

  String _buildGenreSignature(List<Content> items) {
    if (items.isEmpty) return 'empty';
    final firstId = items.first.id;
    final lastId = items.last.id;
    return '${items.length}|$firstId|$lastId';
  }

  void _ensureGenreBuckets(List<Content> items) {
    final signature = _buildGenreSignature(items);
    if (_genreBucketsSignature == signature || _genreBucketsLoading) return;
    _genreBucketsLoading = true;
    final payload = items
        .map((movie) => {
              'title': movie.title,
              'genres': movie.allGenres,
            })
        .toList();
    unawaited(compute(_buildMovieGenreBucketsIsolate, payload).then((result) {
      if (!mounted) return;
      final Map<String, List<int>> buckets = {};
      for (final entry in result) {
        final genre = entry['genre'] as String?;
        final indices = entry['indices'] as List<dynamic>?;
        if (genre == null || indices == null) continue;
        buckets[genre] = indices.cast<int>();
      }
      setState(() {
        _genreBuckets = buckets;
        _genreBucketsSignature = signature;
        _genreBucketsLoading = false;
      });
    }).catchError((error) {
      _genreBucketsLoading = false;
      debugLog('Movies: genre bucket isolate failed: $error');
    }));
  }

  Map<String, List<Content>> _buildGenreMapFallback(List<Content> movies) {
    final sample = movies.length <= 200 ? movies : movies.take(200).toList();
    final Map<String, List<Content>> genreMap = {};
    for (final movie in sample) {
      final title = movie.title.toLowerCase();
      if (title == 'movie' ||
          title == 'movie to be announced' ||
          title.startsWith('movie ') ||
          title.contains('to be announced')) {
        continue;
      }
      final movieGenres = movie.allGenres;
      if (movieGenres.isNotEmpty) {
        for (final genre in movieGenres) {
          genreMap.putIfAbsent(genre, () => []).add(movie);
        }
      } else {
        genreMap.putIfAbsent('Other', () => []).add(movie);
      }
    }
    return genreMap;
  }

  bool _shouldPrefetchArt(String sectionKey, int index) {
    final focusedIndex = _focusedIndexBySection[sectionKey];
    if (focusedIndex == null) {
      return index < 6;
    }
    return (index - focusedIndex).abs() <= 4;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<ContentProvider>(
      builder: (context, contentProvider, child) {
        final channelProvider =
            Provider.of<ChannelProvider>(context, listen: false);
        final movies = contentProvider.movies;
        final recentMovies = contentProvider.recentlyAddedMovies;
        final hasMoreOverall = channelProvider.moviesCount > 0 &&
            movies.length < channelProvider.moviesCount;

        if (movies.isEmpty && contentProvider.isLoading) {
          return _buildSkeletonLoader();
        }

        if (movies.isEmpty && channelProvider.moviesCount > 0) {
          if (!_vodRetryRequested) {
            _vodRetryRequested = true;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (!mounted) return;
              Provider.of<ChannelProvider>(context, listen: false)
                  .ensureVodLoaded();
            });
          }
          return _buildSkeletonLoader();
        }

        if (movies.isEmpty) {
          return _wrapWithDirectionalFocus(_buildEmptyState(context));
        }

        final displayMovies =
            _curatedMovies.isNotEmpty ? _curatedMovies : movies;
        if (_vodRetryRequested) {
          _vodRetryRequested = false;
        }
        if (_featuredIndex >= displayMovies.length) _featuredIndex = 0;
        final featured = displayMovies[_featuredIndex];
        unawaited(_ensureHeroDetails(featured));

        return _buildFullScreenHero(
          context,
          featured,
          displayMovies,
          movies,
          recentMovies,
          hasMoreOverall: hasMoreOverall,
        );

        // Removed - handled in _buildFullScreenHero
      },
    );
  }

  @override
  bool get wantKeepAlive => true;

  Future<void> _ensureHeroDetails(Content item) async {
    if (!ServiceValidator.isTmdbAvailable) return;
    if (_heroDetailsRequests.contains(item.id)) return;
    if (item.description != null && item.description!.isNotEmpty) return;
    _heroDetailsRequests.add(item.id);

    try {
      final details = await TMDBService.getMovieDetails(
        item.title,
        year: item.year,
      );
      if (details == null) return;
      final patched = item.copyWith(
        description: item.description ?? details['overview'],
        rating: item.rating ?? details['rating'],
        genres: item.genres ?? details['genres'],
        imageUrl: item.imageUrl ?? details['poster'],
        backdropUrl: item.backdropUrl ?? details['backdrop'],
      );
      if (!mounted) return;
      final provider = Provider.of<ContentProvider>(context, listen: false);
      final updatedMovies =
          provider.movies.map((m) => m.id == item.id ? patched : m).toList();
      provider.loadMovies(updatedMovies);
      if (_curatedMovies.isNotEmpty) {
        setState(() {
          _curatedMovies =
              _curatedMovies.map((m) => m.id == item.id ? patched : m).toList();
        });
      }
    } catch (_) {}
  }

  Widget _buildEmptyState(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: Container(
        decoration: const BoxDecoration(
          color: AppTheme.darkBackground,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              context.iconXxl(
                AppIcons.movie,
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
    final inset = context.spacingSm() + AppSpacing.sidebarCollapsedWidth;
    return Padding(
      padding: EdgeInsets.only(left: inset),
      child: Text(
        title,
        style: AppTypography.caption(context).copyWith(
          color: AppTheme.textPrimary,
          fontWeight: FontWeight.w600,
        ),
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

  int _initialRowVisibleCount(BuildContext context) {
    final cardWidth = context.cardWidth();
    final inset = context.spacingSm() + AppSpacing.sidebarCollapsedWidth;
    final available =
        MediaQuery.of(context).size.width - inset - context.spacingLg();
    final perRow = (available / (cardWidth + context.cardGap())).floor();
    return (perRow + _rowVisibleBuffer).clamp(6, 12);
  }

  int _rowVisibleCountFor(BuildContext context, String sectionKey) {
    return _rowVisibleCountBySection.putIfAbsent(
      sectionKey,
      () => _initialRowVisibleCount(context),
    );
  }

  void _bumpRowVisibleCount(
      BuildContext context, String sectionKey, int totalCount, int index) {
    final current = _rowVisibleCountFor(context, sectionKey);
    if (index < current - 2) return;
    final next = (current + _rowVisibleBuffer).clamp(0, totalCount);
    if (next != current && mounted) {
      setState(() => _rowVisibleCountBySection[sectionKey] = next);
    }
  }

  Widget _buildMoviesRow(
    BuildContext context,
    List<Content> movies, {
    FocusNode? firstCardFocusNode,
    ValueChanged<int>? onItemFocus,
    VoidCallback? onNearEnd,
    String? sectionKey,
  }) {
    if (movies.isEmpty) return const SizedBox.shrink();

    const cardFocusScale = 1.02;
    final inset = context.spacingSm() + AppSpacing.sidebarCollapsedWidth;
    final cardHeight = context.cardHeight();
    final rowHeight = context.rowHeight() + (cardHeight * (cardFocusScale - 1));
    final effectiveSectionKey = sectionKey;
    final visibleCount = effectiveSectionKey != null
        ? _rowVisibleCountFor(context, effectiveSectionKey)
        : movies.length;
    final effectiveItemCount = min(movies.length, visibleCount);

    return SizedBox(
      height: rowHeight,
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification.metrics.maxScrollExtent <= 0) return false;
          final remaining = notification.metrics.maxScrollExtent -
              notification.metrics.pixels;
          if (remaining < context.cardGap() * 6) {
            if (effectiveSectionKey != null) {
              _bumpRowVisibleCount(context, effectiveSectionKey, movies.length,
                  movies.length - 1);
            }
            onNearEnd?.call();
          }
          return false;
        },
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: inset, right: context.spacingLg()),
          clipBehavior: Clip.none,
          itemCount: effectiveItemCount,
          itemBuilder: (context, index) {
            final allowPrefetch = sectionKey == null
                ? true
                : _shouldPrefetchArt(sectionKey, index);
            return _buildMovieCard(
              context,
              movies[index],
              index,
              onItemFocus: (focusedIndex) {
                if (effectiveSectionKey != null) {
                  _bumpRowVisibleCount(context, effectiveSectionKey,
                      movies.length, focusedIndex);
                }
                onItemFocus?.call(focusedIndex);
              },
              allowPrefetch: allowPrefetch,
              focusNode: index == 0 ? firstCardFocusNode : null,
            );
          },
          separatorBuilder: (context, index) =>
              SizedBox(width: context.cardGap()),
        ),
      ),
    );
  }

  Widget _buildMovieCard(
    BuildContext context,
    Content movie,
    int index, {
    FocusNode? focusNode,
    ValueChanged<int>? onItemFocus,
    required bool allowPrefetch,
  }) {
    final cardWidth = context.cardWidth();
    final cardHeight = context.cardHeight();

    return SizedBox(
      width: cardWidth,
      child: Focus(
        focusNode: focusNode,
        canRequestFocus: true,
        onFocusChange: (hasFocus) {
          if (hasFocus && onItemFocus != null) {
            onItemFocus(index);
          }
        },
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.space) {
              final encodedId = Uri.encodeComponent(movie.id);
              context.push('/content/$encodedId', extra: movie);
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowLeft &&
                index == 0) {
              final moved = requestNavigationFocus();
              return moved ? KeyEventResult.handled : KeyEventResult.ignored;
            }
          }
          return KeyEventResult.ignored;
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            const cardFocusScale = 1.02;
            return GestureDetector(
              onTap: () {
                final encodedId = Uri.encodeComponent(movie.id);
                context.push('/content/$encodedId', extra: movie);
              },
              child: AnimatedScale(
                scale: isFocused ? cardFocusScale : 1.0,
                duration: TVFocusStyle.animationDuration,
                curve: TVFocusStyle.animationCurve,
                alignment: Alignment.topCenter,
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
                            ? Border.all(color: AppTheme.focusBorder, width: 3)
                            : null,
                        boxShadow: isFocused
                            ? TVFocusStyle.focusedShadow
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
                                fit: BoxFit.fill,
                                allowPrefetch: allowPrefetch,
                                placeholder: _buildPlaceholder(movie.title),
                              ),
                            ),
                            if (movie.addedDate != null &&
                                DateTime.now()
                                        .difference(movie.addedDate!)
                                        .inDays <
                                    14)
                              const Positioned(
                                top: 8,
                                right: 8,
                                child: BrandBadge.newContent(fontSize: 8),
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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF2a2a3e),
            Color(0xFF1a1a2e),
            AppTheme.cardBackground
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            context.iconXl(
              AppIcons.movie,
              color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white.withAlpha((0.7 * 255).round()),
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

  List<_SectionConfig> _buildGenreSections(
    BuildContext context,
    List<Content> movies, {
    required bool hasMoreOverall,
    FocusNode? firstRowFocusNode,
  }) {
    _ensureGenreBuckets(movies);
    final signature = _buildGenreSignature(movies);
    final hasBuckets =
        _genreBucketsSignature == signature && _genreBuckets.isNotEmpty;
    final genreMap = <String, List<Content>>{};
    if (hasBuckets) {
      for (final entry in _genreBuckets.entries) {
        final items = <Content>[];
        for (final index in entry.value) {
          if (index >= 0 && index < movies.length) {
            items.add(movies[index]);
          }
        }
        if (items.isNotEmpty) {
          genreMap[entry.key] = items;
        }
      }
    } else {
      genreMap.addAll(_buildGenreMapFallback(movies));
    }

    debugLog(
        'Movies: Total=${movies.length}, Genres=${genreMap.keys.join(", ")}');
    for (final entry in genreMap.entries) {
      debugLog('  ${entry.key}: ${entry.value.length} movies');
    }

    // Log first 3 movies to help debug genre issues
    if (movies.isNotEmpty) {
      debugLog('Sample movies for genre debugging:');
      for (final movie in movies.take(3)) {
        debugLog(
            '  Title: "${movie.title}", TMDB Genres: ${movie.tmdbGenres?.join(", ") ?? "NONE"}, M3U Genres: ${movie.genres?.join(", ") ?? "NONE"}');
      }
    }

    // Build section for each genre with pagination
    final sections = <_SectionConfig>[];
    var usedFocusNode = false;
    for (final entry in genreMap.entries) {
      final genre = entry.key;
      final allMovies = entry.value;
      final displayCount = _genreDisplayCounts[genre] ?? _itemsPerPage;
      final displayMovies = allMovies.take(displayCount).toList();
      final rowFocusNode = !usedFocusNode ? firstRowFocusNode : null;
      usedFocusNode = usedFocusNode || rowFocusNode != null;

      sections.add(
        _SectionConfig(
          title: genre,
          items: displayMovies,
          sectionKey: genre,
          firstFocusNode: rowFocusNode,
          onItemFocus: (index) {
            _focusedIndexBySection[genre] = index;
            _maybePrefetchGenre(
              genre: genre,
              index: index,
              displayCount: displayCount,
              genreCount: allMovies.length,
              hasMoreOverall: hasMoreOverall,
            );
          },
          onNearEnd: () => _maybePrefetchGenre(
            genre: genre,
            index: displayCount - 1,
            displayCount: displayCount,
            genreCount: allMovies.length,
            hasMoreOverall: hasMoreOverall,
          ),
        ),
      );
    }

    return sections;
  }

  Widget _buildFullScreenHero(
      BuildContext context,
      Content featuredMovie,
      List<Content> heroCandidates,
      List<Content> allMovies,
      List<Content> recentMovies,
      {required bool hasMoreOverall}) {
    final heroArt = _resolveHeroArt(featuredMovie);
    if (heroArt.url == null || heroArt.url!.isEmpty) {
      _skipHeroWithNoImage(heroCandidates);
      if (_heroImageSkipCount < heroCandidates.length) {
        return _buildSkeletonLoader();
      }
    } else {
      _heroImageSkipCount = 0;
    }
    final heroHeight = context.heroHeight();
    final cardPeek = 140.0;
    final contentTop = (heroHeight - cardPeek).clamp(0.0, heroHeight);
    final contentInset = context.spacingSm() + AppSpacing.sidebarCollapsedWidth;
    final screenSize = MediaQuery.of(context).size;
    final heroInfoWidth = min(
      screenSize.width * AppSpacing.heroInfoWidth,
      screenSize.width >= 1920 ? 480.0 : 420.0,
    );

    final sections = <_SectionConfig>[];
    if (recentMovies.isNotEmpty) {
      sections.add(
        _SectionConfig(
          title: 'Recently Added',
          items: recentMovies,
          sectionKey: 'recent_movies',
          firstFocusNode: _firstRowFocus,
          onItemFocus: (index) {
            _focusedIndexBySection['recent_movies'] = index;
          },
        ),
      );
    }
    sections.addAll(
      _buildGenreSections(
        context,
        allMovies,
        hasMoreOverall: hasMoreOverall,
        firstRowFocusNode: recentMovies.isEmpty ? _firstRowFocus : null,
      ),
    );
    _sectionTotal = sections.length;
    final sectionOrder = sections.map((s) => s.sectionKey).toList();
    for (final key in _sectionFirstCardFocusNodes.keys
        .where((key) => !sectionOrder.contains(key))
        .toList()) {
      final removed = _sectionFirstCardFocusNodes.remove(key);
      if (removed != null && removed != _firstRowFocus) {
        removed.dispose();
      }
    }
    final visibleSections =
        sections.take(min(_visibleSectionCount, sections.length)).toList();

    return Focus(
      canRequestFocus: false,
      skipTraversal: true,
      onKeyEvent: _handleDirectionalKeyEvent,
      child: AnimatedBuilder(
        animation: _scrollController,
        builder: (context, child) {
          final scrollOffset =
              _scrollController.hasClients ? _scrollController.offset : 0.0;
          final fadeProgress =
              (scrollOffset / (heroHeight * 0.3)).clamp(0.0, 1.0);
          final overlayFadeProgress =
              (scrollOffset / (heroHeight * 0.12)).clamp(0.0, 1.0);

          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF080808), // Rich Black
                  AppTheme.darkBackground, // True Black
                ],
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Fixed hero background
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: heroHeight,
                  child: Transform.translate(
                    offset: Offset(0, -scrollOffset),
                    child: Opacity(
                      opacity: 1.0 - fadeProgress,
                      child: Focus(
                        focusNode: _heroFocus,
                        onKeyEvent: (node, event) {
                          if (event is KeyDownEvent) {
                            if (event.logicalKey == LogicalKeyboardKey.select ||
                                event.logicalKey == LogicalKeyboardKey.enter) {
                              final encodedId =
                                  Uri.encodeComponent(featuredMovie.id);
                              context.push('/content/$encodedId',
                                  extra: featuredMovie);
                              return KeyEventResult.handled;
                            }
                            if (event.logicalKey ==
                                LogicalKeyboardKey.arrowLeft) {
                              return requestNavigationFocus()
                                  ? KeyEventResult.handled
                                  : KeyEventResult.ignored;
                            }
                          }
                          return KeyEventResult.ignored;
                        },
                        child: GestureDetector(
                          onTap: () {
                            final encodedId =
                                Uri.encodeComponent(featuredMovie.id);
                            context.push('/content/$encodedId',
                                extra: featuredMovie);
                          },
                          child: Stack(
                            children: [
                              _buildHeroContent(featuredMovie, heroArt, 0.0),
                              // Gradient fade at bottom
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                height: 180,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        AppTheme.darkBackground
                                            .withAlpha((0.8 * 255).round()),
                                        AppTheme.darkBackground,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: contentTop,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          AppTheme.darkBackground,
                          AppTheme.darkBackground,
                        ],
                        stops: [0.0, 0.2, 1.0],
                      ),
                    ),
                  ),
                ),
                // Featured info overlay
                Positioned(
                  top: 0,
                  left: contentInset,
                  right: context.spacingLg(),
                  height: heroHeight,
                  child: Builder(
                    builder: (context) {
                      final opacity = 1.0 - overlayFadeProgress;
                      if (opacity <= 0.01) return const SizedBox.shrink();
                      return Transform.translate(
                        offset: Offset(0, -scrollOffset),
                        child: Opacity(
                          opacity: opacity,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: _buildHeroInfoPanel(
                              context,
                              heroInfoWidth,
                              _buildHeroInfo(context, featuredMovie),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Scrollable content
                Positioned.fill(
                  child: CustomScrollView(
                    key: const PageStorageKey<String>('movies_scroll'),
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                        child: SizedBox(height: contentTop),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.only(
                          left: 0,
                          right: context.spacingLg(),
                          bottom: context.spacingXxl(),
                        ),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              final section = visibleSections[index];
                              return _buildSectionBlock(context, section);
                            },
                            childCount: visibleSections.length,
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(height: context.sectionSpacing()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSectionBlock(BuildContext context, _SectionConfig section) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader(context, section.title),
        SizedBox(height: context.spacingXs()),
        _buildMoviesRow(
          context,
          section.items,
          sectionKey: section.sectionKey,
          firstCardFocusNode: section.firstFocusNode,
          onItemFocus: section.onItemFocus,
          onNearEnd: section.onNearEnd,
        ),
        SizedBox(height: context.sectionSpacing()),
      ],
    );
  }

  Widget _buildHeroContent(
      Content featuredMovie, _HeroArt heroArt, double scrollProgress) {
    final heroImage = heroArt.url;
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final heroWidth = MediaQuery.sizeOf(context).width;
    final heroHeight = context.heroHeight();
    final heroCacheWidth = (heroWidth * dpr).round();
    final heroCacheHeight = (heroHeight * dpr).round();
    if (heroImage == null) {
      return _buildBannerPlaceholder();
    }
    if (heroArt.isBackdrop) {
      return Positioned.fill(
        child: CachedNetworkImage(
          imageUrl: heroImage,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          memCacheWidth: heroCacheWidth,
          memCacheHeight: heroCacheHeight,
          placeholder: (_, __) => _buildBannerPlaceholder(),
          errorWidget: (_, __, ___) => _buildBannerPlaceholder(),
        ),
      );
    }
    return Positioned.fill(
      child: Stack(
        fit: StackFit.expand,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
            child: CachedNetworkImage(
              imageUrl: heroImage,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              memCacheWidth: heroCacheWidth,
              memCacheHeight: heroCacheHeight,
              placeholder: (_, __) => _buildBannerPlaceholder(),
              errorWidget: (_, __, ___) => _buildBannerPlaceholder(),
            ),
          ),
          Container(
            color: Colors.black.withValues(alpha: 0.25),
          ),
          Center(
            child: CachedNetworkImage(
              imageUrl: heroImage,
              fit: BoxFit.contain,
              width: double.infinity,
              height: double.infinity,
              memCacheWidth: heroCacheWidth,
              memCacheHeight: heroCacheHeight,
              placeholder: (_, __) => _buildBannerPlaceholder(),
              errorWidget: (_, __, ___) => _buildBannerPlaceholder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroInfo(BuildContext context, Content featuredMovie) {
    return HeroInfoBox(
      title: featuredMovie.displayTitle,
      channelLogoUrl: featuredMovie.logoUrl?.isNotEmpty == true
          ? featuredMovie.logoUrl
          : null,
      description: featuredMovie.description,
      metadata: [
        if (featuredMovie.rating != null)
          BrandBadge(
            text: '★ ${featuredMovie.rating!.toStringAsFixed(1)}',
            backgroundColor: Colors.amber.withValues(alpha: 0.2),
            textColor: Colors.amber,
          ),
        if (featuredMovie.year != null)
          Text('${featuredMovie.year}',
              style: AppTypography.smallText(context)),
        const BrandBadge.hd(),
        if (featuredMovie.genres != null && featuredMovie.genres!.isNotEmpty)
          ...featuredMovie.genres!.take(2).map((g) => BrandBadge(
                text: g.toUpperCase(),
                backgroundColor: Colors.white10,
                textColor: Colors.white70,
              )),
      ],
      onWatchPressed: () {
        final encodedId = Uri.encodeComponent(featuredMovie.id);
        context.push('/content/$encodedId', extra: featuredMovie);
      },
      primaryButtonFocusNode: _playFocus,
      nextFocusOnRight: _firstRowFocus,
      autofocusWatchButton: true,
    );
  }

  Widget _buildHeroInfoPanel(
    BuildContext context,
    double width,
    Widget child,
  ) {
    final borderRadius = BorderRadius.circular(AppSpacing.radiusXl);
    return SizedBox(
      width: width,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: AppTheme.darkBackground.withAlpha((0.65 * 255).round()),
              border: Border.all(
                color: Colors.white.withAlpha((0.1 * 255).round()),
                width: 1,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }

  Widget _buildHeroInfoSkeleton(
    BuildContext context,
    double width,
    Size screenSize,
  ) {
    return SizedBox(
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSpacing.radiusXl),
        child: Container(
          color: AppTheme.darkBackground.withAlpha((0.55 * 255).round()),
          padding: EdgeInsets.all(context.spacingSm()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 28,
                width: screenSize.width * 0.24,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.15 * 255).round()),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(height: context.spacingSm()),
              Container(
                height: 42,
                width: screenSize.width * 0.28,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha((0.1 * 255).round()),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(height: context.spacingSm()),
              Row(
                children: [
                  Container(
                    width: 36,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha((0.15 * 255).round()),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  SizedBox(width: context.spacingXs()),
                  Container(
                    width: 28,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha((0.1 * 255).round()),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
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
        color: AppTheme.darkBackground,
      ),
    );
  }

  Widget _buildSkeletonLoader() {
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = context.heroHeight();
    final contentInset = context.spacingSm() + AppSpacing.sidebarCollapsedWidth;
    final heroInfoWidth = min(
      screenSize.width * AppSpacing.heroInfoWidth,
      screenSize.width >= 1920 ? 480.0 : 420.0,
    );
    const cardFocusScale = 1.02;
    final cardWidth = context.cardWidth();
    final cardHeight = context.cardHeight();
    final rowHeight = context.rowHeight() + (cardHeight * (cardFocusScale - 1));
    final inset = context.spacingSm() + AppSpacing.sidebarCollapsedWidth;
    final available = screenSize.width - inset - context.spacingLg();
    final perRow = (available / (cardWidth + context.cardGap())).floor();
    final skeletonItemCount = (perRow + _rowVisibleBuffer).clamp(6, 12);

    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.darkBackground,
      ),
      child: Shimmer(
        child: Stack(
          children: [
            // Hero skeleton
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: heroHeight,
              child: Container(
                color: AppTheme.cardBackground,
              ),
            ),
            // Featured info skeleton
            Positioned(
              top: 0,
              left: contentInset,
              right: context.spacingLg(),
              height: heroHeight,
              child: Align(
                alignment: Alignment.centerLeft,
                child:
                    _buildHeroInfoSkeleton(context, heroInfoWidth, screenSize),
              ),
            ),
            // Content skeleton
            Positioned(
              top: heroHeight,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: AppTheme.darkBackground,
                padding: EdgeInsets.only(
                  left: contentInset,
                  right: context.spacingXxl(),
                  top: context.spacingXxl(),
                  bottom: context.spacingXxl(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: context.sectionSpacing()),
                    ...List.generate(
                        3,
                        (rowIndex) => Padding(
                              padding: EdgeInsets.only(
                                  bottom: context.sectionSpacing()),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 180.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white
                                          .withAlpha((0.15 * 255).round()),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    height: rowHeight,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: skeletonItemCount,
                                      itemBuilder: (context, cardIndex) =>
                                          Container(
                                        width: cardWidth,
                                        height: cardHeight,
                                        decoration: BoxDecoration(
                                          color: AppTheme.cardBackground,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      separatorBuilder: (context, index) =>
                                          SizedBox(width: context.cardGap()),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  ],
                ),
              ),
            ),
          ],
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
            final bestBackdrop = await TMDBService.getBestBackdrop(
              m.title,
              year: m.year,
            );
            if (details != null || bestBackdrop != null) {
              final patched = m.copyWith(
                backdropUrl:
                    bestBackdrop ?? details?['backdrop'] ?? m.backdropUrl,
                imageUrl: details?['poster'] ?? m.imageUrl,
                rating: (details?['rating'] as double?) ?? m.rating,
                description: details?['overview'] ?? m.description,
                genres: (details?['genres'] as List<String>?) ?? m.genres,
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
