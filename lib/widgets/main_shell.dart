import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
        decoration: BoxDecoration(
          gradient: const LinearGradient(
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
            ),
            // Content area - changes when navigating between tabs
            Expanded(
              child: ContentFocusProvider(
                registerFocusCallback: _registerContentFocusCallback,
                unregisterFocusCallback: _unregisterContentFocusCallback,
                child: widget.child,
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
    if (callback == null) return false;
    final handled = callback();
    debugPrint('content_focus: Shell focus request ${handled ? 'succeeded' : 'failed'}');
    return handled;
  }

  void _scheduleContentFocusRequest() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      debugPrint('content_focus: Shell scheduling post-frame focus request');
      _contentFocusCallback?.call();
    });
  }
}
