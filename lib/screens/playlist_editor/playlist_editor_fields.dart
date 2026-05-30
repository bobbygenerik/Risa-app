part of '../playlist_editor_screen.dart';

extension PlaylistEditorFields on _PlaylistEditorScreenState {
Widget _buildTVFriendlyTextField({
  required TextEditingController controller,
  required FocusNode focusNode,
  required bool isEditable,
  required Function(bool) onEditableChange,
  required String label,
  required String hint,
  required IconData icon,
  bool obscureText = false,
}) {
  return Focus(
    focusNode: focusNode,
    onFocusChange: (hasFocus) {
      if (hasFocus) {
        final text = controller.text;
        controller.selection = TextSelection.collapsed(offset: text.length);
      }
      if (!hasFocus && isEditable) {
        onEditableChange(false);
      }
    },
    onKeyEvent: (node, event) {
      if (event is! KeyDownEvent) return KeyEventResult.ignored;
      final key = event.logicalKey;
      if ((key == LogicalKeyboardKey.select ||
              key == LogicalKeyboardKey.enter) &&
          !isEditable) {
        onEditableChange(true);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          focusNode.requestFocus();
        });
        return KeyEventResult.handled;
      }
      if (key == LogicalKeyboardKey.escape && isEditable) {
        onEditableChange(false);
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    },
    child: GestureDetector(
      onTap: () {
        onEditableChange(true);
        unawaited(Future(() {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            focusNode.requestFocus();
          });
        }));
      },
      child: TextField(
        controller: controller,
        readOnly: !isEditable,
        obscureText: obscureText,
        enableInteractiveSelection: false,
        selectionControls: NoTextSelectionControls(),
        showCursor: false,
        cursorColor: Colors.transparent,
        onTap: () {
          final text = controller.text;
          controller.selection = TextSelection.collapsed(offset: text.length);
        },
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: isEditable
              ? AppTheme.primaryBlue.withAlpha((0.1 * 255).round())
              : AppTheme.cardBackground,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(context.tvSpacing(8)),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(context.tvSpacing(8)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(context.tvSpacing(8)),
            borderSide: BorderSide(
                color: AppTheme.primaryBlue, width: context.tvSpacing(3)),
          ),
          contentPadding: EdgeInsets.symmetric(
              horizontal: context.tvSpacing(16),
              vertical: context.tvSpacing(16)),
          suffixIcon: (kIsWeb ||
                  !(Platform.isLinux ||
                      Platform.isWindows ||
                      Platform.isMacOS))
              ? null
              : IconButton(
                  icon: Icon(
                    Icons.paste,
                    size: context.tvIconSize(18),
                  ),
                  onPressed: () => _pasteFromClipboard(controller),
                ),
        ),
      ),
    ),
  );
}

}
