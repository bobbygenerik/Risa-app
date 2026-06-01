part of '../epg_widgets.dart';

class EPGChannelItem extends StatefulWidget {
  final Channel channel;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final FocusNode? focusNode;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveUpFromFirst;
  final VoidCallback? onMoveRight;

  const EPGChannelItem({
    super.key,
    required this.channel,
    required this.onTap,
    required this.onLongPress,
    this.focusNode,
    this.onMoveLeft,
    this.onMoveUpFromFirst,
    this.onMoveRight,
  });

  @override
  State<EPGChannelItem> createState() => _EPGChannelItemState();
}

class _EPGChannelItemState extends State<EPGChannelItem> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
    return Focus(
      focusNode: widget.focusNode,
      canRequestFocus: true,
      onFocusChange: (focused) {
        if (_isFocused != focused) {
          setState(() => _isFocused = focused);
        }
      },
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter) {
            widget.onTap();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            if (widget.onMoveLeft == null) {
              return KeyEventResult.ignored;
            }
            widget.onMoveLeft!.call();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
            if (widget.onMoveRight == null) {
              return KeyEventResult.ignored;
            }
            widget.onMoveRight!.call();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowUp &&
              widget.onMoveUpFromFirst != null) {
            widget.onMoveUpFromFirst!.call();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        child: Container(
          height: rowHeight,
          margin: const EdgeInsets.only(bottom: rowGap, right: 4),
          decoration: BoxDecoration(
            color: const Color(0xFF2a2a3e).withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(8),
            border: _isFocused
                ? Border.all(color: AppTheme.focusBorder, width: 2)
                : Border.all(
                    color: Colors.white.withValues(alpha: 0.1), width: 1),
          ),
          child: Center(
              child: SizedBox(
                width: 48,
                height: 48,
                child: CachedChannelLogo(
                logoUrl: widget.channel.logoUrl,
                channelName: widget.channel.name,
                tvgId: widget.channel.tvgId,
                size: 48,
                cacheWidth: 96,
                cacheHeight: 96,
                fallbackIcon: Icons.dvr,
                ),
              ),
            ),
        ),
      ),
    );
  }
}

