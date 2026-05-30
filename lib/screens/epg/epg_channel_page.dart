import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/state/epg_screen_state.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Cached channel-page fetch keyed by category, page, and favorites.
class EpgChannelPageCache {
  Future<List<Channel>>? future;
  String pageKey = '';

  void invalidate() {
    future = null;
    pageKey = '';
  }

  Future<List<Channel>> ensure({
    required ChannelProvider channelProvider,
    required EPGScreenState epgState,
    required bool Function() isMounted,
  }) {
    final categoryKey = epgState.selectedCategory ?? 'all';
    final favorites = epgState.epgFavoriteChannelIds;
    final favoritesKey = favorites.isEmpty ? '0' : favorites.take(8).join('|');
    final pageKey = '$categoryKey|${epgState.currentPage}|$favoritesKey';
    if (epgState.selectedCategory == '⭐ Favorites' && favorites.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (isMounted()) {
          epgState.setSelectedCategory(null);
        }
      });
    }
    if (future == null || this.pageKey != pageKey) {
      this.pageKey = pageKey;
      future = _fetchPage(channelProvider: channelProvider, epgState: epgState);
    }
    return future!;
  }

  Future<List<Channel>> _fetchPage({
    required ChannelProvider channelProvider,
    required EPGScreenState epgState,
  }) async {
    final start = DateTime.now();
    final pageSize = epgState.channelsPerPage;
    final expected = (epgState.currentPage + 1) * pageSize;
    final fetchLimit = expected + 1;
    if (epgState.selectedCategory == '⭐ Favorites') {
      final result = channelProvider.getFilteredChannels(
        favoriteIds: epgState.epgFavoriteChannelIds,
        excludeHidden: true,
        limit: fetchLimit,
      );
      debugLog(
          'EPG Screen: Favorites fetch took ${DateTime.now().difference(start).inMilliseconds}ms');
      return result;
    }
    if (epgState.selectedCategory != null) {
      final result = await channelProvider.getFilteredChannelsAsync(
        category: epgState.selectedCategory,
        excludeHidden: true,
        limit: fetchLimit,
      );
      debugLog(
          'EPG Screen: Category "${epgState.selectedCategory}" fetch took ${DateTime.now().difference(start).inMilliseconds}ms');
      return result;
    }
    final result = await channelProvider.getFilteredChannelsAsync(
      excludeHidden: true,
      limit: fetchLimit,
    );
    debugLog(
        'EPG Screen: All channels fetch took ${DateTime.now().difference(start).inMilliseconds}ms');
    return result;
  }
}
