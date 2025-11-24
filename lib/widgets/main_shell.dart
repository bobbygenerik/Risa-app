import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/widgets/top_navigation_bar.dart';
import 'package:iptv_player/widgets/search_popup.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';

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
  late Timer _timeTimer;
  ContentFocusCallback? _contentFocusCallback;
  int _nextFocusToken = 0;
  int? _activeFocusToken;
  bool _autoSearchTriggered = false;
  bool Function()? _navFocusRequester;
  final FocusScopeNode _contentFocusScope =
      FocusScopeNode(debugLabel: 'ContentScope');

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timeTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() => _updateTime());
      }
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
    _timeTimer.cancel();
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
  Widget build(BuildContext context) {
    return Scaffold(
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
              )
        ),
        child: Column(
          children: [
            // Fixed navigation bar - never changes
            TopNavigationBar(
              activeTab: widget.activeTab ?? 'home',
              tabs: [
                NavTab(id: 'home', label: 'Live TV', icon: Icons.live_tv, route: '/home'),
                NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
                NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
              ],
              currentTime: _currentTime,
              showLogoAndTime: true,
              onSearch: _showSearchDialog,
              onFocusContent: _requestContentFocus,
              onNavFocusRegistration: _setNavFocusRequester,
            ),
            // Content area - changes when navigating between tabs
            Expanded(
              child: Focus(
                canRequestFocus: false,
                skipTraversal: true,
                onKeyEvent: _handleContentKeyEvent,
                child: FocusScope(
                  node: _contentFocusScope,
                  child: ContentFocusProvider(
                    registerFocusCallback: _registerContentFocusCallback,
                    unregisterFocusCallback: _unregisterContentFocusCallback,
                    requestNavFocus: _requestNavFocus,
                    child: widget.child,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSearchDialog() {
    showDialog(
      context: context,
      builder: (context) => const SearchPopup(),
    );
  }

  void _setNavFocusRequester(bool Function()? requester) {
    _navFocusRequester = requester;
  }

  int _registerContentFocusCallback(ContentFocusCallback callback) {
    final token = ++_nextFocusToken;
    _contentFocusCallback = callback;
    _activeFocusToken = token;
    debugPrint('content_focus: Shell registered focus callback token=$token');
    _scheduleContentFocusRequest();
    return token;
  }

  void _unregisterContentFocusCallback(int token) {
    if (_activeFocusToken == token) {
      _activeFocusToken = null;
      _contentFocusCallback = null;
      debugPrint('content_focus: Shell unregistered focus callback token=$token');
    }
  }

  bool _requestContentFocus() {
    final callback = _contentFocusCallback;
    if (callback != null) {
      final handled = callback();
      debugPrint(
        'content_focus: Shell focus request ${handled ? 'succeeded' : 'failed'}',
      );
      if (handled) return true;
    }
    final fallbackHandled = _focusFirstContentChild();
    if (!fallbackHandled) {
      debugPrint('content_focus: No focusable child found for fallback');
    }
    return fallbackHandled;
  }

  void _scheduleContentFocusRequest() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      debugPrint('content_focus: Shell scheduling post-frame focus request');
      _contentFocusCallback?.call();
    });
  }

  KeyEventResult _handleContentKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      final handled = _requestNavFocus();
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
    debugPrint('content_focus: Nav focus request ${handled ? 'succeeded' : 'failed'}');
    return handled;
  }
}
