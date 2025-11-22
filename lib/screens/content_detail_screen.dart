import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';

class ContentDetailScreen extends StatefulWidget {
  final Content content;

  const ContentDetailScreen({super.key, required this.content});

  @override
  State<ContentDetailScreen> createState() => _ContentDetailScreenState();
}

class _ContentDetailScreenState extends State<ContentDetailScreen> {
  bool _isInMyList = false;
  bool _isDownloaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
    );
  }

  Widget _buildHeroBanner() {
    final heroImage = widget.content.backdropUrl ?? widget.content.imageUrl;
    return Stack(
      children: [
        // Background image
        Container(
          height: 600,
          width: double.infinity,
          decoration: const BoxDecoration(color: AppTheme.cardBackground),
          child: heroImage != null
              ? Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      heroImage,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => _buildHeroPlaceholder(),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Color(0xFF050710)],
                        ),
                      ),
                    ),
                  ],
                )
              : _buildHeroPlaceholder(),
        ),

        // Top navigation
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(AppSizes.md),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF050710), Color(0xFF0d1140)],
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppTheme.textPrimary,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),

        // Content info overlay
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.xxl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  widget.content.title,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 56,
                    shadows: [
                      Shadow(
                        color: Colors.black.withAlpha((0.8 * 255).round()),
                        offset: const Offset(2, 2),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: AppSizes.md),

                // Metadata
                _buildMetadataRow(),

                const SizedBox(height: AppSizes.xl),

                // Action buttons
                Row(
                  children: [
                    // Play button
                    BrandPrimaryButton(
                      icon: Icons.play_arrow,
                      label: 'Play',
                      onPressed: () {
                        // Navigate to VLC player with content details
                        // Capture messenger (safe even without awaits) to avoid
                        // using BuildContext across potential async gaps.
                        if (widget.content.videoUrl != null) {
                          context.push(
                            '/vlc-player',
                            extra: {
                              'videoUrl': widget.content.videoUrl,
                              'title': widget.content.title,
                              'subtitle': widget.content.year?.toString(),
                              'isLive': false,
                            },
                          );
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

                    const SizedBox(width: AppSizes.md),

                    // My List button
                    OutlinedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isInMyList = !_isInMyList;
                        });
                      },
                      icon: Icon(_isInMyList ? Icons.check : Icons.add),
                      label: const Text('My List'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppTheme.textPrimary,
                        side: BorderSide(
                          color: AppTheme.textPrimary.withAlpha(
                            (0.5 * 255).round(),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.lg,
                          vertical: AppSizes.md,
                        ),
                      ),
                    ),

                    const SizedBox(width: AppSizes.md),

                    // Download button
                    OutlinedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isDownloaded = !_isDownloaded;
                        });
                      },
                      icon: Icon(
                        _isDownloaded ? Icons.download_done : Icons.download,
                      ),
                      label: Text(_isDownloaded ? 'Downloaded' : 'Download'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppTheme.textPrimary,
                        side: BorderSide(
                          color: AppTheme.textPrimary.withAlpha(
                            (0.5 * 255).round(),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.lg,
                          vertical: AppSizes.md,
                        ),
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
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF050710), Color(0xFF0d1140)],
        ),
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
