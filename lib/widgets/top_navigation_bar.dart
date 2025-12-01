import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final bool Function()? onFocusContent;
  final void Function(bool Function()? requester)? onNavFocusRegistration;

  const TopNavigationBar({
    super.key,
    this.activeTab,
    required this.tabs,
    this.onSearch,
    this.onSearchSubmit,
    this.onOverflow,
    required this.currentTime,
    this.showLogoAndTime = true,
    this.onFocusContent,
    this.onNavFocusRegistration,
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
  late int _activeTabIndex;
  int _focusedTabIndex = 0; // Track which tab has visual focus (may differ from active during navigation)
  bool _isNavigating = false; // Block focus stealing during navigation
  late FocusNode _searchButtonFocusNode;
  late FocusNode _overflowButtonFocusNode;
  final GlobalKey<PopupMenuButtonState<String>> _overflowMenuKey =
      GlobalKey<PopupMenuButtonState<String>>();

  @override
  void initState() {
    super.initState();
    _tabFocusNodes = List.generate(widget.tabs.length, (_) => FocusNode());
    _searchButtonFocusNode = FocusNode(debugLabel: 'NavSearchButton');
    _overflowButtonFocusNode = FocusNode(debugLabel: 'NavOverflowButton');
    _activeTabIndex = _resolveActiveTabIndex(widget.activeTab);
    _focusedTabIndex = _activeTabIndex;
    WidgetsBinding.instance.addPostFrameCallback((_) => _focusActiveTab());
    widget.onNavFocusRegistration?.call(_requestActiveTabFocus);
  }

  @override
  void didUpdateWidget(covariant TopNavigationBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newIndex = _resolveActiveTabIndex(widget.activeTab);
    if (newIndex != _activeTabIndex) {
      _activeTabIndex = newIndex;
      // Only update focused index if we're not in the middle of navigating
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

  @override
  Widget build(BuildContext context) {
    // Android TV screen size detection (use >= for 1080p TVs)
    final size = MediaQuery.of(context).size;
    final isTV = size.width >= 1920 || size.height >= 1080;
    final scale = isTV ? 1.8 : 1.0;
    final router = GoRouter.of(context);
    

    // If we're on the Live TV route (home), make the top bar transparent
    // so the screen's hero/gradient shows through (matches other screens).
    // location can be used in future conditional styling; currently unused

    // Make the top nav transparent always and use a moving highlighter
    // under tabs for a cleaner, less-blocky look.
    final navBar = Container(
      height: AppSizes.appBarHeight * scale,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.xl * scale, vertical: AppSizes.sm * scale),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Left: Logo area (balanced width with time)
          if (widget.showLogoAndTime)
            SizedBox(
              width: 140 * scale,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/croppedlogo2.png',
                  height: 40 * scale,
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),

          // Center: Tabs
          Expanded(
            child: LayoutBuilder(
              builder: (ctx, constraints) {
                final tabCount = math.max(1, widget.tabs.length);
                final tabWidth = constraints.maxWidth / tabCount;
                final highlightWidth = math.min(56 * scale, tabWidth * 0.6);

                // Show the highlight unless search or overflow is focused
                int highlightedIndex = _tabFocusNodes.indexWhere((node) => node.hasFocus);
                final bool searchOrOverflowFocused = _searchButtonFocusNode.hasFocus || _overflowButtonFocusNode.hasFocus;
                if (highlightedIndex == -1 && !searchOrOverflowFocused) {
                  highlightedIndex = _activeTabIndex;
                }
                final bool showHighlight = !searchOrOverflowFocused;
                final left = highlightedIndex != -1
                    ? (highlightedIndex * tabWidth + (tabWidth - highlightWidth) / 2)
                    : 0.0;

                return Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                        tabCount,
                        (index) => SizedBox(
                          width: tabWidth,
                          child: _buildTabButton(index, scale),
                        ),
                      ),
                    ),
                    // Sliding highlighter (scaled for TV)
                    if (showHighlight)
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 260),
                        curve: Curves.easeInOut,
                        left: left,
                        bottom: 8 * scale,
                        child: Container(
                          width: highlightWidth,
                          height: 4 * scale,
                          decoration: BoxDecoration(
                            color: AppTheme.primaryBlue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),

          // Right: search/overflow/time (reordered for better UX)
          if (widget.showLogoAndTime)
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
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
                    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                      if (_tabFocusNodes.isNotEmpty) {
                        _tabFocusNodes.last.requestFocus();
                      }
                      return KeyEventResult.handled;
                    }
                    if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                      _overflowButtonFocusNode.requestFocus();
                      return KeyEventResult.handled;
                    }
                    if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                      _handleContentFocusFromNav(node);
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    curve: Curves.easeOut,
                    decoration: BoxDecoration(
                        color: _searchButtonFocusNode.hasFocus
                          ? Colors.white.withAlpha((0.08 * 255).round())
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: _searchButtonFocusNode.hasFocus
                          ? Border.all(color: AppTheme.primaryBlue, width: 2)
                          : null,
                    ),
                    child: IconButton(
                      onPressed: () {
                        debugPrint('top_nav: search button pressed');
                        widget.onSearch?.call();
                      },
                      icon: const Icon(Icons.search, color: AppTheme.textSecondary),
                      iconSize: 22 * scale,
                      padding: EdgeInsets.symmetric(horizontal: 8 * scale),
                      constraints: BoxConstraints(minWidth: 40 * scale),
                      alignment: Alignment.center,
                      tooltip: 'Search',
                    ),
                  ),
                ),
                SizedBox(width: 12 * scale),
                // Overflow menu
                Focus(
                  focusNode: _overflowButtonFocusNode,
                  onFocusChange: (_) => setState(() {}),
                  onKeyEvent: (node, event) {
                    if (event is! KeyDownEvent) return KeyEventResult.ignored;
                    if (event.logicalKey == LogicalKeyboardKey.enter ||
                        event.logicalKey == LogicalKeyboardKey.select ||
                        event.logicalKey == LogicalKeyboardKey.space) {
                      _overflowMenuKey.currentState?.showButtonMenu();
                      return KeyEventResult.handled;
                    }
                    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                      _searchButtonFocusNode.requestFocus();
                      return KeyEventResult.handled;
                    }
                    if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                      _handleContentFocusFromNav(node);
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    curve: Curves.easeOut,
                    decoration: BoxDecoration(
                        color: _overflowButtonFocusNode.hasFocus
                          ? Colors.white.withAlpha((0.08 * 255).round())
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: _overflowButtonFocusNode.hasFocus
                          ? Border.all(color: AppTheme.primaryBlue, width: 2)
                          : null,
                    ),
                    child: PopupMenuButton<String>(
                      key: _overflowMenuKey,
                      color: AppTheme.sidebarBackground,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                          width: 1.0,
                        ),
                      ),
                      child: Icon(
                        Icons.more_vert,
                        size: 22 * scale,
                        color: AppTheme.textSecondary,
                      ),
                      onSelected: (value) {
                        // Slight delay to allow menu to dismiss before navigating
                        Future.delayed(const Duration(milliseconds: 100), () {
                          if (!mounted) return;
                          if (value == 'settings') router.go('/settings');
                          if (value == 'favorites') router.go('/favorites');
                          if (value == 'downloads') router.go('/downloads');
                        });
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(value: 'settings', child: Row(children: [Icon(Icons.settings, color: AppTheme.primaryBlue, size: 16 * scale), SizedBox(width: 12 * scale), Text('Settings', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500))])),
                        PopupMenuItem(value: 'favorites', child: Row(children: [Icon(Icons.playlist_add_check, color: AppTheme.primaryBlue, size: 16 * scale), SizedBox(width: 12 * scale), Text('My List', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500))])),
                        PopupMenuItem(value: 'downloads', child: Row(children: [Icon(Icons.download, color: AppTheme.primaryBlue, size: 16 * scale), SizedBox(width: 12 * scale), Text('Downloads', style: TextStyle(color: AppTheme.textSecondary, fontSize: 14 * scale, fontWeight: FontWeight.w500))])),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20 * scale),
                // Time display (balanced width with logo)
                SizedBox(
                  width: 140 * scale,
                  child: Text(
                    widget.currentTime,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: AppTheme.textPrimary,
                      fontSize: 18 * scale,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );

    final navWithKeyHandler = Focus(
      canRequestFocus: false,
      skipTraversal: true,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          final handled = widget.onFocusContent?.call() ?? false;
          return handled ? KeyEventResult.handled : KeyEventResult.ignored;
        }
        return KeyEventResult.ignored;
      },
      child: navBar,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Conditionally use BackdropFilter for glass effect; fall back to plain translucent background for performance
        AppTheme.useBackdropFilter(context)
            ? ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: AppTheme.getBackdropSigma(context), sigmaY: AppTheme.getBackdropSigma(context)),
                  child: navWithKeyHandler,
                ),
              )
            : navWithKeyHandler,
      ],
    );
  }

  int _resolveActiveTabIndex(String? activeId) {
    final idx = widget.tabs.indexWhere((t) => t.id == activeId);
    return idx >= 0 ? idx : 0;
  }

  bool _focusActiveTab({bool force = false}) {
    if (_tabFocusNodes.isEmpty) return false;
    final index = _activeTabIndex.clamp(0, _tabFocusNodes.length - 1);
    final node = _tabFocusNodes[index];
    if (force || !node.hasFocus) {
      node.requestFocus();
    }
    return true;
  }

  bool _requestActiveTabFocus() {
    // Force focus on the active tab
    if (_tabFocusNodes.isNotEmpty) {
      final index = _activeTabIndex.clamp(0, _tabFocusNodes.length - 1);
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

  /// Navigate to a tab by index - handles focus, navigation, and focus restoration
  void _navigateToTab(int targetIndex) {
    if (targetIndex < 0 || targetIndex >= widget.tabs.length) return;
    
    final tab = widget.tabs[targetIndex];
    final isAlreadyActive = widget.activeTab == tab.id;
    
    debugPrint('nav_focus: _navigateToTab to $targetIndex (${tab.id}), isAlreadyActive=$isAlreadyActive');
    
    // Set navigating flag to block focus stealing
    _isNavigating = true;
    _focusedTabIndex = targetIndex;
    
    // Focus the target tab
    _tabFocusNodes[targetIndex].requestFocus();
    
    // Navigate if not already on this route
    if (!isAlreadyActive) {
      final router = GoRouter.of(context);
      router.go(tab.route);
    }
    
    // After navigation settles, restore focus and clear the flag
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _tabFocusNodes[targetIndex].requestFocus();
        // Clear navigating flag after a delay to let the new screen settle
        Future.delayed(const Duration(milliseconds: 150), () {
          if (mounted) {
            _isNavigating = false;
            debugPrint('nav_focus: Navigation complete, focus protection disabled');
          }
        });
      });
    });
  }

  Widget _buildTabButton(int index, double scale) {
    final tab = widget.tabs[index];
    final isActive = widget.activeTab == tab.id;
    final horizontalPadding = 12 * scale;
    final verticalPadding = 10 * scale;

    return Focus(
      focusNode: _tabFocusNodes[index],
      onFocusChange: (hasFocus) {
        // During navigation, block any focus stealing attempts
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
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          final prev = (index - 1) < 0 ? widget.tabs.length - 1 : index - 1;
          _navigateToTab(prev);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          final isLastTab = index == widget.tabs.length - 1;
          if (isLastTab && widget.showLogoAndTime) {
            _searchButtonFocusNode.requestFocus();
            return KeyEventResult.handled;
          }
          final next = (index + 1) % widget.tabs.length;
          _navigateToTab(next);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          // Stay in nav bar - don't let focus escape upward
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          _handleContentFocusFromNav(node);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.space) {
          context.go(widget.tabs[index].route);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          final showHighlight = isActive || isFocused;
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => context.go(tab.route),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 140),
              curve: Curves.easeOut,
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              decoration: const BoxDecoration(),
              child: Center(
                child: Text(
                  tab.label,
                  style: TextStyle(
                    color: showHighlight ? Colors.white : AppTheme.textSecondary,
                    fontSize: showHighlight ? 17 * scale : 16 * scale,
                    fontWeight: showHighlight ? FontWeight.w800 : FontWeight.w600,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

