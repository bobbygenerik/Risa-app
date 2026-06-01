part of '../epg_widgets.dart';

class EPGProgramCell extends StatelessWidget {
  final Program program;
  final VoidCallback onTap;
  final FocusNode? focusNode;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveUp;
  final bool isClippedLeft;

  const EPGProgramCell({
    super.key,
    required this.program,
    required this.onTap,
    this.focusNode,
    this.onMoveLeft,
    this.onMoveUp,
    this.isClippedLeft = false, // Default to false
  });

  @override
  Widget build(BuildContext context) {
    final isLive = program.isCurrentlyPlaying;
    final hasCatchup = program.hasCatchup;

    const epgLiveColor = AppColors.epgLive;
    const epgCatchupColor = AppColors.epgCatchup;

    return Focus(
      focusNode: focusNode,
      canRequestFocus: true,
      onKeyEvent: (node, event) {
        final moveLeft = onMoveLeft;
        final moveUp = onMoveUp;
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft &&
              moveLeft != null) {
            moveLeft();
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.arrowUp &&
              moveUp != null) {
            moveUp();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return Container(
            margin: const EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
              color: isLive
                  ? epgLiveColor.withValues(alpha: 0.25)
                  : hasCatchup
                      ? epgCatchupColor.withValues(alpha: 0.2)
                      : const Color(0xFF2a2a3e).withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(8),
              border: isFocused
                  ? Border.all(color: AppTheme.focusBorder, width: 3)
                  : Border.all(
                      color: Colors.white.withValues(alpha: 0.1), width: 1),
              boxShadow: isFocused
                  ? [
                      BoxShadow(
                        color: AppTheme.focusBorder.withValues(alpha: 0.6),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ]
                  : null,
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(4),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          if (hasCatchup) ...[
                            const Icon(Icons.replay,
                                size: 10, color: epgCatchupColor),
                            const SizedBox(width: 3),
                          ],
                          Expanded(
                            child: Text(
                              program.title,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: isLive
                                    ? FontWeight.w600
                                    : FontWeight.normal,
                                color: Colors.white.withValues(alpha: 0.9),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${DateFormat.jm().format(program.startTime)} - ${DateFormat.jm().format(program.endTime)}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withValues(alpha: 0.6),
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
