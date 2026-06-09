import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import '../providers/channel_provider.dart';
import '../models/channel.dart';
import 'cached_image.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/shared_image_cache_manager.dart';

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
        final future = category != null
            ? provider.getChannelsForCategoryAsync(
                category!,
                limit: itemsPerPage,
              )
            : provider.getChannelsPage(limit: itemsPerPage);

        return FutureBuilder<List<Channel>>(
          future: future,
          builder: (context, snapshot) {
            final channels = snapshot.data ?? const <Channel>[];
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (channels.isEmpty) {
              return const Center(
                child: Text('No channels available'),
              );
            }

            return ListView.builder(
              itemCount: channels.length,
              itemBuilder: (context, index) {
                return OptimizedChannelTile(
                  channel: channels[index],
                  onTap: onChannelTap,
                );
              },
            );
          },
        );
      },
    );
  }
}

/// Optimized channel tile that creates Channel object only when needed
class OptimizedChannelTile extends StatelessWidget {
  final Channel channel;
  final Function(Channel)? onTap;

  const OptimizedChannelTile({
    super.key,
    required this.channel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final name = channel.name;
    final logoUrl = channel.logoUrl;
    final groupTitle = channel.groupTitle ?? 'Uncategorized';

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
      onTap: onTap != null ? () => onTap!(channel) : null,
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
  List<Channel> _loadedChannels = [];
  bool _isLoadingMore = false;
  bool _hasMore = true;

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

  Future<void> _loadInitialChannels() async {
    final provider = context.read<ChannelProvider>();
    final channels = widget.category != null
        ? await provider.getChannelsForCategoryAsync(
            widget.category!,
            limit: widget.pageSize,
          )
        : await provider.getChannelsPage(limit: widget.pageSize);
    if (!mounted) return;

    setState(() {
      _loadedChannels = channels;
      _hasMore = channels.length == widget.pageSize;
    });
    _prefetchLogos(channels.take(12));
  }

  Future<void> _loadMoreChannels() async {
    if (_isLoadingMore || !_hasMore) return;

    setState(() {
      _isLoadingMore = true;
    });

    final provider = context.read<ChannelProvider>();
    final next = widget.category != null
        ? await provider.getChannelsForCategoryAsync(
            widget.category!,
            offset: _loadedChannels.length,
            limit: widget.pageSize,
          )
        : await provider.getChannelsPage(
            offset: _loadedChannels.length,
            limit: widget.pageSize,
          );
    if (!mounted) return;
    setState(() {
      _loadedChannels.addAll(next);
      _hasMore = next.length == widget.pageSize;
      _isLoadingMore = false;
    });
    _prefetchLogos(next.take(12));
  }

  void _prefetchLogos(Iterable<Channel> channels) {
    for (final channel in channels) {
      final raw = channel.logoUrl?.trim();
      if (raw == null || raw.isEmpty) continue;
      final url = normalizeImageUrl(raw);
      if (ImageFailureCache.shouldSkipLogo(url)) continue;
      precacheImage(
        CachedNetworkImageProvider(
          url,
          headers: HttpClientService().imageHeaders,
          cacheManager: SharedImageCacheManager.instance,
        ),
        context,
        onError: (error, stackTrace) {
          ImageFailureCache.recordFailure(url, error);
        },
      );
    }
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
          channel: _loadedChannels[index],
          onTap: widget.onChannelTap,
        );
      },
    );
  }
}
