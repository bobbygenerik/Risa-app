import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Modern Netflix-style focus effect constants
class TVFocusStyle {
  static const double focusScale = 1.05;
  static const Duration animationDuration = Duration(milliseconds: 150);
  static const Curve animationCurve = Curves.easeOutCubic;
  
  /// Subtle glow color (soft white/blue tint)
  static const Color glowColor = Color(0x40FFFFFF);
  
  /// Elevated shadow when focused (creates "lift" effect)
  static List<BoxShadow> get focusedShadow => [
    BoxShadow(
      color: Colors.black.withAlpha((0.4 * 255).round()),
      blurRadius: 20,
      spreadRadius: 2,
      offset: const Offset(0, 8),
    ),
    const BoxShadow(
      color: glowColor,
      blurRadius: 24,
      spreadRadius: 0,
    ),
  ];
  
  /// Default shadow when not focused
  static List<BoxShadow> get defaultShadow => [
    BoxShadow(
      color: Colors.black.withAlpha((0.2 * 255).round()),
      blurRadius: 8,
      spreadRadius: 0,
      offset: const Offset(0, 2),
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
  bool _hasFocus = false;

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

    return Padding(
      padding: widget.focusMargin,
      child: Focus(
        focusNode: widget.focusNode,
        autofocus: widget.autofocus,
        onFocusChange: (value) => setState(() => _hasFocus = value),
        onKeyEvent: (node, event) {
          if (widget.onPressed != null && event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.space) {
              widget.onPressed!();
              return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        child: AnimatedScale(
          scale: _hasFocus && widget.enableScale ? widget.focusScale : 1.0,
          duration: TVFocusStyle.animationDuration,
          curve: TVFocusStyle.animationCurve,
          child: AnimatedContainer(
            duration: TVFocusStyle.animationDuration,
            curve: TVFocusStyle.animationCurve,
            decoration: BoxDecoration(
              borderRadius: widget.borderRadius,
              boxShadow: _hasFocus
                  ? TVFocusStyle.focusedShadow
                  : TVFocusStyle.defaultShadow,
            ),
            child: ClipRRect(
              borderRadius: widget.borderRadius,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
