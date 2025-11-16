import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/widgets/top_navigation_bar.dart';

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

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timeTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() => _updateTime());
      }
    });
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF050710),
              const Color(0xFF0d1140),
            ],
          ),
        ),
        child: Column(
          children: [
            // Fixed navigation bar - never changes
            TopNavigationBar(
              activeTab: widget.activeTab ?? 'home',
              tabs: [
                NavTab(id: 'home', label: 'LIVE TV', icon: Icons.live_tv, route: '/home'),
                NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
                NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
              ],
              currentTime: _currentTime,
              showLogoAndTime: true,
              onSearch: () => context.go('/search'),
            ),
            // Content area - changes when navigating between tabs
            Expanded(
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }
}
