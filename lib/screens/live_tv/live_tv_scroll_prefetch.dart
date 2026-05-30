import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/screens/live_tv/live_tv_category_coordinator.dart';
import 'package:iptv_player/screens/live_tv/live_tv_layout.dart';
import 'package:iptv_player/screens/live_tv/live_tv_row_height.dart';
import 'package:iptv_player/utils/app_spacing.dart';

/// Scroll-driven category row visibility and load prefetch.
class LiveTvScrollPrefetch {
  LiveTvScrollPrefetch._();

  static void handle({
    required ScrollController scrollController,
    required LiveTvCategoryState categoryState,
    required LiveTvCategoryCoordinator coordinator,
    required BuildContext context,
    required void Function() onUserScroll,
    required void Function(void Function()) setState,
    required double safeScrollOffset,
    double categoryPrefetchExtent = 600,
    int categoryChunkSize = 6,
    int prefetchWindowRows = 3,
  }) {
    if (!scrollController.hasClients || categoryState.names.isEmpty) return;
    final isScrolling = scrollController.position.isScrollingNotifier.value;
    if (isScrolling) {
      onUserScroll();
    }
    final heroHeight = context.heroHeight();
    final cardPeek = context.spacingXl();
    final contentTop = LiveTvLayout.contentTop(heroHeight, cardPeek);
    final rowHeight = LiveTvRowHeight.estimate(context);
    final offset = safeScrollOffset - contentTop;
    if (offset < 0) return;

    // Expanding category rows during scroll (e.g. arrow-up to Watch) freezes TV.
    if (!isScrolling &&
        categoryState.visibleCount < categoryState.names.length &&
        scrollController.position.extentAfter < categoryPrefetchExtent) {
      setState(() {
        categoryState.visibleCount =
            (categoryState.visibleCount + categoryChunkSize)
                .clamp(0, categoryState.names.length);
      });
    }

    final anchor =
        (offset / rowHeight).floor().clamp(0, categoryState.names.length - 1);
    if (anchor == categoryState.lastPrefetchAnchor) return;
    categoryState.lastPrefetchAnchor = anchor;
    final end = math.min(
      categoryState.names.length - 1,
      anchor + prefetchWindowRows,
    );
    for (var i = anchor; i <= end; i++) {
      coordinator.enqueueCategoryLoad(categoryState.names[i]);
    }
  }
}
