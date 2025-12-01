import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// TV Focus Helper for Android TV D-pad navigation
/// Provides utilities for managing focus and handling remote control input
class TVFocusHelper {
  /// Check if running on Android TV
  static bool get isAndroidTV {
    if (kIsWeb) return false;
    if (!Platform.isAndroid) return false;
    // On Android, assume TV if screen is large (basic heuristic)
    // More sophisticated detection would require platform channels
    return true; // Requires platform channel for precise detection
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
              color: isFocused ? AppTheme.primaryBlue : null,
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
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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
                    ? const BorderSide(color: AppTheme.primaryBlue, width: 3)
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

  /// Get appropriate text size for TV (larger than mobile)
  static double getTVTextSize(double baseSize) {
    return baseSize * 1.5; // 50% larger for TV viewing distance
  }

  /// Get appropriate icon size for TV
  static double getTVIconSize(double baseSize) {
    return baseSize * 1.5; // 50% larger for TV
  }

  /// Get appropriate spacing for TV
  static double getTVSpacing(double baseSpacing) {
    return baseSpacing * 1.5; // 50% more spacing for TV
  }
}

/// Extension on BuildContext for TV-specific utilities
extension TVBuildContextExtension on BuildContext {
  /// Check if the current context is running on TV
  bool get isTV => TVFocusHelper.isAndroidTV;

  /// Get TV-scaled text size
  double tvTextSize(double baseSize) => TVFocusHelper.getTVTextSize(baseSize);

  /// Get TV-scaled icon size
  double tvIconSize(double baseSize) => TVFocusHelper.getTVIconSize(baseSize);

  /// Get TV-scaled spacing
  double tvSpacing(double baseSpacing) => TVFocusHelper.getTVSpacing(baseSpacing);
}
