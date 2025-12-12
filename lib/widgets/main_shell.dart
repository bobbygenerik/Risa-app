import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
// import 'package:iptv_player/widgets/top_navigation_bar.dart'; // Removed

import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/sidebar_navigation.dart';
import 'package:iptv_player/services/timer_service.dart';

const bool kForceSearchPopup = bool.fromEnvironment(
  'FORCE_SEARCH_POPUP',
  defaultValue: false,
);

/// Main shell that keeps the navigation bar fixed while content changes
class MainShell extends StatefulWidget {
  final Widget child;
  final String? activeTab;

  const MainShell({
    super.key,
    required this.child,
    this.activeTab,
  });

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  late String _currentTime;
  final TimerService _timerService = TimerService();
  ContentFocusCallback? _contentFocusCallback;
  int _nextFocusToken = 0;
  int? _activeFocusToken;
  bool _autoSearchTriggered = false;
  bool Function()? _navFocusRequester;
  VoidCallback? _sidebarExpander;
  final FocusScopeNode _contentFocusScope =
      FocusScopeNode(debugLabel: 'ContentScope');

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timerService.registerSecondCallback('main_shell_time', () {
      if (mounted) {
        setState(() => _updateTime());
      }
    });

    // Ensure navbar gets focus on initial load (after a short delay to let content build)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) _requestNavFocus();
      });
    });

    if (kForceSearchPopup) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || _autoSearchTriggered) return;
        _autoSearchTriggered = true;
        _showSearchDialog();
      });
    }
  }

  @override
  void dispose() {
    _timerService.unregister('main_shell_time');
    _contentFocusScope.dispose();
    super.dispose();
  }

  void _updateTime() {
    final now = DateTime.now();
    final hour =
        now.hour == 0 ? 12 : (now.hour > 12 ? now.hour - 12 : now.hour);
    final period = now.hour < 12 ? 'AM' : 'PM';
    _currentTime =
        '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $period';
  }

  // Overflow menu handled within `TopNavigationBar` now; removed temporary handler

  @override
  void didUpdateWidget(MainShell oldWidget) {
    super.didUpdateWidget(oldWidget);
    // If the active tab changes (e.g. returning from a full-screen page like Settings),
    // we want to ensure focus is restored to the navigation bar, specifically the active tab.
    if (widget.activeTab != oldWidget.activeTab) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _requestNavFocus();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Calculate nav bar height for TV scaling
    // final size = MediaQuery.of(context).size; // Removed
    // final isTV = size.width >= 1920 || size.height >= 1080; // Removed
    // final scale = isTV ? 1.2 : 1.0; // Removed
    // final navBarHeight = 64.0 * scale; // AppSizes.appBarHeight * scale // Removed

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          context.go('/exit');
        }
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF050710),
            Color(0xFF0d1140),
          ],
        )),
        child: Stack(
          children: [
            // Content area - fills entire screen, content can show behind nav bar
            Positioned.fill(
              child: FocusTraversalGroup(
                policy: WidgetOrderTraversalPolicy(),
                child: Focus(
                  canRequestFocus: false,
                  skipTraversal: true,
                  onKeyEvent: _handleContentKeyEvent,
                  child: FocusScope(
                    node: _contentFocusScope,
                    autofocus: false,
                    child: ContentFocusProvider(
                      registerFocusCallback: _registerContentFocusCallback,
                      unregisterFocusCallback: _unregisterContentFocusCallback,
                      requestNavFocus: _requestNavFocus,
                      child: widget.child,
                    ),
                  ),
                ),
              ),
            ),
            // Navigation bar overlayed on top - completely transparent
            // Removed TopNavigationBar
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   right: 0,
            //   height: navBarHeight,
            //   child: FocusTraversalGroup(
            //     policy: WidgetOrderTraversalPolicy(),
            //     child: TopNavigationBar(
            //       activeTab: widget.activeTab ?? 'home',
            //       tabs: [
            //         NavTab(
            //             id: 'home',
            //             label: 'Live TV',
            //             icon: Icons.live_tv,
            //             route: '/home'),
            //         NavTab(
            //             id: 'movies',
            //             label: 'Movies',
            //             icon: Icons.movie,
            //             route: '/movies'),
            //         NavTab(
            //             id: 'series',
            //             label: 'Series',
            //             icon: Icons.tv,
            //             route: '/series'),
            //       ],
            //       currentTime: _currentTime,
            //       showLogoAndTime: true,
            //       onSearch: _showSearchDialog,
            //       onFocusContent: _requestContentFocus,
            //       onNavFocusRegistration: _setNavFocusRequester,
            //     ),
            //   ),
            // ),
            // Sidebar - positioned with higher z-index than content
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: SidebarNavigation(
                  activeTab: widget.activeTab,
                  currentTime: _currentTime,
                  onSearch: _showSearchDialog,
                  onFocusContent: _requestContentFocus,
                  onNavFocusRegistration: _setNavFocusRequester,
                  onExpandRegistration: _setSidebarExpander,
                ),
            ),
          ],
        ),
      ),
      ),
    );
  }

  void _showSearchDialog() {
    context.go('/search');
  }

  void _setNavFocusRequester(bool Function()? requester) {
    _navFocusRequester = requester;
  }

  void _setSidebarExpander(VoidCallback? expander) {
    _sidebarExpander = expander;
  }

  int _registerContentFocusCallback(ContentFocusCallback callback) {
    final token = ++_nextFocusToken;
    _contentFocusCallback = callback;
    _activeFocusToken = token;
    debugPrint('content_focus: Shell registered focus callback token=$token');
    // Don't auto-focus content - let the navbar keep focus
    // User can press down arrow to focus content
    return token;
  }

  void _unregisterContentFocusCallback(int token) {
    if (_activeFocusToken == token) {
      _activeFocusToken = null;
      _contentFocusCallback = null;
      debugPrint(
          'content_focus: Shell unregistered focus callback token=$token');
    }
  }

  bool _requestContentFocus() {
    debugPrint('content_focus: Shell requesting content focus');
    
    // Try callback first
    final callback = _contentFocusCallback;
    if (callback != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        final handled = callback();
        debugPrint('content_focus: Callback ${handled ? 'succeeded' : 'failed'}');
      });
      setState(() {}); // Collapse sidebar
      return true;
    }
    
    // Fallback to finding first focusable
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final handled = _focusFirstContentChild();
      debugPrint('content_focus: Fallback ${handled ? 'succeeded' : 'failed'}');
    });
    setState(() {}); // Collapse sidebar
    return true;
  }

  KeyEventResult _handleContentKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      final handled = _requestNavFocus();
      return handled ? KeyEventResult.handled : KeyEventResult.ignored;
    }
    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
      _sidebarExpander?.call(); // Expand sidebar
      final handled = _requestNavFocus(); // Move focus to sidebar
      return handled ? KeyEventResult.handled : KeyEventResult.ignored;
    }
    return KeyEventResult.ignored;
  }

  bool _focusFirstContentChild() {
    if (_contentFocusScope.children.isEmpty) return false;
    final target = _findFirstFocusable(_contentFocusScope);
    if (target == null) return false;
    target.requestFocus();
    return true;
  }

  FocusNode? _findFirstFocusable(FocusNode node) {
    for (final child in node.children) {
      if (child.canRequestFocus && child.context != null) {
        return child;
      }
    }
    for (final child in node.children) {
      final candidate = _findFirstFocusable(child);
      if (candidate != null) return candidate;
    }
    return null;
  }

  bool _requestNavFocus() {
    final requester = _navFocusRequester;
    if (requester == null) {
      debugPrint('content_focus: Nav focus requester unavailable');
      return false;
    }
    final handled = requester();
    debugPrint(
        'content_focus: Nav focus request ${handled ? 'succeeded' : 'failed'}');
    return handled;
  }
}
