import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:go_router/go_router.dart';
// import 'package:iptv_player/widgets/top_navigation_bar.dart'; // Removed

import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/sidebar_navigation.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:iptv_player/utils/app_theme.dart';

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
  final GlobalKey<SidebarNavigationState> _sidebarKey =
      GlobalKey<SidebarNavigationState>();

  final FocusScopeNode _contentFocusScope =
      FocusScopeNode(debugLabel: 'ContentScope');

  // Global focus node for handling edge navigation
  late final FocusNode _globalFocusNode;

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timerService.registerSecondCallback('main_shell_time', () {
      if (mounted) {
        setState(() => _updateTime());
      }
    });

    // Initialize global focus node
    _globalFocusNode = FocusNode(debugLabel: 'GlobalFocus');

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
    _globalFocusNode.dispose();
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
        _requestContentFocus();
        _sidebarKey.currentState?.collapse();
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
          final location = GoRouterState.of(context).uri.path;
          if (location != '/home') {
            context.go('/home');
          } else {
            context.go('/exit');
          }
        }
      },
      child: Focus(
        focusNode: _globalFocusNode,
        onKeyEvent: _handleGlobalKeyEvent,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: const BoxDecoration(
              color: AppTheme.darkBackground,
            ),
            child: Stack(
              children: [
                // Content area - fills entire screen, content can show behind nav bar
                Positioned.fill(
                  child: FocusTraversalGroup(
                    policy: WidgetOrderTraversalPolicy(),
                    child: Focus(
                      canRequestFocus: false,
                      skipTraversal: true,

                      // onKeyEvent: _handleContentKeyEvent, // Removed global handler
                    child: FocusScope(
                      node: _contentFocusScope,
                      autofocus: false,
                      child: ContentFocusProvider(
                        registerFocusCallback: _registerContentFocusCallback,
                        unregisterFocusCallback:
                            _unregisterContentFocusCallback,
                        requestNavFocus: _requestNavFocus,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: AppSizes.sidebarCollapsedWidth,
                          ),
                          child: widget.child,
                        ),
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
                    key: _sidebarKey,
                    activeTab: widget.activeTab,
                    currentTime: _currentTime,
                    onSearch: _showSearchDialog,
                    onFocusContent: _requestContentFocus,
                    onNavFocusRegistration: _setNavFocusRequester,
                    onExpandRegistration: (_) {},
                  ),
                ),
              ],
            ),
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

  int _registerContentFocusCallback(ContentFocusCallback callback) {
    final token = ++_nextFocusToken;
    _contentFocusCallback = callback;
    _activeFocusToken = token;
    debugLog('content_focus: Shell registered focus callback token=$token');
    // Don't auto-focus content - let the navbar keep focus
    // User can press down arrow to focus content
    return token;
  }

  void _unregisterContentFocusCallback(int token) {
    if (_activeFocusToken == token) {
      _activeFocusToken = null;
      _contentFocusCallback = null;
      debugLog('content_focus: Shell unregistered focus callback token=$token');
    }
  }

  bool _requestContentFocus() {
    debugLog('content_focus: Shell requesting content focus');

    // Try callback first
    final callback = _contentFocusCallback;
    if (callback != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        final handled = callback();
        debugLog('content_focus: Callback ${handled ? 'succeeded' : 'failed'}');
      });
      setState(() {}); // Collapse sidebar
      return true;
    }

    // Fallback to finding first focusable
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final handled = _focusFirstContentChild();
      debugLog('content_focus: Fallback ${handled ? 'succeeded' : 'failed'}');
    });
    setState(() {}); // Collapse sidebar
    return true;
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
      debugLog('content_focus: Nav focus requester unavailable');
      return false;
    }
    final handled = requester();
    debugLog(
        'content_focus: Nav focus request ${handled ? 'succeeded' : 'failed'}');
    return handled;
  }

  /// Handle global D-pad navigation for sidebar open/close and screen navigation
  KeyEventResult _handleGlobalKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;

    final currentFocus = FocusManager.instance.primaryFocus;

    // Handle left arrow key - open sidebar if focused on content at left edge
    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
      // If we're focused on content (not sidebar), try to open sidebar
      if (currentFocus != null &&
          !_isFocusInSidebar(currentFocus) &&
          _isFocusInContent(currentFocus)) {
        final moved =
            currentFocus.focusInDirection(TraversalDirection.left);
        if (!moved) {
          _expandSidebarFromContent();
        }
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    }

    // Handle right arrow key - close sidebar and focus content
    if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
      if (currentFocus != null && _isFocusInSidebar(currentFocus)) {
        _collapseSidebarToContent();
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    }

    return KeyEventResult.ignored;
  }

  bool _isFocusInSidebar(FocusNode node) {
    // Check if the focus node is within the sidebar navigation
    FocusNode? current = node;
    while (current != null) {
      if (current == _contentFocusScope) return false;
      current = current.parent;
    }
    return true;
  }

  bool _isFocusInContent(FocusNode node) {
    return node == _contentFocusScope ||
        node.ancestors.contains(_contentFocusScope);
  }

  void _expandSidebarFromContent() {
    // Force focus to sidebar to trigger expansion
    _requestNavFocus();
  }

  void _collapseSidebarToContent() {
    // Request focus back to content
    _requestContentFocus();
  }

}
