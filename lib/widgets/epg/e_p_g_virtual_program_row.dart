part of '../epg_widgets.dart';

class EPGVirtualProgramRow extends StatelessWidget {
  final List<Program> programs;
  final DateTime displayStart;
  final double cellWidth;
  final double totalWidth;
  final Function(Program) onProgramTap;
  final bool isFirstRow;
  final FocusNode? firstProgramFocusNode;
  final FocusNode? currentProgramFocusNode;
  final int? focusProgramIndex;
  final VoidCallback? onMoveLeft;
  final VoidCallback? onMoveUpFromFirst;

  const EPGVirtualProgramRow({
    super.key,
    required this.programs,
    required this.displayStart,
    required this.cellWidth,
    required this.totalWidth,
    required this.onProgramTap,
    this.isFirstRow = false,
    this.firstProgramFocusNode,
    this.currentProgramFocusNode,
    this.focusProgramIndex,
    this.onMoveLeft,
    this.onMoveUpFromFirst,
  });

  @override
  Widget build(BuildContext context) {
    const rowHeight = AppSpacing.epgRowHeight;
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: programs.asMap().entries.map((entry) {
        final programIndex = entry.key;
        final program = entry.value;
        final programStart = program.startTime.isBefore(displayStart)
            ? displayStart
            : program.startTime;
        final programEnd =
            program.endTime.isAfter(displayStart.add(const Duration(hours: 12)))
                ? displayStart.add(const Duration(hours: 12))
                : program.endTime;

        final minutesFromStart =
            programStart.difference(displayStart).inMinutes;
        final leftOffset = (minutesFromStart / 60) * cellWidth;
        final visibleDuration = programEnd.difference(programStart).inMinutes;
        if (leftOffset >= totalWidth || visibleDuration <= 0) {
          return const SizedBox.shrink();
        }
        const minWidth = 30.0;
        final rawWidth = (visibleDuration / 60) * cellWidth;
        final maxWidth = math.max(minWidth, totalWidth - leftOffset);
        final width = rawWidth.clamp(minWidth, maxWidth);

        // Assign focus node: first program gets firstProgramFocusNode,
        // current playing program gets currentProgramFocusNode
        FocusNode? resolvedFocusNode;
        if (isFirstRow && programIndex == 0) {
          resolvedFocusNode = firstProgramFocusNode;
        } else if ((focusProgramIndex != -1 && focusProgramIndex == programIndex) ||
                   (focusProgramIndex == -1 && programIndex == 0)) {
                   // Assign to live program OR first program if none live
          resolvedFocusNode = currentProgramFocusNode;
        }
        
        final isClippedLeft = program.startTime.isBefore(displayStart);

        return Positioned(
          left: leftOffset,
          top: 0,
          height: rowHeight,
          width: width,
          child: EPGProgramCell(
            program: program,
            onTap: () => onProgramTap(program),
            focusNode: resolvedFocusNode,
            onMoveLeft: onMoveLeft,
            onMoveUp: isFirstRow ? onMoveUpFromFirst : null,
            isClippedLeft: isClippedLeft,
          ),
        );
      }).toList(),
    );
  }
}

