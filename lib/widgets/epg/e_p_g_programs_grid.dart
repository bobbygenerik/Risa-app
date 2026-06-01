part of '../epg_widgets.dart';

class EPGProgramsGrid extends StatelessWidget {
  final List<Channel> channels;
  final IncrementalEpgService epgService;
  final bool isLoadingMore;
  final ScrollController horizontalController;
  final ScrollController verticalController;
  final double gridWidth;
  final Function(Program) onProgramTap;
  final FocusNode? firstProgramFocusNode;
  final FocusNode? Function(Channel channel)? programFocusNodeForChannel;
  final void Function(Channel channel, int index)? onRequestChannelFocus;
  final VoidCallback? onFocusHeader;

  const EPGProgramsGrid({
    super.key,
    required this.channels,
    required this.epgService,
    required this.isLoadingMore,
    required this.horizontalController,
    required this.verticalController,
    required this.gridWidth,
    required this.onProgramTap,
    this.firstProgramFocusNode,
    this.programFocusNodeForChannel,
    this.onRequestChannelFocus,
    this.onFocusHeader,
  });

  @override
  Widget build(BuildContext context) {
    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
    return SingleChildScrollView(
      controller: horizontalController,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        width: gridWidth,
        child: ListView.builder(
          controller: verticalController,
          physics: const ClampingScrollPhysics(),
          itemCount: channels.length + (isLoadingMore ? 1 : 0),
          itemExtent: rowHeight + rowGap,
          cacheExtent: (rowHeight + rowGap) * 10, // Cache 10 items ahead/behind
          itemBuilder: (context, index) {
            if (index >= channels.length) {
              return const SizedBox(height: 64);
            }
            return EPGProgramRow(
              channel: channels[index],
              epgService: epgService,
              onProgramTap: onProgramTap,
              isFirstRow: index == 0,
              firstProgramFocusNode: firstProgramFocusNode,
              currentProgramFocusNode:
                  programFocusNodeForChannel?.call(channels[index]),
              onMoveLeft: onRequestChannelFocus == null
                  ? null
                  : () => onRequestChannelFocus!.call(channels[index], index),
              onMoveUpFromFirst: index == 0 ? onFocusHeader : null,
            );
          },
        ),
      ),
    );
  }
}

