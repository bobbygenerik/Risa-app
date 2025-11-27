import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// A unified button for 'Go to Settings' on all main screens.
/// - Consistent size and style
/// - No default glow/focus overlay
/// - Subtle border on focus
class GoToSettingsButton extends StatelessWidget {
  final VoidCallback onPressed;
  final FocusNode? focusNode;
  const GoToSettingsButton({Key? key, required this.onPressed, this.focusNode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter) {
            onPressed();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final hasFocus = Focus.of(context).hasFocus;
          return GestureDetector(
            onTap: onPressed,
            child: Container(
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue,
                borderRadius: BorderRadius.circular(12),
                border: hasFocus
                    ? Border.all(color: AppTheme.primaryBlue, width: 3)
                    : null,
                boxShadow: hasFocus
                    ? [
                        BoxShadow(
                          color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
                          blurRadius: 12,
                          spreadRadius: 2,
                        ),
                      ]
                    : null,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.settings, color: Colors.white, size: 20),
                  const SizedBox(width: 8),
                  const Text(
                    'Go to Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
