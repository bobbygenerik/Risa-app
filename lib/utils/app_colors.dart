import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// Extended color system for consistent color usage across the app
/// Updated with better contrast and color distinction for TV interfaces
class AppColors {
  // Base colors from AppTheme
  static const Color primary = AppTheme.primaryBlue;
  static const Color background = AppTheme.darkBackground;
  static const Color surface = AppTheme.cardBackground;
  static const Color textPrimary = AppTheme.textPrimary;
  static const Color textSecondary = AppTheme.textSecondary;

  // Semantic colors
  static const Color success = AppTheme.accentGreen;
  static const Color warning = AppTheme.accentOrange;
  static const Color error = AppTheme.accentRed;
  static const Color info = AppTheme.primaryBlue;

  // UI element colors
  static const Color border = Color(0xFF18203A);
  static const Color borderLight = Color(0xFF29345C);
  static const Color overlay = Color(0x80000000);
  static const Color overlayLight = Color(0x40000000);

  // Card and container colors
  static const Color cardDark = Color(0xFF070A1F);
  static const Color cardMedium = Color(0xFF0D1230);
  static const Color cardLight = Color(0xFF1A2446);

  // Progress and loading colors
  static const Color progressBackground = Color(0x4DFFFFFF);
  static const Color progressForeground = AppTheme.primaryBlue;

  // Focus and interaction colors - Updated for better contrast and distinction
  static const Color focusBorder = Color(0xFFFFFFFF);
  static const Color focusGlow = Color(0x66FFFFFF);
  static const Color hoverOverlay = Color(0x1AFFFFFF);

  // Skeleton loading colors
  static const Color skeletonBase = Color(0x26FFFFFF);
  static const Color skeletonHighlight = Color(0x1AFFFFFF);

  // Badge colors
  static const Color badgeLive = AppTheme.accentRed;
  static const Color badgeCatchup = AppTheme.accentOrange;
  static const Color badgeError = Colors.red;

  // EPG specific colors
  static const Color epgLive = Color(0xFF0B7CFF);
  static const Color epgCatchup = Color(0xFFCC5A2D);
  static const Color epgBackground = Color(0x660D1230);

  // Gradient backgrounds
  static const LinearGradient cardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF0D1230), Color(0xFF070A1F), AppTheme.cardBackground],
  );

  static const LinearGradient channelCardFallbackGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF00BFF3), Color(0xFFFF3D9A)],
  );

  static const BoxDecoration channelCardFallbackDecoration = BoxDecoration(
    gradient: channelCardFallbackGradient,
  );

  static const LinearGradient heroGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF070A1F), AppTheme.darkBackground],
  );

  static const LinearGradient fadeGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Color(0xCC000000), AppTheme.darkBackground],
  );

  // Opacity helpers
  static Color withOpacity(Color color, double opacity) {
    return color.withAlpha((opacity * 255).round());
  }

  // Common opacity variants
  static Color primaryWithOpacity(double opacity) =>
      withOpacity(primary, opacity);
  static Color backgroundWithOpacity(double opacity) =>
      withOpacity(background, opacity);
  static Color textPrimaryWithOpacity(double opacity) =>
      withOpacity(textPrimary, opacity);
  static Color textSecondaryWithOpacity(double opacity) =>
      withOpacity(textSecondary, opacity);
  static Color whiteWithOpacity(double opacity) =>
      withOpacity(Colors.white, opacity);
  static Color blackWithOpacity(double opacity) =>
      withOpacity(Colors.black, opacity);
}
