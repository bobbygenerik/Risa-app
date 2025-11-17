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
  late FocusNode _searchFocusNode;
  final TextEditingController _searchController = TextEditingController();
  bool _showSearchBox = false;

  @override
  void initState() {
    super.initState();
    _tabFocusNodes = List.generate(widget.tabs.length, (_) => FocusNode());
    _searchFocusNode = FocusNode();
  }

  @override
  void dispose() {
    for (var node in _tabFocusNodes) {
      node.dispose();
    }
    _searchFocusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Android TV screen size detection (TV usually > 50 inches diagonal)
    final size = MediaQuery.of(context).size;
    final isTV = size.width > 1920 && size.height > 1080;
    final scale = isTV ? 1.8 : 1.0;

    // If we're on the Live TV route (home), make the top bar transparent
    // so the screen's hero/gradient shows through (matches other screens).
    // location can be used in future conditional styling; currently unused

    // Make the top nav transparent always and use a moving highlighter
    // under tabs for a cleaner, less-blocky look.
    final navBar = Container(
      padding: EdgeInsets.symmetric(horizontal: 32 * scale, vertical: 24 * scale),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo (if shown)
          if (widget.showLogoAndTime) ...[
            Image.asset(
              'assets/images/croppedlogo2.png',
              height: 40 * scale,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 20 * scale),
          ],
          // Navigation bar with tabs and search (centered, expanded)
          Expanded(
            child: LayoutBuilder(builder: (ctx, constraints) {
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
                children: [
                  Row(
                    children: List.generate(
                      tabCount,
                      (index) => SizedBox(width: tabWidth, child: _buildTabButton(index, scale)),
                    ),
                  ),
                  // Sliding highlighter
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 260),
                    curve: Curves.easeInOut,
                    left: left,
                    bottom: 10,
                    child: Container(
                      width: highlightWidth,
                      height: 4,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryBlue,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
          SizedBox(width: 20 * scale),
          // Time (if shown)
          if (widget.showLogoAndTime)
            Text(
              widget.currentTime,
              style: TextStyle(
                color: AppTheme.textPrimary,
                fontSize: 18 * scale,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ),
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
        // Search input field (appears when search icon is clicked)
        if (_showSearchBox)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32 * scale, vertical: 16 * scale),
            child: Container(
              height: 48 * scale,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha((0.08 * 255).round()),
                border: Border.all(
                  color: Colors.white.withAlpha((0.15 * 255).round()),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextField(
                controller: _searchController,
                focusNode: _searchFocusNode,
                style: TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 16 * scale,
                ),
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: 16 * scale,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide(
                      color: AppTheme.primaryBlue,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20 * scale, vertical: 12 * scale),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppTheme.textSecondary,
                    size: 20 * scale,
                  ),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? InkWell(
                          onTap: () {
                            _searchController.clear();
                            setState(() {});
                          },
                          child: Icon(
                            Icons.clear,
                            color: AppTheme.textSecondary,
                            size: 20 * scale,
                          ),
                        )
                      : null,
                ),
                onChanged: (_) => setState(() {}),
                onSubmitted: (query) {
                  if (widget.onSearchSubmit != null) {
                    widget.onSearchSubmit!(query);
                  }
                  context.go('/search?q=$query');
                },
              ),
            ),
          ),
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
          setState(() => _showSearchBox = false);
          context.go(tab.route);
        },
        child: Focus(
          focusNode: _tabFocusNodes[index],
          onFocusChange: (_) => setState(() {}),
          child: Builder(builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            final showHighlight = isActive || isFocused;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tab.label,
                  style: TextStyle(
                    color: showHighlight ? AppTheme.primaryBlue : AppTheme.textSecondary,
                    fontSize: 14 * scale,
                    fontWeight: showHighlight ? FontWeight.w700 : FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeInOut,
                  width: showHighlight ? 56 * scale : 0,
                  height: 4,
                  decoration: BoxDecoration(
                    color: AppTheme.primaryBlue,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

