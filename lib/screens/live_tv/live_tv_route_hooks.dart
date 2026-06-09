import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/live_tv/category_resource_store.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Route and dependency hooks for Live TV navigation.
class LiveTvRouteHooks {
  LiveTvRouteHooks._();

  static void handleDependencyCategories({
    required ChannelProvider provider,
    required LiveTvCategoryState categoryState,
    required bool Function() isMounted,
    required void Function(int channelCount) onEmptyCategories,
    required void Function(List<String> categories) onReplace,
    required void Function() requestRebuild,
  }) {
    if (!provider.hasChannels || categoryState.loading) return;
    final providerCategories = provider.getAllCategoryNames();
    if (providerCategories.isEmpty) {
      onEmptyCategories(provider.channelCount);
      return;
    }
    if (categoryState.names.isEmpty ||
        !_listEquals(categoryState.names, providerCategories)) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!isMounted()) return;
        onReplace(providerCategories);
        requestRebuild();
      });
    }
  }

  static void handleHomeRouteReturn({
    required ChannelProvider provider,
    required LiveTvCategoryState categoryState,
    required LiveTvCategoryResourceStore categoryResources,
    required ScrollController scrollController,
    required bool Function() isMounted,
    required void Function() resetRowScrolls,
    required void Function() resetInitialFocus,
    required void Function() requestCategoryPrefetch,
    bool returningFromPlayer = false,
  }) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (!isMounted()) return;
      if (scrollController.hasClients) {
        scrollController.jumpTo(0);
      }
      resetRowScrolls();
      resetInitialFocus();
      if (!provider.hasChannels || categoryState.loading) return;
      if (categoryState.names.isNotEmpty) return;
      categoryState.prefetchRequested = false;
      final delay = returningFromPlayer
          ? const Duration(seconds: 3)
          : Duration.zero;
      if (delay == Duration.zero) {
        requestCategoryPrefetch();
      } else {
        Future.delayed(delay, () {
          if (!isMounted()) return;
          requestCategoryPrefetch();
        });
      }
    });
  }

  static void maybeRefreshEmptyCategories({
    required int channelCount,
    required LiveTvCategoryState categoryState,
    required void Function() requestCategoryPrefetch,
  }) {
    if (channelCount <= 0 || categoryState.loading) return;
    if (categoryState.names.isNotEmpty) return;
    debugLog(
      'LiveTV: Categories empty but channels present ($channelCount), '
      'requesting prefetch...',
    );
    categoryState.prefetchRequested = false;
    requestCategoryPrefetch();
  }

  static bool _listEquals(List<String> a, List<String> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
