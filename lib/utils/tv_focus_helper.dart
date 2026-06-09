import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// TV Focus Helper for Android TV D-pad navigation
/// Provides utilities for managing focus and handling remote control input
class TVFocusHelper {
  /// Check if running on Android TV
  static bool _isAndroidTV = false;

  /// Check if running on Android TV
  static bool get isAndroidTV => _isAndroidTV;

  /// Update the TV status (called during app initialization)
  static void setIsAndroidTV(bool value) {
    _isAndroidTV = value;
  }

  /// Create a focusable widget optimized for TV remote control
  static Widget buildFocusableItem({
    required Widget child,
    required VoidCallback onPressed,
    FocusNode? focusNode,
    bool autofocus = false,
    Color? focusColor,
  }) {
    return Focus(
      focusNode: focusNode,
      autofocus: autofocus,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.select ||
              event.logicalKey == LogicalKeyboardKey.enter) {
            onPressed();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              color: isFocused ? AppTheme.focusBorder : null,
              fontWeight: isFocused ? FontWeight.bold : FontWeight.normal,
            ),
            child: child,
          );
        },
      ),
    );
  }

  /// Create a TV-optimized grid view with focus management
  static Widget buildFocusableGrid({
    required int itemCount,
    required IndexedWidgetBuilder itemBuilder,
    int crossAxisCount = 4,
    double mainAxisSpacing = 16,
    double crossAxisSpacing = 16,
    EdgeInsets padding = const EdgeInsets.all(16),
  }) {
    return GridView.builder(
      padding: padding,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        childAspectRatio: 16 / 9,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }

  /// Handle TV remote control back button
  static KeyEventResult handleBackButton(BuildContext context, KeyEvent event) {
    if (event is KeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.escape ||
          event.logicalKey == LogicalKeyboardKey.goBack) {
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
          return KeyEventResult.handled;
        }
      }
    }
    return KeyEventResult.ignored;
  }

  /// Create a TV-optimized button with proper sizing
  static Widget buildTVButton({
    required String label,
    required VoidCallback onPressed,
    IconData? icon,
    FocusNode? focusNode,
    bool autofocus = false,
    Color? color,
    double fontSize = 18,
    EdgeInsets padding =
        const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
  }) {
    return Focus(
      focusNode: focusNode,
      autofocus: autofocus,
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              padding: padding,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: isFocused
                    ? const BorderSide(color: AppTheme.focusBorder, width: 3)
                    : BorderSide.none,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 24),
                  const SizedBox(width: 12),
                ],
                Text(
                  label,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Scale desktop/laptop UI on large monitors (1920px+ width reference).
  static double desktopLayoutScale(Size size) {
    if (isAndroidTV) return 1.0;
    if (size.width <= 1600) return 1.0;
    return math.min(2.25, size.width / 1920.0);
  }

  static double _applyLayoutScale(double value, Size size) {
    return value * desktopLayoutScale(size);
  }

  /// Get appropriate text size for TV (larger than mobile)
  static double getTVTextSize(double baseSize, Size viewport) {
    final tv = isAndroidTV ? baseSize * 1.2 : baseSize;
    return _applyLayoutScale(tv, viewport);
  }

  /// Get appropriate icon size for TV
  static double getTVIconSize(double baseSize, Size viewport) {
    final tv = isAndroidTV ? baseSize * 1.2 : baseSize;
    return _applyLayoutScale(tv, viewport);
  }

  /// Get appropriate spacing for TV
  static double getTVSpacing(double baseSpacing, Size viewport) {
    final tv = isAndroidTV ? baseSpacing * 1.2 : baseSpacing;
    return _applyLayoutScale(tv, viewport);
  }
}

/// Extension on BuildContext for TV-specific utilities
extension TVBuildContextExtension on BuildContext {
  /// Check if the current context is running on TV
  bool get isTV => TVFocusHelper.isAndroidTV;

  Size get _viewport => MediaQuery.sizeOf(this);

  /// Get TV-scaled text size
  double tvTextSize(double baseSize) =>
      TVFocusHelper.getTVTextSize(baseSize, _viewport);

  /// Get TV-scaled icon size
  double tvIconSize(double baseSize) =>
      TVFocusHelper.getTVIconSize(baseSize, _viewport);

  /// Get TV-scaled spacing
  double tvSpacing(double baseSpacing) =>
      TVFocusHelper.getTVSpacing(baseSpacing, _viewport);

  /// Desktop layout scale for one-off sizing (hero logo slot, etc.)
  double layoutScale() => TVFocusHelper.desktopLayoutScale(_viewport);

  /// Get horizontally scaled size based on a 1920px reference width
  double scale(double value) => value * layoutScale();

  /// Get vertically scaled size based on viewport height
  double vScale(double value) =>
      value * TVFocusHelper.desktopLayoutScale(_viewport);
}
