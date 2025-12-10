import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for LogicalKeyboardKey
import 'package:go_router/go_router.dart'; // Import for navigation
import 'package:iptv_player/utils/app_theme.dart'; // Import for theme colors
import 'package:iptv_player/utils/tv_focus_helper.dart'; // Import for tvTextSize

/// Represents a navigation tab in the sidebar
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

class SidebarNavigation extends StatefulWidget {
  final String? activeTab;
  final String currentTime;
  final VoidCallback? onSearch;
  final bool Function()? onFocusContent;
  final void Function(bool Function()? requester)? onNavFocusRegistration;

  const SidebarNavigation({
    super.key,
    this.activeTab,
    required this.currentTime,
    this.onSearch,
    this.onFocusContent,
    this.onNavFocusRegistration,
  });

  @override
  State<SidebarNavigation> createState() => _SidebarNavigationState();
}

class _SidebarNavigationState extends State<SidebarNavigation> {
  late List<FocusNode> _tabFocusNodes;
  late int _activeTabIndex;
  int _focusedTabIndex = 0; // Track which tab has visual focus
  bool _isNavigating = false; // Block focus stealing during navigation
  late FocusNode _searchButtonFocusNode;
  late FocusNode _overflowButtonFocusNode;

  final List<NavTab> _tabs = [
    NavTab(id: 'home', label: 'Live TV', icon: Icons.live_tv, route: '/home'),
    NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
    NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
  ];

  @override
  void initState() {
    super.initState();
    _tabFocusNodes = List.generate(_tabs.length, (_) => FocusNode());
    _searchButtonFocusNode = FocusNode(debugLabel: 'SideSearchButton');
    _overflowButtonFocusNode = FocusNode(debugLabel: 'SideOverflowButton');
    _activeTabIndex = _resolveActiveTabIndex(widget.activeTab);
    _focusedTabIndex = _activeTabIndex;
    WidgetsBinding.instance.addPostFrameCallback((_) => _focusActiveTab());
    widget.onNavFocusRegistration?.call(_requestActiveTabFocus);
  }

  @override
  void didUpdateWidget(covariant SidebarNavigation oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newIndex = _resolveActiveTabIndex(widget.activeTab);
    if (newIndex != _activeTabIndex) {
      _activeTabIndex = newIndex;
      if (!_isNavigating) {
        _focusedTabIndex = newIndex;
      }
      WidgetsBinding.instance.addPostFrameCallback((_) => _focusActiveTab());
    }
    if (oldWidget.onNavFocusRegistration != widget.onNavFocusRegistration &&
        widget.onNavFocusRegistration != null) {
      widget.onNavFocusRegistration!.call(_requestActiveTabFocus);
    }
  }

  @override
  void dispose() {
    widget.onNavFocusRegistration?.call(null);
    _searchButtonFocusNode.dispose();
    _overflowButtonFocusNode.dispose();
    for (var node in _tabFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  int _resolveActiveTabIndex(String? activeId) {
    final idx = _tabs.indexWhere((t) => t.id == activeId);
    return idx >= 0 ? idx : 0;
  }

  bool _focusActiveTab({bool force = false}) {
    if (_tabs.isEmpty) return false;
    final index = _activeTabIndex.clamp(0, _tabs.length - 1);
    final node = _tabFocusNodes[index];
    if (force || !node.hasFocus) {
      node.requestFocus();
    }
    return true;
  }

  bool _requestActiveTabFocus() {
    if (_tabs.isNotEmpty) {
      final index = _activeTabIndex.clamp(0, _tabs.length - 1);
      _tabFocusNodes[index].requestFocus();
      return true;
    }
    return false;
  }

  void _handleContentFocusFromNav(FocusNode origin) {
    final moved = widget.onFocusContent?.call() ?? false;
    if (!moved && origin.canRequestFocus) {
      origin.requestFocus();
    }
  }

  void _navigateToTab(int targetIndex) {
    if (targetIndex < 0 || targetIndex >= _tabs.length) return;
    
    final tab = _tabs[targetIndex];
    final isAlreadyActive = widget.activeTab == tab.id;
    
    debugPrint('nav_focus: _navigateToTab to $targetIndex (${tab.id}), isAlreadyActive=$isAlreadyActive');
    
    _isNavigating = true;
    _focusedTabIndex = targetIndex;
    
    _tabFocusNodes[targetIndex].requestFocus();
    
    if (!isAlreadyActive) {
      final router = GoRouter.of(context);
      router.go(tab.route);
    }
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _tabFocusNodes[targetIndex].requestFocus();
        Future.delayed(const Duration(milliseconds: 150), () {
          if (mounted) {
            _isNavigating = false;
            debugPrint('nav_focus: Navigation complete, focus protection disabled');
          }
        });
      });
    });
  }

  Widget _buildTabButton(int index) {
    final tab = _tabs[index];
    final isActive = widget.activeTab == tab.id;
    final isTV = MediaQuery.of(context).size.width >= 1920 || MediaQuery.of(context).size.height >= 1080;
    final scale = isTV ? 1.2 : 1.0;

    return Focus(
      focusNode: _tabFocusNodes[index],
      onFocusChange: (hasFocus) {
        if (_isNavigating && !hasFocus) {
          debugPrint('nav_focus: Tab $index blocked focus loss during navigation');
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted || !_isNavigating) return;
            _tabFocusNodes[_focusedTabIndex].requestFocus();
          });
          return;
        }
        
        if (hasFocus) {
          _focusedTabIndex = index;
        }
        setState(() {});
        debugPrint('nav_focus: Tab $index (${tab.id}) focus changed to $hasFocus, isActive=$isActive');
      },
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          final prev = (index - 1) < 0 ? _tabs.length - 1 : index - 1;
          _navigateToTab(prev);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          final next = (index + 1) % _tabs.length;
          _navigateToTab(next);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          _handleContentFocusFromNav(node);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.space) {
          context.go(tab.route);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => context.go(tab.route),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 140),
              curve: Curves.easeOut,
              padding: EdgeInsets.symmetric(
                horizontal: 16 * scale,
                vertical: 12 * scale,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: isFocused
                  ? AppTheme.primaryBlue.withAlpha((0.2 * 255).round())
                  : Colors.transparent,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    tab.icon,
                    color: isActive ? AppTheme.primaryBlue : AppTheme.textSecondary,
                    size: context.tvIconSize(24),
                  ),
                  SizedBox(height: context.tvSpacing(4)),
                  Text(
                    tab.label,
                    style: TextStyle(
                      color: isActive ? AppTheme.primaryBlue : AppTheme.textSecondary,
                      fontSize: context.tvTextSize(10),
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isTV = MediaQuery.of(context).size.width >= 1920 || MediaQuery.of(context).size.height >= 1080;
    final scale = isTV ? 1.2 : 1.0;

    return Container(
      color: Colors.black.withOpacity(0.8), // Semi-transparent background
      width: 80 * scale,
      child: Column(
        children: [
          // Logo or App Name
          Padding(
            padding: EdgeInsets.only(top: 24 * scale, bottom: 24 * scale),
            child: Image.asset(
              'assets/images/croppedlogo2.png', // Assuming you have a logo asset
              height: context.tvIconSize(32),
            ),
          ),
          // Navigation Tabs
          Expanded(
            child: FocusTraversalGroup(
              policy: WidgetOrderTraversalPolicy(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _tabs.map((tab) {
                  final index = _tabs.indexOf(tab);
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8 * scale),
                    child: _buildTabButton(index),
                  );
                }).toList(),
              ),
            ),
          ),
          // Search, Overflow, and Time (at the bottom)
          Padding(
            padding: EdgeInsets.only(bottom: 24 * scale),
            child: Column(
              children: [
                // Search button
                Focus(
                  focusNode: _searchButtonFocusNode,
                  onFocusChange: (_) => setState(() {}),
                  onKeyEvent: (node, event) {
                    if (event is! KeyDownEvent) return KeyEventResult.ignored;
                    if (event.logicalKey == LogicalKeyboardKey.enter ||
                        event.logicalKey == LogicalKeyboardKey.select ||
                        event.logicalKey == LogicalKeyboardKey.space) {
                      widget.onSearch?.call();
                      return KeyEventResult.handled;
                    }
                    if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                      _handleContentFocusFromNav(node);
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: Builder(
                    builder: (context) {
                      final isFocused = Focus.of(context).hasFocus;
                      return GestureDetector(
                        onTap: () => widget.onSearch?.call(),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          curve: Curves.easeOut,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16 * scale,
                            vertical: 12 * scale,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: isFocused
                              ? AppTheme.primaryBlue.withAlpha((0.2 * 255).round())
                              : Colors.transparent,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.search,
                                color: AppTheme.textSecondary,
                                size: context.tvIconSize(24),
                              ),
                              SizedBox(height: context.tvSpacing(4)),
                              Text(
                                'Search',
                                style: TextStyle(
                                  color: AppTheme.textSecondary,
                                  fontSize: context.tvTextSize(10),
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: context.tvSpacing(16)),
                // Time display
                Text(
                  widget.currentTime,
                  style: TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: context.tvTextSize(10),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}