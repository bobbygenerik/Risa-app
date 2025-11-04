import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/models/content.dart';

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
          decoration: BoxDecoration(color: AppTheme.cardBackground),
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
                      AppTheme.darkBackground.withOpacity(0.5),
                      AppTheme.darkBackground,
                    ],
                    stops: [0.0, 0.7, 1.0],
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.movie,
                    size: 120,
                    color: AppTheme.primaryBlue.withOpacity(0.3),
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
            padding: EdgeInsets.all(AppSizes.md),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black.withOpacity(0.7), Colors.transparent],
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                Spacer(),
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
            padding: EdgeInsets.all(AppSizes.xxl),
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
                        color: Colors.black.withOpacity(0.8),
                        offset: Offset(2, 2),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: AppSizes.md),

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
                      margin: EdgeInsets.only(left: AppSizes.sm),
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.sm,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                      ),
                      child: Text(
                        'HD',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: AppSizes.xl),

                // Action buttons
                Row(
                  children: [
                    // Play button
                    ElevatedButton.icon(
                      onPressed: () {
                        // Navigate to player
                        Navigator.pushNamed(context, '/player');
                      },
                      icon: Icon(Icons.play_arrow),
                      label: Text('Play'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryBlue,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.xl,
                          vertical: AppSizes.md,
                        ),
                        textStyle: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),

                    SizedBox(width: AppSizes.md),

                    // My List button
                    OutlinedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isInMyList = !_isInMyList;
                        });
                      },
                      icon: Icon(_isInMyList ? Icons.check : Icons.add),
                      label: Text('My List'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: BorderSide(color: Colors.white.withOpacity(0.5)),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.lg,
                          vertical: AppSizes.md,
                        ),
                      ),
                    ),

                    SizedBox(width: AppSizes.md),

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
                        foregroundColor: Colors.white,
                        side: BorderSide(color: Colors.white.withOpacity(0.5)),
                        padding: EdgeInsets.symmetric(
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
      margin: EdgeInsets.only(right: AppSizes.sm),
      padding: EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildContentInfo() {
    return Padding(
      padding: EdgeInsets.all(AppSizes.xxl),
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

          SizedBox(height: AppSizes.xl),

          // Additional info
          _buildInfoRow('Cast', _getMockCast()),
          SizedBox(height: AppSizes.md),
          _buildInfoRow('Director', _getMockDirector()),
          SizedBox(height: AppSizes.md),
          _buildInfoRow('Genres', widget.content.genre ?? 'Action, Sci-Fi'),

          SizedBox(height: AppSizes.xl),

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
      padding: EdgeInsets.symmetric(
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
      padding: EdgeInsets.symmetric(horizontal: AppSizes.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: AppTheme.divider),
          SizedBox(height: AppSizes.xl),

          Row(
            children: [
              Text('Episodes', style: Theme.of(context).textTheme.titleLarge),
              Spacer(),
              DropdownButton<String>(
                value: 'Season 1',
                items: ['Season 1', 'Season 2', 'Season 3'].map((season) {
                  return DropdownMenuItem(value: season, child: Text(season));
                }).toList(),
                onChanged: (value) {},
              ),
            ],
          ),

          SizedBox(height: AppSizes.lg),

          // Episode list
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return _buildEpisodeItem(index + 1);
            },
          ),

          SizedBox(height: AppSizes.xl),
        ],
      ),
    );
  }

  Widget _buildEpisodeItem(int episodeNumber) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.md),
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
                    color: AppTheme.primaryBlue.withOpacity(0.5),
                  ),
                ),
              ),
              // Duration badge
              Positioned(
                bottom: 4,
                right: 4,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                  ),
                  child: Text(
                    '42m',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(width: AppSizes.md),

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
                    SizedBox(width: AppSizes.sm),
                    Expanded(
                      child: Text(
                        'Episode Title ${episodeNumber}',
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
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
      padding: EdgeInsets.all(AppSizes.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: AppTheme.divider),
          SizedBox(height: AppSizes.xl),

          Text('More Like This', style: Theme.of(context).textTheme.titleLarge),

          SizedBox(height: AppSizes.lg),

          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                color: AppTheme.primaryBlue.withOpacity(0.3),
              ),
            ),
          ),
        ),
        SizedBox(height: AppSizes.sm),
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
