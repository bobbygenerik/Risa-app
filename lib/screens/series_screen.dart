import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/go_to_settings_button.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/widgets/vod_card_image.dart';

class SeriesScreen extends StatefulWidget {
  const SeriesScreen({super.key});

  @override
  State<SeriesScreen> createState() => _SeriesScreenState();
}

class _SeriesScreenState extends State<SeriesScreen>
  with ContentFocusRegistrant<SeriesScreen> {
  Timer? _carouselTimer;
  int _featuredIndex = 0;
  final ScrollController _scrollController = ScrollController();
  final FocusNode _watchFocus = FocusNode();
  final FocusNode _heroFocus = FocusNode();
  final FocusNode _settingsFocus = FocusNode();
  List<Content> _curatedSeries = [];
  final Map<String, String?> _tmdbArtCache = {};
  
  // Pagination for genre sections
  final Map<String, int> _genreDisplayCounts = {};
  static const int _itemsPerPage = 12;

  @override
  void dispose() {
    _carouselTimer?.cancel();
    _scrollController.dispose();
    _watchFocus.removeListener(_onWatchFocusChange);
    _watchFocus.dispose();
    _heroFocus.dispose();
    _settingsFocus.dispose();
    super.dispose();
  }

  void _onWatchFocusChange() {
    if (_watchFocus.hasFocus) {
      _carouselTimer?.cancel();
    } else {
      _startCarousel();
    }
  }

  @override
  bool handleContentFocusRequest() {
    if (!mounted) return false;
    final contentProvider = Provider.of<ContentProvider>(context, listen: false);
    if (contentProvider.series.isEmpty) {
      _settingsFocus.requestFocus();
    } else {
      _heroFocus.requestFocus();
    }
    return true;
  }

  @override
  void initState() {
    super.initState();
    _watchFocus.addListener(_onWatchFocusChange);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      
      // Prioritize newly added content with artwork for hero banner
      final provider = Provider.of<ContentProvider>(context, listen: false);
      if (provider.series.isNotEmpty) {
        _featuredIndex = _findNewestContentWithArtwork(provider.series);
      }
      
      _startCarousel();
      _prepareCuratedSeriesList();
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
    final series = provider.series.take(30).toList();
    
    if (series.isEmpty) return;
    
    final titles = series.map((s) => s.title).toList();
    
    try {
      final results = await TMDBService.getBestBackdropBatch(titles);
      if (mounted) {
        setState(() {
          _tmdbArtCache.addAll(results);
        });
      }
    } catch (e) {
      debugPrint('SeriesScreen: Error batch-fetching TMDB art: $e');
    }
  }

  void _startCarousel() {
    _carouselTimer?.cancel();
    _carouselTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      _nextHero();
    });
  }

  void _nextHero() {
    final provider = Provider.of<ContentProvider>(context, listen: false);
    final series = _curatedSeries.isNotEmpty
        ? _curatedSeries
        : provider.series;
    if (series.isEmpty) return;
    if (mounted) {
      setState(() {
        // Find next item with artwork
        int attempts = 0;
        int nextIndex = (_featuredIndex + 1) % series.length;
        while (attempts < series.length) {
          final show = series[nextIndex];
          if (show.backdropUrl != null || show.imageUrl != null) {
            _featuredIndex = nextIndex;
            break;
          }
          nextIndex = (nextIndex + 1) % series.length;
          attempts++;
        }
        // If no items with artwork found, just use next index
        if (attempts >= series.length) {
          _featuredIndex = (_featuredIndex + 1) % series.length;
        }
      });
    }
  }

  void _previousHero() {
    final provider = Provider.of<ContentProvider>(context, listen: false);
    final series = _curatedSeries.isNotEmpty
        ? _curatedSeries
        : provider.series;
    if (series.isEmpty) return;
    if (mounted) {
      setState(() {
        // Find previous item with artwork
        int attempts = 0;
        int prevIndex = (_featuredIndex - 1 + series.length) % series.length;
        while (attempts < series.length) {
          final show = series[prevIndex];
          if (show.backdropUrl != null || show.imageUrl != null) {
            _featuredIndex = prevIndex;
            break;
          }
          prevIndex = (prevIndex - 1 + series.length) % series.length;
          attempts++;
        }
        // If no items with artwork found, just use previous index
        if (attempts >= series.length) {
          _featuredIndex = (_featuredIndex - 1 + series.length) % series.length;
        }
      });
    }
  }

  Future<void> _prepareCuratedSeriesList() async {
    try {
      final provider = Provider.of<ContentProvider>(context, listen: false);
      final series = provider.series;
      if (series.isEmpty) return;

      final candidates = series.take(20).toList();
      final List<Content> curated = [];
      final List<Content> enhancedSeries = [];

      if (ServiceValidator.isTmdbAvailable) {
        for (final s in candidates) {
          try {
            final details = await TMDBService.getTVDetails(
              s.title,
              year: s.year,
            );
            if (details != null) {
              final patched = s.copyWith(
                backdropUrl: details['backdrop'] ?? s.backdropUrl,
                imageUrl: details['poster'] ?? s.imageUrl,
                rating: (details['rating'] as double?) ?? s.rating,
                description: details['overview'] ?? s.description,
                genres: (details['genres'] as List<String>?) ?? s.genres,
              );
              enhancedSeries.add(patched);
              curated.add(patched);
            } else if (s.backdropUrl != null || s.imageUrl != null) {
              curated.add(s);
            }
          } catch (_) {
            // ignore per-item failures
          }
          if (curated.length >= 12) break;
        }
        
        // Update the provider with enhanced metadata (including genres)
        if (enhancedSeries.isNotEmpty) {
          final allSeries = series.map((s) {
            final enhanced = enhancedSeries.firstWhere(
              (e) => e.id == s.id,
              orElse: () => s,
            );
            return enhanced;
          }).toList();
          provider.loadSeries(allSeries);
        }
      } else {
        curated.addAll(
          series.where((s) => s.backdropUrl != null || s.imageUrl != null),
        );
      }

      if (mounted && curated.isNotEmpty) {
        // prefer backdrops, then posters, then newer items
        curated.sort((a, b) {
          final aBackdrop = a.backdropUrl != null;
          final bBackdrop = b.backdropUrl != null;
          if (aBackdrop != bBackdrop) return aBackdrop ? -1 : 1;

          final aPoster = a.imageUrl != null;
          final bPoster = b.imageUrl != null;
          if (aPoster != bPoster) return aPoster ? -1 : 1;

          final aAdded = a.addedDate?.millisecondsSinceEpoch ?? 0;
          final bAdded = b.addedDate?.millisecondsSinceEpoch ?? 0;
          if (aAdded != bAdded) return bAdded.compareTo(aAdded);

          final aYear = a.year ?? 0;
          final bYear = b.year ?? 0;
          if (aYear != bYear) return bYear.compareTo(aYear);

          final aRating = a.rating ?? 0.0;
          final bRating = b.rating ?? 0.0;
          return bRating.compareTo(aRating);
        });

        final limited = curated.length > 12 ? curated.sublist(0, 12) : curated;
        setState(() {
          _curatedSeries = limited;
          // Reset featured index to random position in curated list for variety
          if (limited.isNotEmpty) {
            _featuredIndex = Random().nextInt(limited.length);
          }
        });
      }
    } catch (e) {
      // ignore
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ContentProvider>(
      builder: (context, contentProvider, child) {
        final series = contentProvider.series;
        final recentSeries = contentProvider.recentlyAddedSeries;

        if (series.isEmpty && contentProvider.isLoading) {
          return _buildSkeletonLoader();
        }

        if (series.isEmpty) {
          return _wrapWithDirectionalFocus(_buildEmptyState(context));
        }

        final displaySeries = _curatedSeries.isNotEmpty ? _curatedSeries : series;
        if (_featuredIndex >= displaySeries.length) _featuredIndex = 0;
        final featured = displaySeries[_featuredIndex];

        return _buildFullScreenHero(
          context,
          featured,
          series,
          recentSeries,
        );
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050710),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF050710),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.tv,
                size: context.tvIconSize(48),
                color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
              ),
              SizedBox(height: context.tvSpacing(AppSizes.lg)),
              Text(
                'No Series Available',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: context.tvSpacing(AppSizes.sm)),
              Text(
                'Load a playlist with series content from Settings',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: context.tvSpacing(AppSizes.xl)),
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

  Widget _buildSeriesRow(BuildContext context, List<Content> series) {
    final seriesMap = <String, List<Content>>{};
    for (final episode in series) {
      seriesMap.putIfAbsent(episode.title, () => []).add(episode);
    }

    if (seriesMap.isEmpty) return const SizedBox.shrink();
    
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth / 6.5; // Portrait cards
    final rowHeight = cardWidth * 1.8; // Portrait aspect ratio + title space

    return SizedBox(
      height: rowHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemCount: seriesMap.length,
        itemExtent: cardWidth + AppSizes.lg,
        itemBuilder: (context, index) {
          final entry = seriesMap.entries.elementAt(index);
          return _buildSeriesCard(context, entry.key, entry.value);
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
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth / 6.5; // Portrait cards
    final cardHeight = cardWidth * 1.5; // Portrait aspect ratio

    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Focus(
        canRequestFocus: true,
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.space) {
              final encodedId = Uri.encodeComponent(firstEpisode.id);
              context.push('/content/$encodedId', extra: firstEpisode);
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
                final encodedId = Uri.encodeComponent(firstEpisode.id);
                context.push('/content/$encodedId', extra: firstEpisode);
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
                                  content: firstEpisode,
                                  fit: BoxFit.cover,
                                  placeholder: _buildPlaceholder(title),
                                ),
                              ),
                              Positioned(
                                top: 8,
                                right: 8,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: context.tvSpacing(8),
                                    vertical: context.tvSpacing(4),
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppTheme.primaryBlue,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    '${episodes.length} EP',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: context.tvTextSize(10),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
                    SizedBox(height: context.tvSpacing(8)),
                    Text(
                      title,
                      style: TextStyle(
                        color: AppTheme.textPrimary,
                        fontSize: context.tvTextSize(14),
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (firstEpisode.year != null || firstEpisode.rating != null)
                      Text(
                        '${firstEpisode.year ?? ''} ${firstEpisode.rating != null ? '★${firstEpisode.ratingDisplay}' : ''}',
                        style: TextStyle(
                          color: AppTheme.textSecondary,
                          fontSize: context.tvTextSize(11),
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
            Icon(
              Icons.tv,
              size: context.tvIconSize(32),
              color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
            ),
            SizedBox(height: context.tvSpacing(8)),
            Padding(
              padding: EdgeInsets.all(context.tvSpacing(8)),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white.withAlpha((0.7 * 255).round()),
                  fontSize: context.tvTextSize(11),
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

  List<Widget> _buildGenreSections(BuildContext context, List<Content> series) {
    // Filter out series without proper info
    final validSeries = series.where((show) {
      // Skip shows with generic/placeholder titles
      final title = show.title.toLowerCase();
      if (title == 'series' || 
          title == 'show' ||
          title == 'series to be announced' ||
          title == 'show to be announced' ||
          title.startsWith('series ') ||
          title.startsWith('show ') ||
          title.contains('to be announced')) {
        return false;
      }
      return true;
    }).toList();
    
    // Group series by genre (prefer TMDB genres, fallback to M3U genres)
    final genreMap = <String, List<Content>>{};
    for (final show in validSeries) {
      // Use allGenres getter which prefers tmdbGenres over genres
      final showGenres = show.allGenres;
      if (showGenres.isNotEmpty) {
        for (final genre in showGenres) {
          genreMap.putIfAbsent(genre, () => []).add(show);
        }
      } else {
        genreMap.putIfAbsent('Other', () => []).add(show);
      }
    }

    // Build section for each genre with pagination
    final sections = <Widget>[];
    for (final entry in genreMap.entries) {
      final genre = entry.key;
      final allSeries = entry.value;
      final displayCount = _genreDisplayCounts[genre] ?? _itemsPerPage;
      final displaySeries = allSeries.take(displayCount).toList();
      
      sections.addAll([
        _buildSectionHeader(context, genre),
        const SizedBox(height: 8),
        _buildSeriesRow(context, displaySeries),
        if (allSeries.length > displayCount)
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: context.tvSpacing(8)),
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
                      child: BrandSecondaryButton(
                        label: 'Load More ($genre)',
                        onPressed: () {
                          debugPrint('Load More pressed for genre: $genre');
                          setState(() {
                            _genreDisplayCounts[genre] = displayCount + _itemsPerPage;
                          });
                        },
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

  Widget _buildFullScreenHero(
    BuildContext context,
    Content featuredSeries,
    List<Content> allSeries,
    List<Content> recentSeries,
  ) {
    final heroImage = featuredSeries.backdropUrl ?? featuredSeries.imageUrl;
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.height * 0.75;
    final sidebarWidth = AppSizes.sidebarCollapsedWidth + AppSizes.lg;

    return Focus(
      canRequestFocus: false,
      skipTraversal: true,
      onKeyEvent: _handleDirectionalKeyEvent,
      child: AnimatedBuilder(
        animation: _scrollController,
        builder: (context, child) {
          final scrollOffset = _scrollController.hasClients ? _scrollController.offset : 0.0;
          final fadeProgress = (scrollOffset / (heroHeight * 0.5)).clamp(0.0, 1.0);
          
          return Container(
            decoration: const BoxDecoration(
              color: AppTheme.darkBackground,
            ),
            child: Stack(
              children: [
                // Fixed hero background
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: heroHeight,
                  child: Opacity(
                    opacity: 1.0 - fadeProgress,
                    child: Focus(
                      focusNode: _heroFocus,
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent) {
                          if (event.logicalKey == LogicalKeyboardKey.select ||
                              event.logicalKey == LogicalKeyboardKey.enter) {
                            final encodedId = Uri.encodeComponent(featuredSeries.id);
                            context.push('/content/$encodedId', extra: featuredSeries);
                            return KeyEventResult.handled;
                          }
                          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                            _previousHero();
                            return KeyEventResult.handled;
                          }
                          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                            _nextHero();
                            return KeyEventResult.handled;
                          }
                        }
                        return KeyEventResult.ignored;
                      },
                      child: GestureDetector(
                        onTap: () {
                          final encodedId = Uri.encodeComponent(featuredSeries.id);
                          context.push('/content/$encodedId', extra: featuredSeries);
                        },
                        child: Stack(
                          children: [
                            _buildHeroContent(featuredSeries, heroImage, 0.0),
                            // Gradient fade at bottom
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              height: 120,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      AppTheme.darkBackground.withAlpha((0.8 * 255).round()),
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
                // Scrollable content
                Positioned.fill(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: heroHeight),
                        Container(
                          color: AppTheme.darkBackground,
                          padding: EdgeInsets.only(
                            left: sidebarWidth + AppSizes.lg,
                            right: AppSizes.xxl,
                            bottom: AppSizes.xxl,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: AppSizes.xxl),
                              if (recentSeries.isNotEmpty) ...[
                                _buildSectionHeader(context, 'Recently Added Series'),
                                SizedBox(height: AppSizes.sm),
                                _buildSeriesRow(context, recentSeries),
                                SizedBox(height: AppSizes.lg),
                              ],
                              ..._buildGenreSections(context, allSeries),
                              SizedBox(height: AppSizes.xxl),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Featured info overlay
                Positioned(
                  bottom: heroHeight * 0.45,
                  left: sidebarWidth + AppSizes.lg,
                  width: screenSize.width * 0.4,
                  child: Opacity(
                    opacity: 1.0 - fadeProgress,
                    child: _buildFeaturedInfo(context, featuredSeries),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeroContent(Content featuredSeries, String? heroImage, double scrollProgress) {
    return heroImage != null
        ? CachedNetworkImage(
            imageUrl: heroImage,
            fit: BoxFit.cover,
            alignment: Alignment.center,
            placeholder: (_, __) => _buildBannerPlaceholder(),
            errorWidget: (_, __, ___) => _buildBannerPlaceholder(),
          )
        : _buildBannerPlaceholder();
  }

  Widget _buildFeaturedInfo(BuildContext context, Content featuredSeries) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(12),
      ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
            Text(
              featuredSeries.title,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppTheme.textPrimary,
                shadows: [
                  Shadow(
                    offset: const Offset(1, 1),
                    blurRadius: 3,
                    color: Colors.black.withValues(alpha: 0.8),
                  ),
                ],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: AppSizes.sm),
            Text(
              featuredSeries.description ?? '',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppTheme.textSecondary,
                shadows: [
                  Shadow(
                    offset: const Offset(1, 1),
                    blurRadius: 2,
                    color: Colors.black.withValues(alpha: 0.7),
                  ),
                ],
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: AppSizes.sm),
            if (featuredSeries.rating != null || featuredSeries.year != null)
              Row(
                children: [
                  if (featuredSeries.rating != null) ...[
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    SizedBox(width: AppSizes.xs),
                    Text(
                      featuredSeries.ratingDisplay,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  ],
                  if (featuredSeries.year != null) ...[
                    if (featuredSeries.rating != null) SizedBox(width: AppSizes.md),
                    Text(
                      featuredSeries.year.toString(),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  ],
                ],
              ),
            const SizedBox(height: 16),
            Row(
              children: [
                BrandPrimaryButton(
                  label: 'Watch',
                  icon: Icons.play_arrow,
                  onPressed: () {
                    final encodedId = Uri.encodeComponent(featuredSeries.id);
                    context.push('/content/$encodedId', extra: featuredSeries);
                  },
                ),
                const SizedBox(width: 12),
                BrandSecondaryButton(
                  label: 'More Info',
                  icon: Icons.info_outline,
                  onPressed: () {
                    final encodedId = Uri.encodeComponent(featuredSeries.id);
                    context.push('/content/$encodedId', extra: featuredSeries);
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildBannerPlaceholder() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF050710),
      ),
    );
  }

  Widget _buildSkeletonLoader() {
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.height * 0.75;
    final sidebarWidth = AppSizes.sidebarCollapsedWidth + AppSizes.lg;
    final cardWidth = screenSize.width / 6.5;
    final cardHeight = cardWidth * 1.5;
    final rowHeight = cardWidth * 1.8;

    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.darkBackground,
      ),
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
          // Featured info skeleton - exact position as real content
          Positioned(
            bottom: heroHeight * 0.35,
            left: sidebarWidth + AppSizes.lg,
            width: screenSize.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title skeleton - matches displaySmall height
                Container(
                  height: 40,
                  width: screenSize.width * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha((0.15 * 255).round()),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: AppSizes.sm),
                // Description skeleton - 3 lines
                Container(
                  height: 60,
                  width: screenSize.width * 0.35,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha((0.1 * 255).round()),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: AppSizes.sm),
                // Rating skeleton
                Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.amber.withAlpha((0.3 * 255).round()),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(width: AppSizes.xs),
                    Container(
                      width: 30,
                      height: 14,
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha((0.1 * 255).round()),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(width: AppSizes.md),
                    Container(
                      width: 40,
                      height: 14,
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
          // Scrollable content skeleton
          Positioned(
            top: heroHeight,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: AppTheme.darkBackground,
              padding: EdgeInsets.only(
                left: sidebarWidth + AppSizes.lg,
                right: AppSizes.xxl,
                top: AppSizes.xxl,
                bottom: AppSizes.xxl,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppSizes.xxl),
                  ...List.generate(3, (rowIndex) => Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Section header skeleton
                        Container(
                          height: 20,
                          width: [180, 140, 160][rowIndex % 3].toDouble(),
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha((0.15 * 255).round()),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Series cards row skeleton
                        SizedBox(
                          height: rowHeight,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            itemCount: 5,
                            itemExtent: cardWidth + AppSizes.lg,
                            itemBuilder: (context, cardIndex) => Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Series poster skeleton with episode badge
                                  Stack(
                                    children: [
                                      Container(
                                        width: cardWidth,
                                        height: cardHeight,
                                        decoration: BoxDecoration(
                                          color: AppTheme.cardBackground,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      ),
                                      // Episode count badge skeleton
                                      Positioned(
                                        top: 8,
                                        right: 8,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                          decoration: BoxDecoration(
                                            color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child: Container(
                                            width: 30,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.white.withAlpha((0.3 * 255).round()),
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  // Title skeleton
                                  Container(
                                    width: cardWidth,
                                    height: 14,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withAlpha((0.15 * 255).round()),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  // Year and rating skeleton
                                  Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 11,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withAlpha((0.1 * 255).round()),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          color: Colors.amber.withAlpha((0.3 * 255).round()),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Container(
                                        width: 20,
                                        height: 11,
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
    );
  }
}
