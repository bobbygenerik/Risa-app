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
import 'package:iptv_player/widgets/tv_focusable.dart';

class SeriesScreen extends StatefulWidget {
  const SeriesScreen({super.key});

  @override
  State<SeriesScreen> createState() => _SeriesScreenState();
}

class _SeriesScreenState extends State<SeriesScreen>
  with ContentFocusRegistrant<SeriesScreen> {
  Timer? _carouselTimer;
  int _featuredIndex = 0;
  final FocusNode _watchFocus = FocusNode();
  List<Content> _curatedSeries = [];

  @override
  void dispose() {
    _carouselTimer?.cancel();
    _watchFocus.dispose();
    super.dispose();
  }

  @override
  bool handleContentFocusRequest() {
    if (!mounted) return false;
    _watchFocus.requestFocus();
    return true;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startCarousel();
      _watchFocus.addListener(() {
        if (_watchFocus.hasFocus) {
          _carouselTimer?.cancel();
        } else {
          _startCarousel();
        }
      });
      _prepareCuratedSeriesList();
      final focusNode = _watchFocus;
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) focusNode.requestFocus();
      });
    });
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
          _featuredIndex = (_featuredIndex + 1) % series.length;
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
              );
              curated.add(patched);
            } else if (s.backdropUrl != null || s.imageUrl != null) {
              curated.add(s);
            }
          } catch (_) {
            // ignore per-item failures
          }
          if (curated.length >= 12) break;
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

        final stack = Stack(
          children: [
            // Full-height hero banner background
            Positioned.fill(
              child: _buildHeroBannerBackground(
                (_curatedSeries.isNotEmpty
                    ? _curatedSeries
                    : series)[_featuredIndex >=
                        (_curatedSeries.isNotEmpty
                            ? _curatedSeries.length
                            : series.length)
                    ? 0
                    : _featuredIndex],
              ),
            ),
            // Content on top
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hero banner with content overlay
                  _buildHeroBannerOverlay(
                    context,
                    (_curatedSeries.isNotEmpty
                        ? _curatedSeries
                        : series)[_featuredIndex >=
                            (_curatedSeries.isNotEmpty
                                ? _curatedSeries.length
                                : series.length)
                        ? 0
                        : _featuredIndex],
                  ),
                  const SizedBox(height: AppSizes.lg),

                  Container(
                    color: const Color(0xFF050710),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.lg),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Recently Added Series
                          if (recentSeries.isNotEmpty) ...[
                            _buildSectionHeader(
                              context,
                              'Recently Added Series',
                            ),
                            const SizedBox(height: AppSizes.md),
                            _buildSeriesRow(context, recentSeries),
                            const SizedBox(height: AppSizes.xl),
                          ],

                          // All Series by Genre
                          ..._buildGenreSections(context, series),
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
                Icons.tv,
                size: 80,
                color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
              ),
              const SizedBox(height: AppSizes.lg),
              Text(
                'No Series Available',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.sm),
              Text(
                'Load a playlist with series content from Settings',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.xl),
              GoToSettingsButton(
                onPressed: () {
                  Future.delayed(const Duration(milliseconds: 100), () {
                    if (context.mounted) context.go('/settings');
                  });
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

    if (seriesMap.isEmpty) return const SizedBox.shrink();

    return SizedBox(
      height: 220,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: FocusTraversalGroup(
          policy: WidgetOrderTraversalPolicy(),
          child: Row(
            children: seriesMap.entries
                .map((entry) => _buildSeriesCard(
                      context,
                      entry.key,
                      entry.value,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildSeriesCard(
    BuildContext context,
    String title,
    List<Content> episodes,
  ) {
    final firstEpisode = episodes.first;

    return TVFocusable(
      focusMargin: const EdgeInsets.only(right: AppSizes.md),
      borderRadius: BorderRadius.circular(AppSizes.radiusMd),
      onPressed: () {
        final encodedId = Uri.encodeComponent(firstEpisode.id);
        context.push('/content/$encodedId', extra: firstEpisode);
      },
      child: SizedBox(
        width: 140,
        height: 220,
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
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryBlue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          '${episodes.length} EP',
                          style: const TextStyle(
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
            const SizedBox(height: AppSizes.xs),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
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
        const SizedBox(height: AppSizes.md),
        _buildSeriesRow(context, entry.value),
        const SizedBox(height: AppSizes.xl),
      ]);
    }

    return sections;
  }

  Widget _buildHeroBannerBackground(Content featuredSeries) {
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

  Widget _buildHeroBannerOverlay(BuildContext context, Content featuredSeries) {
    final heroImage = featuredSeries.backdropUrl ?? featuredSeries.imageUrl;
    return GestureDetector(
      onTap: () {
        final encodedId = Uri.encodeComponent(featuredSeries.id);
        context.push('/content/$encodedId', extra: featuredSeries);
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
                padding: const EdgeInsets.all(AppSizes.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      featuredSeries.title,
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
                          focusNode: _watchFocus,
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
                                      featuredSeries.id,
                                    );
                                    context.push(
                                      '/content/$encodedId',
                                      extra: featuredSeries,
                                    );
                                  },
                                  icon: const Icon(Icons.play_arrow),
                                  label: const Text('Watch'),
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
                        if (featuredSeries.rating != null) ...[
                          const SizedBox(width: 16),
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            featuredSeries.ratingDisplay,
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
}
