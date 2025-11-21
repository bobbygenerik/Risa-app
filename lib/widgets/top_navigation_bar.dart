import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// Reusable top navigation bar optimized for Android TV
/// Features:
/// - Logo in top-left corner
/// - Navigation tabs in center (text-only)
/// - Inline search box (not a separate page)
/// - Time in top-right corner
/// - Larger text and spacing for TV viewing
class TopNavigationBar extends StatefulWidget {
  final String? activeTab;
  final List<NavTab> tabs;
  final VoidCallback? onSearch;
  final Function(String)? onSearchSubmit;
  final VoidCallback? onOverflow;
  final String currentTime;
  final bool showLogoAndTime;

  const TopNavigationBar({
    super.key,
    this.activeTab,
    required this.tabs,
    this.onSearch,
    this.onSearchSubmit,
    this.onOverflow,
    required this.currentTime,
    this.showLogoAndTime = true,
  });

  @override
  State<TopNavigationBar> createState() => _TopNavigationBarState();
}

class NavTab {
  final String id;
  final String label;
  final IconData icon;
  final String route;

  NavTab({
    required this.id,
    required this.label,
    required this.icon,
    required this.route,
  });
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  late List<FocusNode> _tabFocusNodes;
  @override
  void initState() {
    super.initState();
    _tabFocusNodes = List.generate(widget.tabs.length, (_) => FocusNode());
  }

  

  @override
  void dispose() {
    for (var node in _tabFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Android TV screen size detection (TV usually > 50 inches diagonal)
    final size = MediaQuery.of(context).size;
    final isTV = size.width > 1920 && size.height > 1080;
    final scale = isTV ? 1.8 : 1.0;
    final router = GoRouter.of(context);
    

    // If we're on the Live TV route (home), make the top bar transparent
    // so the screen's hero/gradient shows through (matches other screens).
    // location can be used in future conditional styling; currently unused

    // Make the top nav transparent always and use a moving highlighter
    // under tabs for a cleaner, less-blocky look.
    final navBar = Container(
      height: AppSizes.appBarHeight * scale,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.xl * scale, vertical: AppSizes.sm * scale),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Left: Logo area (balanced width with time)
          if (widget.showLogoAndTime)
            SizedBox(
              width: 140 * scale,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/croppedlogo2.png',
                  height: 40 * scale,
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),

          // Center: Tabs
          Expanded(
            child: LayoutBuilder(
              builder: (ctx, constraints) {
                final tabCount = math.max(1, widget.tabs.length);
                final tabWidth = constraints.maxWidth / tabCount;
                final highlightWidth = math.min(56 * scale, tabWidth * 0.6);

                // Determine which index to highlight: focused tab first, else active tab
                int highlightedIndex = widget.tabs.indexWhere((t) => t.id == widget.activeTab);
                for (int i = 0; i < _tabFocusNodes.length; i++) {
                  if (_tabFocusNodes[i].hasFocus) {
                    highlightedIndex = i;
                    break;
                  }
                }

                final left = (highlightedIndex.clamp(0, tabCount - 1)) * tabWidth + (tabWidth - highlightWidth) / 2;

                return Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                        tabCount,
                        (index) => SizedBox(
                          width: tabWidth,
                            child: _buildTabButton(index, scale),
                          ),
                        ),
                      ),
                    // Sliding highlighter (scaled for TV)
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 260),
                      curve: Curves.easeInOut,
                      left: left,
                      bottom: 8 * scale,
                      child: Container(
                        width: highlightWidth,
                        height: 4 * scale,
                        decoration: BoxDecoration(
                          color: AppTheme.primaryBlue,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          // Right: search/overflow/time (reordered for better UX)
          if (widget.showLogoAndTime)
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: widget.onSearch,
                  icon: Icon(Icons.search, color: AppTheme.textSecondary),
                  iconSize: 22 * scale,
                  padding: EdgeInsets.symmetric(horizontal: 8 * scale),
                  constraints: BoxConstraints(minWidth: 40 * scale),
                  alignment: Alignment.center,
                  tooltip: 'Search',
                ),
                SizedBox(width: 12 * scale),
                // Overflow menu
                PopupMenuButton<String>(
                  color: Colors.black.withAlpha((0.85 * 255).round()),
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: AppTheme.darkBackgroundOpacity(0.12),
                      width: 1.0,
                    ),
                  ),
                  child: Icon(
                    Icons.more_vert,
                    size: 22 * scale,
                    color: AppTheme.textSecondary,
                  ),
                  onSelected: (value) {
                    // Slight delay to allow menu to dismiss before navigating
                    Future.delayed(const Duration(milliseconds: 100), () {
                      if (!mounted) return;
                      if (value == 'settings') router.go('/settings');
                      if (value == 'favorites') router.go('/favorites');
                      if (value == 'downloads') router.go('/downloads');
                      if (value == 'guide') router.go('/epg');
                    });
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(value: 'settings', child: Row(children: [Icon(Icons.settings, color: AppTheme.primaryBlue, size: 16 * scale), SizedBox(width: 12 * scale), Text('Settings', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500))])),
                    PopupMenuItem(value: 'favorites', child: Row(children: [Icon(Icons.favorite_outline, color: AppTheme.primaryBlue, size: 16 * scale), SizedBox(width: 12 * scale), Text('Favorites', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500))])),
                    PopupMenuItem(value: 'downloads', child: Row(children: [Icon(Icons.download, color: AppTheme.primaryBlue, size: 16 * scale), SizedBox(width: 12 * scale), Text('Downloads', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500))])),
                    PopupMenuItem(value: 'guide', child: Row(children: [Icon(Icons.schedule, color: AppTheme.primaryBlue, size: 16 * scale), SizedBox(width: 12 * scale), Text('Guide', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500))])),
                  ],
                ),
                SizedBox(width: 20 * scale),
                // Time display (balanced width with logo)
                SizedBox(
                  width: 140 * scale,
                  child: Text(
                    widget.currentTime,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppTheme.textPrimary,
                      fontSize: 18 * scale,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Conditionally use BackdropFilter for glass effect; fall back to plain translucent background for performance
        AppTheme.useBackdropFilter(context)
            ? ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: AppTheme.getBackdropSigma(context), sigmaY: AppTheme.getBackdropSigma(context)),
                  child: navBar,
                ),
              )
            : navBar,
      ],
    );
  }

  Widget _buildTabButton(int index, double scale) {
    final tab = widget.tabs[index];
    final isActive = widget.activeTab == tab.id;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          context.go(tab.route);
        },
        child: Focus(
          focusNode: _tabFocusNodes[index],
          onFocusChange: (_) => setState(() {}),
          child: Builder(builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            final showHighlight = isActive || isFocused;
            return Center(
              child: Text(
                tab.label,
                style: TextStyle(
                  color: showHighlight ? AppTheme.primaryBlue : AppTheme.textSecondary,
                  fontSize: 14 * scale,
                  fontWeight: showHighlight ? FontWeight.w700 : FontWeight.w600,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

