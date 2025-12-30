import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Wrapper widget that provides consistent focus animations for TV cards.
class FocusableCard extends StatefulWidget {
  const FocusableCard({
    super.key,
    this.focusNode,
    this.autofocus = false,
    required this.width,
    this.height,
    this.margin,
    this.onTap,
    required this.child,
    this.borderRadius = AppSizes.radiusLg,
    this.focusBorderColor = AppTheme.focusBorder,
    this.idleBorderColor = Colors.transparent,
    this.focusBorderWidth = 4,
    this.idleBorderWidth = 4,
    this.focusedBoxShadow,
    this.animationDuration = AppDurations.fast,
    this.onFocusChange,
  });

  final FocusNode? focusNode;
  final bool autofocus;
  final double width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final Widget child;
  final double borderRadius;
  final Color focusBorderColor;
  final Color idleBorderColor;
  final double focusBorderWidth;
  final double idleBorderWidth;
  final List<BoxShadow>? focusedBoxShadow;
  final Duration animationDuration;
  final ValueChanged<bool>? onFocusChange;

  @override
  State<FocusableCard> createState() => _FocusableCardState();
}

class _FocusableCardState extends State<FocusableCard> {
  bool _isFocused = false;

  void _handleFocusChange(bool hasFocus) {
    if (_isFocused != hasFocus) {
      setState(() {
        _isFocused = hasFocus;
      });
    }
    widget.onFocusChange?.call(hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      onFocusChange: _handleFocusChange,
      onKeyEvent: (node, event) {
        if (widget.onTap != null && event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter ||
              event.logicalKey == LogicalKeyboardKey.space) {
            widget.onTap!();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: AnimatedScale(
        scale: _isFocused ? context.tvSpacing(1.08) : 1.0,
        duration: widget.animationDuration,
        curve: Curves.easeOut,
        child: AnimatedContainer(
          duration: widget.animationDuration,
          margin: widget.margin,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(context.tvSpacing(widget.borderRadius)),
            border: Border.all(
              color:
                  _isFocused ? widget.focusBorderColor : widget.idleBorderColor,
              width: _isFocused
                  ? context.tvSpacing(widget.focusBorderWidth)
                  : context.tvSpacing(widget.idleBorderWidth),
            ),
            boxShadow: _isFocused
                ? (widget.focusedBoxShadow ??
                    [
                      BoxShadow(
                        color: widget.focusBorderColor.withAlpha(80),
                        blurRadius: context.tvSpacing(24),
                        spreadRadius: context.tvSpacing(2),
                      ),
                    ])
                : null,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
