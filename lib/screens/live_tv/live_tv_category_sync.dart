import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Category list sync during build and dependency changes.
class LiveTvCategorySync {
  LiveTvCategorySync._();

  static void scheduleBuildSync({
    required List<String> latestCategories,
    required LiveTvCategoryState categoryState,
    required bool Function() isMounted,
    required void Function(List<String> categories) onReplace,
    required void Function() prefetchInitialRows,
  }) {
    if (latestCategories.isEmpty) return;
    final shouldReplace = categoryState.names.isEmpty ||
        !listEquals(categoryState.names, latestCategories);
    if (shouldReplace) {
      debugLog(
        'LiveTV: Syncing categories (provider: ${latestCategories.length}, '
        'current: ${categoryState.names.length})',
      );
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!isMounted()) return;
        onReplace(latestCategories);
        prefetchInitialRows();
      });
      return;
    }
    if (categoryState.visibleCount < categoryState.names.length) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!isMounted()) return;
        categoryState.visibleCount = categoryState.names.length;
      });
    }
  }

  static void applyGateSyncCategories({
    required List<String> syncCategories,
    required LiveTvCategoryState categoryState,
    required void Function() prefetchInitialRows,
  }) {
    debugLog(
      'LiveTV: Sync-built ${syncCategories.length} categories from channels',
    );
    categoryState.replaceNames(syncCategories);
    categoryState.visibleCount = categoryState.names.length;
    prefetchInitialRows();
  }
}
