import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/live_tv_bindings_factory.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_section.dart';
import 'package:iptv_player/screens/live_tv/live_tv_screen_deps.dart';
import 'package:iptv_player/screens/live_tv/live_tv_scroll_navigation.dart';
import 'package:iptv_player/screens/live_tv/live_tv_screen_config.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

/// Builds channel section bindings from screen deps.
class LiveTvBindingsBuilder {
  LiveTvBindingsBuilder({
    required this.deps,
    required this.context,
    required this.isMounted,
    required this.requestNavigationFocus,
    required this.onOpenPlayer,
    required this.onShowEpgSelector,
  });

  final LiveTvScreenDeps deps;
  final BuildContext context;
  final bool Function() isMounted;
  final bool Function() requestNavigationFocus;
  final void Function(Channel channel) onOpenPlayer;
  final void Function(Channel channel) onShowEpgSelector;

  LiveTvChannelSectionBindings build() {
    return LiveTvBindingsFactory.create(
      categoryResources: deps.categoryResources,
      categoryState: deps.categoryState,
      cardFocusCache: deps.cardFocusCache,
      mainScrollController: deps.scrollController,
      watchButtonFocus: deps.watchButtonFocus,
      firstChannelFocus: deps.firstChannelFocus,
      firstFeaturedFocus: deps.firstFeaturedFocus,
      focusedIndexBySection: deps.focusedIndexBySection,
      artworkResolver: deps.artworkResolver,
      timerManager: deps.timerManager,
      heroPrefetchWindow: LiveTvScreenConfig.heroPrefetchWindow,
      rowPrefetchWindow: LiveTvScreenConfig.rowPrefetchWindow,
      onScheduleCategoryPage: (category) => deps.rowTimers.scheduleCategoryPage(
        category: category,
        onRequestMore: deps.categoryCoordinator.requestMoreCategoryChannels,
      ),
      onScheduleRowScrollReset: (key, controller) =>
          deps.rowTimers.scheduleRowScrollReset(
        sectionKey: key,
        controller: controller,
      ),
      onScheduleVisibleRowEpg:
          (key, IncrementalEpgService epg, ids, names) =>
              deps.rowTimers.scheduleVisibleRowEpg(
        sectionKey: key,
        epgService: epg,
        channelIds: ids,
        channelNames: names,
      ),
      onOpenPlayer: onOpenPlayer,
      onShowEpgSelector: onShowEpgSelector,
      onScrollToHeroPeek: () => LiveTvScrollNavigation.scrollToHeroPeek(
        context: context,
        controller: deps.scrollController,
        userHasScrolled: deps.userHasScrolled,
        isMounted: isMounted,
      ),
      onCardFocusChanged: (key, idx, epgId, hasFocus) {
        if (hasFocus) {
          deps.focusedIndexBySection[key] = idx;
          deps.lastFocusedCardKey = '$key|$epgId|$idx';
        } else if (deps.focusedIndexBySection[key] == idx) {
          deps.focusedIndexBySection[key] = -1;
        }
      },
      requestNavigationFocus: requestNavigationFocus,
    );
  }
}
