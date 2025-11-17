import 'dart:ui';
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
    final location = GoRouterState.of(context).uri.path;
    final isLiveRoute = location == '/' || location == '/home' || location.contains('/live');

    final navBar = Container(
      padding: EdgeInsets.symmetric(horizontal: 32 * scale, vertical: 24 * scale),
      decoration: BoxDecoration(
        color: isLiveRoute ? Colors.transparent : AppTheme.darkBackgroundOpacity(0.55),
      ),
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
            child: Container(
              height: 56 * scale,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha((0.08 * 255).round()),
                border: Border.all(
                  color: Colors.white.withAlpha((0.15 * 255).round()),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(28),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                    blurRadius: 16,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12 * scale),
                child: Row(
                  children: [
                    ...List.generate(
                      widget.tabs.length,
                      (index) => _buildTabButton(index, scale),
                    ),
                    // Search icon in nav bar
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          setState(() => _showSearchBox = !_showSearchBox);
                          if (_showSearchBox) {
                            Future.delayed(const Duration(milliseconds: 100), () {
                              _searchFocusNode.requestFocus();
                            });
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8 * scale),
                          child: Icon(
                            Icons.search_outlined,
                            size: 18 * scale,
                            color: AppTheme.textSecondary,
                          ),
                        ),
                      ),
                    ),
                    // Overflow menu button (more options)
                    PopupMenuButton(
                      color: Colors.black.withAlpha((0.85 * 255).round()),
                      elevation: 24,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: AppTheme.darkBackgroundOpacity(0.12),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8 * scale),
                        child: Icon(
                          Icons.more_vert,
                          size: 18 * scale,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.settings, color: AppTheme.primaryBlue, size: 16 * scale),
                              SizedBox(width: 12 * scale),
                              Text('Settings', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500)),
                            ],
                          ),
                          onTap: () {
                            final router = GoRouter.of(context);
                            Future.delayed(const Duration(milliseconds: 100), () {
                              if (mounted) router.go('/settings');
                            });
                          },
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.favorite_outline, color: AppTheme.primaryBlue, size: 16 * scale),
                              SizedBox(width: 12 * scale),
                              Text('Favorites', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500)),
                            ],
                          ),
                          onTap: () {
                            final router = GoRouter.of(context);
                            Future.delayed(const Duration(milliseconds: 100), () {
                              if (mounted) router.go('/favorites');
                            });
                          },
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.download, color: AppTheme.textSecondary, size: 16 * scale),
                              SizedBox(width: 12 * scale),
                              Text('Downloads', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500)),
                            ],
                          ),
                          onTap: () {
                            final router = GoRouter.of(context);
                            Future.delayed(const Duration(milliseconds: 100), () {
                              if (mounted) router.go('/downloads');
                            });
                          },
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.schedule, color: AppTheme.primaryBlue, size: 16 * scale),
                              SizedBox(width: 12 * scale),
                              Text('Guide', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500)),
                            ],
                          ),
                          onTap: () {
                            final router = GoRouter.of(context);
                            Future.delayed(const Duration(milliseconds: 100), () {
                              if (mounted) router.go('/epg');
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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

    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setState(() => _showSearchBox = false);
            context.go(tab.route);
          },
          child: Focus(
            focusNode: _tabFocusNodes[index],
            onFocusChange: (_) => setState(() {}),
            child: Builder(
              builder: (context) {
                final isFocused = Focus.of(context).hasFocus;
                return Container(
                  decoration: BoxDecoration(
                    color: isActive
                        ? AppTheme.primaryBlue.withAlpha((0.3 * 255).round())
                        : (isFocused
                            ? Colors.white.withAlpha((0.15 * 255).round())
                            : Colors.transparent),
                    borderRadius: BorderRadius.circular(24),
                    border: isFocused
                        ? Border.all(
                            color: AppTheme.primaryBlue.withAlpha((0.6 * 255).round()),
                            width: 2,
                          )
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      tab.label,
                      style: TextStyle(
                        color: isActive ? AppTheme.primaryBlue : AppTheme.textSecondary,
                        fontSize: 14 * scale,
                        fontWeight: isActive ? FontWeight.w700 : FontWeight.w600,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

