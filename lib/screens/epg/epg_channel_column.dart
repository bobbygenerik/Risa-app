import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/widgets/epg_widgets.dart';

typedef EpgChannelFocusNodeFn = FocusNode Function(Channel channel, int index);

/// Left column showing the selected date header and channel list sidebar.
class EpgChannelColumn extends StatelessWidget {
  const EpgChannelColumn({
    super.key,
    required this.channels,
    required this.categories,
    required this.selectedDate,
    required this.selectedCategory,
    required this.isLoadingMore,
    required this.hasMore,
    required this.sidebarController,
    required this.firstChannelFocus,
    required this.refreshButtonFocus,
    required this.firstProgramFocus,
    required this.channelFocusNodeForChannel,
    required this.programFocusNodeForChannel,
    required this.categoryFocusNodeForIndex,
    required this.onLoadMore,
    required this.onChannelTap,
    required this.onChannelLongPress,
  });

  final List<Channel> channels;
  final List<String> categories;
  final DateTime selectedDate;
  final String? selectedCategory;
  final bool isLoadingMore;
  final bool hasMore;
  final ScrollController sidebarController;
  final FocusNode firstChannelFocus;
  final FocusNode refreshButtonFocus;
  final FocusNode firstProgramFocus;
  final EpgChannelFocusNodeFn channelFocusNodeForChannel;
  final FocusNode Function(Channel channel) programFocusNodeForChannel;
  final FocusNode Function(int index) categoryFocusNodeForIndex;
  final VoidCallback onLoadMore;
  final ValueChanged<Channel> onChannelTap;
  final ValueChanged<Channel> onChannelLongPress;

  static const double rowHeight = AppSpacing.epgRowHeight;
  static const double rowGap = 4.0;

  String _dateLabel() {
    final now = DateTime.now();
    if (selectedDate.day == now.day &&
        selectedDate.month == now.month &&
        selectedDate.year == now.year) {
      return 'Today';
    }
    return '${selectedDate.month}/${selectedDate.day}';
  }

  void _focusCategories() {
    final selected = selectedCategory ?? 'All Channels';
    final idx = categories.indexOf(selected);
    if (idx >= 0) {
      categoryFocusNodeForIndex(idx).requestFocus();
    } else {
      categoryFocusNodeForIndex(0).requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: rowHeight,
          margin: const EdgeInsets.only(bottom: rowGap, right: 4),
          decoration: BoxDecoration(
            color: const Color(0xFF2a2a3e).withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Colors.white.withValues(alpha: 0.1), width: 1),
          ),
          child: Center(
            child: Text(
              _dateLabel(),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.white.withValues(alpha: 0.9),
              ),
            ),
          ),
        ),
        Expanded(
          child: EPGChannelSidebar(
            channels: channels,
            isLoadingMore: isLoadingMore,
            onLoadMore: hasMore ? onLoadMore : () {},
            onChannelTap: onChannelTap,
            onChannelLongPress: onChannelLongPress,
            firstChannelFocusNode: firstChannelFocus,
            onFocusCategories: _focusCategories,
            onFocusCategoryAtIndex: null,
            onFocusRefresh: () => refreshButtonFocus.requestFocus(),
            onFocusPrograms: () => firstProgramFocus.requestFocus(),
            onFocusProgramForChannel: (channel) {
              final node = programFocusNodeForChannel(channel);
              node.requestFocus();
              // A bare requestFocus does not scroll the target into view, so if
              // the timeline was scrolled the focused cell lands off-screen
              // ("focus went somewhere I couldn't see"). Bring it back.
              WidgetsBinding.instance.addPostFrameCallback((_) {
                final ctx = node.context;
                if (ctx != null) {
                  Scrollable.ensureVisible(
                    ctx,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeOut,
                  );
                }
              });
            },
            channelFocusNodeForChannel: channelFocusNodeForChannel,
            controller: sidebarController,
          ),
        ),
      ],
    );
  }
}
