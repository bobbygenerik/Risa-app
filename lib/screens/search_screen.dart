import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Channel> _searchResults = [];
  bool _isSearching = false;
  final FocusNode _searchFieldFocusNode = FocusNode(debugLabel: 'SearchField');
  bool _searchEditable = false;
  late DateTime _currentTime;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    // Update time every second
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {
      _currentTime = DateTime.now();
    });
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  @override
  void dispose() {
    _searchFieldFocusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch(String query) {
    if (query.isEmpty) {
      setState(() {
        _searchResults = [];
        _isSearching = false;
      });
      return;
    }

    setState(() {
      _isSearching = true;
    });

    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    setState(() {
      _searchResults = channelProvider.searchChannels(query);
      _isSearching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: Column(
        children: [
          // Liquid glass app bar with logo and time
          _buildGlassAppBar(),
          Divider(height: 1, color: AppTheme.accentPink, thickness: 2),

          // Main content
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(AppSizes.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Search Bar (TV friendly: open keyboard only on select)
                  Focus(
                    focusNode: _searchFieldFocusNode,
                    onFocusChange: (hasFocus) {
                      if (!hasFocus && _searchEditable) {
                        setState(() => _searchEditable = false);
                      }
                    },
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      final key = event.logicalKey;
                      if (key == LogicalKeyboardKey.select || key == LogicalKeyboardKey.enter) {
                        setState(() => _searchEditable = true);
                        Future.microtask(() => _searchFieldFocusNode.requestFocus());
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: TextField(
                      controller: _searchController,
                      autofocus: false,
                      readOnly: !_searchEditable,
                      decoration: InputDecoration(
                        hintText: 'Search channels, movies & more...',
                        prefixIcon: Icon(Icons.search, color: AppTheme.primaryBlue),
                        suffixIcon: _searchController.text.isNotEmpty
                            ? IconButton(
                                icon: Icon(Icons.clear),
                                onPressed: () {
                                  _searchController.clear();
                                  _performSearch('');
                                },
                              )
                            : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                          borderSide: BorderSide(color: AppTheme.primaryBlue, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                          borderSide: BorderSide(color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                          borderSide: BorderSide(color: AppTheme.primaryBlue, width: 2),
                        ),
                        filled: true,
                        fillColor: AppTheme.cardBackground,
                        contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.lg, vertical: AppSizes.md),
                      ),
                      onTap: () {
                        if (!_searchEditable) {
                          setState(() => _searchEditable = true);
                        }
                      },
                      onChanged: _performSearch,
                    ),
                  ),
                  SizedBox(height: AppSizes.xl),

                  // Results
                  Expanded(child: _buildResults()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGlassAppBar() {
    return Container(
      height: AppSizes.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.lg, vertical: AppSizes.md),
      decoration: BoxDecoration(
        color: AppTheme.darkBackground.withAlpha((0.8 * 255).round()),
        border: Border(
          bottom: BorderSide(color: AppTheme.accentPink, width: 2),
        ),
      ),
      child: Row(
        children: [
          // Logo
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppTheme.primaryBlue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.search, color: Colors.white, size: 24),
          ),
          SizedBox(width: AppSizes.md),
          Text(
            'Search',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimary,
            ),
          ),
          Spacer(),
          // Current time
          Text(
            _formatTime(_currentTime),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  Widget _buildResults() {
    if (_isSearching) {
      return Center(child: CircularProgressIndicator());
    }

    if (_searchController.text.isEmpty) {
      return _buildEmptyState(
        icon: Icons.search,
        title: 'Search for channels',
        subtitle: 'Enter a channel name to start searching',
      );
    }

    if (_searchResults.isEmpty) {
      return _buildEmptyState(
        icon: Icons.search_off,
        title: 'No results found',
        subtitle: 'Try searching with a different term',
      );
    }

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: AppSizes.md,
        mainAxisSpacing: AppSizes.md,
        childAspectRatio: 0.75,
      ),
      itemCount: _searchResults.length,
      itemBuilder: (context, index) {
        final channel = _searchResults[index];
        return _buildChannelCard(channel);
      },
    );
  }

  Widget _buildEmptyState({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80, color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round())),
          SizedBox(height: AppSizes.lg),
          Text(title, style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: AppSizes.sm),
          Text(
            subtitle,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildChannelCard(Channel channel) {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    final isFavorite = channelProvider.isFavorite(channel);

    return InkWell(
      onTap: () {
        context.push('/player', extra: channel);
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Channel Logo/Thumbnail
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppTheme.cardBackground,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(AppSizes.radiusMd),
                  ),
                ),
                child: channel.logoUrl != null && channel.logoUrl!.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(AppSizes.radiusMd),
                        ),
                        child: Image.network(
                          channel.logoUrl!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return _buildChannelPlaceholder(channel.name);
                          },
                        ),
                      )
                    : _buildChannelPlaceholder(channel.name),
              ),
            ),

            // Channel Info
            Padding(
              padding: EdgeInsets.all(AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    channel.name,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (channel.groupTitle != null) ...[
                    SizedBox(height: 4),
                    Text(
                      channel.groupTitle!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppTheme.textSecondary,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                  SizedBox(height: AppSizes.xs),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.xs,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.accentRed,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'LIVE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 20,
                          color: isFavorite
                              ? AppTheme.accentRed
                              : AppTheme.textSecondary,
                        ),
                        onPressed: () {
                          setState(() {
                            if (isFavorite) {
                              channelProvider.removeFromFavorites(channel);
                            } else {
                              channelProvider.addToFavorites(channel);
                            }
                          });
                        },
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChannelPlaceholder(String name) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.live_tv,
            size: 40,
            color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
          ),
          SizedBox(height: 8),
          Text(
            name.substring(0, name.length > 15 ? 15 : name.length),
            style: TextStyle(color: AppTheme.textSecondary, fontSize: 11),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
