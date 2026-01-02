import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
// app_theme not used here after recent refactors
// import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

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
  final ValueChanged<bool>? onExpansionChanged;

  const SidebarNavigation({
    super.key,
    this.activeTab,
    required this.currentTime,
    this.onSearch,
    this.onFocusContent,
    this.onNavFocusRegistration,
    this.onExpandRegistration,
    this.onExpansionChanged,
  });

  @override
  State<SidebarNavigation> createState() => SidebarNavigationState();
}

class SidebarNavigationState extends State<SidebarNavigation> {
  late List<FocusNode> _tabFocusNodes;
  late int _activeTabIndex;

  late FocusNode _overflowButtonFocusNode;
  late FocusNode _settingsFocusNode;
  bool _isExpanded = false;
  bool _suppressAutoExpandOnInitialFocus = false;
  String? _lastRoutePath;
  static const double _expandedWidth = 180.0;

  final List<NavTab> _tabs = [
    NavTab(id: 'search', label: 'Search', icon: Icons.search, route: '/search'),
    NavTab(id: 'epg', label: 'Guide', icon: Icons.dvr, route: '/epg'),
    NavTab(id: 'home', label: 'Live TV', icon: Icons.live_tv, route: '/home'),
    NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
    NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
    NavTab(
        id: 'favorites',
        label: 'Favorites',
        icon: Icons.favorite,
        route: '/favorites'),
    NavTab(
        id: 'downloads',
        label: 'Downloads',
        icon: Icons.download,
        route: '/downloads'),
  ];

  @override
  void initState() {
    super.initState();
    _tabFocusNodes = List.generate(_tabs.length, (_) => FocusNode());
    _overflowButtonFocusNode = FocusNode(debugLabel: 'SideOverflowButton');
    _settingsFocusNode = FocusNode(debugLabel: 'SidebarSettings');
    _activeTabIndex = _resolveActiveTabIndex(widget.activeTab);

    _isExpanded = false;
    // Suppress auto-expansion triggered by the initial focus request so the
    // sidebar remains collapsed on app startup (avoid flashing open).
    _suppressAutoExpandOnInitialFocus = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusActiveTab();
      // Clear the suppression on the next frame so normal focus expansion
      // behavior resumes for user-driven focus changes.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _suppressAutoExpandOnInitialFocus = false;
      });
    });
    widget.onNavFocusRegistration?.call(_requestActiveTabFocus);
    widget.onExpandRegistration?.call(_expandSidebar);
  }

  @override
  void didUpdateWidget(covariant SidebarNavigation oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newIndex = _resolveActiveTabIndex(widget.activeTab);
    if (newIndex != _activeTabIndex) {
      _activeTabIndex = newIndex;

      _setExpanded(false, defer: true);
      WidgetsBinding.instance.addPostFrameCallback((_) => _focusActiveTab());
    }
    if (oldWidget.onNavFocusRegistration != widget.onNavFocusRegistration &&
        widget.onNavFocusRegistration != null) {
      widget.onNavFocusRegistration?.call(_requestActiveTabFocus);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final routePath = GoRouterState.of(context).uri.path;
    if (_lastRoutePath == null) {
      _lastRoutePath = routePath;
      return;
    }
    if (_lastRoutePath != routePath) {
      _lastRoutePath = routePath;
      if (_isExpanded) {
        _setExpanded(false, defer: true);
      }
    }
  }

  bool get isExpanded => _isExpanded;

  void _setExpanded(bool value, {bool defer = false}) {
    if (_isExpanded == value) return;
    if (defer) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        if (_isExpanded == value) return;
        setState(() => _isExpanded = value);
        widget.onExpansionChanged?.call(value);
      });
      return;
    }
    setState(() => _isExpanded = value);
    widget.onExpansionChanged?.call(value);
  }

  void _expandSidebar() {
    if (!_isExpanded) {
      _setExpanded(true);
    }
  }

  void expand() {
    if (!_isExpanded) {
      _setExpanded(true);
    }
  }

  void collapse() {
    if (_isExpanded) {
      _setExpanded(false);
    }
  }

  @override
  void dispose() {
    widget.onNavFocusRegistration?.call(null);
    widget.onExpandRegistration?.call(null);
    _overflowButtonFocusNode.dispose();
    _settingsFocusNode.dispose();
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
      if (!_isExpanded && !_suppressAutoExpandOnInitialFocus) {
        _setExpanded(true);
      }
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _tabFocusNodes[index].requestFocus();
        }
      });
      return true;
    }
    return false;
  }

  void _navigateToTab(int targetIndex) {
    if (targetIndex < 0 || targetIndex >= _tabs.length) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _tabFocusNodes[targetIndex].requestFocus();
    });
  }

  Widget _buildSearchButton(int index) {
    final tab = _tabs[index];
    final isActive = widget.activeTab == tab.id;

    return Focus(
      focusNode: _tabFocusNodes[index],
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          if (index > 0) {
            _navigateToTab(index - 1);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          if (index < _tabs.length - 1) {
            _navigateToTab(index + 1);
            return KeyEventResult.handled;
          }
          _settingsFocusNode.requestFocus();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          if (_isExpanded) {
            _setExpanded(false);
            widget.onFocusContent?.call();
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          if (!_isExpanded) {
            _setExpanded(true);
            return KeyEventResult.handled;
          }
          _setExpanded(false);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.space) {
          if (!_isExpanded) {
            _setExpanded(true);
            return KeyEventResult.handled;
          }
          widget.onSearch?.call();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      onFocusChange: (hasFocus) {
        if (hasFocus && !_isExpanded && !_suppressAutoExpandOnInitialFocus) {
          _setExpanded(true);
        }
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;

          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              if (!_isExpanded) {
                _setExpanded(true);
              } else {
                widget.onSearch?.call();
              }
            },
            child: AnimatedScale(
              duration: TVFocusStyle.animationDuration,
              curve: TVFocusStyle.animationCurve,
              scale: isFocused && _isExpanded ? 1.1 : 1.0,
              child: AnimatedContainer(
                duration: TVFocusStyle.animationDuration,
                curve: TVFocusStyle.animationCurve,
                height: 32,
                padding: const EdgeInsets.fromLTRB(12, 6, 8, 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: isFocused 
                      ? Colors.white.withValues(alpha: 0.15) 
                      : Colors.transparent,
                  border: isFocused 
                      ? const Border(left: BorderSide(color: AppTheme.primaryBlue, width: 3))
                      : null,
                ),
                child: _isExpanded
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            tab.icon,
                            color: (isActive || isFocused)
                                ? Colors.white
                                : Colors.white70,
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              tab.label,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: (isActive || isFocused)
                                    ? Colors.white
                                    : Colors.white70,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Icon(
                        tab.icon,
                        color: (isActive || isFocused)
                            ? Colors.white
                            : Colors.white70,
                        size: 16,
                      ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTabButton(int index) {
    final tab = _tabs[index];
    final isActive = widget.activeTab == tab.id;

    return Focus(
      focusNode: _tabFocusNodes[index],
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          if (index > 0) {
            _navigateToTab(index - 1);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          if (index < _tabs.length - 1) {
            _navigateToTab(index + 1);
            return KeyEventResult.handled;
          }
          _settingsFocusNode.requestFocus();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          if (_isExpanded) {
            _setExpanded(false);
            widget.onFocusContent?.call();
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          if (!_isExpanded) {
            _setExpanded(true);
            return KeyEventResult.handled;
          }
          _setExpanded(false);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.space) {
          if (!_isExpanded) {
            _setExpanded(true);
            return KeyEventResult.handled;
          }
          _setExpanded(false);
          context.go(tab.route);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      onFocusChange: (hasFocus) {
        if (hasFocus && !_isExpanded && !_suppressAutoExpandOnInitialFocus) {
          _setExpanded(true);
        }
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;

          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              if (!_isExpanded) {
                _setExpanded(true);
              } else {
                _setExpanded(false);
                context.go(tab.route);
              }
            },
            child: AnimatedScale(
              duration: TVFocusStyle.animationDuration,
              curve: TVFocusStyle.animationCurve,
              scale: isFocused && _isExpanded ? 1.1 : 1.0,
              child: AnimatedContainer(
                duration: TVFocusStyle.animationDuration,
                curve: TVFocusStyle.animationCurve,
                height: 32,
                padding: const EdgeInsets.fromLTRB(12, 6, 8, 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: isFocused 
                      ? Colors.white.withValues(alpha: 0.15) 
                      : Colors.transparent,
                  border: isFocused 
                      ? const Border(left: BorderSide(color: AppTheme.primaryBlue, width: 3))
                      : null,
                ),
                child: _isExpanded
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            tab.icon,
                            color: isActive
                                ? AppTheme.primaryBlue
                                : (isFocused ? Colors.white : Colors.white70),
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              tab.label,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: isActive
                                    ? AppTheme.primaryBlue
                                    : (isFocused ? Colors.white : Colors.white70),
                                fontSize: 12,
                                fontWeight: isActive || isFocused
                                    ? FontWeight.w700
                                    : FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Icon(
                        tab.icon,
                        color: isActive
                            ? AppTheme.primaryBlue
                            : (isFocused ? Colors.white : Colors.white70),
                        size: 16,
                      ),
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
          _setExpanded(false);
        }
      },
      child: AnimatedContainer(
        duration: AppDurations.fast,
        width:
            _isExpanded ? _expandedWidth : AppSpacing.sidebarCollapsedWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.black.withAlpha((0.95 * 255).round()),
              Colors.black.withAlpha((0.0 * 255).round()),
            ],
            stops: const [0.0, 1.0],
          ),
        ),
        child: _buildSidebarContent(),
      ),
    );
  }

  Widget _buildSidebarContent() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 4),
          child: Image(
            image: AssetImage(_isExpanded
                ? 'assets/images/croppedlogo2.png'
                : 'assets/images/lonelogo (1).png'),
            height: _isExpanded ? 28 : 20,
          ),
        ),
        Expanded(
          child: FocusTraversalGroup(
            policy: WidgetOrderTraversalPolicy(),
            child: Column(
              children: [
                const Spacer(),
                ..._tabs.map((tab) {
                  final index = _tabs.indexOf(tab);
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: tab.id == 'search'
                        ? _buildSearchButton(index)
                        : _buildTabButton(index),
                  );
                }),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: _buildBottomButton(
                      Icons.settings, 'Settings', '/settings'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomButton(IconData icon, String label, String route) {
    final isActive = GoRouterState.of(context).uri.path == route;
    return Focus(
      focusNode: _settingsFocusNode,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          if (_tabs.isNotEmpty) {
            _navigateToTab(_tabs.length - 1);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          if (_isExpanded) {
            _setExpanded(false);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          if (!_isExpanded) {
            _setExpanded(true);
            return KeyEventResult.handled;
          }
          _setExpanded(false);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.space) {
          if (!_isExpanded) {
            _setExpanded(true);
            return KeyEventResult.handled;
          }
          _setExpanded(false);
          context.go(route);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      onFocusChange: (hasFocus) {
        if (hasFocus && !_isExpanded && !_suppressAutoExpandOnInitialFocus) {
          _setExpanded(true);
        }
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;

          return GestureDetector(
            onTap: () {
              if (!_isExpanded) {
                _setExpanded(true);
              } else {
                _setExpanded(false);
                context.go(route);
              }
            },
            child: AnimatedScale(
              duration: TVFocusStyle.animationDuration,
              curve: TVFocusStyle.animationCurve,
              scale: isFocused && _isExpanded ? 1.1 : 1.0,
              child: AnimatedContainer(
                duration: TVFocusStyle.animationDuration,
                curve: TVFocusStyle.animationCurve,
                height: 32,
                padding: const EdgeInsets.fromLTRB(12, 6, 8, 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: isFocused 
                      ? Colors.white.withValues(alpha: 0.15) 
                      : Colors.transparent,
                  border: isFocused 
                      ? const Border(left: BorderSide(color: AppTheme.primaryBlue, width: 3))
                      : null,
                ),
                child: _isExpanded
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            icon,
                            color: isActive
                                ? AppTheme.primaryBlue
                                : (isFocused ? Colors.white : Colors.white70),
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              label,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: isActive
                                    ? AppTheme.primaryBlue
                                    : (isFocused ? Colors.white : Colors.white70),
                                fontSize: 12,
                                fontWeight:
                                    isActive || isFocused ? FontWeight.w700 : FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Icon(
                        icon,
                        color: isActive
                            ? AppTheme.primaryBlue
                            : (isFocused ? Colors.white : Colors.white70),
                        size: 16,
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
