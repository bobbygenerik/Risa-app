import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// Modern Netflix-style focus effect constants
class TVFocusStyle {
  static const double focusScale = 1.05;
  static const Duration animationDuration = Duration(milliseconds: 150);
  static const Curve animationCurve = Curves.easeOutCubic;
  static const Color glowColor = Color(0x60FFFFFF); // Increased opacity
  static const Color focusRingColor = AppTheme.focusBorder;

  static List<BoxShadow> get focusedShadow => [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.6),
          blurRadius: 30,
          spreadRadius: 2,
          offset: const Offset(0, 12),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.4),
          blurRadius: 15,
          spreadRadius: 0,
          offset: const Offset(0, 4),
        ),
      ];

  static List<BoxShadow> get defaultShadow => [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.3),
          blurRadius: 12,
          spreadRadius: 0,
          offset: const Offset(0, 4),
        ),
      ];
}

/// Reusable wrapper that adds modern Netflix-style TV focus cues
/// (scale up, elevated shadow, subtle glow) and optional remote/keyboard activation.
class TVFocusable extends StatefulWidget {
  const TVFocusable({
    super.key,
    required this.child,
    this.onPressed,
    this.focusNode,
    this.autofocus = false,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.enableScale = true,
    this.focusScale = 1.05,
    this.focusMargin = EdgeInsets.zero,
    this.focusColor, // Kept for backwards compatibility but not used in modern style
  });

  final Widget child;
  final VoidCallback? onPressed;
  final FocusNode? focusNode;
  final bool autofocus;
  final BorderRadius borderRadius;
  final bool enableScale;
  final double focusScale;
  final EdgeInsets focusMargin;
  final Color? focusColor;

  @override
  State<TVFocusable> createState() => _TVFocusableState();
}

class _TVFocusableState extends State<TVFocusable> {
  @override
  Widget build(BuildContext context) {
    Widget child = widget.child;
    if (widget.onPressed != null) {
      child = GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: widget.onPressed,
        child: child,
      );
    }

    return Focus(
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return AnimatedScale(
            scale: isFocused && widget.enableScale ? widget.focusScale : 1.0,
            duration: TVFocusStyle.animationDuration,
            curve: TVFocusStyle.animationCurve,
            child: AnimatedContainer(
              duration: TVFocusStyle.animationDuration,
              curve: TVFocusStyle.animationCurve,
              margin: widget.focusMargin,
              decoration: BoxDecoration(
                borderRadius: widget.borderRadius,
                border: isFocused
                    ? Border.all(color: TVFocusStyle.focusRingColor, width: 2)
                    : null,
                boxShadow: isFocused
                    ? TVFocusStyle.focusedShadow
                    : TVFocusStyle.defaultShadow,
              ),
              child: child,
            ),
          );
        },
      ),
    );
  }
}
