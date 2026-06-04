import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
// app_theme not used here after recent refactors
// import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
part 'sidebar/sidebar_navigation_widgets.dart';
part 'sidebar/sidebar_navigation_content.dart';


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
  static const double _expandedWidth = AppSpacing.sidebarWidth;
  static const Duration _focusDuration = Duration(milliseconds: 90);
  static const Duration _widthDuration = Duration(milliseconds: 120);

  final List<NavTab> _tabs = [
    NavTab(id: 'search', label: 'Search', icon: Icons.search, route: '/search'),
    NavTab(id: 'epg', label: 'Guide', icon: Icons.dvr, route: '/epg'),
    NavTab(id: 'home', label: 'Live TV', icon: Icons.live_tv, route: '/home'),
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
    // Live TV content owns cold-start focus; do not grab sidebar focus here.
    _suppressAutoExpandOnInitialFocus = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _suppressAutoExpandOnInitialFocus = false;
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
      // The route just changed, so we re-seat focus on the active tab as a
      // fallback. That focus is programmatic — it must not trip the
      // onFocusChange auto-expand, or navigating away would leave the sidebar
      // open whenever content isn't focusable yet (e.g. mid EPG load).
      _suppressAutoExpandOnInitialFocus = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _focusActiveTab();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) _suppressAutoExpandOnInitialFocus = false;
        });
      });
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
    final preserveIndex = _activeTabIndex.clamp(0, _tabs.length - 1);
    void apply() {
      if (!mounted || _isExpanded == value) return;
      _updateSidebarState(() => _isExpanded = value);
      widget.onExpansionChanged?.call(value);
      if (value) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          final node = _tabFocusNodes[preserveIndex];
          if (!node.hasFocus && node.canRequestFocus) {
            node.requestFocus();
          }
        });
      }
    }

    if (defer) {
      WidgetsBinding.instance.addPostFrameCallback((_) => apply());
      return;
    }
    apply();
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
    // Only focus if forced or if nothing currently has focus
    if (force || (!node.hasFocus && FocusManager.instance.primaryFocus == null)) {
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
    _tabFocusNodes[targetIndex].requestFocus();
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
        duration: _widthDuration,
        width:
            _isExpanded ? _expandedWidth : AppSpacing.sidebarCollapsedWidth,
        decoration: _sidebarDecoration(context),
        child: _buildSidebarContent(),
      ),
    );
  }

  void _updateSidebarState(VoidCallback fn) {
    if (!mounted) return;
    setState(fn);
  }

  BoxDecoration _sidebarDecoration(BuildContext context) {
    // TV + expanded: no panel — MainShell full-screen dim handles separation.
    if (_isExpanded && context.isTV) {
      return const BoxDecoration(color: Colors.transparent);
    }

    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.black.withAlpha((0.95 * 255).round()),
          Colors.black.withAlpha((0.0 * 255).round()),
        ],
        stops: const [0.0, 1.0],
      ),
    );
  }
}

