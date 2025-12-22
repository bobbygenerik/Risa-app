import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
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
    final resolvedColor = _focused ? Colors.white : pressedColor;
    final labelColor = _focused ? AppTheme.darkBackground : Colors.white;

    final resolvedPadding =
        widget.padding.resolve(Directionality.of(context));
    final scaledPadding = EdgeInsets.fromLTRB(
      context.tvSpacing(resolvedPadding.left),
      context.tvSpacing(resolvedPadding.top),
      context.tvSpacing(resolvedPadding.right),
      context.tvSpacing(resolvedPadding.bottom),
    );

    final innerButton = AnimatedContainer(
      duration: AppDurations.fast,
      decoration: BoxDecoration(
        color: resolvedColor,
        borderRadius:
            BorderRadius.circular(context.tvSpacing(widget.borderRadius)),
      ),
      padding: EdgeInsets.only(
        left: scaledPadding.left,
        right: scaledPadding.right,
        top: scaledPadding.top,
        bottom: scaledPadding.bottom,
      ),
      constraints: BoxConstraints(
        minHeight: context
            .tvSpacing(widget.minHeight ?? 36)
            .clamp(20.0, 44.0),
      ),
      child: Row(
        mainAxisSize: widget.expand ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment:
            widget.expand ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          if (widget.icon != null) ...[
            AnimatedScale(
              scale: _focused ? 1.15 : 1.0,
              duration: const Duration(milliseconds: 150),
              child: context.iconSm(widget.icon!, color: labelColor),
            ),
            SizedBox(width: context.tvSpacing(8)),
          ],
          Flexible(
            child: Center(
              child: Text(
                widget.label,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: labelColor,
                  fontSize: context
                      .tvTextSize(widget.fontSize ?? 14)
                      .clamp(10.0, 16.0),
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    final content = AnimatedContainer(
      duration: AppDurations.fast,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        boxShadow: _focused
            ? [
                BoxShadow(
                  color: AppTheme.tvFocusHighlight.withValues(alpha: 0.4),
                  blurRadius: 15,
                  spreadRadius: 2,
                ),
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: innerButton,
    );

    final button = Shortcuts(
      shortcuts: const {
        SingleActivator(LogicalKeyboardKey.enter): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.select): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.space): ActivateIntent(),
      },
      child: Actions(
        actions: {
          ActivateIntent: CallbackAction<ActivateIntent>(
            onInvoke: (intent) {
              widget.onPressed();
              return null;
            },
          ),
        },
        child: FocusableActionDetector(
          focusNode: widget.focusNode,
          onShowFocusHighlight: (v) => setState(() => _focused = v),
          onShowHoverHighlight: (_) {},
          mouseCursor: SystemMouseCursors.click,
          onFocusChange: (v) => setState(() => _focused = v),
          child: AnimatedScale(
            scale: _focused ? 1.05 : 1.0,
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOutCubic,
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              child: InkWell(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                splashColor: Colors.white.withValues(alpha: 0.2),
                highlightColor: Colors.white.withValues(alpha: 0.1),
                onTapDown: (_) => setState(() => _pressed = true),
                onTapCancel: () => setState(() => _pressed = false),
                onTap: () {
                  setState(() => _pressed = false);
                  widget.onPressed();
                },
                child: content,
              ),
            ),
          ),
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
    final resolvedPadding =
        widget.padding.resolve(Directionality.of(context));
    final scaledPadding = EdgeInsets.fromLTRB(
      context.tvSpacing(resolvedPadding.left),
      context.tvSpacing(resolvedPadding.top),
      context.tvSpacing(resolvedPadding.right),
      context.tvSpacing(resolvedPadding.bottom),
    );

    final focusFill = Colors.white;
    final content = AnimatedContainer(
      duration: AppDurations.fast,
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
      child: Padding(
        padding: EdgeInsets.all(_focused ? 2.5 : 1.5),
        child: Container(
          decoration: BoxDecoration(
            color: _focused ? focusFill : Colors.transparent,
            borderRadius: BorderRadius.circular(widget.borderRadius - 2),
            boxShadow: _focused
                ? [
                    BoxShadow(
                      color: AppTheme.tvFocusHighlight.withValues(alpha: 0.3),
                      blurRadius: 12,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 15,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          padding: EdgeInsets.only(
            left: scaledPadding.left,
            right: scaledPadding.right,
            top: scaledPadding.top,
            bottom: scaledPadding.bottom,
          ),
          constraints: BoxConstraints(
            minHeight: context
                .tvSpacing(widget.minHeight ?? 32)
                .clamp(20.0, 40.0),
          ),
          child: Row(
            mainAxisSize: widget.expand ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: widget.expand
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              if (widget.icon != null) ...[
                AnimatedScale(
                  scale: _focused ? 1.15 : 1.0,
                  duration: const Duration(milliseconds: 150),
                  child: context.iconSm(
                    widget.icon!,
                    color: _focused ? AppTheme.darkBackground : Colors.white,
                  ),
                ),
                SizedBox(width: context.tvSpacing(8)),
              ],
              Flexible(
                child: Center(
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
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    final button = Shortcuts(
      shortcuts: const {
        SingleActivator(LogicalKeyboardKey.enter): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.select): ActivateIntent(),
        SingleActivator(LogicalKeyboardKey.space): ActivateIntent(),
      },
      child: Actions(
        actions: {
          ActivateIntent: CallbackAction<ActivateIntent>(
            onInvoke: (intent) {
              widget.onPressed();
              return null;
            },
          ),
        },
        child: FocusableActionDetector(
          focusNode: widget.focusNode,
          onShowFocusHighlight: (v) => setState(() => _focused = v),
          onShowHoverHighlight: (_) {},
          mouseCursor: SystemMouseCursors.click,
          onFocusChange: (v) => setState(() => _focused = v),
          child: AnimatedScale(
            scale: _focused ? 1.05 : 1.0,
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOutCubic,
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              child: InkWell(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                splashColor: Colors.white.withValues(alpha: 0.15),
                highlightColor: Colors.white.withValues(alpha: 0.08),
                onTap: widget.onPressed,
                child: content,
              ),
            ),
          ),
        ),
      ),
    );

    if (widget.expand) {
      return SizedBox(width: double.infinity, child: button);
    }
    return button;
  }
}
