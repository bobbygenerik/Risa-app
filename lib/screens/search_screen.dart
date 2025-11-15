import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/top_navigation_bar.dart';
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
  late String _currentTime;
  late Timer _timeTimer;

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timeTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() => _updateTime());
      }
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    final hour = now.hour == 0 ? 12 : (now.hour > 12 ? now.hour - 12 : now.hour);
    final period = now.hour < 12 ? 'AM' : 'PM';
    _currentTime = '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $period';
  }

  @override
  void dispose() {
    _timeTimer.cancel();
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
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          context.go('/home');
        }
      },
      child: Scaffold(
        backgroundColor: AppTheme.darkBackground,
        body: Stack(
          children: [
            // Main content
            SingleChildScrollView(
              child: Column(
                children: [
                  // Top padding for floating nav
                  SizedBox(height: 100),
                  // Page title
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: AppTheme.primaryBlue, size: 28),
                        SizedBox(width: 12),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: AppTheme.textPrimary,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Search Bar
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: TextField(
                      controller: _searchController,
                      autofocus: false,
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
                        filled: true,
                        fillColor: AppTheme.cardBackground,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: AppTheme.primaryBlue, width: 2),
                        ),
                      ),
                      onChanged: _performSearch,
                    ),
                  ),
                  SizedBox(height: 24),
                  // Results
                  _buildResults(),
                  SizedBox(height: 40),
                ],
              ),
            ),
            // Floating Navigation Bar
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: TopNavigationBar(
                activeTab: 'search',
                tabs: [
                  NavTab(id: 'home', label: 'LIVE TV', icon: Icons.live_tv, route: '/home'),
                  NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
                  NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
                ],
                currentTime: _currentTime,
                showLogoAndTime: true,
                onSearchSubmit: (query) {
                  _searchController.text = query;
                  _performSearch(query);
                },
              ),
            ),
          ],
        ),
      ),
    );
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

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 1200 ? 6 : 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          final channel = _searchResults[index];
          return _buildChannelCard(channel);
        },
      ),
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
