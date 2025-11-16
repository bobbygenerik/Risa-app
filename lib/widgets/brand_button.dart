import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';

class BrandPrimaryButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final bool expand;

  const BrandPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    this.borderRadius = 10,
    this.expand = false,
  });

  @override
  State<BrandPrimaryButton> createState() => _BrandPrimaryButtonState();
}

class _BrandPrimaryButtonState extends State<BrandPrimaryButton> {
  bool _focused = false;
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    const baseColor = AppTheme.primaryBlue;
    final pressedColor = _pressed
        ? HSLColor.fromColor(baseColor)
            .withLightness((HSLColor.fromColor(baseColor).lightness + 0.06)
                .clamp(0.0, 1.0))
            .toColor()
        : baseColor;

    final innerButton = AnimatedContainer(
      duration: AppDurations.fast,
      decoration: BoxDecoration(
        color: pressedColor,
        borderRadius: BorderRadius.circular(widget.borderRadius - (_focused ? 0 : 0)),
      ),
      padding: widget.padding,
      child: Row(
        mainAxisSize: widget.expand ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment:
            widget.expand ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          if (widget.icon != null) ...[
            Icon(widget.icon, color: Colors.white),
            const SizedBox(width: 8),
          ],
          Flexible(
            child: Text(
              widget.label,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );

    final content = Stack(
      children: [
        // Solid pink border on focus
        AnimatedContainer(
          duration: AppDurations.fast,
          decoration: BoxDecoration(
            color: _focused ? AppTheme.accentPink : Colors.transparent,
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Padding(
            padding: EdgeInsets.all(_focused ? 2 : 0),
            child: innerButton,
          ),
        ),
        // Subtle white overlay on focus (very light)
        if (_focused)
          Positioned.fill(
            child: IgnorePointer(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  color: Colors.white.withAlpha((0.04 * 255).round()),
                ),
              ),
            ),
          ),
      ],
    );

    final button = FocusableActionDetector(
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      onShowHoverHighlight: (_) {},
      mouseCursor: SystemMouseCursors.click,
      onFocusChange: (v) => setState(() => _focused = v),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        child: InkWell(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          splashColor: Colors.white.withAlpha((0.2 * 255).round()),
          highlightColor: Colors.white.withAlpha((0.1 * 255).round()),
          onTapDown: (_) => setState(() => _pressed = true),
          onTapCancel: () => setState(() => _pressed = false),
          onTap: () {
            setState(() => _pressed = false);
            widget.onPressed();
          },
          child: content,
        ),
      ),
    );

    if (widget.expand) {
      return SizedBox(width: double.infinity, child: button);
    }
    return button;
  }
}

/// Secondary brand button: transparent fill, gradient outline, white text
/// Outline is always visible, thicker on focus; for cancel/secondary actions
class BrandSecondaryButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final bool expand;

  const BrandSecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    this.borderRadius = 10,
    this.expand = false,
  });

  @override
  State<BrandSecondaryButton> createState() => _BrandSecondaryButtonState();
}

class _BrandSecondaryButtonState extends State<BrandSecondaryButton> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final content = AnimatedContainer(
      duration: AppDurations.fast,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [AppTheme.primaryBlue, AppTheme.accentPink],
        ),
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(_focused ? 2.5 : 1.5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(widget.borderRadius - 2),
          ),
          padding: widget.padding,
          child: Row(
            mainAxisSize: widget.expand ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: widget.expand
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              if (widget.icon != null) ...[
                Icon(widget.icon, color: Colors.white),
                const SizedBox(width: 8),
              ],
              Flexible(
                child: Text(
                  widget.label,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    final button = FocusableActionDetector(
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      onShowHoverHighlight: (_) {},
      mouseCursor: SystemMouseCursors.click,
      onFocusChange: (v) => setState(() => _focused = v),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        child: InkWell(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          splashColor: Colors.white.withAlpha((0.15 * 255).round()),
          highlightColor: Colors.white.withAlpha((0.08 * 255).round()),
          onTap: widget.onPressed,
          child: content,
        ),
      ),
    );

    if (widget.expand) {
      return SizedBox(width: double.infinity, child: button);
    }
    return button;
  }
}
