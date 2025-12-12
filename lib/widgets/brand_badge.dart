import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Standard badge widget for consistent styling across the app
class BrandBadge extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;

  const BrandBadge({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.padding,
    this.borderRadius,
  });

  /// Live badge with red background
  const BrandBadge.live({
    super.key,
    this.text = 'LIVE',
    this.backgroundColor = AppTheme.accentRed,
    this.textColor = Colors.white,
    this.fontSize,
    this.padding,
    this.borderRadius,
  });

  /// Catchup badge with orange background
  const BrandBadge.catchup({
    super.key,
    this.text = 'CATCHUP',
    this.backgroundColor = AppTheme.accentOrange,
    this.textColor = Colors.white,
    this.fontSize,
    this.padding,
    this.borderRadius,
  });

  /// No EPG badge with red background
  const BrandBadge.noEpg({
    super.key,
    this.text = 'NO EPG',
    this.backgroundColor = Colors.red,
    this.textColor = Colors.white,
    this.fontSize,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(
        horizontal: context.tvSpacing(6),
        vertical: context.tvSpacing(2),
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppTheme.primaryBlue,
        borderRadius: BorderRadius.circular(
          borderRadius ?? context.tvSpacing(4),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: fontSize ?? context.tvTextSize(10),
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}