import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Standard card widget for consistent styling across the app
class BrandCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? borderRadius;
  final Color? backgroundColor;
  final bool hasBorder;
  final VoidCallback? onTap;
  final bool focusable;
  final FocusNode? focusNode;

  const BrandCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.backgroundColor,
    this.hasBorder = false,
    this.onTap,
    this.focusable = false,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final content = Container(
      padding: padding ?? EdgeInsets.all(context.tvSpacing(16)),
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppTheme.cardBackground,
        borderRadius:
            BorderRadius.circular(borderRadius ?? context.tvSpacing(12)),
        border: hasBorder
            ? Border.all(color: Colors.white.withValues(alpha: 0.1), width: 1)
            : null,
      ),
      child: child,
    );

    if (focusable || onTap != null) {
      return Focus(
        focusNode: focusNode,
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            return GestureDetector(
              onTap: onTap,
              child: AnimatedContainer(
                duration: AppDurations.fast,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      borderRadius ?? context.tvSpacing(12)),
                  border: isFocused
                      ? Border.all(color: AppTheme.focusBorder, width: 3)
                      : null,
                  boxShadow: isFocused
                      ? [
                          BoxShadow(
                            color: AppTheme.primaryBlue
                                .withAlpha((0.4 * 255).round()),
                            blurRadius: 16,
                            spreadRadius: 2,
                          ),
                        ]
                      : null,
                ),
                child: content,
              ),
            );
          },
        ),
      );
    }

    return content;
  }
}

/// Standard section card for settings and other grouped content
class BrandSectionCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final EdgeInsetsGeometry? margin;

  const BrandSectionCard({
    super.key,
    required this.title,
    required this.children,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: context.tvTextSize(16),
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
              letterSpacing: 0.3,
            ),
          ),
          SizedBox(height: context.tvSpacing(16)),
          ...children,
        ],
      ),
    );
  }
}

/// Standard status indicator card
class BrandStatusCard extends StatelessWidget {
  final String title;
  final String message;
  final bool isSuccess;
  final IconData? icon;
  final EdgeInsetsGeometry? margin;

  const BrandStatusCard({
    super.key,
    required this.title,
    required this.message,
    required this.isSuccess,
    this.icon,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return BrandSectionCard(
      title: title,
      margin: margin,
      children: [
        Row(
          children: [
            Icon(
              icon ??
                  (isSuccess
                      ? Icons.check_circle
                      : Icons.warning_amber_outlined),
              color: isSuccess ? AppTheme.accentGreen : AppTheme.accentOrange,
              size: context.tvIconSize(20),
            ),
            SizedBox(width: context.tvSpacing(12)),
            Expanded(
              child: Text(
                message,
                style: TextStyle(
                  fontSize: context.tvTextSize(14),
                  color: AppTheme.textPrimary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
