import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/category_resource_store.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/screens/live_tv/focus_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_section.dart';
import 'package:iptv_player/screens/live_tv/timer_manager.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_spacing.dart';

/// Builds [LiveTvChannelSectionBindings] for the Live TV screen.
class LiveTvBindingsFactory {
  LiveTvBindingsFactory._();

  static LiveTvChannelSectionBindings create({
    required LiveTvCategoryResourceStore categoryResources,
    required LiveTvCategoryState categoryState,
    required LiveTvFocusCache cardFocusCache,
    required ScrollController mainScrollController,
    required FocusNode watchButtonFocus,
    required FocusNode firstChannelFocus,
    required FocusNode firstFeaturedFocus,
    required Map<String, int> focusedIndexBySection,
    required LiveTvArtworkResolver artworkResolver,
    required ValueListenable<int> cardArtworkVersion,
    required LiveTvTimerManager timerManager,
    required int heroPrefetchWindow,
    required int rowPrefetchWindow,
    required void Function(String category) onScheduleCategoryPage,
    required void Function(String sectionKey, ScrollController controller)
        onScheduleRowScrollReset,
    required void Function(
      String sectionKey,
      IncrementalEpgService epg,
      List<String> channelIds,
      List<String?> channelNames,
    ) onScheduleVisibleRowEpg,
    required void Function(Channel channel) onOpenPlayer,
    required void Function(Channel channel) onShowEpgSelector,
    required VoidCallback onScrollToHeroPeek,
    required void Function(String key, int idx, String epgId, bool hasFocus)
        onCardFocusChanged,
    required bool Function() requestNavigationFocus,
  }) {
    return LiveTvChannelSectionBindings(
      categoryResources: categoryResources,
      categoryState: categoryState,
      cardFocusCache: cardFocusCache,
      mainScrollController: mainScrollController,
      watchButtonFocus: watchButtonFocus,
      firstChannelFocus: firstChannelFocus,
      firstFeaturedFocus: firstFeaturedFocus,
      focusedIndexBySection: focusedIndexBySection,
      artworkResolver: artworkResolver,
      cardArtworkVersion: cardArtworkVersion,
      sidebarInset: () => AppSpacing.sidebarCollapsedWidth,
      heroPrefetchWindow: heroPrefetchWindow,
      rowPrefetchWindow: rowPrefetchWindow,
      onScheduleCategoryPage: onScheduleCategoryPage,
      onScheduleRowScrollReset: onScheduleRowScrollReset,
      onScheduleVisibleRowEpg: onScheduleVisibleRowEpg,
      onOpenPlayer: onOpenPlayer,
      onShowEpgSelector: onShowEpgSelector,
      onScrollToHeroPeek: onScrollToHeroPeek,
      onCardFocusChanged: onCardFocusChanged,
      requestNavigationFocus: requestNavigationFocus,
    );
  }
}
