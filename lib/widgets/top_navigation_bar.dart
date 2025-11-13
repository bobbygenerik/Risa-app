import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// Reusable top navigation bar with liquid glass effect
/// Features:
/// - Logo + time display at top left/right (separate row) - can be hidden
/// - Slim liquid glass nav bar below with tabs, search, and overflow menu
class TopNavigationBar extends StatefulWidget {
  final String? activeTab;
  final List<NavTab> tabs;
  final VoidCallback? onSearch;
  final VoidCallback? onOverflow;
  final String currentTime;
  final bool showLogoAndTime;

  const TopNavigationBar({
    super.key,
    this.activeTab,
    required this.tabs,
    this.onSearch,
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
  late FocusNode _overflowFocusNode;

  @override
  void initState() {
    super.initState();
    _tabFocusNodes = List.generate(widget.tabs.length, (_) => FocusNode());
    _searchFocusNode = FocusNode();
    _overflowFocusNode = FocusNode();
  }

  @override
  void dispose() {
    for (var node in _tabFocusNodes) {
      node.dispose();
    }
    _searchFocusNode.dispose();
    _overflowFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      child: Row(
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
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  'IPTV',
                  style: TextStyle(
                    color: AppTheme.accentPink,
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 40),
          ],
          // Liquid glass nav bar (centered)
          Expanded(
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                border: Border.all(
                  color: Colors.white.withOpacity(0.15),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.primaryBlue.withOpacity(0.1),
                    blurRadius: 16,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    // Tab buttons (no icons)
                    Expanded(
                      child: Row(
                        children: List.generate(
                          widget.tabs.length,
                          (index) => _buildTabButton(index),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Divider
                    Container(
                      height: 24,
                      width: 1,
                      color: Colors.white.withOpacity(0.2),
                    ),
                    const SizedBox(width: 8),
                    // Search button (modern outline)
                    _buildSearchButton(),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 40),
          // Time (if shown)
          if (widget.showLogoAndTime)
            Text(
              widget.currentTime,
              style: TextStyle(
                color: AppTheme.textPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTabButton(int index) {
    final tab = widget.tabs[index];
    final isActive = widget.activeTab == tab.id;

    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => context.go(tab.route),
          child: Focus(
            focusNode: _tabFocusNodes[index],
            onFocusChange: (_) => setState(() {}),
            child: Builder(
              builder: (context) {
                final isFocused = Focus.of(context).hasFocus;
                return Container(
                  decoration: BoxDecoration(
                    color: isActive
                        ? AppTheme.primaryBlue.withOpacity(0.25)
                        : (isFocused
                            ? Colors.white.withOpacity(0.15)
                            : Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                    border: isFocused
                        ? Border.all(
                            color: AppTheme.primaryBlue.withOpacity(0.5),
                            width: 1.5,
                          )
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      tab.label,
                      style: TextStyle(
                        color: isActive ? AppTheme.primaryBlue : AppTheme.textSecondary,
                        fontSize: 12,
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

  Widget _buildSearchButton() {
    return SizedBox(
      width: 40,
      height: 40,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onSearch ?? () => context.go('/search'),
          child: Focus(
            focusNode: _searchFocusNode,
            onFocusChange: (_) => setState(() {}),
            child: Builder(
              builder: (context) {
                final isFocused = Focus.of(context).hasFocus;
                return Tooltip(
                  message: 'Search',
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isFocused ? Colors.white.withOpacity(0.15) : Colors.transparent,
                      border: isFocused
                          ? Border.all(
                              color: AppTheme.primaryBlue.withOpacity(0.5),
                              width: 1.5,
                            )
                          : null,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.search_outlined,
                        size: 20,
                        color: isFocused ? AppTheme.primaryBlue : AppTheme.textSecondary,
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
