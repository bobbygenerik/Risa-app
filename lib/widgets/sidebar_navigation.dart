import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';

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
  final void Function(VoidCallback? expander)? onExpandRegistration;

  const SidebarNavigation({
    super.key,
    this.activeTab,
    required this.currentTime,
    this.onSearch,
    this.onFocusContent,
    this.onNavFocusRegistration,
    this.onExpandRegistration,
  });

  @override
  State<SidebarNavigation> createState() => _SidebarNavigationState();
}

class _SidebarNavigationState extends State<SidebarNavigation> {
  late List<FocusNode> _tabFocusNodes;
  late int _activeTabIndex;
  int _focusedTabIndex = 0;
  bool _isNavigating = false;
  late FocusNode _searchButtonFocusNode;
  late FocusNode _overflowButtonFocusNode;
  bool _isExpanded = false;

  final List<NavTab> _tabs = [
    NavTab(id: 'epg', label: 'Guide', icon: Icons.dvr, route: '/epg'),
    NavTab(id: 'home', label: 'Live TV', icon: Icons.live_tv, route: '/home'),
    NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
    NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
    NavTab(id: 'favorites', label: 'Favorites', icon: Icons.favorite, route: '/favorites'),
    NavTab(id: 'downloads', label: 'Downloads', icon: Icons.download, route: '/downloads'),
  ];

  @override
  void initState() {
    super.initState();
    _tabFocusNodes = List.generate(_tabs.length, (_) => FocusNode());
    _searchButtonFocusNode = FocusNode(debugLabel: 'SideSearchButton');
    _overflowButtonFocusNode = FocusNode(debugLabel: 'SideOverflowButton');
    _activeTabIndex = _resolveActiveTabIndex(widget.activeTab);
    _focusedTabIndex = _activeTabIndex;
    _isExpanded = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => _focusActiveTab());
    widget.onNavFocusRegistration?.call(_requestActiveTabFocus);
    widget.onExpandRegistration?.call(_expandSidebar);
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
      setState(() => _isExpanded = false);
      WidgetsBinding.instance.addPostFrameCallback((_) => _focusActiveTab());
    }
    if (oldWidget.onNavFocusRegistration != widget.onNavFocusRegistration &&
        widget.onNavFocusRegistration != null) {
      widget.onNavFocusRegistration!.call(_requestActiveTabFocus);
    }
  }

  void _expandSidebar() {
    if (!_isExpanded) {
      setState(() => _isExpanded = true);
    }
  }

  @override
  void dispose() {
    widget.onNavFocusRegistration?.call(null);
    widget.onExpandRegistration?.call(null);
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

  void _navigateToTab(int targetIndex) {
    if (targetIndex < 0 || targetIndex >= _tabs.length) return;
    
    _isNavigating = true;
    _focusedTabIndex = targetIndex;
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _tabFocusNodes[targetIndex].requestFocus();
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          _isNavigating = false;
        }
      });
    });
  }

  Widget _buildTabButton(int index) {
    final tab = _tabs[index];
    final isActive = widget.activeTab == tab.id;

    return Focus(
      focusNode: _tabFocusNodes[index],
      onFocusChange: (hasFocus) {
        if (hasFocus) {
          _focusedTabIndex = index;
          setState(() {});
        }
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
          if (_isExpanded) {
            setState(() => _isExpanded = false);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft && _isExpanded) {
          setState(() => _isExpanded = false);
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
            onTap: () {
              if (!_isExpanded) {
                setState(() => _isExpanded = true);
              } else {
                context.go(tab.route);
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 140),
              curve: Curves.easeOut,
              height: 34,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: isFocused
                  ? AppTheme.primaryBlue.withValues(alpha: 0.15)
                  : Colors.transparent,
              ),
              alignment: Alignment.center,
              child: _isExpanded
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        tab.icon,
                        color: isActive ? AppTheme.primaryBlue : Colors.white70,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        tab.label,
                        style: TextStyle(
                          color: isActive ? AppTheme.primaryBlue : Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                : Icon(
                    tab.icon,
                    color: isActive ? AppTheme.primaryBlue : Colors.white70,
                    size: 18,
                  ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isExpanded) {
          setState(() => _isExpanded = false);
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        color: const Color(0xFF050710).withValues(alpha: 0.95),
        width: _isExpanded ? 160 : 48,
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6, bottom: 6),
            child: Image(
              image: const AssetImage('assets/images/lonelogo (1).png'),
              height: _isExpanded ? 32 : 24,
            ),
          ),
          Expanded(
            child: FocusTraversalGroup(
              policy: WidgetOrderTraversalPolicy(),
              child: Column(
                children: [
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Focus(
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
                          if (_isExpanded) {
                            setState(() => _isExpanded = false);
                            return KeyEventResult.handled;
                          }
                          return KeyEventResult.ignored;
                        }
                        if (event.logicalKey == LogicalKeyboardKey.arrowLeft && _isExpanded) {
                          setState(() => _isExpanded = false);
                          return KeyEventResult.handled;
                        }
                        return KeyEventResult.ignored;
                      },
                      child: Builder(
                        builder: (context) {
                          final isFocused = Focus.of(context).hasFocus;
                          return GestureDetector(
                            onTap: () {
                              if (!_isExpanded) {
                                setState(() => _isExpanded = true);
                              } else {
                                widget.onSearch?.call();
                              }
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 150),
                              curve: Curves.easeOut,
                              height: 34,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: isFocused
                                  ? AppTheme.primaryBlue.withValues(alpha: 0.15)
                                  : Colors.transparent,
                              ),
                              alignment: Alignment.center,
                              child: _isExpanded
                                ? const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.search, color: Colors.white70, size: 18),
                                      SizedBox(width: 10),
                                      Text(
                                        'Search',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                : const Icon(Icons.search, color: Colors.white70, size: 18),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  ..._tabs.map((tab) {
                    final index = _tabs.indexOf(tab);
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: _buildTabButton(index),
                    );
                  }),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _buildBottomButton(Icons.settings, 'Settings', '/settings'),
                  ),
                ],
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }

  Widget _buildBottomButton(IconData icon, String label, String route) {
    return Focus(
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          if (_isExpanded) {
            setState(() => _isExpanded = false);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft && _isExpanded) {
          setState(() => _isExpanded = false);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.space) {
          context.go(route);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return GestureDetector(
            onTap: () {
              if (!_isExpanded) {
                setState(() => _isExpanded = true);
              } else {
                context.go(route);
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 140),
              height: 34,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: isFocused ? AppTheme.primaryBlue.withValues(alpha: 0.15) : Colors.transparent,
              ),
              alignment: Alignment.center,
              child: _isExpanded
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(icon, color: Colors.white70, size: 18),
                      const SizedBox(width: 10),
                      Text(
                        label,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                : Icon(icon, color: Colors.white70, size: 18),
            ),
          );
        },
      ),
    );
  }
}
