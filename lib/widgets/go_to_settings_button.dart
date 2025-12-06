import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

/// A unified button for 'Go to Settings' on all main screens.
/// - Consistent size and style
/// - Standard TVFocusStyle glow effect
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
          return AnimatedScale(
            scale: hasFocus ? TVFocusStyle.focusScale : 1.0,
            duration: TVFocusStyle.animationDuration,
            child: GestureDetector(
              onTap: onPressed,
              child: AnimatedContainer(
                duration: TVFocusStyle.animationDuration,
                decoration: BoxDecoration(
                  color: AppTheme.primaryBlue,
                  borderRadius: BorderRadius.circular(context.tvSpacing(12)),
                  boxShadow: hasFocus ? TVFocusStyle.focusedShadow : TVFocusStyle.defaultShadow,
                ),
                padding: EdgeInsets.symmetric(horizontal: context.tvSpacing(24), vertical: context.tvSpacing(14)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, color: Colors.white, size: context.tvIconSize(20)),
                    SizedBox(width: context.tvSpacing(8)),
                    Text(
                      'Go to Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: context.tvTextSize(16),
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
