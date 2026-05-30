import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/epg/epg_category_sidebar.dart';
import 'package:iptv_player/screens/epg/epg_channel_column.dart';
import 'package:iptv_player/screens/epg/epg_guide_header.dart';
import 'package:iptv_player/screens/epg/epg_program_grid_panel.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// Main EPG guide layout: sidebar, channel column, program grid, and header.
class EpgGuideContent extends StatelessWidget {
  const EpgGuideContent({
    super.key,
    required this.categoryNames,
    required this.filteredChannels,
    required this.hasMore,
    required this.epgService,
    required this.showCenteredUpdating,
    required this.selectedCategory,
    required this.selectedDate,
    required this.isLoadingMore,
    required this.programsGridWidth,
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
    required this.onCategorySelected,
    required this.onLoadMore,
    required this.onChannelTap,
    required this.onChannelLongPress,
    required this.onProgramTap,
    required this.onRequestChannelFocus,
    required this.onScrollToNow,
    required this.onRefresh,
  });

  final List<String> categoryNames;
  final List<Channel> filteredChannels;
  final bool hasMore;
  final IncrementalEpgService epgService;
  final bool showCenteredUpdating;
  final String? selectedCategory;
  final DateTime selectedDate;
  final bool isLoadingMore;
  final double programsGridWidth;
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
  final VoidCallback onRequestNavigationFocus;
  final void Function(String category) onCategorySelected;
  final VoidCallback onLoadMore;
  final void Function(Channel channel) onChannelTap;
  final void Function(Channel channel) onChannelLongPress;
  final void Function(Program program) onProgramTap;
  final void Function(Channel channel, int index) onRequestChannelFocus;
  final VoidCallback onScrollToNow;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    const headerHeight = AppSpacing.epgRowHeight + 4.0;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF080808),
            AppTheme.darkBackground,
          ],
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: headerHeight),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: AppSpacing.sidebarCollapsedWidth),
                  child: Row(
                    children: [
                      EpgCategorySidebar(
                        categories: categoryNames,
                        selectedCategory: selectedCategory,
                        categoryFocusNodeForIndex: categoryFocusNodeForIndex,
                        showCenteredUpdating: showCenteredUpdating,
                        onRequestNavigationFocus: onRequestNavigationFocus,
                        onCategorySelected: onCategorySelected,
                      ),
                      SizedBox(
                        width: context.channelSidebarWidth(),
                        child: EpgChannelColumn(
                          channels: filteredChannels,
                          categories: categoryNames,
                          selectedDate: selectedDate,
                          selectedCategory: selectedCategory,
                          isLoadingMore: isLoadingMore,
                          hasMore: hasMore,
                          sidebarController: sidebarController,
                          firstChannelFocus: firstChannelFocus,
                          refreshButtonFocus: refreshButtonFocus,
                          firstProgramFocus: firstProgramFocus,
                          channelFocusNodeForChannel:
                              channelFocusNodeForChannel,
                          programFocusNodeForChannel:
                              programFocusNodeForChannel,
                          categoryFocusNodeForIndex: categoryFocusNodeForIndex,
                          onLoadMore: onLoadMore,
                          onChannelTap: onChannelTap,
                          onChannelLongPress: onChannelLongPress,
                        ),
                      ),
                      Expanded(
                        child: EpgProgramGridPanel(
                          channels: filteredChannels,
                          epgService: epgService,
                          isLoadingMore: isLoadingMore,
                          gridWidth: programsGridWidth,
                          timeHeaderScrollController:
                              timeHeaderScrollController,
                          horizontalScrollController:
                              horizontalScrollController,
                          verticalScrollController: verticalScrollController,
                          firstProgramFocusNode: firstProgramFocus,
                          programFocusNodeForChannel:
                              programFocusNodeForChannel,
                          onProgramTap: onProgramTap,
                          onRequestChannelFocus: onRequestChannelFocus,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: AppSpacing.sidebarCollapsedWidth,
            right: 0,
            child: EpgGuideHeader(
              selectedDate: selectedDate,
              isLoading: epgService.isLoading,
              refreshAnimation: refreshAnimation,
              refreshButtonFocus: refreshButtonFocus,
              firstProgramFocus: firstProgramFocus,
              onScrollToNow: onScrollToNow,
              onRefresh: onRefresh,
            ),
          ),
        ],
      ),
    );
  }
}
