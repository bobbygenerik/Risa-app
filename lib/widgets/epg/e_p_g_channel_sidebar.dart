part of '../epg_widgets.dart';

class EPGChannelSidebar extends StatelessWidget {
  final List<Channel> channels;
  final bool isLoadingMore;
  final VoidCallback onLoadMore;
  final Function(Channel) onChannelTap;
  final Function(Channel) onChannelLongPress;
  final ScrollController controller;
  final FocusNode? firstChannelFocusNode;
  final VoidCallback? onFocusCategories;
  final void Function(int index)? onFocusCategoryAtIndex;
  final VoidCallback? onFocusRefresh;
  final VoidCallback? onFocusPrograms;
  final ValueChanged<Channel>? onFocusProgramForChannel;
  final FocusNode? Function(Channel channel, int index)?
      channelFocusNodeForChannel;

  const EPGChannelSidebar({
    super.key,
    required this.channels,
    required this.isLoadingMore,
    required this.onLoadMore,
    required this.onChannelTap,
    required this.onChannelLongPress,
    required this.controller,
    this.firstChannelFocusNode,
    this.onFocusCategories,
    this.onFocusCategoryAtIndex,
    this.onFocusRefresh,
    this.onFocusPrograms,
    this.onFocusProgramForChannel,
    this.channelFocusNodeForChannel,
  });

  @override
  Widget build(BuildContext context) {
    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollEndNotification &&
            notification.metrics.pixels >=
                notification.metrics.maxScrollExtent - 200) {
          onLoadMore();
        }
        return false;
      },
      child: ListView.builder(
        controller: controller,
        physics: const ClampingScrollPhysics(),
        itemCount: channels.length + (isLoadingMore ? 1 : 0),
        itemExtent: rowHeight + rowGap,
        cacheExtent: (rowHeight + rowGap) *
            15, // Cache more items for smoother scrolling
        addAutomaticKeepAlives: true, // Keep channel widgets alive
        itemBuilder: (context, index) {
          if (index >= channels.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(
                  color: AppTheme.primaryBlue,
                  strokeWidth: 2,
                ),
              ),
            );
          }
          return EPGChannelItem(
            key: ValueKey(channels[index].id), // Add key for better performance
            channel: channels[index],
            onTap: () => onChannelTap(channels[index]),
            onLongPress: () => onChannelLongPress(channels[index]),
            focusNode: channelFocusNodeForChannel != null
                ? channelFocusNodeForChannel!.call(channels[index], index)
                : (index == 0 ? firstChannelFocusNode : null),
            onMoveLeft: onFocusCategoryAtIndex != null
                ? () => onFocusCategoryAtIndex!(index)
                : onFocusCategories,
            onMoveUpFromFirst: index == 0 ? onFocusRefresh : null,
            onMoveRight: onFocusProgramForChannel == null
                ? onFocusPrograms
                : () => onFocusProgramForChannel!.call(channels[index]),
          );
        },
      ),
    );
  }
}

