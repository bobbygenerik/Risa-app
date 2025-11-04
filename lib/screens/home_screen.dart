import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/models/content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSizes.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Continue Watching
          _buildSectionHeader('Continue Watching'),
          SizedBox(height: AppSizes.md),
          _buildContinueWatchingRow(),
          
          SizedBox(height: AppSizes.xl),
          
          // Live TV Highlights
          _buildSectionHeader('Live TV Highlights'),
          SizedBox(height: AppSizes.md),
          _buildLiveTVHighlights(),
          
          SizedBox(height: AppSizes.xl),
          
          // Recently Added Series
          _buildSectionHeader('Recently Added Series'),
          SizedBox(height: AppSizes.md),
          _buildRecentlyAddedRow(),
          
          SizedBox(height: AppSizes.xl),
          
          // Categories
          _buildSectionHeader('Categories'),
          SizedBox(height: AppSizes.md),
          _buildCategoriesRow(),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  Widget _buildContinueWatchingRow() {
    final items = _getMockContinueWatching();
    
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final content = items[index];
          return _buildContinueWatchingCard(content);
        },
      ),
    );
  }

  Widget _buildContinueWatchingCard(Content content) {
    return Container(
      width: 350,
      margin: EdgeInsets.only(right: AppSizes.md),
      child: Stack(
        children: [
          // Thumbnail
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.radiusLg),
            child: Container(
              color: AppTheme.cardBackground,
              child: content.backdropUrl != null
                  ? Image.network(
                      content.backdropUrl!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return _buildPlaceholder(content.title);
                      },
                    )
                  : _buildPlaceholder(content.title),
            ),
          ),
          
          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
            ),
          ),
          
          // Content info
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(AppSizes.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    content.displayTitle,
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppSizes.xs),
                  // Progress bar
                  LinearProgressIndicator(
                    value: content.watchProgress ?? 0.0,
                    backgroundColor: AppTheme.highlight,
                    color: AppTheme.primaryBlue,
                    minHeight: 4,
                  ),
                  SizedBox(height: AppSizes.xs),
                  Text(
                    '${((content.watchProgress ?? 0) * 100).toInt()}%',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLiveTVHighlights() {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildLiveTVCard(
            title: _getMockChannelNames()[index],
            subtitle: _getMockProgramNames()[index],
          );
        },
      ),
    );
  }

  Widget _buildLiveTVCard({required String title, required String subtitle}) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(right: AppSizes.md),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        child: Stack(
          children: [
            Container(
              color: AppTheme.cardBackground,
              child: Center(
                child: Icon(
                  Icons.live_tv,
                  size: 48,
                  color: AppTheme.primaryBlue,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.8),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: AppSizes.xs),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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

  Widget _buildRecentlyAddedRow() {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return _buildPosterCard(
            title: _getMockSeriesNames()[index],
          );
        },
      ),
    );
  }

  Widget _buildPosterCard({required String title}) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: AppSizes.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radiusLg),
              child: Container(
                color: AppTheme.cardBackground,
                child: Center(
                  child: Icon(
                    Icons.movie,
                    size: 48,
                    color: AppTheme.primaryBlue.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: AppSizes.sm),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesRow() {
    final categories = ['Action', 'Comedy', 'Drama', 'Thriller', 'Sci-Fi', 'Horror'];
    
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return _buildCategoryCard(categories[index]);
        },
      ),
    );
  }

  Widget _buildCategoryCard(String name) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: AppSizes.md),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppTheme.primaryBlue.withOpacity(0.6),
                AppTheme.primaryBlue.withOpacity(0.3),
              ],
            ),
          ),
          child: Center(
            child: Text(
              name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholder(String text) {
    return Container(
      color: AppTheme.cardBackground,
      child: Center(
        child: Text(
          text.substring(0, 1).toUpperCase(),
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: AppTheme.primaryBlue.withOpacity(0.3),
          ),
        ),
      ),
    );
  }

  // Mock data methods
  List<Content> _getMockContinueWatching() {
    return [
      Content(
        id: '1',
        title: 'ESPN',
        type: ContentType.liveTV,
        watchProgress: 0.45,
      ),
      Content(
        id: '2',
        title: 'GAME of THRONES',
        type: ContentType.series,
        seasonNumber: 5,
        episodeNumber: 3,
        watchProgress: 0.62,
      ),
      Content(
        id: '3',
        title: 'THE MARTIN SHOW',
        type: ContentType.series,
        watchProgress: 0.30,
      ),
    ];
  }

  List<String> _getMockChannelNames() {
    return ['BBC', 'Discovery Channel', 'Comedy Central', 'FUBO CHANNELS', 'HBO'];
  }

  List<String> _getMockProgramNames() {
    return ['Countryfile', 'Shark Week', 'Stand-up Special', 'Sports Live', 'Movie Night'];
  }

  List<String> _getMockSeriesNames() {
    return ['INTERSTELLAR', 'DUNE', 'Blade Runner', 'BREAKING BAD', 'The Crown', 'Stranger Things'];
  }
}
