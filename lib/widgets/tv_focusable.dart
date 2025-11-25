import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// Reusable wrapper that adds Android TV focus cues (border, glow, scale)
/// and optional remote/keyboard activation handling.
class TVFocusable extends StatefulWidget {
  const TVFocusable({
    super.key,
    required this.child,
    this.onPressed,
    this.focusNode,
    this.autofocus = false,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.enableScale = true,
    this.focusScale = 1.03,
    this.focusMargin = EdgeInsets.zero,
    this.focusColor,
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
    final highlightColor = widget.focusColor ?? AppTheme.tvFocusHighlight;
    // Make focus cues more prominent for TV
    const glowColor = Color(0xFF00BFFF); // Brighter blue glow

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
          scale: _hasFocus && widget.enableScale ? (widget.focusScale + 0.04) : 1.0,
          duration: const Duration(milliseconds: 140),
          curve: Curves.easeOut,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 140),
            curve: Curves.easeOut,
            decoration: BoxDecoration(
              borderRadius: widget.borderRadius,
              boxShadow: _hasFocus
                  ? [
                      const BoxShadow(
                        color: glowColor,
                        blurRadius: 28,
                        spreadRadius: 4,
                      ),
                    ]
                  : null,
            ),
            foregroundDecoration: BoxDecoration(
              borderRadius: widget.borderRadius,
              border: Border.all(
                color: _hasFocus ? highlightColor : Colors.transparent,
                width: _hasFocus ? 4 : 0,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
