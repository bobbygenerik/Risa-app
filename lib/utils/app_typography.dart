import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Standardized typography system for consistent text styling across the app
class AppTypography {
  /// Screen titles (24px, bold)
  static TextStyle screenTitle(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(24),
    fontWeight: FontWeight.bold,
    color: AppTheme.textPrimary,
  );

  /// Section headers (18px, w600)
  static TextStyle sectionHeader(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(18),
    fontWeight: FontWeight.w600,
    color: AppTheme.textPrimary,
  );

  /// Card titles (16px, w600)
  static TextStyle cardTitle(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(16),
    fontWeight: FontWeight.w600,
    color: AppTheme.textPrimary,
  );

  /// Subsection headers (16px, w600, letter spacing)
  static TextStyle subsectionHeader(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(16),
    fontWeight: FontWeight.w600,
    color: AppTheme.textPrimary,
    letterSpacing: 0.3,
  );

  /// Body text (14px, normal)
  static TextStyle bodyText(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(14),
    color: AppTheme.textPrimary,
  );

  /// Secondary body text (14px, secondary color)
  static TextStyle bodySecondary(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(14),
    color: AppTheme.textSecondary,
  );

  /// Small text (12px, secondary color)
  static TextStyle smallText(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(12),
    color: AppTheme.textSecondary,
  );

  /// Caption text (11px, secondary color)
  static TextStyle caption(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(11),
    color: AppTheme.textSecondary,
  );

  /// Channel name (14px, w600)
  static TextStyle channelName(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(14),
    fontWeight: FontWeight.w600,
    color: AppTheme.textPrimary,
  );

  /// Program title (14px, w600)
  static TextStyle programTitle(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(14),
    fontWeight: FontWeight.w600,
    color: AppTheme.textPrimary,
  );

  /// Program time (11px, secondary)
  static TextStyle programTime(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(11),
    color: AppTheme.textSecondary,
  );

  /// Hero title (24px, w700)
  static TextStyle heroTitle(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(24),
    fontWeight: FontWeight.w700,
    color: AppTheme.textPrimary,
    height: 1.3,
  );

  /// Hero description (14px, secondary, line height)
  static TextStyle heroDescription(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(14),
    color: AppTheme.textSecondary,
    height: 1.3,
  );

  /// Status text (14px, primary)
  static TextStyle statusText(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(14),
    color: AppTheme.textPrimary,
  );

  /// Count text (secondary color)
  static TextStyle countText(BuildContext context) => TextStyle(
    color: AppTheme.textSecondary,
  );

  /// Loading text (14px, secondary with alpha)
  static TextStyle loadingText(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(14),
    color: AppTheme.textSecondary.withAlpha((0.8 * 255).round()),
  );
}