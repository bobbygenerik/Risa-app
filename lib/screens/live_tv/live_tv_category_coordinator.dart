import 'dart:async';
import 'dart:math' as math;

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/category_resource_store.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_fallback_categories.dart';
import 'package:iptv_player/utils/debug_helper.dart';

typedef LiveTvCategoryMounted = bool Function();
typedef LiveTvCategoryVoidCallback = void Function();
typedef LiveTvCategoryEpgPrefetch = void Function(String category, List<Channel> channels);
typedef LiveTvCategoryArtworkPrefetch = void Function(List<Channel> channels, {int limit});

/// Queues and loads category channel rows for the Live TV screen.
class LiveTvCategoryCoordinator {
  LiveTvCategoryCoordinator({
    required this.categoryState,
    required this.categoryResources,
    required this.getChannelProvider,
    required this.isMounted,
    required this.onStateChanged,
    required this.onInitHeroIndex,
    required this.prefetchEpgForRow,
    required this.prefetchRowArtwork,
    required this.scheduleSnapshotSave,
    this.initialCategoryPrefetchCount = 20,
    this.rowInitialFetch = 12,
    this.rowFetchStep = 16,
    this.maxCategoryLoads = 2,
  });

  final LiveTvCategoryState categoryState;
  final LiveTvCategoryResourceStore categoryResources;
  final ChannelProvider Function() getChannelProvider;
  final LiveTvCategoryMounted isMounted;
  final LiveTvCategoryVoidCallback onStateChanged;
  final void Function(int channelCount) onInitHeroIndex;
  final LiveTvCategoryEpgPrefetch prefetchEpgForRow;
  final LiveTvCategoryArtworkPrefetch prefetchRowArtwork;
  final LiveTvCategoryVoidCallback scheduleSnapshotSave;

  final int initialCategoryPrefetchCount;
  final int rowInitialFetch;
  final int rowFetchStep;
  final int maxCategoryLoads;

  final List<String> _categoryCacheOrder = [];

  List<String> buildFallbackCategories(ChannelProvider provider) =>
      LiveTvFallbackCategories.fromProvider(provider);

  Future<void> prefetchInitialRows({bool force = false}) async {
    if (categoryState.loading) return;
    if (!force && categoryState.names.isNotEmpty) return;
    categoryState.loading = true;
    try {
      final channelProvider = getChannelProvider();
      final categories = await channelProvider.getAllCategoryNamesAsync();
      debugLog('LiveTV: Fetched ${categories.length} categories');
      if (!isMounted()) return;
      final effectiveCategories = categories.isNotEmpty
          ? categories
          : buildFallbackCategories(channelProvider);
      if (force) {
        categoryState.channelCache.clear();
        _categoryCacheOrder.clear();
        categoryState.offsets.clear();
        categoryState.hasMore.clear();
      }
      categoryState.replaceNames(effectiveCategories);

      onInitHeroIndex(channelProvider.channelCount);

      categoryResources.dispose();
      categoryState.lastPrefetchAnchor = -1;
      if (categoryState.visibleCount < categoryState.names.length) {
        categoryState.visibleCount = categoryState.names.length;
      }
      onStateChanged();
      await prefetchInitialCategoryRows();
    } catch (e) {
      debugLog('LiveTV: Error prefetching rows: $e');
    } finally {
      categoryState.loading = false;
    }
  }

  Future<void> prefetchInitialCategoryRows() async {
    if (categoryState.names.isEmpty) return;
    final end = math.min(initialCategoryPrefetchCount, categoryState.names.length);
    final categories = categoryState.names.take(end).toList();
    final channelProvider = getChannelProvider();
    try {
      final batch = await channelProvider.getCategoryPreviewBatch(
        categories,
        limit: rowInitialFetch,
      );
      if (!isMounted()) return;
      for (final category in categories) {
        final channels = batch[category] ?? const [];
        if (channels.isEmpty) {
          enqueueCategoryLoad(category);
          continue;
        }
        categoryState.channelCache[category] = channels;
        categoryState.offsets[category] = channels.length;
        categoryState.hasMore[category] = channels.length >= rowInitialFetch;
        prefetchEpgForRow(category, channels);
        prefetchRowArtwork(channels, limit: 15);
        notifyCategoryRow(category);
      }
      scheduleSnapshotSave();
    } catch (e) {
      debugLog('LiveTV: Batch category prefetch failed: $e');
      for (final category in categories) {
        enqueueCategoryLoad(category);
      }
    }
  }

  void enqueueCategoryLoad(String category, {bool append = false}) {
    if (!append && categoryState.channelCache.containsKey(category)) {
      return;
    }
    if (categoryState.channelLoading.contains(category) ||
        categoryState.loadQueue.contains(category)) {
      return;
    }
    categoryState.channelLoading.add(category);
    categoryState.loadQueue.add(category);
    if (append) {
      categoryState.appendQueue.add(category);
    }
    drainCategoryLoadQueue();
  }

  void drainCategoryLoadQueue() {
    if (categoryState.activeLoads >= maxCategoryLoads) return;
    while (categoryState.activeLoads < maxCategoryLoads &&
        categoryState.loadQueue.isNotEmpty) {
      final category = categoryState.loadQueue.removeFirst();
      final append = categoryState.appendQueue.remove(category);
      categoryState.activeLoads++;
      unawaited(loadCategoryRowInternal(category, append: append));
    }
  }

  Future<void> loadCategoryRowInternal(String category, {bool append = false}) async {
    var timedOut = false;
    var retryLoad = false;
    var removeCategory = false;
    try {
      final channelProvider = getChannelProvider();
      final offset = append ? (categoryState.offsets[category] ?? 0) : 0;
      final limit = append ? rowFetchStep : rowInitialFetch;

      final channels = await channelProvider
          .getChannelsForCategoryAsync(
            category,
            offset: offset,
            limit: limit,
          )
          .timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          debugLog('LiveTV: Timeout loading category "$category"');
          timedOut = true;
          return <Channel>[];
        },
      );

      if (!isMounted()) return;
      if (timedOut) {
        retryLoad = true;
      }
      if (channels.isNotEmpty) {
        if (append && categoryState.channelCache.containsKey(category)) {
          categoryState.channelCache[category] = [
            ...categoryState.channelCache[category] ?? [],
            ...channels,
          ];
        } else {
          categoryState.channelCache[category] = channels;
        }
        if (!append) {
          final categoryIndex = categoryState.names.indexOf(category);
          if (categoryIndex >= 0 && categoryIndex < initialCategoryPrefetchCount) {
            prefetchEpgForRow(category, channels);
          }
        }
        prefetchRowArtwork(channels, limit: 15);
        categoryState.offsets[category] = offset + channels.length;
      } else if (!append) {
        final channelCount = channelProvider.getChannelCountForCategory(category);
        if (channelCount == 0) {
          removeCategory = true;
        } else {
          retryLoad = true;
        }
      }
      if (!timedOut && channels.length < limit) {
        categoryState.hasMore[category] = false;
      } else if (!timedOut) {
        categoryState.hasMore[category] = true;
      }
      if (channels.isNotEmpty) {
        scheduleSnapshotSave();
      }
    } catch (e) {
      debugLog('LiveTV: Failed to load category "$category": $e');
      retryLoad = true;
    } finally {
      if (isMounted()) {
        categoryState.channelLoading.remove(category);
        categoryState.activeLoads =
            (categoryState.activeLoads - 1).clamp(0, 9999);
        drainCategoryLoadQueue();
        if (removeCategory) {
          removeCategoryRow(category);
        } else {
          if (retryLoad && categoryState.channelCache[category]?.isEmpty == true) {
            categoryState.channelCache.remove(category);
          }
          notifyCategoryRow(category);
        }
        if (retryLoad && !removeCategory) {
          Future.delayed(const Duration(seconds: 2), () {
            if (!isMounted()) return;
            if (!categoryState.nameSet.contains(category)) return;
            if (categoryState.channelLoading.contains(category)) return;
            if (categoryState.channelCache.containsKey(category)) return;
            enqueueCategoryLoad(category);
          });
        }
      }
    }
  }

  void notifyCategoryRow(String category) {
    final notifier = categoryResources.rowNotifiers[category];
    notifier?.value++;
  }

  void replaceCategories(List<String> categories) {
    final next = List<String>.from(categories);
    final nextSet = next.toSet();
    categoryState.replaceNames(next);
    categoryState.visibleCount = categoryState.names.length;
    categoryState.lastPrefetchAnchor = -1;
    purgeCategoryState(nextSet);
  }

  void purgeCategoryState(Set<String> keep) {
    categoryState.purgeExcept(keep);
    categoryResources.purgeExcept(keep);
  }

  void removeCategoryRow(String category) {
    final removed = categoryState.nameSet.remove(category);
    if (!removed) return;
    categoryState.names.remove(category);
    purgeCategoryState(categoryState.nameSet);
    if (categoryState.visibleCount > categoryState.names.length) {
      categoryState.visibleCount = categoryState.names.length;
    }
    categoryState.lastPrefetchAnchor = -1;
  }

  void requestMoreCategoryChannels(String category) {
    final hasMore = categoryState.hasMore[category] ?? true;
    if (!hasMore) return;
    if (categoryState.channelLoading.contains(category)) return;
    enqueueCategoryLoad(category, append: true);
  }
}
