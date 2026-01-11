import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/app_icons.dart';

class BrandPrimaryButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final bool expand;
  final FocusNode? focusNode;
  final double? fontSize;
  final double? minHeight;

  const BrandPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    this.borderRadius = 8,
    this.expand = false,
    this.focusNode,
    this.fontSize,
    this.minHeight,
  });

  @override
  State<BrandPrimaryButton> createState() => _BrandPrimaryButtonState();
}

class _BrandPrimaryButtonState extends State<BrandPrimaryButton> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    const baseColor = AppTheme.primaryBlue;
    final resolvedColor =
        _focused ? Colors.white.withValues(alpha: 0.9) : baseColor;
    final labelColor = _focused ? AppTheme.darkBackground : Colors.white;

    final resolvedPadding = widget.padding.resolve(Directionality.of(context));
    final scaledPadding = EdgeInsets.fromLTRB(
      context.tvSpacing(resolvedPadding.left),
      context.tvSpacing(resolvedPadding.top),
      context.tvSpacing(resolvedPadding.right),
      context.tvSpacing(resolvedPadding.bottom),
    );

    final minH = context.tvSpacing(widget.minHeight ?? 36).clamp(24.0, 64.0);

    final content = AnimatedContainer(
      duration: AppDurations.fast,
      constraints: BoxConstraints(minHeight: minH),
      decoration: BoxDecoration(
        color: resolvedColor,
        borderRadius:
            BorderRadius.circular(context.tvSpacing(widget.borderRadius)),
        boxShadow:
            _focused ? TVFocusStyle.focusedShadow : TVFocusStyle.defaultShadow,
      ),
      padding: scaledPadding,
      child: Row(
        mainAxisSize: widget.expand ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment:
            widget.expand ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          if (widget.icon != null) ...[
            AnimatedScale(
              scale: _focused ? 1.15 : 1.0,
              duration: TVFocusStyle.animationDuration,
              child: context.iconSm(widget.icon!, color: labelColor),
            ),
            SizedBox(width: context.tvSpacing(8)),
          ],
          Flexible(
            child: Text(
              widget.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: labelColor,
                fontSize:
                    context.tvTextSize(widget.fontSize ?? 14).clamp(10.0, 16.0),
                fontWeight: FontWeight.w600,
                height: 1.1,
              ),
            ),
          ),
        ],
      ),
    );

    return FocusableActionDetector(
      focusNode: widget.focusNode,
      shortcuts: const {
        SingleActivator(LogicalKeyboardKey.select): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.enter): ActivateIntent(),
      },
      actions: {
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (_) {
            widget.onPressed();
            return null;
          },
        ),
      },
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      onFocusChange: (v) => setState(() => _focused = v),
      mouseCursor: SystemMouseCursors.click,
      child: AnimatedScale(
        scale: _focused ? 1.05 : 1.0,
        duration: AppDurations.fast,
        curve: Curves.easeOutCubic,
        child: GestureDetector(
          onTap: widget.onPressed,
          child: content,
        ),
      ),
    );
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
  final FocusNode? focusNode;
  final double? fontSize;
  final double? minHeight;

  const BrandSecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.padding = const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
    this.borderRadius = 8,
    this.expand = false,
    this.focusNode,
    this.fontSize,
    this.minHeight,
  });

  @override
  State<BrandSecondaryButton> createState() => _BrandSecondaryButtonState();
}

class _BrandSecondaryButtonState extends State<BrandSecondaryButton> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final resolvedPadding = widget.padding.resolve(Directionality.of(context));
    final scaledPadding = EdgeInsets.fromLTRB(
      context.tvSpacing(resolvedPadding.left),
      context.tvSpacing(resolvedPadding.top),
      context.tvSpacing(resolvedPadding.right),
      context.tvSpacing(resolvedPadding.bottom),
    );

    final focusFill = Colors.white.withValues(alpha: 0.9);
    final minH = context.tvSpacing(widget.minHeight ?? 36).clamp(24.0, 64.0);

    final content = AnimatedContainer(
      duration: AppDurations.fast,
      constraints: BoxConstraints(minHeight: minH),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppTheme.primaryBlue,
            AppTheme.primaryBlue.withAlpha((0.9 * 255).round())
          ],
        ),
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      padding: const EdgeInsets.all(2.0), // Consistent border simulation
      child: AnimatedContainer(
        duration: AppDurations.fast,
        decoration: BoxDecoration(
          color: _focused ? focusFill : AppTheme.darkBackground,
          borderRadius: BorderRadius.circular(widget.borderRadius - 1.5),
        ),
        padding: scaledPadding,
        child: Row(
          mainAxisSize: widget.expand ? MainAxisSize.max : MainAxisSize.min,
          mainAxisAlignment: widget.expand
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          children: [
            if (widget.icon != null) ...[
              AnimatedScale(
                scale: _focused ? 1.15 : 1.0,
                duration: TVFocusStyle.animationDuration,
                child: context.iconSm(
                  widget.icon!,
                  color: _focused ? AppTheme.darkBackground : Colors.white,
                ),
              ),
              SizedBox(width: context.tvSpacing(8)),
            ],
            Flexible(
              child: Text(
                widget.label,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: _focused ? AppTheme.darkBackground : Colors.white,
                  fontSize: context
                      .tvTextSize(widget.fontSize ?? 14)
                      .clamp(10.0, 16.0),
                  fontWeight: FontWeight.w600,
                  height: 1.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return FocusableActionDetector(
      focusNode: widget.focusNode,
      shortcuts: const {
        SingleActivator(LogicalKeyboardKey.select): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.enter): ActivateIntent(),
      },
      actions: {
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (_) {
            widget.onPressed();
            return null;
          },
        ),
      },
      onShowFocusHighlight: (v) => setState(() => _focused = v),
      onFocusChange: (v) => setState(() => _focused = v),
      mouseCursor: SystemMouseCursors.click,
      child: AnimatedScale(
        scale: _focused ? 1.05 : 1.0,
        duration: AppDurations.fast,
        curve: Curves.easeOutCubic,
        child: GestureDetector(
          onTap: widget.onPressed,
          child: content,
        ),
      ),
    );
  }
}
