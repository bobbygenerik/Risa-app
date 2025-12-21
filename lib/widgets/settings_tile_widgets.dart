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
        if (event is KeyDownEvent && (event.logicalKey == LogicalKeyboardKey.select || event.logicalKey == LogicalKeyboardKey.enter)) {
          onTap?.call();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return Material(
            color: isFocused ? Colors.white : Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Row(
                  children: [
                    if (icon != null) ...[
                      Icon(
                        icon,
                        size: 24,
                        color: isFocused ? Colors.black : (iconColor ?? Colors.white70),
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
                              color: isFocused ? Colors.black : (titleColor ?? Colors.white),
                            ),
                          ),
                          if (subtitle != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              subtitle!,
                              style: TextStyle(
                                fontSize: 13,
                                color: isFocused ? Colors.black54 : Colors.white54,
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
                        color: isFocused ? Colors.black54 : Colors.white24,
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
        if (event is KeyDownEvent && (event.logicalKey == LogicalKeyboardKey.select || event.logicalKey == LogicalKeyboardKey.enter)) {
          onChanged(!value);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return Material(
            color: isFocused ? Colors.white : Colors.transparent,
            child: InkWell(
              onTap: () => onChanged(!value),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
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
                              color: isFocused ? Colors.black : Colors.white,
                            ),
                          ),
                          if (subtitle != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              subtitle!,
                              style: TextStyle(
                                fontSize: 13,
                                color: isFocused ? Colors.black54 : Colors.white54,
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
                        activeThumbColor: isFocused ? AppTheme.primaryBlue : AppTheme.primaryBlue,
                        activeTrackColor: isFocused ? AppTheme.primaryBlue.withValues(alpha: 0.3) : Colors.white.withValues(alpha: 0.2),
                        inactiveThumbColor: isFocused ? Colors.grey : Colors.grey[400],
                        inactiveTrackColor: isFocused ? Colors.grey[300] : Colors.grey[800],
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
  bool _isFocused = false;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_handleFocus);
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_handleFocus);
    super.dispose();
  }

  void _handleFocus() {
    setState(() {
      _isFocused = widget.focusNode.hasFocus;
      if (!_isFocused) _isEditing = false;
    });
    if (_isFocused) {
      final text = widget.controller.text;
      widget.controller.selection =
          TextSelection.collapsed(offset: text.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.focusNode,
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
        if (!context.isTV || event is! KeyDownEvent) {
          return KeyEventResult.ignored;
        }
        final scope = FocusScope.of(context);
        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          _isEditing = false;
          scope.focusInDirection(TraversalDirection.down);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          _isEditing = false;
          scope.focusInDirection(TraversalDirection.up);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          _isEditing = false;
          scope.focusInDirection(TraversalDirection.left);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          _isEditing = false;
          scope.focusInDirection(TraversalDirection.right);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: () {
          widget.focusNode.requestFocus();
          setState(() => _isEditing = true);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: AppTheme.highlight,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _isFocused ? AppTheme.primaryBlue : Colors.white10,
              width: _isFocused ? 2 : 1,
            ),
          ),
          child: Row(
            children: [
              if (widget.icon != null) ...[
                Icon(
                  widget.icon,
                  size: 20,
                  color: _isFocused ? Colors.white : Colors.white54,
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
                  child: TextField(
                    controller: widget.controller,
                    focusNode: widget.focusNode,
                    enableInteractiveSelection: false,
                    selectionControls: NoTextSelectionControls(),
                    showCursor: false,
                    cursorColor: Colors.transparent,
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
                      setState(() => _isEditing = false);
                      widget.focusNode.unfocus(); // Return focus to container
                    },
                  ),
                ),
              ),
              if (_isFocused && !_isEditing)
                const Icon(Icons.edit, size: 18, color: Colors.white70),
            ],
          ),
        ),
      ),
    );
  }
}
