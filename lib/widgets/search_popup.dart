
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/widgets/brand_button.dart';

class SearchPopup extends StatefulWidget {
  const SearchPopup({super.key});

  @override
  State<SearchPopup> createState() => _SearchPopupState();
}

class _SearchPopupState extends State<SearchPopup> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();
  final FocusNode _voiceButtonFocusNode = FocusNode();

  List<Channel> _liveTvResults = [];
  List<Content> _movieResults = [];
  List<Content> _seriesResults = [];
  bool _isSearching = false;
  bool _hasSearched = false;
  
  // Pagination
  static const int _resultsPerSection = 12;
  int _liveTvDisplayCount = _resultsPerSection;
  int _moviesDisplayCount = _resultsPerSection;
  int _seriesDisplayCount = _resultsPerSection;

  @override
  void initState() {
    super.initState();
    // Auto-focus the text field when popup opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _textFieldFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _textFieldFocusNode.dispose();
    _voiceButtonFocusNode.dispose();
    super.dispose();
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

    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    final contentProvider = Provider.of<ContentProvider>(
      context,
      listen: false,
    );

    final liveTv = channelProvider.searchChannels(query);
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
      // Reset pagination on new search
      _liveTvDisplayCount = _resultsPerSection;
      _moviesDisplayCount = _resultsPerSection;
      _seriesDisplayCount = _resultsPerSection;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 72, top: 80),
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: 600,
            constraints: const BoxConstraints(maxHeight: 700),
            decoration: BoxDecoration(
              color: const Color(0xFF050710).withValues(alpha: 0.95),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _searchController,
                  focusNode: _textFieldFocusNode,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.white.withValues(alpha: 0.5)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    filled: true,
                    fillColor: Colors.white.withValues(alpha: 0.05),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onSubmitted: _performSearch,
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: _isSearching
                      ? const Center(child: CircularProgressIndicator(color: AppTheme.primaryBlue))
                      : _buildResultsList(),
                ),
              ],
            ),
          ),
        ),
      ),
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
      padding: const EdgeInsets.all(12),
      children: [
        if (_liveTvResults.isNotEmpty) ...[
          _buildSectionHeader('Live TV', Icons.live_tv, _liveTvResults.length),
          _buildLiveTvGrid(_liveTvResults.take(_liveTvDisplayCount).toList()),
          if (_liveTvResults.length > _liveTvDisplayCount)
            _buildLoadMoreButton(() {
              setState(() {
                _liveTvDisplayCount += _resultsPerSection;
              });
            }),
          const SizedBox(height: 20),
        ],
        if (_movieResults.isNotEmpty) ...[
          _buildSectionHeader('Movies', Icons.movie, _movieResults.length),
          _buildContentGrid(_movieResults.take(_moviesDisplayCount).toList()),
          if (_movieResults.length > _moviesDisplayCount)
            _buildLoadMoreButton(() {
              setState(() {
                _moviesDisplayCount += _resultsPerSection;
              });
            }),
          const SizedBox(height: 20),
        ],
        if (_seriesResults.isNotEmpty) ...[
          _buildSectionHeader('Series', Icons.tv, _seriesResults.length),
          _buildContentGrid(_seriesResults.take(_seriesDisplayCount).toList()),
          if (_seriesResults.length > _seriesDisplayCount)
            _buildLoadMoreButton(() {
              setState(() {
                _seriesDisplayCount += _resultsPerSection;
              });
            }),
          const SizedBox(height: 20),
        ],
      ],
    );
  }

  Widget _buildLoadMoreButton(VoidCallback onPressed) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.md),
        child: BrandSecondaryButton(
          onPressed: onPressed,
          icon: Icons.expand_more,
          label: 'Load More',
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, IconData icon, int count) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF4a9eff), size: 16),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: const Color(0xFF4a9eff).withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              count.toString(),
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4a9eff),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLiveTvGrid(List<Channel> channels) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: channels.length,
      itemBuilder: (context, index) {
        final channel = channels[index];
        return Focus(
          onKeyEvent: (node, event) {
            if (event is KeyDownEvent && 
                (event.logicalKey == LogicalKeyboardKey.select || 
                 event.logicalKey == LogicalKeyboardKey.enter)) {
              Navigator.of(context).pop();
              context.push('/player', extra: channel);
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          },
          child: Builder(
            builder: (context) {
              final isFocused = Focus.of(context).hasFocus;
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
                      color: isFocused
                          ? AppTheme.primaryBlue
                          : AppTheme.textSecondary.withAlpha((0.1 * 255).round()),
                      width: isFocused ? 3 : 1,
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
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
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

            final encodedId = Uri.encodeComponent(item.id);
            context.push('/content/$encodedId', extra: item);
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
