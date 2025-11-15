import 'package:flutter/material.dart';

class AppTheme {
  // Brand Colors (updated to match croppedlogo2.jpg dominant blue)
  // Using deep blue from logo palette
  static const Color primaryBlue = Color(0xFF2E3192);
  static const Color darkBackground = Color(0xFF1C1C1E);
  static const Color cardBackground = Color(0xFF2C2C2E);
  static const Color sidebarBackground = Color(0xFF141414);
  static const Color textPrimary = Color(0xFFE8E8E8); // Softer off-white for better theme cohesion
  static const Color textSecondary = Color(0xFFB3B3B3);
  static const Color textTertiary = Color(0xFF808080);
  
  // Accent Colors
  static const Color accentOrange = Color(0xFFFF6B35);
  static const Color accentGreen = Color(0xFF4CAF50);
  static const Color accentRed = Color(0xFFE53935);
  // Brand secondary from logo tail (pinkish/reddish)
  static const Color accentPink = Color(0xFFE61E6E);
  static const LinearGradient brandGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [primaryBlue, accentPink],
  );

  // Common opacity variants
  static Color primaryBlueOpacity(double opacity) => primaryBlue.withAlpha((opacity * 255).round());
  static Color accentOrangeOpacity(double opacity) => accentOrange.withAlpha((opacity * 255).round());
  static Color accentGreenOpacity(double opacity) => accentGreen.withAlpha((opacity * 255).round());
  static Color accentPinkOpacity(double opacity) => accentPink.withAlpha((opacity * 255).round());
  static Color textPrimaryOpacity(double opacity) => textPrimary.withAlpha((opacity * 255).round());
  static Color darkBackgroundOpacity(double opacity) => darkBackground.withAlpha((opacity * 255).round());
  
  // UI Element Colors
  static const Color divider = Color(0xFF2A2A2A);
  static const Color highlight = Color(0xFF2D2D2D);
  static const Color focusBorder = Color(0xFF00A8E8);
  
  // Android TV Focus Colors
  static const Color tvFocusHighlight = Color(0xFF2E3192);
  static const Color tvFocusGlow = Color(0x402E3192);
  
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBackground,
      primaryColor: primaryBlue,
      visualDensity: VisualDensity.compact,
      
      colorScheme: const ColorScheme.dark(
        primary: primaryBlue,
        secondary: primaryBlue,
        surface: cardBackground,
        
        error: accentRed,
      ),
      
      appBarTheme: const AppBarTheme(
        backgroundColor: darkBackground,
        elevation: 0,
        iconTheme: IconThemeData(color: textPrimary),
        titleTextStyle: TextStyle(
          color: textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      
      cardTheme: CardThemeData(
        color: cardBackground,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: textPrimary,
        ),
        displayMedium: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: textPrimary,
        ),
        displaySmall: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: textPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: textPrimary,
        ),
        headlineSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: textPrimary,
        ),
        titleLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: textPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: textPrimary,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textPrimary,
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          color: textPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: 13,
          color: textSecondary,
        ),
        bodySmall: TextStyle(
          fontSize: 11,
          color: textTertiary,
        ),
      ),
      
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryBlue,
          foregroundColor: textPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
        ).copyWith(
          // Android TV focus support - pink border on focus
          overlayColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.focused)) {
              return accentPink.withAlpha((0.2 * 255).round());
            }
            return null;
          }),
          side: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.focused)) {
              return BorderSide(color: accentPink, width: 3);
            }
            return null;
          }),
        ),
      ),
      
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryBlue,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ).copyWith(
          // Pink border on focus
          overlayColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.focused)) {
              return accentPink.withAlpha((0.1 * 255).round());
            }
            return null;
          }),
          side: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.focused)) {
              return BorderSide(color: accentPink, width: 3);
            }
            return null;
          }),
        ),
      ),
      
      iconTheme: const IconThemeData(
        color: textSecondary,
        size: 24,
      ),
      
      dividerTheme: const DividerThemeData(
        color: divider,
        thickness: 1,
      ),
      
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return textPrimary;
          }
          return textTertiary;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primaryBlue;
          }
          return highlight;
        }),
      ),
      
      sliderTheme: const SliderThemeData(
        activeTrackColor: primaryBlue,
        inactiveTrackColor: highlight,
        thumbColor: textPrimary,
        overlayColor: Color(0x2900A8E8),
      ),
      
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: highlight,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: tvFocusHighlight, width: 3),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
    );
  }
}

class AppSizes {
  // Spacing scale (optimized for TV 10-foot interface - more compact)
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 24.0;
  static const double xxl = 32.0;
  
  // Border Radius
  static const double radiusSm = 4.0;
  static const double radiusMd = 8.0;
  static const double radiusLg = 12.0;
  static const double radiusXl = 16.0;
  static const double radiusFull = 9999.0;
  
  // Component Sizes
  static const double sidebarWidth = 240.0;
  static const double sidebarCollapsedWidth = 80.0;
  static const double appBarHeight = 64.0;
  static const double cardHeight = 160.0;
  static const double cardWidth = 120.0;
  static const double cardLandscapeHeight = 180.0;
  static const double cardLandscapeWidth = 320.0;
  
  // Icon Sizes
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;
  static const double iconXl = 48.0;
}

class AppDurations {
  static const Duration fast = Duration(milliseconds: 200);
  static const Duration normal = Duration(milliseconds: 300);
  static const Duration slow = Duration(milliseconds: 500);
}
