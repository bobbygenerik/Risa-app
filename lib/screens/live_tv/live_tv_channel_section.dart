import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/category_resource_store.dart';
import 'package:iptv_player/screens/live_tv/category_state.dart';
import 'package:iptv_player/screens/live_tv/focus_cache.dart';
import 'package:iptv_player/screens/live_tv/live_tv_artwork_resolver.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_row_card.dart';
import 'package:iptv_player/screens/live_tv/live_tv_formatters.dart';
import 'package:iptv_player/screens/live_tv/live_tv_layout.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/memory_manager.dart';
import 'package:iptv_player/widgets/horizontal_channel_row.dart';
import 'package:provider/provider.dart';

/// Dependencies for [LiveTvChannelSection] provided by the screen state.
class LiveTvChannelSectionBindings {
  const LiveTvChannelSectionBindings({
    required this.categoryResources,
    required this.categoryState,
    required this.cardFocusCache,
    required this.mainScrollController,
    required this.watchButtonFocus,
    required this.firstChannelFocus,
    required this.firstFeaturedFocus,
    required this.focusedIndexBySection,
    required this.artworkResolver,
    required this.sidebarInset,
    required this.heroPrefetchWindow,
    required this.rowPrefetchWindow,
    required this.onScheduleCategoryPage,
    required this.onScheduleRowScrollReset,
    required this.onScheduleVisibleRowEpg,
    required this.onOpenPlayer,
    required this.onShowEpgSelector,
    required this.onScrollToHeroPeek,
    required this.onCardFocusChanged,
    required this.requestNavigationFocus,
  });

  final LiveTvCategoryResourceStore categoryResources;
  final LiveTvCategoryState categoryState;
  final LiveTvFocusCache cardFocusCache;
  final ScrollController mainScrollController;
  final FocusNode watchButtonFocus;
  final FocusNode firstChannelFocus;
  final FocusNode firstFeaturedFocus;
  final Map<String, int> focusedIndexBySection;
  final LiveTvArtworkResolver artworkResolver;
  final double Function() sidebarInset;
  final int heroPrefetchWindow;
  final int rowPrefetchWindow;
  final void Function(String category) onScheduleCategoryPage;
  final void Function(String sectionKey, ScrollController controller)
      onScheduleRowScrollReset;
  final void Function(
    String sectionKey,
    IncrementalEpgService epgService,
    List<String> channelIds,
    List<String?> channelNames,
  ) onScheduleVisibleRowEpg;
  final void Function(Channel channel) onOpenPlayer;
  final void Function(Channel channel) onShowEpgSelector;
  final VoidCallback onScrollToHeroPeek;
  final void Function(
    String sectionKey,
    int index,
    String channelEpgId,
    bool hasFocus,
  ) onCardFocusChanged;
  final bool Function() requestNavigationFocus;

  FocusNode focusNodeForCard(
    String sectionKey,
    Channel channel,
    int index, {
    required bool isFirstRow,
    required bool allowCategoryPaging,
  }) {
    if (isFirstRow && index == 0) {
      return allowCategoryPaging ? firstChannelFocus : firstFeaturedFocus;
    }
    return cardFocusCache.nodeForCard(sectionKey, channel, index);
  }

  bool shouldPrefetchArt(
    BuildContext context,
    String sectionKey,
    int index,
    ScrollController controller,
    double cardWidth,
    double cardGap,
    EdgeInsets padding,
    bool isFirstRow,
  ) {
    if (!_isIndexVisibleInRow(
      context,
      controller,
      index,
      cardWidth,
      cardGap,
      padding,
    )) {
      return false;
    }
    final window = MemoryManager.isLowMemory
        ? 1
        : (isFirstRow ? heroPrefetchWindow : rowPrefetchWindow);
    final focusedIndex = focusedIndexBySection[sectionKey];
    if (focusedIndex == null) {
      return index < window;
    }
    return (index - focusedIndex).abs() <= window;
  }

  bool _isIndexVisibleInRow(
    BuildContext context,
    ScrollController controller,
    int index,
    double cardWidth,
    double cardGap,
    EdgeInsets padding,
  ) {
    final itemWidth = cardWidth + cardGap;
    if (itemWidth <= 0) return false;

    double offset;
    double viewport;
    if (controller.hasClients) {
      final positions = controller.positions;
      if (positions.isNotEmpty) {
        final position = positions.first;
        offset = position.pixels;
        viewport = position.viewportDimension;
      } else {
        final screenWidth = MediaQuery.of(context).size.width;
        viewport = screenWidth - padding.horizontal;
        offset = 0.0;
      }
    } else {
      final screenWidth = MediaQuery.of(context).size.width;
      viewport = screenWidth - padding.horizontal;
      offset = 0.0;
    }

    if (viewport <= 0) return false;
    final startIndex = (offset / itemWidth).floor();
    final endIndex = ((offset + viewport) / itemWidth).ceil() - 1;
    return index >= startIndex && index <= endIndex;
  }
}

/// Horizontal channel row with EPG filtering and deduplication.
class LiveTvChannelSection extends StatelessWidget {
  const LiveTvChannelSection({
    super.key,
    required this.title,
    required this.channels,
    required this.bindings,
    this.isFirstRow = false,
    this.isFirstCategoryRow = false,
    this.allowCategoryPaging = true,
  });

  final String title;
  final List<Channel> channels;
  final LiveTvChannelSectionBindings bindings;
  final bool isFirstRow;
  final bool isFirstCategoryRow;
  final bool allowCategoryPaging;

  @override
  Widget build(BuildContext context) {
    if (channels.isEmpty) return const SizedBox.shrink();

    final epgService = context.read<IncrementalEpgService>();
    final filteredChannels = <Channel>[];
    final seenProgramKeys = <String>{};
    final missingIds = <String>[];
    final missingNames = <String?>[];

    for (final channel in channels) {
      final channelId = channel.epgLookupId;
      final program = epgService.getCurrentProgram(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      // Only surface a channel that has a show airing right now. A null program
      // means EPG hasn't loaded for it yet — schedule a lazy load so it can
      // appear on a later rebuild once data arrives.
      if (program == null) {
        missingIds.add(channelId);
        missingNames.add(channel.epgLookupNameFallback);
        continue;
      }
      if (!program.isCurrentlyPlaying) {
        continue;
      }

      if (isFirstRow && program.title.isNotEmpty) {
        final displayTitle =
            bindings.artworkResolver.displayProgramTitle(program, channel);
        final normalizedTitle =
            LiveTvFormatters.normalizeTitleForFilter(displayTitle);
        if (seenProgramKeys.contains(normalizedTitle)) {
          debugLog(
              'LiveTV: Filtering out duplicate program "${program.title}" from featured row');
          continue;
        }
        seenProgramKeys.add(normalizedTitle);
      }
      filteredChannels.add(channel);
    }

    if (missingIds.isNotEmpty) {
      bindings.onScheduleVisibleRowEpg(
        title,
        epgService,
        missingIds,
        missingNames,
      );
    }
    if (filteredChannels.isEmpty) return const SizedBox.shrink();

    final screenWidth = MediaQuery.of(context).size.width;
    final maxCardWidth =
        screenWidth < 800 ? screenWidth / 2.8 : screenWidth / 5.5;
    final cardWidth = math.min(context.cardWidth(), maxCardWidth);
    const cardFocusScale = 1.05;
    final cardHeight = cardWidth * 0.6;
    final isMobile = screenWidth < 800;
    final focusExtra = isMobile ? 0.0 : cardHeight * (cardFocusScale - 1);
    const infoGapAboveTitle = 4.0;
    const infoGapBelowTitle = 2.0;
    const titleFontSize = 11.0;
    const timeFontSize = 10.0;
    const lineHeight = 1.1;
    final infoHeight = infoGapAboveTitle +
        (titleFontSize * lineHeight) +
        infoGapBelowTitle +
        (timeFontSize * lineHeight);
    final rowHeight = cardHeight + infoHeight + focusExtra * 0.5;
    final rowInset = context.spacingSm() + bindings.sidebarInset();

    final sectionKey = title;
    if (allowCategoryPaging) {
      final initialVisible = LiveTvLayout.initialRowVisibleCount(
        context,
        cardWidth,
        rowInset,
      );
      if (filteredChannels.length <= initialVisible &&
          (bindings.categoryState.hasMore[sectionKey] ?? true)) {
        bindings.onScheduleCategoryPage(sectionKey);
      }
    }

    final rowController =
        bindings.categoryResources.rowScrollControllers.putIfAbsent(
      sectionKey,
      () => ScrollController(keepScrollOffset: false),
    );
    if (!bindings.categoryResources.rowScrollInitialized.contains(sectionKey)) {
      bindings.categoryResources.rowScrollInitialized.add(sectionKey);
      bindings.onScheduleRowScrollReset(sectionKey, rowController);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: rowInset,
            bottom: context.spacingXs() * 0.5,
          ),
          child: Text(
            title,
            style: AppTypography.caption(context).copyWith(
              color: AppTheme.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: rowHeight,
          child: HorizontalChannelRow(
            sectionKey: sectionKey,
            controller: rowController,
            itemCount: filteredChannels.length,
            cardWidth: cardWidth,
            cardGap: context.cardGap(),
            padding: EdgeInsets.only(
              left: rowInset,
              right: context.spacingLg(),
            ),
            onLoadMore: allowCategoryPaging
                ? () => bindings.onScheduleCategoryPage(sectionKey)
                : null,
            itemBuilder: (context, index) {
              final channel = filteredChannels[index];
              final focusNode = bindings.focusNodeForCard(
                sectionKey,
                channel,
                index,
                isFirstRow: isFirstRow || isFirstCategoryRow,
                allowCategoryPaging: allowCategoryPaging,
              );
              final rowPadding = EdgeInsets.only(
                left: rowInset,
                right: context.spacingLg(),
              );
              final allowPrefetch = bindings.shouldPrefetchArt(
                context,
                sectionKey,
                index,
                rowController,
                cardWidth,
                context.cardGap(),
                rowPadding,
                isFirstRow,
              );
              return LiveTvChannelRowCard(
                channel: channel,
                cardWidth: cardWidth,
                cardHeight: cardHeight,
                rowHeight: rowHeight,
                sectionKey: sectionKey,
                index: index,
                isFirstRow: isFirstRow,
                allowPrefetch: allowPrefetch,
                rowScrollController: rowController,
                mainScrollController: bindings.mainScrollController,
                watchButtonFocus: bindings.watchButtonFocus,
                focusNode: focusNode,
                onOpenPlayer: bindings.onOpenPlayer,
                onShowEpgSelector: bindings.onShowEpgSelector,
                onItemFocus: null,
                onFocusIndexChanged: (key, idx, hasFocus) => bindings
                    .onCardFocusChanged(key, idx, channel.epgLookupId, hasFocus),
                onScrollToHeroPeek: bindings.onScrollToHeroPeek,
                requestNavigationFocus: bindings.requestNavigationFocus,
                displayTitle: bindings.artworkResolver.displayProgramTitle,
                getCardImage: bindings.artworkResolver.getChannelCardImage,
              );
            },
          ),
        ),
        SizedBox(height: context.spacingXs() * 0.5),
      ],
    );
  }
}
