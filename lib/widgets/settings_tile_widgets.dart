import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/no_text_selection_controls.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

// -----------------------------------------------------------------------------
// SECTIONS & HEADERS
// -----------------------------------------------------------------------------

class SettingsSectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const SettingsSectionHeader({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 32, 0, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 0.5,
            ),
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 8),
            Text(
              subtitle!,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withValues(alpha: 0.6),
                height: 1.4,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class SettingsGroup extends StatelessWidget {
  final String? title;
  final List<Widget> children;

  const SettingsGroup({
    super.key,
    this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 12, top: 8),
            child: Text(
              title!.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                color: AppTheme.primaryBlue.withValues(alpha: 0.8),
              ),
            ),
          ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF14161A), // Dark card background
            borderRadius: BorderRadius.circular(16),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: children,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

// -----------------------------------------------------------------------------
// TILES
// -----------------------------------------------------------------------------

class SettingsActionTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData? icon;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Color? iconColor;
  final Color? titleColor;
  final FocusNode? focusNode;

  const SettingsActionTile({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    this.trailing,
    this.onTap,
    this.iconColor,
    this.titleColor,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Focus(
          focusNode: focusNode,
          onFocusChange: (focused) {
            if (focused) {
              Scrollable.ensureVisible(
                context,
                alignment: 0.2,
                duration: const Duration(milliseconds: 150),
              );
            }
          },
          onKeyEvent: (node, event) {
            if (event is! KeyDownEvent) return KeyEventResult.ignored;

            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.space) {
              onTap?.call();
              return KeyEventResult.handled;
            }
            // Allow default focus engine to handle other keys (arrows, etc.)
            return KeyEventResult.ignored;
          },
          child: Builder(
            builder: (context) {
              final isFocused = Focus.of(context).hasFocus;
              return Material(
                color: isFocused
                    ? Colors.white.withValues(alpha: 0.18)
                    : Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    child: Row(
                      children: [
                        if (icon != null) ...[
                          Icon(
                            icon,
                            size: 24,
                            color: iconColor ?? Colors.white70,
                          ),
                          const SizedBox(width: 16),
                        ],
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: titleColor ?? Colors.white,
                                ),
                              ),
                              if (subtitle != null) ...[
                                const SizedBox(height: 4),
                                Text(
                                  subtitle!,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                        if (trailing != null)
                          trailing!
                        else if (onTap != null)
                          Icon(
                            Icons.chevron_right,
                            color: Colors.white24,
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class SettingsSwitchTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;
  final FocusNode? focusNode;

  const SettingsSwitchTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.subtitle,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      onFocusChange: (focused) {
        if (focused) {
          Scrollable.ensureVisible(
            context,
            alignment: 0.2,
            duration: const Duration(milliseconds: 150),
          );
        }
      },
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent &&
            (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.space)) {
          onChanged(!value);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return Material(
            color: isFocused
                ? Colors.white.withValues(alpha: 0.18)
                : Colors.transparent,
            child: InkWell(
              onTap: () => onChanged(!value),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          if (subtitle != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              subtitle!,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Transform.scale(
                      scale: 0.9,
                      child: Switch(
                        value: value,
                        onChanged: onChanged,
                        activeThumbColor: isFocused
                            ? AppTheme.primaryBlue
                            : AppTheme.primaryBlue,
                        activeTrackColor: isFocused
                            ? AppTheme.primaryBlue.withValues(alpha: 0.3)
                            : Colors.white.withValues(alpha: 0.2),
                        inactiveThumbColor:
                            isFocused ? Colors.grey : Colors.grey[400],
                        inactiveTrackColor:
                            isFocused ? Colors.grey[300] : Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SettingsInputTile extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String? hint;
  final bool obscureText;
  final IconData? icon;

  const SettingsInputTile({
    super.key,
    required this.label,
    required this.controller,
    required this.focusNode,
    this.hint,
    this.obscureText = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    // We wrap standard layout just to provide a clean label above/beside it
    // But since TVFriendlyTextField manages its own focus style effectively,
    // we can just place it inside the container.
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          // Using the existing robust TVFriendlyTextField
          // We need to import it in the parent file or replicate it.
          // For now, assume we use a simplified version here or the caller passes the widget.
          // BUT, to keep it "Premium", let's replicate the container style of SettingsActionTile
          // around the text field.
          // Actually, simply using the `TextField` with custom decoration is better for consistency.

          _PremiumTextField(
            controller: controller,
            focusNode: focusNode,
            hint: hint,
            obscureText: obscureText,
            icon: icon,
          ),
        ],
      ),
    );
  }
}

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
    if (widget.focusNode.hasFocus) {
      Scrollable.ensureVisible(
        context,
        alignment: 0.2,
        duration: const Duration(milliseconds: 150),
      );
    }
  }

  void _handleTextFocus() {
    if (mounted) setState(() {});
    if (_textFocusNode.hasFocus) {
      // Ensure no range selection is visible when entering edit mode.
      // Collapse the selection and place the cursor at the end.
      final textLen = widget.controller.text.length;
      try {
        widget.controller.selection = TextSelection.collapsed(offset: textLen);
      } catch (_) {}
      setState(() => _isEditing = true);
    } else {
      // Collapse selection when leaving edit mode to avoid persistent highlights.
      final textLen = widget.controller.text.length;
      try {
        widget.controller.selection = TextSelection.collapsed(offset: textLen);
      } catch (_) {}
      setState(() => _isEditing = false);
    }
  }

  bool get _isActive => widget.focusNode.hasFocus || _textFocusNode.hasFocus;

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.focusNode,
      onKeyEvent: (node, event) {
        if (!context.isTV || event is! KeyDownEvent) {
          return KeyEventResult.ignored;
        }

        // Enter/Select/Center on Container -> Enter Edit Mode
        if (event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.space) {
          _textFocusNode.requestFocus();
          return KeyEventResult.handled;
        }

        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: () {
          _textFocusNode.requestFocus();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: AppTheme.highlight,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _isActive ? AppTheme.primaryBlue : Colors.white10,
              width: _isActive ? 2 : 1,
            ),
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
                      if (!context.isTV || event is! KeyDownEvent) {
                        return KeyEventResult.ignored;
                      }

                      // Escape/Back from Edit Mode -> Return to Container
                      if (event.logicalKey == LogicalKeyboardKey.escape ||
                          event.logicalKey == LogicalKeyboardKey.goBack) {
                        widget.focusNode.requestFocus();
                        return KeyEventResult.handled;
                      }

                      // Arrows in Edit Mode -> Leave Edit Mode and Traverse
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
                      showCursor:
                          _isEditing, // Only show cursor when actually editing
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
    );
  }
}
