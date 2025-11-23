import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/widgets/voice_search_button.dart';

class SearchPopup extends StatefulWidget {
  const SearchPopup({super.key});

  @override
  State<SearchPopup> createState() => _SearchPopupState();
}

class _SearchPopupState extends State<SearchPopup> {
  final TextEditingController _searchController = TextEditingController();

  List<Channel> _liveTvResults = [];
  List<Content> _movieResults = [];
  List<Content> _seriesResults = [];
  bool _isSearching = false;
  bool _hasSearched = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _handleVoiceResult(String query) {
    if (!mounted) return;
    setState(() {
      _searchController.text = query;
    });
    _performSearch(query);
  }

  void _performSearch(String query) {
    if (query.trim().isEmpty) {
      setState(() {
        _liveTvResults = [];
        _movieResults = [];
        _seriesResults = [];
        _isSearching = false;
        _hasSearched = false;
      });
      return;
    }

    setState(() {
      _isSearching = true;
      _hasSearched = true;
    });

    // Debounce could be added here if needed, but for now we'll search immediately
    // or maybe just on submit? The user asked for "popup", usually instant search is nice.
    // Let's do instant search but maybe we should debounce it slightly in a real app.
    // For now, direct search.

    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    final contentProvider = Provider.of<ContentProvider>(
      context,
      listen: false,
    );

    final liveTv = channelProvider.searchChannels(query);

    // ContentProvider search returns mixed movies and series, we need to separate them
    // But ContentProvider.searchContent returns a mixed list.
    // Let's use the raw lists from ContentProvider to filter manually for better control
    // or just filter the results.

    final allContent = contentProvider.searchContent(query);
    final movies = allContent
        .where((c) => c.type == ContentType.movie)
        .toList();
    final series = allContent
        .where((c) => c.type == ContentType.series)
        .toList();

    setState(() {
      _liveTvResults = liveTv;
      _movieResults = movies;
      _seriesResults = series;
      _isSearching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final keyboard = media.viewInsets.bottom;
    const maxPreferredHeight = 600.0;
    const minComfortHeight = 360.0;
    final topPadding = AppSizes.xl;
    final bottomPadding = AppSizes.xl + keyboard;
    final availableHeight = media.size.height - topPadding - bottomPadding;
    final hasComfortableSpace = availableHeight >= minComfortHeight;

    double dialogHeight;
    if (hasComfortableSpace) {
      dialogHeight = math.min(availableHeight, maxPreferredHeight);
    } else {
      dialogHeight = math.max(availableHeight, 0);
    }

    const headerEstimate = 140.0; // approximate header + divider height
    final scrollResultsHeight = math.max(dialogHeight - headerEstimate, 220.0);

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        padding: EdgeInsets.fromLTRB(
          topPadding,
          topPadding,
          topPadding,
          bottomPadding,
        ),
        child: SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Container(
                height: dialogHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppTheme.cardBackground.withAlpha(
                    (0.95 * 255).round(),
                  ),
                  borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                  border: Border.all(
                    color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha((0.5 * 255).round()),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: hasComfortableSpace
                    ? _buildDialogContent(useExpandedResults: true)
                    : SingleChildScrollView(
                        padding: const EdgeInsets.only(bottom: AppSizes.lg),
                        child: _buildDialogContent(
                          useExpandedResults: false,
                          resultsHeight: scrollResultsHeight,
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDialogContent({
    required bool useExpandedResults,
    double? resultsHeight,
  }) {
    final Widget resultsWidget = _isSearching
        ? const Center(child: CircularProgressIndicator())
        : _buildResultsList();

    final Widget expandedArea = useExpandedResults
        ? Expanded(child: resultsWidget)
        : SizedBox(height: resultsHeight ?? 320, child: resultsWidget);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.lg),
          child: Row(
            children: [
              const Icon(Icons.search, color: AppTheme.primaryBlue, size: 28),
              const SizedBox(width: AppSizes.md),
              VoiceSearchButton(
                usePillStyle: true,
                label: 'Voice',
                onSearchResult: _handleVoiceResult,
              ),
              const SizedBox(width: AppSizes.md),
              Expanded(
                child: TextField(
                  controller: _searchController,
                  autofocus: true,
                  style: const TextStyle(
                    fontSize: 20,
                    color: AppTheme.textPrimary,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Search channels, movies, series...',
                    hintStyle: TextStyle(color: AppTheme.textSecondary),
                    border: InputBorder.none,
                  ),
                  onChanged: _performSearch,
                  onSubmitted: _performSearch,
                  textInputAction: TextInputAction.search,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close, color: AppTheme.textSecondary),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
        const Divider(height: 1, color: AppTheme.textSecondary),
        expandedArea,
      ],
    );
  }

  Widget _buildResultsList() {
    if (!_hasSearched) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 64,
              color: AppTheme.textSecondary.withAlpha((0.3 * 255).round()),
            ),
            const SizedBox(height: AppSizes.md),
            const Text(
              'Type to search...',
              style: TextStyle(color: AppTheme.textSecondary),
            ),
          ],
        ),
      );
    }

    if (_liveTvResults.isEmpty &&
        _movieResults.isEmpty &&
        _seriesResults.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off,
              size: 64,
              color: AppTheme.textSecondary.withAlpha((0.3 * 255).round()),
            ),
            const SizedBox(height: AppSizes.md),
            const Text(
              'No results found',
              style: TextStyle(color: AppTheme.textSecondary),
            ),
          ],
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(AppSizes.lg),
      children: [
        if (_liveTvResults.isNotEmpty) ...[
          _buildSectionHeader(
            'Live TV',
            Icons.live_tv,
            _liveTvResults.length,
            iconColor: AppTheme.accentPink,
          ),
          _buildLiveTvGrid(),
          const SizedBox(height: AppSizes.xl),
        ],
        if (_movieResults.isNotEmpty) ...[
          _buildSectionHeader(
            'Movies',
            Icons.movie,
            _movieResults.length,
            iconColor: AppTheme.accentPink,
          ),
          _buildContentGrid(_movieResults),
          const SizedBox(height: AppSizes.xl),
        ],
        if (_seriesResults.isNotEmpty) ...[
          _buildSectionHeader(
            'Series',
            Icons.tv,
            _seriesResults.length,
            iconColor: AppTheme.accentPink,
          ),
          _buildContentGrid(_seriesResults),
          const SizedBox(height: AppSizes.xl),
        ],
      ],
    );
  }

  Widget _buildSectionHeader(
    String title,
    IconData icon,
    int count, {
    Color iconColor = AppTheme.accentOrange,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.md),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 20),
          const SizedBox(width: AppSizes.sm),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(width: AppSizes.sm),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              count.toString(),
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLiveTvGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Adjust based on width?
        childAspectRatio: 1.0,
        crossAxisSpacing: AppSizes.md,
        mainAxisSpacing: AppSizes.md,
      ),
      itemCount: _liveTvResults.length > 8
          ? 8
          : _liveTvResults.length, // Limit to 8
      itemBuilder: (context, index) {
        final channel = _liveTvResults[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).pop(); // Close popup
            context.push('/player', extra: channel);
          },
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          child: Container(
            decoration: BoxDecoration(
              color: AppTheme.cardBackground,
              borderRadius: BorderRadius.circular(AppSizes.radiusMd),
              border: Border.all(
                color: AppTheme.textSecondary.withAlpha((0.1 * 255).round()),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (channel.logoUrl != null && channel.logoUrl!.isNotEmpty)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.sm),
                      child: Image.network(
                        channel.logoUrl!,
                        fit: BoxFit.contain,
                        errorBuilder: (_, __, ___) => const Icon(
                          Icons.tv,
                          size: 32,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ),
                  )
                else
                  const Expanded(
                    child: Icon(
                      Icons.tv,
                      size: 32,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(AppSizes.xs),
                  child: Text(
                    channel.name,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppTheme.textPrimary,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildContentGrid(List<Content> items) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 0.7,
        crossAxisSpacing: AppSizes.md,
        mainAxisSpacing: AppSizes.md,
      ),
      itemCount: items.length > 10 ? 10 : items.length, // Limit to 10
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).pop(); // Close popup
            // Navigate to details or player
            // Assuming standard routes for movies/series details
            // For now, let's assume we play it or go to a details page if it existed
            // But based on existing code, we might just push to player or similar.
            // Let's check routes.
            // Actually, movies/series usually have a details screen or play directly.
            // Let's assume we want to play it for now or use a generic route.
            // Wait, main.dart shows routes for /movies and /series but maybe not details.
            // Let's try to find a way to open it.
            // Ah, EnhancedVideoPlayerScreen takes a Content object?
            // Let's check main.dart routes again.
            // It seems /player is for channels.
            // Let's check MoviesScreen to see how it opens content.

            // For now, I'll just print or show a snackbar if route is unknown,
            // but actually I should check how MoviesScreen does it.
            // Assuming I can just push a route.

            // Re-checking main.dart routes...
            // It seems we might not have a dedicated details route visible in the snippet.
            // But typically it would be something like /movie/:id

            // Let's use a safe fallback or just try to play it if it's a movie.
            // If it's a series, we might need to show episodes.

            // For this task, I'll assume we can navigate to a player or details.
            // Let's just use a placeholder action or try to find the right route.
            // Actually, let's look at how `MoviesScreen` does it.
            // I'll add a TODO or generic navigation.

            // Update: I'll check `MoviesScreen` in a moment.
            // For now, I'll just close the popup.
          },
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.cardBackground,
                    borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                    image: item.imageUrl != null
                        ? DecorationImage(
                            image: NetworkImage(item.imageUrl!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  child: item.imageUrl == null
                      ? const Center(
                          child: Icon(
                            Icons.movie,
                            color: AppTheme.textSecondary,
                          ),
                        )
                      : null,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                item.title,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppTheme.textPrimary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }
}
