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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32 * scale, vertical: 24 * scale),
          decoration: const BoxDecoration(
            color: Colors.transparent,
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
                  height: 44 * scale,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha((0.06 * 255).round()),
                    border: Border.all(
                      color: Colors.white.withAlpha((0.12 * 255).round()),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.primaryBlue.withAlpha((0.08 * 255).round()),
                        blurRadius: 12,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8 * scale),
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
                            borderRadius: BorderRadius.circular(16),
                            child: Padding(
                              padding: EdgeInsets.all(6 * scale),
                              child: Icon(
                                Icons.search_outlined,
                                size: 16 * scale,
                                color: AppTheme.textSecondary,
                              ),
                            ),
                          ),
                        ),
                        // Overflow menu button (more options)
                        PopupMenuButton(
                          color: AppTheme.cardBackground,
                          elevation: 12,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                            side: BorderSide(
                              color: Colors.white.withAlpha((0.1 * 255).round()),
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(6 * scale),
                            child: Icon(
                              Icons.more_vert,
                              size: 16 * scale,
                              color: AppTheme.textSecondary,
                            ),
                          ),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.settings, color: AppTheme.primaryBlue, size: 16 * scale),
                                  SizedBox(width: 12 * scale),
                                  Text('Settings', style: TextStyle(color: AppTheme.textPrimary, fontSize: 13 * scale, fontWeight: FontWeight.w500)),
                                ],
                              ),
                              onTap: () {
                                // Capture router instance synchronously to avoid using BuildContext across async gap
                                final router = GoRouter.of(context);
                                Navigator.of(context).pop();
                                Future.delayed(const Duration(milliseconds: 50), () {
                                  if (mounted) {
                                    try {
                                      router.push('/settings');
                                    } catch (e) {
                                      router.go('/settings');
                                    }
                                  }
                                });
                              },
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.favorite_outline, color: AppTheme.accentPink, size: 16 * scale),
                                  SizedBox(width: 12 * scale),
                                  Text('Favorites', style: TextStyle(color: AppTheme.textPrimary, fontSize: 13 * scale, fontWeight: FontWeight.w500)),
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
                                  Text('Downloads', style: TextStyle(color: AppTheme.textPrimary, fontSize: 13 * scale, fontWeight: FontWeight.w500)),
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
                                  Text('Guide', style: TextStyle(color: AppTheme.textPrimary, fontSize: 13 * scale, fontWeight: FontWeight.w500)),
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
        ),
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
                    borderSide: const BorderSide(
                      color: AppTheme.accentPink,
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
                        fontSize: 13 * scale,
                        fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
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

