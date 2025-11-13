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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Logo + Time row (conditionally shown)
        if (widget.showLogoAndTime)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Logo (top left)
                Text(
                  'RISA',
                  style: TextStyle(
                    color: AppTheme.primaryBlue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                // Time (top right)
                Text(
                  widget.currentTime,
                  style: TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
        // Liquid glass nav bar (slim)
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
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
                // Tab buttons
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
                // Search button
                _buildIconButton(
                  focusNode: _searchFocusNode,
                  icon: Icons.search,
                  onPressed: widget.onSearch ?? () => context.go('/search'),
                  tooltip: 'Search',
                ),
                const SizedBox(width: 4),
                // Overflow menu
                _buildIconButton(
                  focusNode: _overflowFocusNode,
                  icon: Icons.more_vert,
                  onPressed: widget.onOverflow ?? () {},
                  tooltip: 'More',
                ),
              ],
            ),
          ),
        ),
      ],
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
                        ? AppTheme.primaryBlue.withOpacity(0.3)
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        tab.icon,
                        size: 18,
                        color: isActive ? AppTheme.primaryBlue : AppTheme.textSecondary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        tab.label,
                        style: TextStyle(
                          color: isActive ? AppTheme.primaryBlue : AppTheme.textSecondary,
                          fontSize: 12,
                          fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton({
    required FocusNode focusNode,
    required IconData icon,
    required VoidCallback onPressed,
    required String tooltip,
  }) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Focus(
            focusNode: focusNode,
            onFocusChange: (_) => setState(() {}),
            child: Builder(
              builder: (context) {
                final isFocused = Focus.of(context).hasFocus;
                return Tooltip(
                  message: tooltip,
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
                        icon,
                        size: 18,
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
