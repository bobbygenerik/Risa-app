import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/widgets/brand_button.dart';
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
          if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.goBack) {
            Navigator.pop(context);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
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
    return Stack(
      children: [
        // Background image
        Container(
          height: context.tvSpacing(600),
          width: double.infinity,
          decoration: const BoxDecoration(color: AppTheme.cardBackground),
          child: heroImage != null
              ? Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      heroImage,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorBuilder: (_, __, ___) => _buildHeroPlaceholder(),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, AppTheme.darkBackground],
                        ),
                      ),
                    ),
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
              padding: EdgeInsets.all(context.tvSpacing(20)), // AppSizes.md assumed 20
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha((0.3 * 255).round()),
                      shape: BoxShape.circle,
                    ),
                    child: Focus(
                      focusNode: _backButtonFocus,
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent &&
                            (event.logicalKey == LogicalKeyboardKey.select ||
                             event.logicalKey == LogicalKeyboardKey.enter)) {
                          Navigator.pop(context);
                          return KeyEventResult.handled;
                        }
                        return KeyEventResult.ignored;
                      },
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppTheme.textPrimary,
                          size: context.tvIconSize(24),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),

        // Content info overlay
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.all(context.tvSpacing(40)), // AppSizes.xxl assumed 40
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  widget.content.title,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: context.tvTextSize(56),
                    shadows: [
                      Shadow(
                        color: Colors.black.withAlpha((0.8 * 255).round()),
                        offset: Offset(context.tvSpacing(2), context.tvSpacing(2)),
                        blurRadius: context.tvSpacing(8),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: context.tvSpacing(20)),

                // Metadata
                _buildMetadataRow(),

                SizedBox(height: context.tvSpacing(40)),

                // Action buttons
                Row(
                  children: [
                    // Play button
                    Focus(
                      focusNode: _playButtonFocus,
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent) {
                          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                            _backButtonFocus.requestFocus();
                            return KeyEventResult.handled;
                          }
                          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                            _myListButtonFocus.requestFocus();
                            return KeyEventResult.handled;
                          }
                        }
                        return KeyEventResult.ignored;
                      },
                      child: BrandPrimaryButton(
                        icon: Icons.play_arrow,
                        label: 'Play',
                        onPressed: () {
                          if (widget.content.videoUrl != null) {
                            context.push('/player', extra: widget.content);
                          } else {
                            showAppSnackBar(
                              context,
                              const SnackBar(
                                content: Text('Video URL not available'),
                              ),
                            );
                          }
                        },
                      ),
                    ),

                    SizedBox(width: context.tvSpacing(20)),

                    // My List button
                    Focus(
                      focusNode: _myListButtonFocus,
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent) {
                          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                            _playButtonFocus.requestFocus();
                            return KeyEventResult.handled;
                          }
                          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                            _downloadButtonFocus.requestFocus();
                            return KeyEventResult.handled;
                          }
                        }
                        return KeyEventResult.ignored;
                      },
                      child: Consumer<ContentProvider>(
                        builder: (context, contentProvider, child) {
                          final isInMyList = contentProvider.isInFavorites(widget.content.id);
                          return BrandSecondaryButton(
                            onPressed: () async {
                              await contentProvider.toggleFavorite(widget.content.id);
                            },
                            icon: isInMyList ? Icons.check : Icons.add,
                            label: 'My List',
                          );
                        },
                      ),
                    ),

                    SizedBox(width: context.tvSpacing(20)),

                    // Download button
                    Focus(
                      focusNode: _downloadButtonFocus,
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent) {
                          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                            _myListButtonFocus.requestFocus();
                            return KeyEventResult.handled;
                          }
                        }
                        return KeyEventResult.ignored;
                      },
                      child: BrandSecondaryButton(
                        onPressed: () {
                          setState(() {
                            _isDownloaded = !_isDownloaded;
                          });
                        },
                        icon: _isDownloaded ? Icons.download_done : Icons.download,
                        label: _isDownloaded ? 'Downloaded' : 'Download',
                      ),
                    ),
                  ],
                ),
              ],
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

  Widget _buildMetadataChip(String text) {
    return Container(
      margin: const EdgeInsets.only(right: AppSizes.sm),
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha((0.5 * 255).round()),
        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: AppTheme.textPrimary,
        ),
      ),
    );
  }

  Widget _buildMetadataRow() {
    final durationLabel = _formatDurationLabel();
    return Row(
      children: [
        if (widget.content.year != null)
          _buildMetadataChip(widget.content.year.toString()),
        if (widget.content.genre != null)
          _buildMetadataChip(widget.content.genre!),
        if (widget.content.rating != null)
          _buildMetadataChip('IMDb ${widget.content.ratingDisplay}'),
        if (durationLabel != null) _buildMetadataChip(durationLabel),
        Container(
          margin: const EdgeInsets.only(left: AppSizes.sm),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.sm,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: AppTheme.textPrimary, width: 2),
            borderRadius: BorderRadius.circular(AppSizes.radiusSm),
          ),
          child: const Text(
            'HD',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimary,
            ),
          ),
        ),
      ],
    );
  }

  String? _formatDurationLabel() {
    final duration = widget.content.duration;
    if (duration == null) return null;
    final trimmed = duration.trim();
    if (trimmed.isEmpty) return null;
    final parsed = int.tryParse(trimmed);
    return parsed != null ? '$parsed min' : trimmed;
  }

  Widget _buildContentInfo() {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Description
          Text(
            _resolveDescription(),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              height: 1.6,
              color: AppTheme.textSecondary,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: AppSizes.xl),

          // Additional info
          _buildInfoRow('Cast', _resolveCast()),
          const SizedBox(height: AppSizes.md),
          _buildInfoRow('Director', _resolveDirector()),
          const SizedBox(height: AppSizes.md),
          _buildInfoRow('Genres', _resolveGenres()),

          const SizedBox(height: AppSizes.xl),

          // Tags
          Wrap(
            spacing: AppSizes.sm,
            runSpacing: AppSizes.sm,
            children: [
              _buildTag('Exciting'),
              _buildTag('Visually Stunning'),
              _buildTag('Epic'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppTheme.textTertiary),
          ),
        ),
        Expanded(
          child: Text(value, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.md,
        vertical: AppSizes.sm,
      ),
      decoration: BoxDecoration(
        color: AppTheme.highlight,
        borderRadius: BorderRadius.circular(AppSizes.radiusFull),
      ),
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
      ),
    );
  }

  Widget _buildSeasonSelector() {
    if (widget.content.type != ContentType.series) {
      return const SizedBox.shrink();
    }

    final selectionParts = <String>[];
    if (widget.content.seasonNumber != null) {
      selectionParts.add('Season ${widget.content.seasonNumber}');
    }
    if (widget.content.episodeNumber != null) {
      selectionParts.add('Episode ${widget.content.episodeNumber}');
    }
    final currentSelection = selectionParts.isEmpty
        ? null
        : selectionParts.join(', ');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(color: AppTheme.divider),
          const SizedBox(height: AppSizes.xl),

          Text('Episodes', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: AppSizes.md),
          if (currentSelection != null) ...[
            Text(
              'Currently tuned to $currentSelection',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
            ),
            const SizedBox(height: AppSizes.md),
          ],
          Text(
            'Episode listings are not provided by this playlist. Use Play to start streaming the selected entry.',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
          ),
          const SizedBox(height: AppSizes.xl),
        ],
      ),
    );
  }

  Widget _buildMoreLikeThis() {
    return const SizedBox.shrink();
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
    final genres = widget.content.genres;
    if (genres != null && genres.isNotEmpty) {
      return genres.join(', ');
    }
    if (widget.content.genre != null) {
      return widget.content.genre!;
    }
    return 'Genre unavailable';
  }
}
