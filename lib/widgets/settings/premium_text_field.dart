part of '../settings_tile_widgets.dart';

class _PremiumTextField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String? hint;
  final bool obscureText;
  final IconData? icon;

  const _PremiumTextField({
    required this.controller,
    required this.focusNode,
    this.hint,
    this.obscureText = false,
    this.icon,
  });

  @override
  State<_PremiumTextField> createState() => _PremiumTextFieldState();
}

class _PremiumTextFieldState extends State<_PremiumTextField> {
  late FocusNode _textFocusNode;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _textFocusNode = FocusNode();
    widget.focusNode.addListener(_handleContainerFocus);
    _textFocusNode.addListener(_handleTextFocus);
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_handleContainerFocus);
    _textFocusNode.removeListener(_handleTextFocus);
    _textFocusNode.dispose();
    super.dispose();
  }

  void _handleContainerFocus() {
    if (mounted) setState(() {});
    if (!widget.focusNode.hasFocus) return;

    Scrollable.ensureVisible(
      context,
      alignment: 0.2,
      duration: const Duration(milliseconds: 150),
    );

    if (!context.isTV) {
      _textFocusNode.requestFocus();
      return;
    }

    final textLen = widget.controller.text.length;
    try {
      widget.controller.selection = TextSelection.collapsed(offset: textLen);
    } catch (_) {}
  }

  void _handleTextFocus() {
    if (mounted) setState(() {});
    if (_textFocusNode.hasFocus) {
      final textLen = widget.controller.text.length;
      try {
        widget.controller.selection = TextSelection.collapsed(offset: textLen);
      } catch (_) {}
      setState(() => _isEditing = true);
    } else {
      final textLen = widget.controller.text.length;
      try {
        widget.controller.selection = TextSelection.collapsed(offset: textLen);
      } catch (_) {}
      setState(() => _isEditing = false);
    }
  }

  bool get _isActive => widget.focusNode.hasFocus || _textFocusNode.hasFocus;

  Future<void> _pasteFromClipboard() async {
    await pastePlainTextIntoController(widget.controller);
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (!context.isTV) {
      return _buildDesktopField(context);
    }
    return _buildTvField(context);
  }

  Widget _buildDesktopField(BuildContext context) {
    return Focus(
      focusNode: widget.focusNode,
      child: AnimatedContainer(
        duration: TVFocusStyle.animationDuration,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: AppTheme.highlight,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: _isActive ? AppTheme.focusBorder : Colors.white10,
            width: _isActive ? 3 : 1,
          ),
          boxShadow: _isActive ? TVFocusStyle.focusedShadow : null,
        ),
        child: Row(
          children: [
            if (widget.icon != null) ...[
              Icon(
                widget.icon,
                size: 20,
                color: _isActive ? Colors.white : Colors.white54,
              ),
              const SizedBox(width: 12),
            ],
            Expanded(
              child: TextField(
                controller: widget.controller,
                focusNode: _textFocusNode,
                enableInteractiveSelection: true,
                showCursor: true,
                cursorColor: AppTheme.primaryBlue,
                style: const TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 16,
                ),
                obscureText: widget.obscureText,
                decoration: InputDecoration.collapsed(
                  hintText: widget.hint,
                  hintStyle: const TextStyle(
                    color: AppTheme.textSecondary,
                  ),
                ),
              ),
            ),
            IconButton(
              tooltip: 'Paste',
              icon: const Icon(Icons.paste, size: 20, color: Colors.white70),
              onPressed: _pasteFromClipboard,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTvField(BuildContext context) {
    return Focus(
      focusNode: widget.focusNode,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) {
          return KeyEventResult.ignored;
        }

        if (event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.space) {
          _textFocusNode.requestFocus();
          return KeyEventResult.handled;
        }

        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: _textFocusNode.requestFocus,
        child: AnimatedScale(
          scale: _isActive ? 1.05 : 1.0,
          duration: TVFocusStyle.animationDuration,
          child: AnimatedContainer(
            duration: TVFocusStyle.animationDuration,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: AppTheme.highlight,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: _isActive ? AppTheme.focusBorder : Colors.white10,
                width: _isActive ? 3 : 1,
              ),
              boxShadow: _isActive ? TVFocusStyle.focusedShadow : null,
            ),
            child: Row(
              children: [
                if (widget.icon != null) ...[
                  Icon(
                    widget.icon,
                    size: 20,
                    color: _isActive ? Colors.white : Colors.white54,
                  ),
                  const SizedBox(width: 12),
                ],
                Expanded(
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      textSelectionTheme: const TextSelectionThemeData(
                        selectionColor: Colors.transparent,
                        selectionHandleColor: Colors.transparent,
                      ),
                    ),
                    child: Focus(
                      onKeyEvent: (node, event) {
                        if (event is! KeyDownEvent) {
                          return KeyEventResult.ignored;
                        }

                        if (event.logicalKey == LogicalKeyboardKey.escape ||
                            event.logicalKey == LogicalKeyboardKey.goBack) {
                          widget.focusNode.requestFocus();
                          return KeyEventResult.handled;
                        }

                        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                          FocusScope.of(context)
                              .focusInDirection(TraversalDirection.down);
                          return KeyEventResult.handled;
                        }
                        if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                          FocusScope.of(context)
                              .focusInDirection(TraversalDirection.up);
                          return KeyEventResult.handled;
                        }

                        return KeyEventResult.ignored;
                      },
                      child: TextField(
                        controller: widget.controller,
                        focusNode: _textFocusNode,
                        enableInteractiveSelection: false,
                        selectionControls: NoTextSelectionControls(),
                        showCursor: _isEditing,
                        cursorColor: AppTheme.primaryBlue,
                        style: const TextStyle(
                          color: AppTheme.textPrimary,
                          fontSize: 16,
                        ),
                        obscureText: widget.obscureText,
                        decoration: InputDecoration.collapsed(
                          hintText: widget.hint,
                          hintStyle: const TextStyle(
                            color: AppTheme.textSecondary,
                          ),
                        ),
                        onSubmitted: (_) {
                          widget.focusNode.requestFocus();
                        },
                      ),
                    ),
                  ),
                ),
                if (_isActive && !_isEditing)
                  const Icon(Icons.edit, size: 18, color: Colors.white70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
