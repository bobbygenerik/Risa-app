import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Standardized typography system for consistent text styling across the app
/// Updated for better TV readability and visual hierarchy
class AppTypography {
  /// Screen titles (24px, bold)
  static TextStyle screenTitle(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(24),
    fontWeight: FontWeight.bold,
    color: AppTheme.textPrimary,
  );

  /// Section headers (20px, w600) - Increased from 18px for better hierarchy
  static TextStyle sectionHeader(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(20),
    fontWeight: FontWeight.w600,
    color: AppTheme.textPrimary,
  );

  /// Card titles (18px, w600) - Increased from 16px for TV readability
  static TextStyle cardTitle(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(18),
    fontWeight: FontWeight.w600,
    color: AppTheme.textPrimary,
  );

  /// Subsection headers (18px, w600, letter spacing) - Increased from 16px
  static TextStyle subsectionHeader(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(18),
    fontWeight: FontWeight.w600,
    color: AppTheme.textPrimary,
    letterSpacing: 0.3,
  );

  /// Body text (16px, normal) - Increased from 14px for TV readability
  static TextStyle bodyText(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(16),
    color: AppTheme.textPrimary,
  );

  /// Secondary body text (16px, secondary color) - Increased from 14px
  static TextStyle bodySecondary(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(16),
    color: AppTheme.textSecondary,
  );

  /// Small text (14px, secondary color) - Increased from 12px for better readability
  static TextStyle smallText(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(14),
    color: AppTheme.textSecondary,
  );

  /// Caption text (13px, secondary color) - Increased from 11px
  static TextStyle caption(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(13),
    color: AppTheme.textSecondary,
  );

  /// Channel name (16px, w600) - Increased from 14px
  static TextStyle channelName(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(16),
    fontWeight: FontWeight.w600,
    color: AppTheme.textPrimary,
  );

  /// Program title (16px, w600) - Increased from 14px
  static TextStyle programTitle(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(16),
    fontWeight: FontWeight.w600,
    color: AppTheme.textPrimary,
  );

  /// Program time (13px, secondary) - Increased from 11px
  static TextStyle programTime(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(13),
    color: AppTheme.textSecondary,
  );

  /// Hero title (48px, w700) - Increased from 24px for full-screen hero impact
  static TextStyle heroTitle(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(48),
    fontWeight: FontWeight.w700,
    color: AppTheme.textPrimary,
    height: 1.2,
  );

  /// Hero description (16px, secondary, line height) - Increased from 14px
  static TextStyle heroDescription(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(16),
    color: AppTheme.textSecondary,
    height: 1.4,
  );

  /// Status text (16px, primary) - Increased from 14px
  static TextStyle statusText(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(16),
    color: AppTheme.textPrimary,
  );

  /// Count text (secondary color)
  static TextStyle countText(BuildContext context) => TextStyle(
    color: AppTheme.textSecondary,
  );

  /// Loading text (16px, secondary with alpha) - Increased from 14px
  static TextStyle loadingText(BuildContext context) => TextStyle(
    fontSize: context.tvTextSize(16),
    color: AppTheme.textSecondary.withAlpha((0.8 * 255).round()),
  );
}
