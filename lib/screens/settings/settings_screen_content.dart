part of '../settings_screen.dart';

extension SettingsScreenContent on _SettingsScreenState {
  Widget _buildActiveContent() {
    Widget content;
    switch (_selectedIndex) {
      case 0:
        content = _buildGeneralSettings();
        break;
      case 1:
        content = _buildPlaybackSettings();
        break;
      case 2:
        content = _buildAISettings();
        break;
      case 3:
        content = _buildRecordingsSettings();
        break;
      default:
        content = _buildGeneralSettings();
    }

    return Focus(
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          _layoutController.requestMenuFocus();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: content,
    );
  }

  Widget _buildInputMethodSelector() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
        ),
        child: Row(
          children: [
            for (final isM3u in [true, false])
              Expanded(
                child: Focus(
                  focusNode: isM3u ? _m3uTabFocusNode : _xtreamTabFocusNode,
                  onFocusChange: (v) {
                    if (v) {
                      Scrollable.ensureVisible(
                        context,
                        alignment: 0.2,
                        duration: const Duration(milliseconds: 150),
                      );
                    }
                    setState(() {});
                  },
                  onKeyEvent: (n, e) {
                    if (e is! KeyDownEvent) return KeyEventResult.ignored;
                    if ({
                      LogicalKeyboardKey.select,
                      LogicalKeyboardKey.enter,
                      LogicalKeyboardKey.space
                    }.contains(e.logicalKey)) {
                      setState(() => _playlistInputMethod = isM3u ? 0 : 1);
                      (isM3u ? _m3uTabFocusNode : _xtreamTabFocusNode)
                          .requestFocus();
                      return KeyEventResult.handled;
                    }
                    if (e.logicalKey ==
                        (isM3u
                            ? LogicalKeyboardKey.arrowRight
                            : LogicalKeyboardKey.arrowLeft)) {
                      (isM3u ? _xtreamTabFocusNode : _m3uTabFocusNode)
                          .requestFocus();
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: Builder(builder: (c) {
                    final isFocused = Focus.of(c).hasFocus;
                    final isSelected = _playlistInputMethod == (isM3u ? 0 : 1);
                    return GestureDetector(
                      onTap: () {
                        setState(() => _playlistInputMethod = isM3u ? 0 : 1);
                        (isM3u ? _m3uTabFocusNode : _xtreamTabFocusNode)
                            .requestFocus();
                      },
                      child: AnimatedContainer(
                        duration: TVFocusStyle.animationDuration,
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppTheme.primaryBlue
                              : (isFocused
                                  ? Colors.white.withValues(alpha: 0.1)
                                  : Colors.transparent),
                          borderRadius: BorderRadius.circular(8),
                          border: isFocused
                              ? Border.all(
                                  color: AppTheme.focusBorder, width: 2)
                              : null,
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(isM3u ? Icons.playlist_play : Icons.dns,
                                size: 18,
                                color: isSelected || isFocused
                                    ? Colors.white
                                    : AppTheme.textSecondary),
                            const SizedBox(width: 8),
                            Text(
                                isM3u
                                    ? AppLocalizations.of(context)!
                                        .inputMethodM3u
                                    : AppLocalizations.of(context)!
                                        .inputMethodXtream,
                                style: TextStyle(
                                    color: isSelected || isFocused
                                        ? Colors.white
                                        : AppTheme.textSecondary,
                                    fontWeight: isSelected
                                        ? FontWeight.w600
                                        : FontWeight.w500)),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
