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
  TextEditingController _searchController = TextEditingController();
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

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32 * scale, vertical: 24 * scale),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top row: Logo on left, Time on right
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo (if shown)
              if (widget.showLogoAndTime) ...[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'RISA',
                      style: TextStyle(
                        color: AppTheme.primaryBlue,
                        fontSize: 24 * scale,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      'IPTV',
                      style: TextStyle(
                        color: AppTheme.accentPink,
                        fontSize: 11 * scale,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ],
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
          SizedBox(height: 20 * scale),
          // Navigation bar with tabs and search
          Row(
            children: [
              // Liquid glass nav bar (tabs)
              Expanded(
                child: Container(
                  height: 56 * scale,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.08),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.15),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.primaryBlue.withOpacity(0.1),
                        blurRadius: 16,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12 * scale),
                    child: Row(
                      children: List.generate(
                        widget.tabs.length,
                        (index) => _buildTabButton(index, scale),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16 * scale),
              // Search button
              _buildSearchButtonContainer(scale),
            ],
          ),
          // Inline search box (shown when activated)
          if (_showSearchBox) ...[
            SizedBox(height: 12 * scale),
            Container(
              height: 48 * scale,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.12),
                border: Border.all(
                  color: AppTheme.primaryBlue.withOpacity(0.5),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12 * scale),
                    child: Icon(
                      Icons.search_outlined,
                      color: AppTheme.primaryBlue,
                      size: 20 * scale,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      focusNode: _searchFocusNode,
                      style: TextStyle(
                        color: AppTheme.textPrimary,
                        fontSize: 14 * scale,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Search channels, movies, series...',
                        hintStyle: TextStyle(
                          color: AppTheme.textSecondary,
                          fontSize: 14 * scale,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 12 * scale),
                      ),
                      onSubmitted: (query) {
                        if (query.isNotEmpty) {
                          widget.onSearchSubmit?.call(query);
                          context.push('/search', extra: {'query': query});
                          setState(() => _showSearchBox = false);
                        }
                      },
                    ),
                  ),
                  if (_searchController.text.isNotEmpty)
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          _searchController.clear();
                          setState(() {});
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12 * scale),
                          child: Icon(
                            Icons.close,
                            color: AppTheme.textSecondary,
                            size: 18 * scale,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ],
      ),
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
                        ? AppTheme.primaryBlue.withOpacity(0.3)
                        : (isFocused
                            ? Colors.white.withOpacity(0.15)
                            : Colors.transparent),
                    borderRadius: BorderRadius.circular(24),
                    border: isFocused
                        ? Border.all(
                            color: AppTheme.primaryBlue.withOpacity(0.6),
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

  Widget _buildSearchButtonContainer(double scale) {
    return Material(
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
        child: Focus(
          focusNode: _searchFocusNode,
          onFocusChange: (_) => setState(() {}),
          child: Builder(
            builder: (context) {
              final isFocused = Focus.of(context).hasFocus;
              return Container(
                width: 56 * scale,
                height: 56 * scale,
                decoration: BoxDecoration(
                  color: _showSearchBox
                      ? AppTheme.primaryBlue.withOpacity(0.2)
                      : (isFocused
                          ? Colors.white.withOpacity(0.15)
                          : Colors.transparent),
                  borderRadius: BorderRadius.circular(28),
                  border: (isFocused || _showSearchBox)
                      ? Border.all(
                          color: AppTheme.primaryBlue.withOpacity(0.6),
                          width: 2,
                        )
                      : null,
                ),
                child: Center(
                  child: Icon(
                    Icons.search_outlined,
                    size: 22 * scale,
                    color: (_showSearchBox || isFocused)
                        ? AppTheme.primaryBlue
                        : AppTheme.textSecondary,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

