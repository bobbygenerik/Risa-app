import 'dart:async';

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

class _AppShellState extends State<AppShell> with SingleTickerProviderStateMixin {
  static const List<_PrimaryNavItem> _primaryNavItems = [
    _PrimaryNavItem(label: 'Live TV', route: '/home'),
    _PrimaryNavItem(label: 'Movies', route: '/movies'),
    _PrimaryNavItem(label: 'Series', route: '/series'),
    _PrimaryNavItem(label: 'Search', route: '/search'),
  ];

  static const List<_OverflowMenuItem> _overflowMenuItems = [
    _OverflowMenuItem(label: 'Guide', icon: Icons.calendar_month_rounded, route: '/epg'),
    _OverflowMenuItem(label: 'Recordings', icon: Icons.playlist_play_rounded, route: '/recordings'),
    _OverflowMenuItem(label: 'Settings', icon: Icons.settings_rounded, route: '/settings'),
    _OverflowMenuItem(label: 'Exit App', icon: Icons.power_settings_new_rounded, isExit: true),
  ];

  late final List<FocusNode> _topNavFocusNodes;
  late final List<FocusNode> _overflowMenuItemFocusNodes;

  final FocusNode _contentScopeNode = FocusNode(debugLabel: 'ContentScope');
  final FocusNode _overflowButtonFocusNode = FocusNode(debugLabel: 'OverflowButton');
  final FocusNode _overflowMenuKeyboardNode = FocusNode(debugLabel: 'OverflowMenuKeyboard');

  late AnimationController _logoAnimationController;
  late Animation<double> _logoScaleAnimation;
  Timer? _clockTimer;

  String _currentTime = '';
  String _currentDate = '';
  String _lastKnownRoute = '';

  bool _isOverflowMenuOpen = false;
  int _currentTopNavIndex = 0;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _initializeClock();

    _topNavFocusNodes = List.generate(
      _primaryNavItems.length,
      (index) => FocusNode(debugLabel: 'TopNav$index'),
    );
    _overflowMenuItemFocusNodes = List.generate(
      _overflowMenuItems.length,
      (index) => FocusNode(debugLabel: 'OverflowItem$index'),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => _syncFocusWithRoute());
  }

  @override
  void dispose() {
    _logoAnimationController.dispose();
    _clockTimer?.cancel();

    for (final node in _topNavFocusNodes) {
      node.dispose();
    }
    for (final node in _overflowMenuItemFocusNodes) {
      node.dispose();
    }

    _contentScopeNode.dispose();
    _overflowButtonFocusNode.dispose();
    _overflowMenuKeyboardNode.dispose();
    super.dispose();
  }

  void _initializeAnimations() {
    _logoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    )..repeat(reverse: true);

    _logoScaleAnimation = Tween<double>(begin: 0.97, end: 1.03).animate(
      CurvedAnimation(parent: _logoAnimationController, curve: Curves.easeInOut),
    );
  }

  void _initializeClock() {
    _updateClockStrings();
    _clockTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      if (!mounted) return;
      setState(_updateClockStrings);
    });
  }

  void _updateClockStrings() {
    final now = DateTime.now();
    final hour = now.hour == 0 ? 12 : (now.hour > 12 ? now.hour - 12 : now.hour);
    final period = now.hour >= 12 ? 'PM' : 'AM';
    _currentTime = '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $period';

    const days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
    const months = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'];
    _currentDate = '${days[now.weekday - 1]}, ${months[now.month - 1]} ${now.day.toString().padLeft(2, '0')}';
  }

  void _syncFocusWithRoute() {
    if (!mounted) return;
    final route = GoRouterState.of(context).uri.path;
    _lastKnownRoute = route;
    final index = _getNavIndexForRoute(route) ?? 0;
    _currentTopNavIndex = index;
    if (_topNavFocusNodes[index].canRequestFocus) {
      _topNavFocusNodes[index].requestFocus();
    }
  }

  void _handleRouteChange(String currentRoute) {
    if (currentRoute == _lastKnownRoute) return;
    _lastKnownRoute = currentRoute;
    final navIndex = _getNavIndexForRoute(currentRoute);
    if (navIndex != null) {
      _currentTopNavIndex = navIndex;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _topNavFocusNodes[navIndex].requestFocus();
      });
    } else {
      _closeOverflowMenu(returnFocus: false);
    }
  }

  int? _getNavIndexForRoute(String route) {
    final normalized = _normalizedRoute(route);
    for (var i = 0; i < _primaryNavItems.length; i++) {
      if (_primaryNavItems[i].route == normalized) {
        return i;
      }
    }
    return null;
  }

  String _normalizedRoute(String route) {
    if (route.isEmpty) return '/home';
    final uri = Uri.parse(route);
    if (uri.pathSegments.isEmpty) {
      return '/home';
    }
    return '/${uri.pathSegments.first}';
  }

  void _onNavSelected(int index) {
    final item = _primaryNavItems[index];
    final current = GoRouterState.of(context).uri.path;
    if (_normalizedRoute(current) != item.route) {
      context.go(item.route);
    }
    _focusContentArea();
  }

  void _focusContentArea() {
    Future.delayed(const Duration(milliseconds: 120), () {
      if (!mounted) return;
      if (_contentScopeNode.canRequestFocus) {
        _contentScopeNode.requestFocus();
      }
    });
  }

  void _openOverflowMenu() {
    if (_isOverflowMenuOpen) return;
    setState(() => _isOverflowMenuOpen = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _overflowMenuKeyboardNode.requestFocus();
      if (_overflowMenuItemFocusNodes.isNotEmpty) {
        _overflowMenuItemFocusNodes.first.requestFocus();
      }
    });
  }

  void _closeOverflowMenu({bool returnFocus = true}) {
    if (!_isOverflowMenuOpen) return;
    setState(() => _isOverflowMenuOpen = false);
    if (returnFocus) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        if (_overflowButtonFocusNode.canRequestFocus) {
          _overflowButtonFocusNode.requestFocus();
        }
      });
    }
  }

  void _onOverflowItemSelected(_OverflowMenuItem item) {
    if (item.isExit) {
      SystemNavigator.pop();
      return;
    }

    if (item.route != null) {
      context.go(item.route!);
      _focusContentArea();
    }
    _closeOverflowMenu(returnFocus: false);
  }

  KeyEventResult _handleGlobalKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    final key = event.logicalKey;
    if (_isOverflowMenuOpen && (key == LogicalKeyboardKey.goBack || key == LogicalKeyboardKey.escape)) {
      _closeOverflowMenu();
      return KeyEventResult.handled;
    }

    if (!_isOverflowMenuOpen && key == LogicalKeyboardKey.contextMenu) {
      _openOverflowMenu();
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  KeyEventResult _handleTopNavKeyEvent(FocusNode node, KeyEvent event, int index) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    final key = event.logicalKey;
    if (key == LogicalKeyboardKey.select ||
        key == LogicalKeyboardKey.enter ||
        key == LogicalKeyboardKey.space) {
      _onNavSelected(index);
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowDown) {
      _focusContentArea();
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowRight && index == _primaryNavItems.length - 1) {
      _overflowButtonFocusNode.requestFocus();
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowLeft && index == 0) {
      _topNavFocusNodes.last.requestFocus();
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  KeyEventResult _handleOverflowButtonKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    final key = event.logicalKey;
    if (key == LogicalKeyboardKey.select ||
        key == LogicalKeyboardKey.enter ||
        key == LogicalKeyboardKey.space) {
      if (_isOverflowMenuOpen) {
        _closeOverflowMenu(returnFocus: true);
      } else {
        _openOverflowMenu();
      }
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowLeft) {
      _topNavFocusNodes.last.requestFocus();
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowDown && _isOverflowMenuOpen) {
      if (_overflowMenuItemFocusNodes.isNotEmpty) {
        _overflowMenuItemFocusNodes.first.requestFocus();
      }
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  KeyEventResult _handleOverflowMenuKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    final key = event.logicalKey;
    if (key == LogicalKeyboardKey.goBack ||
        key == LogicalKeyboardKey.escape ||
        key == LogicalKeyboardKey.arrowLeft) {
      _closeOverflowMenu();
      return KeyEventResult.handled;
    }

    if (key == LogicalKeyboardKey.arrowUp) {
      final currentIndex = _overflowMenuItemFocusNodes.indexWhere((node) => node.hasPrimaryFocus);
      if (currentIndex <= 0) {
        _overflowButtonFocusNode.requestFocus();
        return KeyEventResult.handled;
      }
    }

    return KeyEventResult.ignored;
  }

  KeyEventResult _handleOverflowMenuItemKeyEvent(
    FocusNode node,
    KeyEvent event,
    _OverflowMenuItem item,
  ) {
    if (event is! KeyDownEvent) {
      return KeyEventResult.ignored;
    }

    final key = event.logicalKey;
    if (key == LogicalKeyboardKey.select ||
        key == LogicalKeyboardKey.enter ||
        key == LogicalKeyboardKey.space) {
      _onOverflowItemSelected(item);
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    final currentRoute = GoRouterState.of(context).uri.path;
    _handleRouteChange(currentRoute);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
        backgroundColor: AppTheme.darkBackground,
        body: Focus(
          autofocus: true,
          onKeyEvent: _handleGlobalKeyEvent,
          child: Stack(
            children: [
              _buildBackgroundGradient(),
              _buildContentArea(),
              _buildFloatingTopBar(),
              if (_isOverflowMenuOpen) ...[
                Positioned.fill(
                  child: GestureDetector(
                    onTap: () => _closeOverflowMenu(returnFocus: false),
                    behavior: HitTestBehavior.translucent,
                    child: const SizedBox(),
                  ),
                ),
                _buildOverflowMenu(),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundGradient() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppTheme.darkBackground,
            AppTheme.darkBackground,
            AppTheme.darkBackground.withOpacity(0.85),
          ],
        ),
      ),
    );
  }

  Widget _buildContentArea() {
    return Padding(
      padding: const EdgeInsets.only(top: 130, left: 48, right: 48, bottom: 32),
      child: FocusTraversalGroup(
        policy: WidgetOrderTraversalPolicy(),
        child: Focus(
          focusNode: _contentScopeNode,
          child: widget.child,
        ),
      ),
    );
  }

  Widget _buildFloatingTopBar() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
          decoration: BoxDecoration(
            color: AppTheme.cardBackground.withOpacity(0.92),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppTheme.primaryBlueOpacity(0.35)),
            boxShadow: [
              BoxShadow(
                color: AppTheme.primaryBlue.withOpacity(0.25),
                blurRadius: 24,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildAnimatedLogo(),
              const SizedBox(width: 18),
              _buildPrimaryNavigation(),
              const SizedBox(width: 24),
              _buildClock(),
              const SizedBox(width: 20),
              _buildOverflowButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedLogo() {
    return ScaleTransition(
      scale: _logoScaleAnimation,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/croppedlogo2.png',
              width: 42,
              height: 42,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            'IPTV Player',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildPrimaryNavigation() {
    return FocusTraversalGroup(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < _primaryNavItems.length; i++)
            _buildNavItem(i, _primaryNavItems[i]),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, _PrimaryNavItem item) {
    final isActive = _currentTopNavIndex == index && !_isOverflowMenuOpen;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Focus(
        focusNode: _topNavFocusNodes[index],
        onFocusChange: (hasFocus) {
          if (hasFocus && mounted) {
            setState(() => _currentTopNavIndex = index);
          }
        },
        onKeyEvent: (node, event) => _handleTopNavKeyEvent(node, event, index),
        child: GestureDetector(
          onTap: () => _onNavSelected(index),
          behavior: HitTestBehavior.translucent,
          child: AnimatedContainer(
            duration: AppDurations.fast,
            curve: Curves.easeInOut,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            decoration: BoxDecoration(
              color: isActive ? AppTheme.primaryBlueOpacity(0.2) : Colors.transparent,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: _topNavFocusNodes[index].hasFocus
                    ? AppTheme.accentPink
                    : Colors.transparent,
                width: 2,
              ),
            ),
            child: Text(
              item.label,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: isActive ? AppTheme.textPrimary : AppTheme.textSecondary,
                    fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                  ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildClock() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          _currentTime,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 2),
        Text(
          _currentDate,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppTheme.textSecondary),
        ),
      ],
    );
  }

  Widget _buildOverflowButton() {
    return Focus(
      focusNode: _overflowButtonFocusNode,
      onKeyEvent: _handleOverflowButtonKeyEvent,
      child: GestureDetector(
        onTap: () {
          if (_isOverflowMenuOpen) {
            _closeOverflowMenu();
          } else {
            _openOverflowMenu();
          }
        },
        child: AnimatedContainer(
          duration: AppDurations.fast,
          curve: Curves.easeInOut,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: _overflowButtonFocusNode.hasFocus
                ? AppTheme.primaryBlueOpacity(0.18)
                : AppTheme.cardBackground.withOpacity(0.75),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: _overflowButtonFocusNode.hasFocus
                  ? AppTheme.accentPink
                  : Colors.transparent,
              width: 2,
            ),
          ),
          child: Icon(
            Icons.apps_rounded,
            color: _isOverflowMenuOpen ? AppTheme.textPrimary : AppTheme.textSecondary,
            size: AppSizes.iconLg,
          ),
        ),
      ),
    );
  }

  Widget _buildOverflowMenu() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 110, right: 48),
        child: Material(
          color: Colors.transparent,
          child: Focus(
            focusNode: _overflowMenuKeyboardNode,
            onKeyEvent: _handleOverflowMenuKeyEvent,
            child: Container(
              width: 300,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: AppTheme.cardBackground.withOpacity(0.96),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppTheme.primaryBlueOpacity(0.35)),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.primaryBlue.withOpacity(0.25),
                    blurRadius: 28,
                    offset: const Offset(0, 18),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (var i = 0; i < _overflowMenuItems.length; i++)
                    _buildOverflowMenuItem(i, _overflowMenuItems[i]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOverflowMenuItem(int index, _OverflowMenuItem item) {
    return Focus(
      focusNode: _overflowMenuItemFocusNodes[index],
      onKeyEvent: (node, event) => _handleOverflowMenuItemKeyEvent(node, event, item),
      child: GestureDetector(
        onTap: () => _onOverflowItemSelected(item),
        behavior: HitTestBehavior.translucent,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: _overflowMenuItemFocusNodes[index].hasFocus
                ? AppTheme.primaryBlueOpacity(0.22)
                : Colors.transparent,
            border: Border.all(
              color: _overflowMenuItemFocusNodes[index].hasFocus
                  ? AppTheme.accentPink
                  : Colors.transparent,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              Icon(
                item.icon,
                color: item.isExit ? AppTheme.accentRed : AppTheme.textPrimary,
                size: AppSizes.iconLg,
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Text(
                  item.label,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: item.isExit ? AppTheme.accentRed : AppTheme.textPrimary,
                      ),
                ),
              ),
              if (item.route != null)
                Icon(
                  Icons.chevron_right_rounded,
                  color: AppTheme.textSecondary,
                  size: AppSizes.iconMd,
                ),
              if (item.isExit)
                Icon(
                  Icons.power_settings_new_rounded,
                  color: AppTheme.accentRed,
                  size: AppSizes.iconMd,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PrimaryNavItem {
  final String label;
  final String route;

  const _PrimaryNavItem({required this.label, required this.route});
}

class _OverflowMenuItem {
  final String label;
  final IconData icon;
  final String? route;
  final bool isExit;

  const _OverflowMenuItem({
    required this.label,
    required this.icon,
    this.route,
    this.isExit = false,
  });
}
