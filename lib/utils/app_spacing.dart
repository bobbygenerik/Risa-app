import 'package:flutter/material.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Comprehensive spacing system for consistent layout across the app
/// Provides TV-optimized spacing with semantic naming
/// Updated with cleaner rhythm (8px, 16px, 24px, 32px, 48px, 64px)
class AppSpacing {
  // Base spacing scale (TV-optimized) - Simplified for cleaner rhythm
  static const double xs = 8.0;
  static const double sm = 16.0;
  static const double md = 24.0;
  static const double lg = 32.0;
  static const double xl = 48.0;
  static const double xxl = 64.0;
  static const double xxxl = 80.0;

  // Semantic spacing for specific use cases
  static const double cardPadding = lg;
  static const double sectionSpacing = lg;
  static const double screenPadding = xl;
  static const double buttonSpacing = md;
  static const double listItemSpacing = sm;
  static const double heroContentSpacing = xxl;
  static const double dialogPadding = xl;
  static const double formFieldSpacing = lg;

  // Layout dimensions
  static const double sidebarWidth = 180.0;
  static const double sidebarCollapsedWidth = 80.0;
  static const double categoryBarWidth = 140.0;
  static const double channelSidebarWidth = 80.0;
  static const double epgCellWidth = 240.0;
  static const double epgRowHeight = 64.0;

  // Grid spacing
  static const double gridSpacing = md;
  static const double cardSpacing = lg;
  static const double rowSpacing = lg;
  static const double cardGap = 12.0;

  // Hero section dimensions
  static const double heroHeightRatio = 1.0;
  static const double heroInfoWidth = 0.3;
  static const double heroInfoBottom = 0.35;

  // Card dimensions
  static const double cardAspectRatio = 0.57; // 16:9 landscape
  static const double cardPortraitRatio = 1.5; // Portrait cards
  static const double cardRowHeightMultiplier =
      1.8; // Card height + title space

  // Border radius
  static const double radiusXs = 4.0;
  static const double radiusSm = 6.0;
  static const double radiusMd = 8.0;
  static const double radiusLg = 12.0;
  static const double radiusXl = 16.0;
  static const double radiusCard = radiusLg;
  static const double radiusButton = radiusMd;
  static const double radiusDialog = radiusXl;

  // Focus and interaction
  static const double focusBorderWidth = 3.0;
  static const double glowBlurRadius = 16.0;
  static const double glowSpreadRadius = 2.0;

  // Animation durations
  static const Duration animationFast = Duration(milliseconds: 150);
  static const Duration animationNormal = Duration(milliseconds: 200);
  static const Duration animationSlow = Duration(milliseconds: 300);
}

/// Extension on BuildContext for easy access to TV-scaled spacing
extension AppSpacingExtension on BuildContext {
  // TV-scaled spacing methods
  double spacing(double value) => tvSpacing(value);
  double spacingXs() => tvSpacing(AppSpacing.xs);
  double spacingSm() => tvSpacing(AppSpacing.sm);
  double spacingMd() => tvSpacing(AppSpacing.md);
  double spacingLg() => tvSpacing(AppSpacing.lg);
  double spacingXl() => tvSpacing(AppSpacing.xl);
  double spacingXxl() => tvSpacing(AppSpacing.xxl);
  double spacingXxxl() => tvSpacing(AppSpacing.xxxl);

  // Semantic spacing
  double cardPadding() => tvSpacing(AppSpacing.cardPadding);
  double sectionSpacing() => tvSpacing(AppSpacing.sectionSpacing);
  double screenPadding() => tvSpacing(AppSpacing.screenPadding);
  double buttonSpacing() => tvSpacing(AppSpacing.buttonSpacing);
  double listItemSpacing() => tvSpacing(AppSpacing.listItemSpacing);
  double heroContentSpacing() => tvSpacing(AppSpacing.heroContentSpacing);
  double dialogPadding() => tvSpacing(AppSpacing.dialogPadding);
  double formFieldSpacing() => tvSpacing(AppSpacing.formFieldSpacing);

  // Layout helpers
  double gridSpacing() => tvSpacing(AppSpacing.gridSpacing);
  double cardSpacing() => tvSpacing(AppSpacing.cardSpacing);
  double rowSpacing() => tvSpacing(AppSpacing.rowSpacing);
  double cardGap() => tvSpacing(10.0); // Tighter horizontal spacing, cards grow on focus

  // Responsive card dimensions - sized to show 5-6 cards per row like Netflix/Disney+
  double cardWidth() {
    final screenWidth = MediaQuery.of(this).size.width;
    final isLandscape = screenWidth > MediaQuery.of(this).size.height;
    // Show ~5-6 cards per row for better content discovery (Netflix-like)
    return isLandscape ? (screenWidth / 6.5) : (screenWidth / 2.8);
  }

  double cardHeight() => cardWidth() * AppSpacing.cardPortraitRatio;
  double rowHeight() => cardWidth() * AppSpacing.cardRowHeightMultiplier;

  // Hero section dimensions
  double heroHeight() =>
      MediaQuery.of(this).size.height * AppSpacing.heroHeightRatio;
  double heroInfoWidth() =>
      MediaQuery.of(this).size.width * AppSpacing.heroInfoWidth;

  // Sidebar dimensions with TV scaling
  double sidebarWidth() => AppSpacing.sidebarWidth;
  double sidebarCollapsedWidth() => AppSpacing.sidebarCollapsedWidth;
  double categoryBarWidth() => AppSpacing.categoryBarWidth;
  double channelSidebarWidth() => AppSpacing.channelSidebarWidth;

  // Common padding patterns
  EdgeInsets get screenPaddingInsets => EdgeInsets.all(screenPadding());
  EdgeInsets get cardPaddingInsets => EdgeInsets.all(cardPadding());
  EdgeInsets get dialogPaddingInsets => EdgeInsets.all(dialogPadding());
  EdgeInsets get buttonPaddingInsets => EdgeInsets.symmetric(
        horizontal: spacingLg(),
        vertical: spacingMd(),
      );

  // Common margin patterns
  EdgeInsets get sectionMargin => EdgeInsets.only(bottom: sectionSpacing());
  EdgeInsets get cardMargin => EdgeInsets.all(cardSpacing());
  EdgeInsets get listItemMargin => EdgeInsets.only(bottom: listItemSpacing());

  // Border radius with TV scaling
  BorderRadius get cardRadius => BorderRadius.circular(AppSpacing.radiusCard);
  BorderRadius get buttonRadius =>
      BorderRadius.circular(AppSpacing.radiusButton);
  BorderRadius get dialogRadius =>
      BorderRadius.circular(AppSpacing.radiusDialog);

  // Common SizedBox widgets
  Widget get spacingXsBox => SizedBox(height: spacingXs(), width: spacingXs());
  Widget get spacingSmBox => SizedBox(height: spacingSm(), width: spacingSm());
  Widget get spacingMdBox => SizedBox(height: spacingMd(), width: spacingMd());
  Widget get spacingLgBox => SizedBox(height: spacingLg(), width: spacingLg());
  Widget get spacingXlBox => SizedBox(height: spacingXl(), width: spacingXl());
  Widget get spacingXxlBox =>
      SizedBox(height: spacingXxl(), width: spacingXxl());

  Widget spacingVertical(double value) => SizedBox(height: spacing(value));
  Widget spacingHorizontal(double value) => SizedBox(width: spacing(value));
}
