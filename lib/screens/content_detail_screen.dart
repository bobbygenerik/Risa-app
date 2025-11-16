import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/widgets/brand_button.dart';

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
    return Stack(
      children: [
        // Background image
        Container(
          height: 600,
          width: double.infinity,
          decoration: const BoxDecoration(color: AppTheme.cardBackground),
          child: Stack(
            children: [
              // Placeholder image with gradient overlay
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      AppTheme.darkBackground.withAlpha((0.5 * 255).round()),
                      AppTheme.darkBackground,
                    ],
                    stops: const [0.0, 0.7, 1.0],
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.movie,
                    size: 120,
                    color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                  ),
                ),
              ),
            ],
          ),
        ),

        // Top navigation
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(AppSizes.md),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black.withAlpha((0.7 * 255).round()), Colors.transparent],
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: AppTheme.textPrimary),
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
                Row(
                  children: [
                    if (widget.content.year != null)
                      _buildMetadataChip(widget.content.year.toString()),
                    if (widget.content.genre != null)
                      _buildMetadataChip(widget.content.genre!),
                    _buildMetadataChip('IMDb ${_getRandomRating()}'),
                    if (widget.content.duration != null)
                      _buildMetadataChip('${widget.content.duration} min'),
                    // Quality badge
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
                ),

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
                        final messenger = ScaffoldMessenger.of(context);
                        if (widget.content.videoUrl != null) {
                          context.push('/vlc-player', extra: {
                            'videoUrl': widget.content.videoUrl,
                            'title': widget.content.title,
                            'subtitle': widget.content.year?.toString(),
                            'isLive': false,
                          });
                        } else {
                          messenger.showSnackBar(
                            const SnackBar(content: Text('Video URL not available')),
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
                        side: BorderSide(color: AppTheme.textPrimary.withAlpha((0.5 * 255).round())),
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
                        side: BorderSide(color: AppTheme.textPrimary.withAlpha((0.5 * 255).round())),
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

  Widget _buildContentInfo() {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Description
          Text(
            widget.content.description ?? _getDefaultDescription(),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              height: 1.6,
              color: AppTheme.textSecondary,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: AppSizes.xl),

          // Additional info
          _buildInfoRow('Cast', _getMockCast()),
          const SizedBox(height: AppSizes.md),
          _buildInfoRow('Director', _getMockDirector()),
          const SizedBox(height: AppSizes.md),
          _buildInfoRow('Genres', widget.content.genre ?? 'Action, Sci-Fi'),

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
      return Container();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(color: AppTheme.divider),
          const SizedBox(height: AppSizes.xl),

          Row(
            children: [
              Text('Episodes', style: Theme.of(context).textTheme.titleLarge),
              const Spacer(),
              DropdownButton<String>(
                value: 'Season 1',
                items: ['Season 1', 'Season 2', 'Season 3'].map((season) {
                  return DropdownMenuItem(value: season, child: Text(season));
                }).toList(),
                onChanged: (value) {},
              ),
            ],
          ),

          const SizedBox(height: AppSizes.lg),

          // Episode list
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return _buildEpisodeItem(index + 1);
            },
          ),

          const SizedBox(height: AppSizes.xl),
        ],
      ),
    );
  }

  Widget _buildEpisodeItem(int episodeNumber) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.md),
      child: Row(
        children: [
          // Episode thumbnail
          Stack(
            children: [
              Container(
                width: 160,
                height: 90,
                decoration: BoxDecoration(
                  color: AppTheme.cardBackground,
                  borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                ),
                child: Center(
                  child: Icon(
                    Icons.play_circle_filled,
                    size: 40,
                    color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
                  ),
                ),
              ),
              // Duration badge
              Positioned(
                bottom: 4,
                right: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha((0.8 * 255).round()),
                    borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                  ),
                  child: const Text(
                    '42m',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(width: AppSizes.md),

          // Episode info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$episodeNumber.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppTheme.textTertiary,
                      ),
                    ),
                    const SizedBox(width: AppSizes.sm),
                    Expanded(
                      child: Text(
                        'Episode Title $episodeNumber',
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Episode description goes here with some details about the plot.',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMoreLikeThis() {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(color: AppTheme.divider),
          const SizedBox(height: AppSizes.xl),

          Text('More Like This', style: Theme.of(context).textTheme.titleLarge),

          const SizedBox(height: AppSizes.lg),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6,
              childAspectRatio: 0.7,
              crossAxisSpacing: AppSizes.md,
              mainAxisSpacing: AppSizes.md,
            ),
            itemCount: 12,
            itemBuilder: (context, index) {
              return _buildRecommendationCard(index);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppTheme.cardBackground,
              borderRadius: BorderRadius.circular(AppSizes.radiusMd),
            ),
            child: Center(
              child: Icon(
                Icons.movie,
                size: 48,
                color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
              ),
            ),
          ),
        ),
        const SizedBox(height: AppSizes.sm),
        Text(
          'Movie ${index + 1}',
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '2024',
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
        ),
      ],
    );
  }

  String _getDefaultDescription() {
    return 'A young blade runner\'s discovery of a long-buried secret leads him to track down former blade runner Rick Deckard, who\'s been missing for thirty years.';
  }

  String _getMockCast() {
    return 'Timothée Chalamet, Zendaya, Rebecca Ferguson, Oscar Isaac';
  }

  String _getMockDirector() {
    return 'Denis Villeneuve';
  }

  String _getRandomRating() {
    final ratings = ['8.0', '8.2', '7.9', '8.5', '7.8'];
    return ratings[widget.content.id.hashCode % ratings.length];
  }
}
