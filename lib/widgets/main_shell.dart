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
import 'package:iptv_player/utils/tv_focus_helper.dart';

part 'main_shell/main_shell_handlers.dart';

const bool kForceSearchPopup = bool.fromEnvironment(
  'FORCE_SEARCH_POPUP',
  defaultValue: false,
);

const Duration _sidebarOverlayDuration = Duration(milliseconds: 150);

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
  bool _pendingInitialHomeContentFocus = true;
  DateTime? _lastBackPress;
  DateTime?
      _lastNavTime; // Track navigation timing to prevent PopScope conflict

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
        _updateShellState(() => _updateTime());
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
    final sidebarScrimWidth = showSidebarScrim
        ? AppSpacing.sidebarWidth + 16
        : AppSpacing.sidebarCollapsedWidth;
    final useLightweightScrim = context.isTV;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          _handleBackNavigation();
        }
      },
      child: Focus(
        focusNode: _globalFocusNode,
        canRequestFocus: false,
        skipTraversal: true,
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
                          registerFocusCallback:
                              _registerContentFocusCallback,
                          unregisterFocusCallback:
                              _unregisterContentFocusCallback,
                          requestNavFocus: _requestNavFocus,
                          isNavExpanded: _isSidebarExpanded,
                          child: widget.child,
                        ),
                      ),
                    ),
                  ),
                ),
                if (useLightweightScrim)
                  Positioned.fill(
                    child: IgnorePointer(
                      ignoring: !showSidebarScrim,
                      child: AnimatedOpacity(
                        opacity: showSidebarScrim ? 1.0 : 0.0,
                        duration: _sidebarOverlayDuration,
                        curve: Curves.easeOut,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black.withValues(alpha: 0.90),
                                Colors.black.withValues(alpha: 0.74),
                                Colors.black.withValues(alpha: 0.50),
                              ],
                              stops: const [0.0, 0.30, 1.0],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (!useLightweightScrim)
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    child: IgnorePointer(
                      ignoring: !showSidebarScrim,
                      child: AnimatedOpacity(
                        opacity: showSidebarScrim ? 1.0 : 0.0,
                        duration: _sidebarOverlayDuration,
                        curve: Curves.easeOut,
                        child: ClipRect(
                          child: SizedBox(
                            width: sidebarScrimWidth,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  width: showSidebarScrim
                                      ? sidebarScrimWidth * 0.75
                                      : 0,
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: showSidebarScrim ? 6.0 : 0.0,
                                      sigmaY: showSidebarScrim ? 6.0 : 0.0,
                                    ),
                                    child:
                                        Container(color: Colors.transparent),
                                  ),
                                ),
                                Positioned(
                                  left: showSidebarScrim
                                      ? sidebarScrimWidth * 0.45
                                      : 0,
                                  top: 0,
                                  bottom: 0,
                                  width: showSidebarScrim
                                      ? sidebarScrimWidth * 0.35
                                      : 0,
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: showSidebarScrim ? 3.0 : 0.0,
                                      sigmaY: showSidebarScrim ? 3.0 : 0.0,
                                    ),
                                    child:
                                        Container(color: Colors.transparent),
                                  ),
                                ),
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
                      _isSidebarExpanded = isExpanded;
                      // Defer rebuild only; keep focus guard in sync immediately.
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (!mounted) return;
                        if (_isSidebarExpanded != isExpanded) {
                          _updateShellState(
                              () => _isSidebarExpanded = isExpanded);
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


  bool _isSidebarExpandedForFocus() {
    return _isSidebarExpanded ||
        (_sidebarKey.currentState?.isExpanded ?? false);
  }

  bool _shouldDeferShellContentFocus() {
    final primary = FocusManager.instance.primaryFocus;
    return _isSidebarExpandedForFocus() ||
        (primary != null && _isFocusInSidebar(primary));
  }

  void _updateShellState(VoidCallback fn) {
    if (!mounted) return;
    setState(fn);
  }
}
