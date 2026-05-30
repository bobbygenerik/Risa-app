import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/screens/epg/epg_category_helpers.dart';
import 'package:iptv_player/screens/epg/epg_channel_page.dart';
import 'package:iptv_player/screens/epg/epg_empty_states.dart';
import 'package:iptv_player/screens/epg/epg_guide_content.dart';
import 'package:iptv_player/screens/epg/epg_snapshot_session.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/state/epg_screen_state.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// Wires [EpgGuideContent] and the channel-page [FutureBuilder] for the screen.
class EpgGuideHost {
  EpgGuideHost({
    required this.epgState,
    required this.channelPageCache,
    required this.snapshotSession,
    required this.isMounted,
    required this.onRebuild,
    required this.onLastCategoryNamesChanged,
    required this.onLastFilteredChannelsChanged,
    required this.sidebarController,
    required this.timeHeaderScrollController,
    required this.horizontalScrollController,
    required this.verticalScrollController,
    required this.refreshAnimation,
    required this.firstChannelFocus,
    required this.refreshButtonFocus,
    required this.firstProgramFocus,
    required this.categoryFocusNodeForIndex,
    required this.channelFocusNodeForChannel,
    required this.programFocusNodeForChannel,
    required this.onRequestNavigationFocus,
    required this.onScrollChannelListToTop,
    required this.onScrollToCurrentTime,
    required this.onRefresh,
    required this.onChannelLongPress,
    required this.onProgramTap,
  });

  final EPGScreenState epgState;
  final EpgChannelPageCache channelPageCache;
  final EpgSnapshotSession snapshotSession;
  final bool Function() isMounted;
  final VoidCallback onRebuild;
  final void Function(List<String> names) onLastCategoryNamesChanged;
  final void Function(List<Channel> channels) onLastFilteredChannelsChanged;

  final ScrollController sidebarController;
  final ScrollController timeHeaderScrollController;
  final ScrollController horizontalScrollController;
  final ScrollController verticalScrollController;
  final AnimationController refreshAnimation;
  final FocusNode firstChannelFocus;
  final FocusNode refreshButtonFocus;
  final FocusNode firstProgramFocus;
  final FocusNode Function(int index) categoryFocusNodeForIndex;
  final FocusNode Function(Channel channel, int index)
      channelFocusNodeForChannel;
  final FocusNode Function(Channel channel) programFocusNodeForChannel;
  final bool Function() onRequestNavigationFocus;
  final VoidCallback onScrollChannelListToTop;
  final void Function({bool animate}) onScrollToCurrentTime;
  final VoidCallback onRefresh;
  final void Function(BuildContext context, Channel channel) onChannelLongPress;
  final void Function(Program program) onProgramTap;

  Widget buildBody({
    required BuildContext context,
    required ChannelProvider channelProvider,
    required IncrementalEpgService epgService,
    required List<String> lastCategoryNames,
    required List<Channel> lastFilteredChannels,
  }) {
    if (!channelProvider.hasChannels) {
      return const EpgEmptyState();
    }

    final resolution = EpgCategoryHelpers.resolveCategoryNames(
      channelProvider: channelProvider,
      lastCategoryNames: lastCategoryNames,
    );
    if (resolution.rawCategories.isNotEmpty) {
      onLastCategoryNamesChanged(List<String>.from(resolution.rawCategories));
    }

    EpgCategoryHelpers.ensureInitialCategorySelection(
      isMounted: isMounted,
      epgState: epgState,
      categoryNames: resolution.categoryNames,
    );

    final channelPageFuture = channelPageCache.ensure(
      channelProvider: channelProvider,
      epgState: epgState,
      isMounted: isMounted,
    );

    return FutureBuilder<List<Channel>>(
      future: channelPageFuture,
      builder: (context, snapshot) {
        if (snapshot.hasError && lastFilteredChannels.isEmpty) {
          return EpgLoadingErrorState(
            error: snapshot.error,
            onRetry: () {
              channelPageCache.invalidate();
              onRebuild();
            },
          );
        }
        if (!snapshot.hasData) {
          if (lastFilteredChannels.isNotEmpty) {
            return buildGuideContent(
              context,
              resolution.categoryNames,
              lastFilteredChannels,
              hasMore: false,
              epgService: epgService,
              showCenteredUpdating: resolution.showCenteredUpdating,
            );
          }
          return const Center(
            child: CircularProgressIndicator(color: AppTheme.primaryBlue),
          );
        }

        final pageSize = epgState.channelsPerPage;
        final expected = (epgState.currentPage + 1) * pageSize;
        final rawChannels = snapshot.data!;
        final hasMore = rawChannels.length > expected;
        final allFilteredChannels = rawChannels.take(expected).toList();
        snapshotSession.scheduleSave(allFilteredChannels);
        onLastFilteredChannelsChanged(allFilteredChannels);

        return buildGuideContent(
          context,
          resolution.categoryNames,
          allFilteredChannels,
          hasMore: hasMore,
          epgService: epgService,
          showCenteredUpdating: resolution.showCenteredUpdating,
        );
      },
    );
  }

  Widget buildGuideContent(
    BuildContext context,
    List<String> categoryNames,
    List<Channel> filteredChannels, {
    required bool hasMore,
    required IncrementalEpgService epgService,
    required bool showCenteredUpdating,
  }) {
    return EpgGuideContent(
      categoryNames: categoryNames,
      filteredChannels: filteredChannels,
      hasMore: hasMore,
      epgService: epgService,
      showCenteredUpdating: showCenteredUpdating,
      selectedCategory: epgState.selectedCategory,
      selectedDate: epgState.selectedDate,
      isLoadingMore: epgState.isLoadingMore,
      programsGridWidth: epgState.calculateProgramsGridWidth(),
      sidebarController: sidebarController,
      timeHeaderScrollController: timeHeaderScrollController,
      horizontalScrollController: horizontalScrollController,
      verticalScrollController: verticalScrollController,
      refreshAnimation: refreshAnimation,
      firstChannelFocus: firstChannelFocus,
      refreshButtonFocus: refreshButtonFocus,
      firstProgramFocus: firstProgramFocus,
      categoryFocusNodeForIndex: categoryFocusNodeForIndex,
      channelFocusNodeForChannel: channelFocusNodeForChannel,
      programFocusNodeForChannel: programFocusNodeForChannel,
      onRequestNavigationFocus: onRequestNavigationFocus,
      onCategorySelected: (category) {
        epgState.setSelectedCategory(category);
        onScrollChannelListToTop();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (isMounted()) {
            firstChannelFocus.requestFocus();
          }
        });
      },
      onLoadMore: () {
        epgState.loadMoreChannels();
        onRebuild();
      },
      onChannelTap: (channel) {
        context.push('/player', extra: channel);
      },
      onChannelLongPress: (channel) => onChannelLongPress(context, channel),
      onProgramTap: onProgramTap,
      onRequestChannelFocus: (channel, index) =>
          channelFocusNodeForChannel(channel, index).requestFocus(),
      onScrollToNow: () => onScrollToCurrentTime(),
      onRefresh: onRefresh,
    );
  }
}
