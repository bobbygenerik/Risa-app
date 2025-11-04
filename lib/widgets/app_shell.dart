import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';

class AppShell extends StatefulWidget {
  final Widget child;
  
  const AppShell({super.key, required this.child});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  bool _isSidebarCollapsed = false;
  int _selectedIndex = 0;

  final List<NavigationItem> _navigationItems = [
    NavigationItem(
      icon: Icons.search,
      label: 'Search',
      route: '/search',
    ),
    NavigationItem(
      icon: Icons.live_tv,
      label: 'LIVE TV',
      route: '/',
    ),
    NavigationItem(
      icon: Icons.movie,
      label: 'Movies',
      route: '/movies',
    ),
    NavigationItem(
      icon: Icons.tv,
      label: 'Series',
      route: '/series',
    ),
    NavigationItem(
      icon: Icons.restore,
      label: 'Catch-up TV',
      route: '/catchup',
    ),
    NavigationItem(
      icon: Icons.favorite,
      label: 'Favorites',
      route: '/favorites',
    ),
    NavigationItem(
      icon: Icons.grid_view,
      label: 'EPG',
      route: '/epg',
    ),
    NavigationItem(
      icon: Icons.record_voice_over,
      label: 'Recordings',
      route: '/recordings',
    ),
    NavigationItem(
      icon: Icons.settings,
      label: 'Settings',
      route: '/settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          _buildSidebar(),
          
          // Main content
          Expanded(
            child: Column(
              children: [
                _buildAppBar(),
                Expanded(child: widget.child),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    final width = _isSidebarCollapsed 
        ? AppSizes.sidebarCollapsedWidth 
        : AppSizes.sidebarWidth;

    return AnimatedContainer(
      duration: AppDurations.normal,
      width: width,
      color: AppTheme.sidebarBackground,
      child: Column(
        children: [
          // Logo
          Container(
            height: AppSizes.appBarHeight,
            padding: EdgeInsets.all(AppSizes.md),
            child: Row(
              children: [
                Icon(
                  Icons.play_circle_filled,
                  color: AppTheme.primaryBlue,
                  size: _isSidebarCollapsed ? 32 : 36,
                ),
                if (!_isSidebarCollapsed) ...[
                  SizedBox(width: AppSizes.sm),
                  Text(
                    'STREAM HUB',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ],
            ),
          ),
          
          Divider(color: AppTheme.divider, height: 1),
          
          // Navigation Items
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
              itemCount: _navigationItems.length,
              itemBuilder: (context, index) {
                final item = _navigationItems[index];
                final isSelected = index == _selectedIndex;
                
                return _buildNavigationItem(
                  item: item,
                  isSelected: isSelected,
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                    // Navigate using go_router
                    // context.go(item.route);
                  },
                );
              },
            ),
          ),
          
          // Logout
          _buildNavigationItem(
            item: NavigationItem(
              icon: Icons.logout,
              label: 'Logout/Exit',
              route: '/logout',
            ),
            isSelected: false,
            onTap: () {
              // Handle logout
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationItem({
    required NavigationItem item,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSizes.sm,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.primaryBlue : Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.radiusMd),
      ),
      child: ListTile(
        dense: true,
        leading: Icon(
          item.icon,
          color: isSelected ? Colors.white : AppTheme.textSecondary,
          size: AppSizes.iconMd,
        ),
        title: _isSidebarCollapsed 
            ? null 
            : Text(
                item.label,
                style: TextStyle(
                  color: isSelected ? Colors.white : AppTheme.textSecondary,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  fontSize: 14,
                ),
              ),
        onTap: onTap,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSizes.md,
          vertical: 4,
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      height: AppSizes.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.lg),
      decoration: BoxDecoration(
        color: AppTheme.darkBackground,
        border: Border(
          bottom: BorderSide(color: AppTheme.divider),
        ),
      ),
      child: Row(
        children: [
          Expanded(child: Container()), // Spacer
          
          // Search button
          IconButton(
            icon: Icon(Icons.search, color: AppTheme.textPrimary),
            onPressed: () {},
          ),
          
          SizedBox(width: AppSizes.sm),
          
          // Settings button
          IconButton(
            icon: Icon(Icons.settings, color: AppTheme.textPrimary),
            onPressed: () {},
          ),
          
          SizedBox(width: AppSizes.sm),
          
          // Time and date
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '10:09 AM',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'WED, NOV 29',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          
          SizedBox(width: AppSizes.md),
          
          // User avatar
          CircleAvatar(
            radius: 20,
            backgroundColor: AppTheme.cardBackground,
            child: Icon(
              Icons.person,
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
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
