import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';

class AppShell extends StatefulWidget {
  final Widget child;

  const AppShell({super.key, required this.child});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell>
    with SingleTickerProviderStateMixin {
  bool _isSidebarCollapsed = false;
  late String _currentTime;
  late String _currentDate;
  late AnimationController _logoAnimationController;
  late Animation<double> _logoScaleAnimation;

  // Focus management for TV navigation
  final List<FocusNode> _navFocusNodes = [];
  int _currentFocusIndex = 0;
  final FocusNode _sidebarScopeNode = FocusNode(debugLabel: 'SidebarScope');
  final FocusNode _contentScopeNode = FocusNode(debugLabel: 'ContentScope');
  // Top bar
  final FocusNode _searchButtonFocusNode = FocusNode(debugLabel: 'SearchBtn');
  final FocusNode _settingsButtonFocusNode = FocusNode(
    debugLabel: 'SettingsBtn',
  );

  @override
  void initState() {
    super.initState();
    _updateTime();

    // Initialize logo animation
    _logoAnimationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat(reverse: true);

    _logoScaleAnimation = Tween<double>(begin: 0.98, end: 1.02).animate(
      CurvedAnimation(
        parent: _logoAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    // Create focus nodes for each nav item (6 main + 1 exit)
    for (int i = 0; i < 7; i++) {
      _navFocusNodes.add(FocusNode(debugLabel: 'Nav$i'));
    }

    // Update time every second
    Future.delayed(Duration.zero, () {
      if (mounted) {
        _startTimeUpdater();
        // Request focus on first item after build
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted && _navFocusNodes.isNotEmpty) {
            _navFocusNodes[0].requestFocus();
            setState(() => _currentFocusIndex = 0);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _logoAnimationController.dispose();
    for (var node in _navFocusNodes) {
      node.dispose();
    }
    _sidebarScopeNode.dispose();
    _contentScopeNode.dispose();
    _searchButtonFocusNode.dispose();
    _settingsButtonFocusNode.dispose();
    super.dispose();
  }

  void _startTimeUpdater() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _updateTime();
        });
        _startTimeUpdater();
      }
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    // Convert to 12-hour format
    final hour = now.hour == 0
        ? 12
        : (now.hour > 12 ? now.hour - 12 : now.hour);
    final period = now.hour >= 12 ? 'PM' : 'AM';
    _currentTime =
        '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $period';
    final days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
    final months = [
      'JAN',
      'FEB',
      'MAR',
      'APR',
      'MAY',
      'JUN',
      'JUL',
      'AUG',
      'SEP',
      'OCT',
      'NOV',
      'DEC',
    ];
    _currentDate =
        '${days[now.weekday - 1]}, ${months[now.month - 1]} ${now.day}';
  }

  final List<NavigationItem> _navigationItems = [
    NavigationItem(icon: Icons.live_tv, label: 'LIVE TV', route: '/home'),
    NavigationItem(icon: Icons.movie, label: 'Movies', route: '/movies'),
    NavigationItem(icon: Icons.tv, label: 'Series', route: '/series'),
    NavigationItem(icon: Icons.grid_view, label: 'EPG', route: '/epg'),
    NavigationItem(
      icon: Icons.video_library,
      label: 'Recordings',
      route: '/recordings',
    ),
    NavigationItem(icon: Icons.help_outline, label: 'Help', route: '/help'),
  ];

  // (removed older helper _requestFirstContentItemFocus; superseded by _requestFirstSecondaryOrContentFocus)

  // Helper: Try to focus a screen's secondary menu first; fall back to main content; else next traversal
  void _requestFirstSecondaryOrContentFocus(String route) {
    // Small delay to ensure content is fully rendered before requesting focus
    Future.delayed(const Duration(milliseconds: 150), () {
      bool handled = false;
      try {
        final contentState = _getContentScreenState(route);
        if (contentState != null && contentState.mounted) {
          final dyn = contentState as dynamic;
          // Try common method names for focus in order of priority
          // 1. Settings screen - focus its sidebar
          if (!handled && route.startsWith('/settings')) {
            try {
              dyn.requestFirstSidebarFocus();
              handled = true;
            } catch (_) {}
          }
          // 2. Screens with secondary menus (tabs/categories)
          if (!handled) {
            try {
              dyn.requestFirstSecondaryFocus();
              handled = true;
            } catch (_) {}
          }
          if (!handled) {
            try {
              dyn.requestFirstSecondaryMenuFocus();
              handled = true;
            } catch (_) {}
          }
          if (!handled) {
            try {
              dyn.requestFirstTabsFocus();
              handled = true;
            } catch (_) {}
          }
          // 3. Main content area (buttons, cards, etc.)
          if (!handled) {
            try {
              dyn.requestFirstContentFocus();
              handled = true;
            } catch (_) {}
          }
        }
      } catch (e) {
        debugPrint('⚠️ Error focusing content: $e');
      }
      if (!handled) {
        // Fallback: attempt to move to the next focusable within content area
        try {
          // ignore: use_build_context_synchronously
          final focusScope = FocusScope.of(context);
          focusScope.nextFocus();
        } catch (e) {
          debugPrint('⚠️ nextFocus() failed: $e');
        }
      }
    });
  }

  // Placeholder kept for readability; actual invocation is guarded by try/catch above.

  State? _getContentScreenState(String route) {
    // This is a helper to get the State object for the current main content screen
    // You may want to refine this if you use custom keys or global keys for each screen
    // For now, we use context.visitChildElements to find the first StatefulElement
    State? foundState;
    void visitor(Element element) {
      if (element is StatefulElement) {
        final state = element.state;
        if (_isMainContentScreenState(state, route)) {
          foundState = state;
        }
      }
      element.visitChildElements(visitor);
    }

    context.visitChildElements(visitor);
    return foundState;
  }

  bool _isMainContentScreenState(State state, String route) {
    switch (route) {
      case '/':
      case '/home':
        return state.runtimeType.toString().contains('HomeScreen');
      case '/movies':
        return state.runtimeType.toString().contains('MoviesScreen');
      case '/series':
        return state.runtimeType.toString().contains('SeriesScreen');
      case '/epg':
        return state.runtimeType.toString().contains('EPGScreen');
      default:
        // Handle routes that start with certain paths
        if (route.startsWith('/settings')) {
          return state.runtimeType.toString().contains('SettingsScreen');
        }
        return false;
    }
  }

  KeyEventResult _handleSidebarKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final key = event.logicalKey;
    if (key == LogicalKeyboardKey.arrowDown) {
      _moveFocus(1);
      return KeyEventResult.handled;
    } else if (key == LogicalKeyboardKey.arrowUp) {
      _moveFocus(-1);
      return KeyEventResult.handled;
    } else if (key == LogicalKeyboardKey.arrowRight) {
      // Move focus into main content area, trying to focus first interactive element
      final currentRoute = GoRouterState.of(context).uri.path;
      Future.microtask(() {
        // Try to focus first content item in the screen
        _requestFirstSecondaryOrContentFocus(currentRoute);
      });
      return KeyEventResult.handled;
    } else if (key == LogicalKeyboardKey.select ||
        key == LogicalKeyboardKey.enter) {
      if (_currentFocusIndex < _navigationItems.length) {
        final route = _navigationItems[_currentFocusIndex].route;
        context.go(route);
        // Keep focus on the selected sidebar item (do not jump elsewhere)
        Future.microtask(() {
          if (_navFocusNodes.isNotEmpty) {
            _navFocusNodes[_currentFocusIndex].requestFocus();
          }
        });
      } else {
        _showExitDialog();
      }
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  KeyEventResult _handleContentKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final key = event.logicalKey;
    if (key == LogicalKeyboardKey.arrowLeft) {
      // If we are on a nested screen with its own sidebar (e.g., Settings), prefer focusing that sidebar
      final currentRoute = GoRouterState.of(context).uri.path;
      if (currentRoute.startsWith('/settings')) {
        // Try to find the Settings screen state and request its sidebar focus
        Future.microtask(() {
          final settingsState = _getContentScreenState('/settings');
          try {
            if (settingsState != null) {
              (settingsState as dynamic).requestFirstSidebarFocus();
              return;
            }
          } catch (_) {}
          // Fallback to main sidebar
          if (_navFocusNodes.isNotEmpty) {
            _navFocusNodes[_currentFocusIndex.clamp(
                  0,
                  _navFocusNodes.length - 1,
                )]
                .requestFocus();
          }
        });
      } else {
        // Return focus to main sidebar, keep current index
        Future.microtask(() {
          if (_navFocusNodes.isNotEmpty) {
            _navFocusNodes[_currentFocusIndex.clamp(
                  0,
                  _navFocusNodes.length - 1,
                )]
                .requestFocus();
          }
        });
      }
      return KeyEventResult.handled;
    }
    // Let UP/DOWN arrows pass through to allow content scrolling
    // Content screens can handle their own UP navigation to top bar if needed
    return KeyEventResult.ignored;
  }

  void _moveFocus(int direction) {
    setState(() {
      final len = _navFocusNodes.length;
      if (len == 0) return;

      // Special case: pressing UP from the topmost item should go to top bar
      if (direction < 0 && _currentFocusIndex == 0) {
        _searchButtonFocusNode.requestFocus();
        debugPrint('🎯 Focus moved to top bar (search button)');
        return;
      }

      _currentFocusIndex += direction;
      if (_currentFocusIndex >= len) {
        _currentFocusIndex = 0; // Wrap to first
      } else if (_currentFocusIndex < 0) {
        _currentFocusIndex = len - 1; // Wrap to last
      }
      _navFocusNodes[_currentFocusIndex].requestFocus();
      debugPrint('🎯 Focus moved to index $_currentFocusIndex');
    });
  }

  void _showExitDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Exit'),
        content: const Text('Are you sure you want to exit the app?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              SystemNavigator.pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentRed,
            ),
            child: const Text('Exit'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentRoute = GoRouterState.of(context).uri.path;

    return PopScope(
      canPop: false, // Prevent back button from exiting app
      // Use a dynamic callback to interoperate with various SDK signatures.
      // The newer PopScope callback signature varies across SDKs; use the
      // legacy onPopInvoked with an ignore to keep behavior stable while we
      // continue migrating. This avoids analyzer failures on some toolchains.
      // ignore: deprecated_member_use
      onPopInvoked: (didPop) {
        if (didPop) return;
        // On back button, go to home instead of exiting
        if (currentRoute != '/') {
          context.go('/');
        }
      },
      child: Scaffold(
        body: Row(
          children: [
            // Sidebar
            _buildSidebar(currentRoute),

            // Vertical divider
            VerticalDivider(
              width: 2,
              thickness: 2,
              color: AppTheme.highlight.withAlpha((0.15 * 255).round()),
            ),

            // Main content
            Expanded(
              child: Column(
                children: [
                  _buildAppBar(context, currentRoute),
                  Expanded(
                    child: Focus(
                      focusNode: _contentScopeNode,
                      onKeyEvent: _handleContentKey,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 250),
                        switchInCurve: Curves.easeOut,
                        switchOutCurve: Curves.easeIn,
                        transitionBuilder: (child, animation) {
                          return FadeTransition(
                            opacity: animation,
                            child: ScaleTransition(
                              scale: Tween<double>(
                                begin: 0.98,
                                end: 1.0,
                              ).animate(animation),
                              child: child,
                            ),
                          );
                        },
                        child: widget.child,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSidebar(String currentRoute) {
    final width = _isSidebarCollapsed
        ? AppSizes.sidebarCollapsedWidth
        : AppSizes.sidebarWidth;

    return Focus(
      focusNode: _sidebarScopeNode,
      onKeyEvent: _handleSidebarKey,
      onFocusChange: (hasFocus) {
        // Auto expand when focused, auto collapse when focus leaves
        setState(() {
          _isSidebarCollapsed = !hasFocus;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
        width: width,
        color: AppTheme.sidebarBackground,
        child: Column(
          children: [
            // App logo and divider container
            SizedBox(
              height: AppSizes
                  .appBarHeight, // Match top bar height for perfect alignment
              width: double.infinity,
              child: Stack(
                children: [
                  // Logo
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 6.0,
                      ), // Reduced
                      child: _isSidebarCollapsed
                          ? ScaleTransition(
                              scale: _logoScaleAnimation,
                              child: SizedBox(
                                width: 54, // Reduced from 64
                                height: 54, // Reduced from 64
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Image.asset(
                                    'assets/images/croppedlogo2.png',
                                  ),
                                ),
                              ),
                            )
                          : ScaleTransition(
                              scale: _logoScaleAnimation,
                              child: SizedBox.expand(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Image.asset(
                                    'assets/images/croppedlogo2.png',
                                  ),
                                ),
                              ),
                            ),
                    ),
                  ),
                  // Solid pink line at bottom - extends to cover the divider gap
                  Positioned(
                    left: 0,
                    right:
                        -2, // Extend 2px to the right to cover the 2px divider
                    bottom: 0,
                    child: AnimatedOpacity(
                      opacity: _isSidebarCollapsed ? 0.0 : 1.0,
                      duration: AppDurations.fast,
                      child: Container(height: 2, color: AppTheme.accentPink),
                    ),
                  ),
                ],
              ),
            ),

            // Navigation Items
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(
                  top: AppSizes.sm,
                  bottom: AppSizes.sm,
                ), // Prevent first item clipping on focus
                children: [
                  for (int i = 0; i < _navigationItems.length; i++)
                    _buildNavigationItem(
                      index: i,
                      item: _navigationItems[i],
                      isSelected: currentRoute == _navigationItems[i].route,
                      focusNode: _navFocusNodes[i],
                      onTap: () {
                        context.go(_navigationItems[i].route);
                      },
                    ),
                ],
              ),
            ),

            // Exit
            _buildNavigationItem(
              item: NavigationItem(
                icon: Icons.exit_to_app,
                label: 'Exit',
                route: '/exit',
              ),
              index: 6,
              isSelected: false,
              focusNode: _navFocusNodes[6],
              onTap: _showExitDialog,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationItem({
    required int index,
    required NavigationItem item,
    required bool isSelected,
    required VoidCallback onTap,
    required FocusNode focusNode,
  }) {
    final bool isFocused = focusNode.hasFocus;

    return GestureDetector(
      onTap: onTap,
      child: Focus(
        focusNode: focusNode,
        onKeyEvent: _handleSidebarKey,
        onFocusChange: (hasFocus) {
          if (hasFocus) {
            setState(() => _currentFocusIndex = index);
          } else {
            setState(() {});
          }
        },
        child: AnimatedScale(
          scale: isFocused ? 1.08 : 1.0, // Reduced from 1.12
          duration: AppDurations.fast,
          curve: Curves.easeOut,
          child: AnimatedContainer(
            duration: AppDurations.fast,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.lg, // Adjusted
                vertical: 12, // Reduced from 18
              ),
              child: Row(
                children: [
                  Icon(
                    item.icon,
                    color: isFocused
                        ? AppTheme.primaryBlue
                        : AppTheme.textPrimary,
                    size:
                        AppSizes.iconMd + (isFocused ? 3 : 0), // Reduced from 4
                  ),
                  if (!_isSidebarCollapsed) ...[
                    const SizedBox(width: AppSizes.sm), // Reduced from md
                    Expanded(
                      child: Text(
                        item.label,
                        style: TextStyle(
                          color: isFocused
                              ? AppTheme.primaryBlue
                              : AppTheme.textPrimary,
                          fontWeight: (isFocused || isSelected)
                              ? FontWeight.bold
                              : FontWeight.normal,
                          fontSize: 15, // Reduced from 17
                          letterSpacing: isFocused
                              ? 0.3
                              : 0, // Reduced from 0.5
                        ),
                      ),
                    ),
                  ],
                  if (isSelected)
                    Container(
                      width: 3,
                      height: 20,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: AppTheme.accentPink,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, String currentRoute) {
    return Stack(
      children: [
        // Main AppBar container
        Container(
          height: AppSizes.appBarHeight,
          decoration: const gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              ),,
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg),
          child: Row(
            children: [
              // Dynamic breadcrumb showing current context
              _buildBreadcrumb(currentRoute),
              Expanded(child: Container()), // Spacer
              // Search button (top bar: blue icon on focus only)
              Tooltip(
                message: 'Search',
                waitDuration: const Duration(milliseconds: 400),
                child: Focus(
                  focusNode: _searchButtonFocusNode,
                  onKeyEvent: (node, event) {
                    if (event is! KeyDownEvent) return KeyEventResult.ignored;
                    final key = event.logicalKey;
                    if (key == LogicalKeyboardKey.arrowRight) {
                      _settingsButtonFocusNode.requestFocus();
                      return KeyEventResult.handled;
                    } else if (key == LogicalKeyboardKey.arrowDown) {
                      _contentScopeNode.requestFocus();
                      return KeyEventResult.handled;
                    } else if (key == LogicalKeyboardKey.arrowLeft) {
                      _sidebarScopeNode.requestFocus();
                      if (_navFocusNodes.isNotEmpty) {
                        _navFocusNodes[_currentFocusIndex].requestFocus();
                      }
                      return KeyEventResult.handled;
                    } else if (key == LogicalKeyboardKey.select ||
                        key == LogicalKeyboardKey.enter) {
                      context.go('/search');
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  onFocusChange: (_) => setState(() {}),
                  child: Builder(
                    builder: (context) {
                      final isFocused = Focus.of(context).hasFocus;
                      return IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 24, // Reduced from default
                          color: isFocused
                              ? AppTheme.primaryBlue
                              : AppTheme.textPrimary,
                        ),
                        onPressed: () {
                          context.go('/search');
                        },
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(width: AppSizes.sm),

              // Settings button (top bar: blue icon on focus only)
              Tooltip(
                message: 'Settings',
                waitDuration: const Duration(milliseconds: 400),
                child: Focus(
                  focusNode: _settingsButtonFocusNode,
                  onKeyEvent: (node, event) {
                    if (event is! KeyDownEvent) return KeyEventResult.ignored;
                    final key = event.logicalKey;
                    if (key == LogicalKeyboardKey.arrowLeft) {
                      _searchButtonFocusNode.requestFocus();
                      return KeyEventResult.handled;
                    } else if (key == LogicalKeyboardKey.arrowDown) {
                      // Focus content area
                      final currentRoute = GoRouterState.of(context).uri.path;
                      if (currentRoute.startsWith('/settings')) {
                        // For settings, focus the first input field in the current tab
                        Future.delayed(const Duration(milliseconds: 100), () {
                          try {
                            final contentState = _getContentScreenState(
                              '/settings',
                            );
                            if (contentState != null && contentState.mounted) {
                              final dyn = contentState as dynamic;
                              dyn.requestFirstContentFocus();
                            }
                          } catch (_) {
                            _contentScopeNode.requestFocus();
                          }
                        });
                      } else {
                        _contentScopeNode.requestFocus();
                      }
                      return KeyEventResult.handled;
                    } else if (key == LogicalKeyboardKey.select ||
                        key == LogicalKeyboardKey.enter) {
                      context.go('/settings');
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  onFocusChange: (_) => setState(() {}),
                  child: Builder(
                    builder: (context) {
                      final bool isFocused = Focus.of(context).hasFocus;
                      return IconButton(
                        icon: Icon(
                          Icons.settings,
                          color: isFocused
                              ? AppTheme.primaryBlue
                              : AppTheme.textPrimary,
                          size: 24, // Reduced from 28
                        ),
                        onPressed: () => context.go('/settings'),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(width: AppSizes.md),

              // Time and date (updates in real-time)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _currentTime,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    _currentDate,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
        // Pink line at bottom of top bar - extends left to meet sidebar line
        Positioned(
          left: -2, // Extend 2px to the left to cover the divider gap
          right: 0,
          bottom: 0,
          child: Container(height: 2, color: AppTheme.accentPink),
        ),
      ],
    );
  }

  Widget _buildBreadcrumb(String currentRoute) {
    // Map route to friendly breadcrumb text
    String breadcrumb = '';
    IconData? breadcrumbIcon;

    switch (currentRoute) {
      case '/':
      case '/home':
        breadcrumb = 'Live TV';
        breadcrumbIcon = Icons.live_tv;
        break;
      case '/movies':
        breadcrumb = 'Movies';
        breadcrumbIcon = Icons.movie;
        break;
      case '/series':
        breadcrumb = 'Series';
        breadcrumbIcon = Icons.tv;
        break;
      case '/favorites':
        breadcrumb = 'Favorites';
        breadcrumbIcon = Icons.favorite;
        break;
      case '/recordings':
        breadcrumb = 'Recordings';
        breadcrumbIcon = Icons.fiber_manual_record;
        break;
      case '/epg':
        breadcrumb = 'TV Guide';
        breadcrumbIcon = Icons.calendar_today;
        break;
      case '/search':
        breadcrumb = 'Search';
        breadcrumbIcon = Icons.search;
        break;
      case '/settings':
        breadcrumb = 'Settings';
        breadcrumbIcon = Icons.settings;
        break;
      case '/playlist-manager':
        breadcrumb = 'Playlists';
        breadcrumbIcon = Icons.playlist_play;
        break;
      case '/ai-models':
        breadcrumb = 'AI Models';
        breadcrumbIcon = Icons.smart_toy;
        break;
      case '/help':
        breadcrumb = 'Help & About';
        breadcrumbIcon = Icons.help_outline;
        break;
      default:
        if (currentRoute.startsWith('/settings')) {
          breadcrumb = 'Settings';
          breadcrumbIcon = Icons.settings;
        } else if (currentRoute.startsWith('/content')) {
          breadcrumb = 'Content Details';
          breadcrumbIcon = Icons.info_outline;
        } else if (currentRoute.startsWith('/category')) {
          breadcrumb = 'Categories';
          breadcrumbIcon = Icons.category;
        }
    }

    if (breadcrumb.isEmpty) return const SizedBox.shrink();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (breadcrumbIcon != null) ...[
          Icon(breadcrumbIcon, size: 20, color: AppTheme.primaryBlue),
          const SizedBox(width: 8),
        ],
        Text(
          breadcrumb,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimary,
            letterSpacing: 0.3,
          ),
        ),
      ],
    );
  }
}

class NavigationItem {
  final IconData icon;
  final String label;
  final String route;

  NavigationItem({
    required this.icon,
    required this.label,
    required this.route,
  });
}
