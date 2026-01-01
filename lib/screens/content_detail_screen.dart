import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/brand_badge.dart';
import 'package:iptv_player/widgets/cached_image.dart';
import 'package:iptv_player/widgets/hero_info_box.dart';
import 'package:iptv_player/widgets/vod_card_image.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

class ContentDetailScreen extends StatefulWidget {
  final Content content;

  const ContentDetailScreen({super.key, required this.content});

  @override
  State<ContentDetailScreen> createState() => _ContentDetailScreenState();
}

class _ContentDetailScreenState extends State<ContentDetailScreen> {
  bool _isDownloaded = false;
  final FocusNode _backButtonFocus = FocusNode();
  final FocusNode _playButtonFocus = FocusNode();
  final FocusNode _myListButtonFocus = FocusNode();
  final FocusNode _downloadButtonFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _playButtonFocus.requestFocus();
    });
  }

  @override
  void dispose() {
    _backButtonFocus.dispose();
    _playButtonFocus.dispose();
    _myListButtonFocus.dispose();
    _downloadButtonFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: Focus(
        onKeyEvent: (node, event) {
          return TVFocusHelper.handleBackButton(context, event);
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeroBanner(),
              _buildContentInfo(),
              _buildSeasonSelector(),
              _buildMoreLikeThis(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroBanner() {
    final heroImage = widget.content.backdropUrl;
    final contentInset = context.spacingXl();
    final metadata = _buildHeroMetadata(context);
    return Stack(
      children: [
        // Background image
        Container(
          height: context.heroHeight(),
          width: double.infinity,
          decoration: const BoxDecoration(color: AppTheme.cardBackground),
          child: heroImage != null
              ? Stack(
                  fit: StackFit.expand,
                  children: [
                    CachedImage(
                      imageUrl: heroImage,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorWidget: _buildHeroPlaceholder(),
                    ),
                    _buildHeroScrims(),
                  ],
                )
              : _buildHeroPlaceholder(),
        ),

        // Top navigation - transparent with safe area
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(context.spacingLg()),
              child: Row(
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Focus(
                      focusNode: _backButtonFocus,
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent &&
                            (event.logicalKey == LogicalKeyboardKey.enter ||
                                event.logicalKey == LogicalKeyboardKey.select)) {
                          Navigator.pop(context);
                          return KeyEventResult.handled;
                        }
                        return KeyEventResult.ignored;
                      },
                      child: Builder(
                        builder: (context) {
                          final isFocused = Focus.of(context).hasFocus;
                          return InkWell(
                            onTap: () => Navigator.pop(context),
                            borderRadius: BorderRadius.circular(999),
                            child: AnimatedContainer(
                              duration: AppDurations.fast,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: isFocused
                                    ? Colors.white.withAlpha((0.2 * 255).round())
                                    : Colors.black.withAlpha((0.3 * 255).round()),
                                shape: BoxShape.circle,
                                border: isFocused
                                    ? Border.all(color: Colors.white, width: 2)
                                    : null,
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: AppTheme.textPrimary,
                                size: context.tvIconSize(24),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        // Content info overlay
        Positioned(
          bottom: context.spacingXl(),
          left: contentInset,
          child: Padding(
            padding: EdgeInsets.zero,
            child: HeroInfoBox(
              title: widget.content.displayTitle,
              description: null,
              metadata: metadata,
              onWatchPressed: _handlePlayPressed,
              primaryButtonFocusNode: _playButtonFocus,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Consumer<ContentProvider>(
                    builder: (context, contentProvider, child) {
                      final isInMyList =
                          contentProvider.isInFavorites(widget.content.id);
                      return BrandSecondaryButton(
                        focusNode: _myListButtonFocus,
                        onPressed: () async {
                          await contentProvider.toggleFavorite(
                            widget.content.id,
                          );
                        },
                        icon: isInMyList ? Icons.check : Icons.add,
                        label: 'My List',
                        fontSize: 12,
                        minHeight: 22,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                      );
                    },
                  ),
                  SizedBox(width: context.spacingSm()),
                  BrandSecondaryButton(
                    focusNode: _downloadButtonFocus,
                    onPressed: () {
                      setState(() {
                        _isDownloaded = !_isDownloaded;
                      });
                    },
                    icon: _isDownloaded ? Icons.download_done : Icons.download,
                    label: _isDownloaded ? 'Downloaded' : 'Download',
                    fontSize: 12,
                    minHeight: 22,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildHeroMetadata(BuildContext context) {
    final widgets = <Widget>[];
    if (widget.content.rating != null) {
      widgets.add(
        BrandBadge(
          text: '★ ${widget.content.rating!.toStringAsFixed(1)}',
          backgroundColor: Colors.amber.withValues(alpha: 0.2),
          textColor: Colors.amber,
        ),
      );
    }
    if (widget.content.year != null) {
      widgets.add(Text('${widget.content.year}',
          style: AppTypography.smallText(context)));
    }
    widgets.add(const BrandBadge.hd());
    final genres = widget.content.allGenres;
    if (genres.isNotEmpty) {
      widgets.addAll(
        genres.take(2).map(
              (g) => BrandBadge(
                text: g.toUpperCase(),
                backgroundColor: Colors.white10,
                textColor: Colors.white70,
              ),
            ),
      );
    }
    return widgets;
  }

  Widget _buildHeroScrims() {
    return Stack(
      children: [
        // Main bottom-up gradient for readability and cinematic fade
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  AppTheme.darkBackground.withAlpha((0.4 * 255).round()),
                  AppTheme.darkBackground.withAlpha((0.9 * 255).round()),
                  AppTheme.darkBackground,
                ],
                stops: const [0.0, 0.4, 0.8, 1.0],
              ),
            ),
          ),
        ),
        // Subtle left-to-right scrim to anchor the text content
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black.withAlpha((0.5 * 255).round()),
                  Colors.transparent,
                ],
                stops: const [0.0, 0.6],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeroPlaceholder() {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.darkBackground,
      ),
      child: Center(
        child: Icon(
          Icons.movie,
          size: 120,
          color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
        ),
      ),
    );
  }

  Widget _buildContentInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.spacingXl(),
        vertical: context.spacingLg(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Description
          Text(
            _resolveDescription(),
            style: AppTypography.bodySecondary(context).copyWith(height: 1.6),
          ),

          context.spacingLgBox,

          // Additional info
          _buildInfoRow('Cast', _resolveCast()),
          context.spacingSmBox,
          _buildInfoRow('Director', _resolveDirector()),
          context.spacingSmBox,
          _buildInfoRow('Genres', _resolveGenres()),

          context.spacingMdBox,

          // Tags
          _buildGenreTags(),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: context.spacingXxl(),
          child: Text(
            label,
            style: AppTypography.smallText(context)
                .copyWith(color: AppTheme.textTertiary),
          ),
        ),
        Expanded(
          child: Text(value, style: AppTypography.bodyText(context)),
        ),
      ],
    );
  }

  Widget _buildGenreTags() {
    final tags = widget.content.allGenres;
    if (tags.isEmpty) {
      return const SizedBox.shrink();
    }
    return Wrap(
      spacing: context.spacingSm(),
      runSpacing: context.spacingSm(),
      children: tags.map(_buildTag).toList(),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: context.spacingSm(), vertical: 6),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        text,
        style: AppTypography.smallText(context),
      ),
    );
  }

  Widget _buildSeasonSelector() {
    if (widget.content.type != ContentType.series) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.spacingXl()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(color: AppTheme.divider),
          context.spacingLgBox,
          Text('Episodes', style: AppTypography.sectionHeader(context)),
          context.spacingSmBox,
          _buildEpisodePicker(),
          context.spacingLgBox,
        ],
      ),
    );
  }

  Widget _buildEpisodePicker() {
    return Consumer<ContentProvider>(
      builder: (context, contentProvider, child) {
        final episodes = contentProvider.series
            .where((item) => item.title == widget.content.title)
            .toList();
        episodes.sort((a, b) {
          final seasonCompare =
              (a.seasonNumber ?? 0).compareTo(b.seasonNumber ?? 0);
          if (seasonCompare != 0) return seasonCompare;
          return (a.episodeNumber ?? 0).compareTo(b.episodeNumber ?? 0);
        });

        if (episodes.isEmpty) {
          return Text(
            'No episode list available for this series.',
            style: AppTypography.bodySecondary(context),
          );
        }

        final cardWidth = context.cardWidth().clamp(180.0, 320.0);
        final cardHeight = cardWidth * 0.6;
        return SizedBox(
          height: cardHeight + context.spacingLg(),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final episode = episodes[index];
              return _buildEpisodeCard(
                episode,
                width: cardWidth,
                height: cardHeight,
              );
            },
            separatorBuilder: (context, index) =>
                SizedBox(width: context.spacingSm()),
            itemCount: episodes.length,
          ),
        );
      },
    );
  }

  Widget _buildEpisodeCard(
    Content episode, {
    required double width,
    required double height,
  }) {
    final title = _formatEpisodeTitle(episode);
    return Shortcuts(
      shortcuts: const {
        SingleActivator(LogicalKeyboardKey.enter): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.select): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.space): ActivateIntent(),
      },
      child: Actions(
        actions: <Type, Action<Intent>>{
          ActivateIntent: CallbackAction<ActivateIntent>(
            onInvoke: (intent) {
              context.push('/player', extra: episode);
              return null;
            },
          ),
        },
        child: FocusableActionDetector(
          child: Builder(
            builder: (context) {
              final isFocused = Focus.of(context).hasFocus;
              final card = AnimatedContainer(
                duration: AppSpacing.animationFast,
                width: width,
                decoration: BoxDecoration(
                  color: AppTheme.cardBackground,
                  borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
                  border: isFocused
                      ? Border.all(color: AppTheme.focusBorder, width: 2)
                      : null,
                  boxShadow: isFocused
                      ? [
                          BoxShadow(
                            color: AppTheme.primaryBlue.withValues(alpha: 0.25),
                            blurRadius: 16,
                          ),
                        ]
                      : null,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(AppSpacing.radiusLg),
                        ),
                        child: VodCardImage(
                          content: episode,
                          placeholder: _buildEpisodePlaceholder(),
                          fit: BoxFit.cover,
                          allowPrefetch: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(context.spacingSm()),
                      child: Text(
                        title,
                        style: AppTypography.smallText(context),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
              return Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
                  onTap: () => context.push('/player', extra: episode),
                  child: card,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildEpisodePlaceholder() {
    return Container(
      color: AppTheme.cardBackground,
      child: Center(
        child: Icon(
          Icons.tv,
          color: AppTheme.primaryBlue.withValues(alpha: 0.35),
          size: 32,
        ),
      ),
    );
  }

  String _formatEpisodeTitle(Content episode) {
    final season = episode.seasonNumber;
    final ep = episode.episodeNumber;
    if (season != null && ep != null) {
      return 'S$season • E$ep';
    }
    return episode.displayTitle;
  }

  Widget _buildMoreLikeThis() {
    return Consumer<ContentProvider>(
      builder: (context, contentProvider, child) {
        final recommendations = _buildRecommendations(contentProvider);
        if (recommendations.isEmpty) {
          return const SizedBox.shrink();
        }
        final cardWidth = context.cardWidth().clamp(180.0, 320.0);
        final cardHeight = cardWidth * 1.4;
        return Padding(
          padding: EdgeInsets.only(
            left: context.spacingXl(),
            right: context.spacingXl(),
            bottom: context.spacingXl(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('More Like This',
                  style: AppTypography.sectionHeader(context)),
              context.spacingSmBox,
              SizedBox(
                height: cardHeight + context.spacingLg(),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendations.length,
                  separatorBuilder: (context, index) =>
                      SizedBox(width: context.spacingSm()),
                  itemBuilder: (context, index) {
                    final item = recommendations[index];
                    return _buildRecommendationCard(
                      item,
                      width: cardWidth,
                      height: cardHeight,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<Content> _buildRecommendations(ContentProvider contentProvider) {
    final current = widget.content;
    final genres = current.allGenres.map((g) => g.toLowerCase()).toSet();
    final isSeries = current.type == ContentType.series;
    final source = isSeries ? contentProvider.series : contentProvider.movies;

    final seenTitles = <String>{};
    final candidates = <Content>[];
    for (final item in source) {
      if (item.id == current.id) continue;
      if (isSeries) {
        if (item.title == current.title) {
          continue;
        }
        if (seenTitles.contains(item.title)) {
          continue;
        }
        seenTitles.add(item.title);
      }
      candidates.add(item);
    }

    int score(Content item) {
      if (genres.isEmpty) return 0;
      final itemGenres = item.allGenres.map((g) => g.toLowerCase()).toSet();
      return itemGenres.intersection(genres).length;
    }

    candidates.sort((a, b) {
      final scoreCompare = score(b).compareTo(score(a));
      if (scoreCompare != 0) return scoreCompare;
      final ratingA = a.rating ?? 0.0;
      final ratingB = b.rating ?? 0.0;
      return ratingB.compareTo(ratingA);
    });

    return candidates.take(12).toList();
  }

  Widget _buildRecommendationCard(
    Content item, {
    required double width,
    required double height,
  }) {
    return Shortcuts(
      shortcuts: const {
        SingleActivator(LogicalKeyboardKey.enter): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.select): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.space): ActivateIntent(),
      },
      child: Actions(
        actions: <Type, Action<Intent>>{
          ActivateIntent: CallbackAction<ActivateIntent>(
            onInvoke: (intent) {
              final encodedId = Uri.encodeComponent(item.id);
              context.push('/content/$encodedId', extra: item);
              return null;
            },
          ),
        },
        child: FocusableActionDetector(
          child: Builder(
            builder: (context) {
              final isFocused = Focus.of(context).hasFocus;
              final card = AnimatedContainer(
                duration: AppSpacing.animationFast,
                width: width,
                decoration: BoxDecoration(
                  color: AppTheme.cardBackground,
                  borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
                  border: isFocused
                      ? Border.all(color: AppTheme.focusBorder, width: 2)
                      : null,
                  boxShadow: isFocused
                      ? [
                          BoxShadow(
                            color: AppTheme.primaryBlue.withValues(alpha: 0.25),
                            blurRadius: 16,
                          ),
                        ]
                      : null,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(AppSpacing.radiusLg),
                        ),
                        child: VodCardImage(
                          content: item,
                          placeholder: _buildEpisodePlaceholder(),
                          fit: BoxFit.cover,
                          allowPrefetch: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(context.spacingSm()),
                      child: Text(
                        item.displayTitle,
                        style: AppTypography.smallText(context),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
              return Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
                  onTap: () {
                    final encodedId = Uri.encodeComponent(item.id);
                    context.push('/content/$encodedId', extra: item);
                  },
                  child: card,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  String _resolveDescription() {
    final description = widget.content.description?.trim();
    if (description != null && description.isNotEmpty) {
      return description;
    }
    return 'No synopsis available for ${widget.content.title}.';
  }

  String _resolveCast() {
    final cast = widget.content.cast;
    if (cast != null && cast.isNotEmpty) {
      return cast.join(', ');
    }
    return 'Cast information unavailable';
  }

  String _resolveDirector() {
    final director = widget.content.director?.trim();
    if (director != null && director.isNotEmpty) {
      return director;
    }
    return 'Director information unavailable';
  }

  String _resolveGenres() {
    final genres = widget.content.allGenres;
    if (genres.isNotEmpty) {
      return genres.join(', ');
    }
    return 'Genre unavailable';
  }

  void _handlePlayPressed() {
    final url = widget.content.videoUrl;
    if (url != null && url.isNotEmpty) {
      context.push('/player', extra: widget.content);
      return;
    }
    showAppSnackBar(
      context,
      const SnackBar(content: Text('Video URL not available')),
    );
  }
}
