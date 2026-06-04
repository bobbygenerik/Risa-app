part of '../epg_diagnostic_screen.dart';

extension EpgDiagnosticWidgets on _EpgDiagnosticScreenState {
  Widget _buildDiagnosticTabButton({
    required int index,
    required String label,
    required FocusNode focusNode,
    required FocusNode neighborFocus,
  }) {
    final isSelected = _selectedTab == index;
    return Focus(
      focusNode: focusNode,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowRight && index == 0) {
          neighborFocus.requestFocus();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft && index == 1) {
          neighborFocus.requestFocus();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          setState(() => _selectedTab = index);
          _focusPrimaryDiagnosticAction();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.select) {
          setState(() => _selectedTab = index);
          _focusPrimaryDiagnosticAction();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return GestureDetector(
            onTap: () {
              setState(() => _selectedTab = index);
              focusNode.requestFocus();
            },
            child: AnimatedContainer(
              duration: TVFocusStyle.animationDuration,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppTheme.primaryBlue.withValues(alpha: 0.25)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isFocused || isSelected
                      ? AppTheme.primaryBlue
                      : Colors.white24,
                  width: isFocused ? 2 : 1,
                ),
              ),
              child: Text(
                label,
                style: TextStyle(
                  color: isSelected || isFocused
                      ? Colors.white
                      : Colors.white70,
                  fontWeight:
                      isSelected ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String _formatEpgStatus(IncrementalEpgService epgService) {
    // Use the label directly if available (shows MB for chunked downloads)
    final label = epgService.epgProgressLabel;
    if (label != null && label.isNotEmpty) {
      return label;
    }
    // Fallback to percentage for known-length downloads
    final pct = (epgService.epgProgress * 100).round().clamp(0, 100);
    if (epgService.isDownloading) return 'Downloading ($pct%)';
    if (epgService.isParsing) return 'Parsing ($pct%)';
    if (epgService.isLoading) return 'Loading ($pct%)';
    return 'Idle';
  }

  void _deliverSnackBar(ScaffoldMessengerState? messenger, SnackBar snackBar) {
    final target = messenger ?? rootScaffoldMessengerKey.currentState;
    target?.showSnackBar(snackBar);
  }

  Future<void> _writeDebugMarker(String name) async {
    // Disable writing marker files to Downloads by default — this was causing
    // noisy marker files on user devices. Keep a local debug log instead.
    try {
      debugLog('Debug marker: $name');
    } catch (e) {
      // Swallow errors to avoid affecting diagnostics UI
    }
  }

  Widget _buildDiagnosticCard({required Widget child}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withAlpha(60),
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 24,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: child,
    );
  }

  Widget _buildMatchEntryRow(_MatchEntry entry) {
    final statusColor = entry.matched ? Colors.green : Colors.orange;
    return TVFocusable(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppTheme.cardBackground,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white.withAlpha(40),
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              entry.matched ? Icons.check_circle : Icons.error,
              color: statusColor,
              size: 18,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.channel.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'ID: ${entry.id}',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    entry.matched ? 'Matched' : 'No match found',
                    style: TextStyle(
                      color: statusColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMatchFilterChip({
    required String label,
    required _MatchFilter filter,
    required FocusNode focusNode,
    FocusNode? leftFocus,
    FocusNode? rightFocus,
  }) {
    final isSelected = _matchFilter == filter;
    return Focus(
      focusNode: focusNode,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft &&
            leftFocus != null) {
          leftFocus.requestFocus();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight &&
            rightFocus != null) {
          rightFocus.requestFocus();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.select) {
          setState(() {
            _matchFilter = filter;
            _resetPagedMatches();
          });
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: () {
          setState(() {
            _matchFilter = filter;
            _resetPagedMatches();
          });
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            return AnimatedContainer(
              duration: TVFocusStyle.animationDuration,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppTheme.primaryBlue
                    : AppTheme.cardBackground.withAlpha((0.85 * 255).round()),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: isFocused || isSelected
                      ? AppTheme.primaryBlue
                      : Colors.white.withAlpha(40),
                  width: isFocused ? 2 : 1,
                ),
              ),
              child: Text(
                label,
                style: TextStyle(
                  color: isSelected || isFocused ? Colors.white : Colors.white70,
                  fontWeight:
                      isSelected || isFocused ? FontWeight.w600 : FontWeight.w500,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
