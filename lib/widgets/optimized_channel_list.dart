import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/channel_provider.dart';
import '../models/channel.dart';
import 'cached_image.dart';

/// Optimized channel list widget using virtual scrolling
/// Prevents memory bloat by only creating Channel objects for visible items
class OptimizedChannelList extends StatelessWidget {
  final String? category;
  final Function(Channel)? onChannelTap;
  final int itemsPerPage;

  const OptimizedChannelList({
    super.key,
    this.category,
    this.onChannelTap,
    this.itemsPerPage = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ChannelProvider>(
      builder: (context, provider, child) {
        // Get channel maps instead of Channel objects (memory efficient)
        final channelMaps = category != null
            ? provider.getChannelMapsForCategory(category!, limit: itemsPerPage)
            : provider.getChannelMapsForUI(limit: itemsPerPage);

        if (channelMaps.isEmpty) {
          return const Center(
            child: Text('No channels available'),
          );
        }

        return ListView.builder(
          itemCount: channelMaps.length,
          itemBuilder: (context, index) {
            return OptimizedChannelTile(
              channelMap: channelMaps[index],
              onTap: onChannelTap,
            );
          },
        );
      },
    );
  }
}

/// Optimized channel tile that creates Channel object only when needed
class OptimizedChannelTile extends StatelessWidget {
  final Map<String, dynamic> channelMap;
  final Function(Channel)? onTap;

  const OptimizedChannelTile({
    super.key,
    required this.channelMap,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final name = channelMap['name'] as String? ?? 'Unknown Channel';
    final logoUrl = channelMap['logoUrl'] as String?;
    final groupTitle = channelMap['groupTitle'] as String? ?? 'Uncategorized';

    return ListTile(
      leading: logoUrl != null
          ? CachedImage(
              imageUrl: logoUrl,
              width: 48,
              height: 48,
              memCacheWidth: 150, // Optimize memory: 48px * 3x density ≈ 150px
              fit: BoxFit.contain,
            )
          : const Icon(Icons.tv, size: 48),
      title: Text(
        name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        groupTitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      onTap: onTap != null
          ? () {
              // Only create Channel object when actually needed
              final channel = Channel.fromMap(channelMap);
              onTap!(channel);
            }
          : null,
    );
  }
}

/// Paginated channel list for large datasets
class PaginatedChannelList extends StatefulWidget {
  final String? category;
  final Function(Channel)? onChannelTap;
  final int pageSize;

  const PaginatedChannelList({
    super.key,
    this.category,
    this.onChannelTap,
    this.pageSize = 50,
  });

  @override
  State<PaginatedChannelList> createState() => _PaginatedChannelListState();
}

class _PaginatedChannelListState extends State<PaginatedChannelList> {
  final ScrollController _scrollController = ScrollController();
  List<Map<String, dynamic>> _loadedChannels = [];
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _loadInitialChannels();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadMoreChannels();
    }
  }

  void _loadInitialChannels() {
    final provider = context.read<ChannelProvider>();
    final channelMaps = widget.category != null
        ? provider.getChannelMapsForCategory(widget.category!,
            limit: widget.pageSize)
        : provider.getChannelMapsForUI(limit: widget.pageSize);

    setState(() {
      _loadedChannels = channelMaps;
    });
  }

  void _loadMoreChannels() {
    if (_isLoadingMore) return;

    setState(() {
      _isLoadingMore = true;
    });

    // Simulate loading more channels (in real implementation,
    // you'd extend the provider to support offset/limit)
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() {
          _isLoadingMore = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _loadedChannels.length + (_isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= _loadedChannels.length) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
          );
        }

        return OptimizedChannelTile(
          channelMap: _loadedChannels[index],
          onTap: widget.onChannelTap,
        );
      },
    );
  }
}
