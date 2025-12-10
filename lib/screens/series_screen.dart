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
    });
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
      decoration: BoxDecoration(
        color: const Color(0xFF050710),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.tv,
              size: context.tvIconSize(32),
              color: Colors.white.withAlpha((0.2 * 255).round()),
            ),
            SizedBox(height: context.tvSpacing(8)),
            Padding(
              padding: EdgeInsets.all(context.tvSpacing(8)),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white.withAlpha((0.5 * 255).round()),
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
    // Group series by genre (prefer TMDB genres, fallback to M3U genres)
    final genreMap = <String, List<Content>>{};
    for (final show in series) {
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
                          padding: EdgeInsets.symmetric(
                            horizontal: context.tvSpacing(24),
                            vertical: context.tvSpacing(12),
                          ),
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

  Widget _buildFullScreenHero(
    BuildContext context,
    Content featuredSeries,
    List<Content> allSeries,
    List<Content> recentSeries,
  ) {
    final heroImage = featuredSeries.backdropUrl ?? featuredSeries.imageUrl;
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.height;
    final sidebarWidth = AppSizes.sidebarWidth;

    return Focus(
      canRequestFocus: false,
      skipTraversal: true,
      onKeyEvent: _handleDirectionalKeyEvent,
      child: AnimatedBuilder(
        animation: _scrollController,
        builder: (context, child) {
          final scrollOffset = _scrollController.hasClients ? _scrollController.offset : 0.0;
          final scrollProgress = (scrollOffset / heroHeight).clamp(0.0, 1.0);
          
          final heroWidth = screenSize.width - (scrollProgress * (screenSize.width * 0.4));
          final heroLeft = scrollProgress * (screenSize.width * 0.6);
          final heroTop = scrollProgress * (-heroHeight * 0.3);
          final heroHeightAnimated = heroHeight - (scrollProgress * heroHeight * 0.7);
          
          return Container(
            decoration: const BoxDecoration(
              color: AppTheme.darkBackground,
            ),
            child: Stack(
              children: [
                // Scrollable content
                Positioned.fill(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: heroHeight),
                        Padding(
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
                // Animated hero image
                Positioned(
                  top: heroTop,
                  left: heroLeft,
                  width: heroWidth,
                  height: heroHeightAnimated,
                  child: Focus(
                    focusNode: _heroFocus,
                    onKeyEvent: (node, event) {
                      if (event is KeyDownEvent &&
                          (event.logicalKey == LogicalKeyboardKey.select ||
                           event.logicalKey == LogicalKeyboardKey.enter)) {
                        final encodedId = Uri.encodeComponent(featuredSeries.id);
                        context.push('/content/$encodedId', extra: featuredSeries);
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: GestureDetector(
                      onTap: () {
                        final encodedId = Uri.encodeComponent(featuredSeries.id);
                        context.push('/content/$encodedId', extra: featuredSeries);
                      },
                      child: _buildHeroContent(featuredSeries, heroImage, scrollProgress),
                    ),
                  ),
                ),
                // Left gradient overlay
                Positioned(
                  top: 0,
                  left: 0,
                  width: screenSize.width * (0.6 * scrollProgress),
                  height: heroHeightAnimated,
                  child: IgnorePointer(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            AppTheme.darkBackground,
                            AppTheme.darkBackground.withOpacity(0.9),
                            AppTheme.darkBackground.withOpacity(0.7),
                            AppTheme.darkBackground.withOpacity(0.3),
                            Colors.transparent,
                          ],
                          stops: const [0.0, 0.3, 0.6, 0.8, 1.0],
                        ),
                      ),
                    ),
                  ),
                ),
                // Bottom gradient overlay
                Positioned(
                  left: heroLeft,
                  right: 0,
                  top: heroTop + heroHeightAnimated - (heroHeightAnimated * 0.3),
                  height: heroHeightAnimated * 0.3,
                  child: IgnorePointer(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            AppTheme.darkBackground,
                            AppTheme.darkBackground.withOpacity(0.8),
                            AppTheme.darkBackground.withOpacity(0.4),
                            Colors.transparent,
                          ],
                          stops: const [0.0, 0.4, 0.7, 1.0],
                        ),
                      ),
                    ),
                  ),
                ),
                // Top navigation fade
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
                // Featured info
                Positioned(
                  bottom: heroHeight * 0.35,
                  left: sidebarWidth + AppSizes.lg,
                  width: screenSize.width * 0.4,
                  child: Opacity(
                    opacity: 1.0 - scrollProgress,
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
    if (scrollProgress > 0.1) {
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
    return Focus(
      focusNode: _watchFocus,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent &&
            (event.logicalKey == LogicalKeyboardKey.select ||
             event.logicalKey == LogicalKeyboardKey.enter)) {
          final encodedId = Uri.encodeComponent(featuredSeries.id);
          context.push('/content/$encodedId', extra: featuredSeries);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: () {
          final encodedId = Uri.encodeComponent(featuredSeries.id);
          context.push('/content/$encodedId', extra: featuredSeries);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              featuredSeries.title,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppTheme.textPrimary,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: AppSizes.sm),
            Text(
              featuredSeries.description ?? '',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppTheme.textSecondary,
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
          ],
        ),
      ),
    );
  }

  Widget _buildOldHeroBannerOverlay(BuildContext context, Content featuredSeries) {
    final heroImage = featuredSeries.backdropUrl ?? featuredSeries.imageUrl;
    final provider = Provider.of<ContentProvider>(context, listen: false);
    final displaySeries = _curatedSeries.isNotEmpty ? _curatedSeries : provider.series;
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.height * 0.65;
    
    return Focus(
      focusNode: _watchFocus,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent &&
            (event.logicalKey == LogicalKeyboardKey.select ||
             event.logicalKey == LogicalKeyboardKey.enter)) {
          final encodedId = Uri.encodeComponent(featuredSeries.id);
          context.push('/content/$encodedId', extra: featuredSeries);
          return KeyEventResult.handled;
        }
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (displaySeries.isEmpty) return KeyEventResult.ignored;
        
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          _carouselTimer?.cancel();
          setState(() {
            _featuredIndex = (_featuredIndex - 1 + displaySeries.length) % displaySeries.length;
          });
          _startCarousel();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          _carouselTimer?.cancel();
          setState(() {
            _featuredIndex = (_featuredIndex + 1) % displaySeries.length;
          });
          _startCarousel();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: () {
          final encodedId = Uri.encodeComponent(featuredSeries.id);
          context.push('/content/$encodedId', extra: featuredSeries);
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
                      debugPrint('Series hero banner failed: $url - $error');
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
                      height: context.tvTextSize(24) * 1.3 * 2,
                      child: Text(
                        featuredSeries.title,
                        style: TextStyle(
                          color: AppTheme.textPrimary,
                          fontSize: context.tvTextSize(24),
                          fontWeight: FontWeight.w700,
                          height: 1.3,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: context.tvSpacing(8)),
                    SizedBox(
                      height: context.tvTextSize(14) * 1.3 * 3,
                      child: Text(
                        featuredSeries.description ?? '',
                        style: TextStyle(
                          color: AppTheme.textSecondary,
                          fontSize: context.tvTextSize(14),
                          height: 1.3,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: context.tvSpacing(8)),
                    SizedBox(
                      height: context.tvTextSize(14) * 1.4,
                      child: featuredSeries.rating != null
                          ? Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: context.tvIconSize(16)),
                                SizedBox(width: context.tvSpacing(4)),
                                Text(
                                  featuredSeries.ratingDisplay,
                                  style: TextStyle(
                                    color: AppTheme.textSecondary,
                                    fontSize: context.tvTextSize(14),
                                  ),
                                ),
                                if (featuredSeries.year != null) ...[
                                  SizedBox(width: context.tvSpacing(12)),
                                  Text(
                                    featuredSeries.year.toString(),
                                    style: TextStyle(
                                      color: AppTheme.textSecondary,
                                      fontSize: context.tvTextSize(14),
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
        color: Color(0xFF050710),
      ),
    );
  }
}
