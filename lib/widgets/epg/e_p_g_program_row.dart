part of '../epg_widgets.dart';

class EPGProgramRow extends StatelessWidget {
  final Channel channel;
  final IncrementalEpgService epgService;
  final Function(Program) onProgramTap;
  final bool isFirstRow;
  final FocusNode? firstProgramFocusNode;
  final FocusNode? currentProgramFocusNode;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveUpFromFirst;

  const EPGProgramRow({
    super.key,
    required this.channel,
    required this.epgService,
    required this.onProgramTap,
    this.isFirstRow = false,
    this.firstProgramFocusNode,
    this.currentProgramFocusNode,
    this.onMoveLeft,
    this.onMoveUpFromFirst,
  });

  @override
  Widget build(BuildContext context) {
    final channelKey = channel.epgLookupId;
    epgService.ensureChannelLoaded(channelKey,
        channelName: channel.epgLookupNameFallback);

    const rowHeight = AppSpacing.epgRowHeight;
    const rowGap = 4.0;
    const cellWidth = 240.0;
    const totalWidth = 12 * cellWidth;

    final programs = epgService.getProgramsForChannel(
      channelKey,
      channelName: channel.epgLookupNameFallback,
      groupTitle: channel.groupTitle,
    );

    final now = DateTime.now();
    final startHour = now.hour;
    final displayStart = DateTime(now.year, now.month, now.day, startHour);
    final displayEnd = displayStart.add(const Duration(hours: 12));

    final dayPrograms = programs.where((program) {
      return program.startTime.isBefore(displayEnd) &&
          program.endTime.isAfter(displayStart);
    }).toList();

    final focusIndex = dayPrograms.indexWhere((program) {
      return program.isCurrentlyPlaying;
    });

    final showLoading = epgService.shouldShowGuideRowLoading(
      channelKey,
      channelName: channel.epgLookupNameFallback,
    );
    return Container(
      height: rowHeight,
      width: totalWidth,
      margin: const EdgeInsets.only(bottom: rowGap, left: 0),
      child: dayPrograms.isEmpty
          ? _buildFocusablePlaceholder(
              label: showLoading ? 'Loading EPG...' : 'No EPG data',
              focusNode: currentProgramFocusNode,
              onMoveLeft: onMoveLeft,
              onMoveUp: isFirstRow ? onMoveUpFromFirst : null,
            )
          : EPGVirtualProgramRow(
              programs: dayPrograms,
              displayStart: displayStart,
              cellWidth: cellWidth,
              totalWidth: totalWidth,
              onProgramTap: onProgramTap,
              isFirstRow: isFirstRow,
              firstProgramFocusNode: firstProgramFocusNode,
              currentProgramFocusNode: currentProgramFocusNode,
              focusProgramIndex: focusIndex >= 0 ? focusIndex : 0,
              onMoveLeft: onMoveLeft,
              onMoveUpFromFirst: onMoveUpFromFirst,
            ),
    );
  }

  Widget _buildFocusablePlaceholder({
    required String label,
    FocusNode? focusNode,
    VoidCallback? onMoveLeft,
    VoidCallback? onMoveUp,
  }) {
    const rowHeight = AppSpacing.epgRowHeight;
    return Focus(
      focusNode: focusNode,
      canRequestFocus: focusNode != null,
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
      child: Builder(builder: (context) {
        final isFocused = Focus.of(context).hasFocus;
          return Container(
            height: rowHeight,
            width: 12 * 240.0, // totalWidth
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF2a2a3e).withValues(alpha: 0.3),
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
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, color: Colors.white.withValues(alpha: 0.5)),
          ),
        );
      }),
    );
  }
}

