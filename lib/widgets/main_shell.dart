import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';

import 'package:go_router/go_router.dart';
// import 'package:iptv_player/widgets/top_navigation_bar.dart'; // Removed

import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/sidebar_navigation.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:iptv_player/utils/app_spacing.dart';
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
  RouteInformationProvider? _routeInfoProvider;
  String? _lastLocation;
  bool _isSidebarExpanded = false;
  DateTime? _lastBackPress;

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

    // Start collapsed on initial load.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      Future.delayed(const Duration(milliseconds: 100), () {
        if (!mounted) return;
        _sidebarKey.currentState?.collapse();
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _routeInfoProvider = GoRouter.of(context).routeInformationProvider;
      _lastLocation = _routeInfoProvider?.value.uri.toString();
      _routeInfoProvider?.addListener(_handleRouteChange);
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
    _routeInfoProvider?.removeListener(_handleRouteChange);
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
    // keep the sidebar collapsed.
    if (widget.activeTab != oldWidget.activeTab) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
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

    final showSidebarScrim = _isSidebarExpanded;
    final sidebarScrimWidth =
        showSidebarScrim ? AppSpacing.sidebarWidth * 0.72 : AppSpacing.sidebarCollapsedWidth;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          _handleBackNavigation();
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
                          child: widget.child,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  child: IgnorePointer(
                    ignoring: !showSidebarScrim,
                    child: AnimatedOpacity(
                      opacity: showSidebarScrim ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 150),
                      curve: Curves.easeOut,
                      child: ClipRect(
                        child: SizedBox(
                          width: sidebarScrimWidth,
                          child: Stack(
                            children: [
                              // Strong blur on left side
                              Positioned(
                                left: 0,
                                top: 0,
                                bottom: 0,
                                width: showSidebarScrim ? sidebarScrimWidth * 0.75 : 0,
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: showSidebarScrim ? 6.0 : 0.0,
                                    sigmaY: showSidebarScrim ? 6.0 : 0.0,
                                  ),
                                  child: Container(color: Colors.transparent),
                                ),
                              ),
                              // Medium blur in middle
                              Positioned(
                                left: showSidebarScrim ? sidebarScrimWidth * 0.45 : 0,
                                top: 0,
                                bottom: 0,
                                width: showSidebarScrim ? sidebarScrimWidth * 0.35 : 0,
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: showSidebarScrim ? 3.0 : 0.0,
                                    sigmaY: showSidebarScrim ? 3.0 : 0.0,
                                  ),
                                  child: Container(color: Colors.transparent),
                                ),
                              ),
                              // Gradient overlay
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.black.withValues(alpha: 0.75),
                                      Colors.black.withValues(alpha: 0.4),
                                      Colors.transparent,
                                    ],
                                    stops: const [0.0, 0.55, 0.90],
                                  ),
                                ),
                              ),
                            ],
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
                    onExpansionChanged: (isExpanded) {
                      if (_isSidebarExpanded == isExpanded) return;
                      // Defer to avoid setState during build.
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (!mounted) return;
                        if (_isSidebarExpanded != isExpanded) {
                          setState(() => _isSidebarExpanded = isExpanded);
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleBackNavigation() {
    final location = GoRouterState.of(context).uri.path;
    final lastLocation = _lastLocation;
    
    // Prevent rapid back button presses
    final now = DateTime.now();
    if (_lastBackPress != null && now.difference(_lastBackPress!).inMilliseconds < 500) {
      return;
    }
    _lastBackPress = now;
    
    if (location == '/settings' ||
        (lastLocation != null && lastLocation.startsWith('/settings'))) {
      context.go('/home');
      return;
    }
    if (location != '/home') {
      context.go('/home');
      return;
    }

    final channelProvider = context.read<ChannelProvider>();
    if (channelProvider.isLoading) {
      showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Playlist still saving'),
            content: const Text(
                'Saving is still in progress. Leaving now may interrupt it.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Stay'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Exit'),
              ),
            ],
          );
        },
      ).then((leave) {
        if (leave == true && mounted) {
          context.go('/exit');
        }
      });
      return;
    }
    
    // Go to exit screen
    context.go('/exit');
  }

  void _showSearchDialog() {
    context.go('/search');
  }

  void _handleRouteChange() {
    if (!mounted) return;
    final location = _routeInfoProvider?.value.uri.toString();
    if (location == null || location == _lastLocation) return;
    _lastLocation = location;
    _sidebarKey.currentState?.collapse();

    // Restore focus to content when route changes (e.g. returning from player)
    // Use post-frame callback to allow new route to build and register focus
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _requestContentFocus();
      }
    });

    if (location.startsWith('/settings') || location.startsWith('/player')) {
      PaintingBinding.instance.imageCache.clear();
      PaintingBinding.instance.imageCache.clearLiveImages();
    }
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
    _sidebarKey.currentState?.collapse();

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

    if (event.logicalKey == LogicalKeyboardKey.goBack ||
        event.logicalKey == LogicalKeyboardKey.escape) {
      _handleBackNavigation();
      return KeyEventResult.handled;
    }

    // Handle left arrow key - open sidebar if focused on content at left edge
    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
      // If we're focused on content (not sidebar), try to open sidebar
      if (currentFocus != null &&
          !_isFocusInSidebar(currentFocus) &&
          _isFocusInContent(currentFocus)) {
        final moved = currentFocus.focusInDirection(TraversalDirection.left);
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
    _sidebarKey.currentState?.expand();
    _requestNavFocus();
  }

  void _collapseSidebarToContent() {
    // Request focus back to content
    _requestContentFocus();
  }
}
