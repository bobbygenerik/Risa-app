import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';

class AppShell extends StatefulWidget {
  final Widget child;
  
  const AppShell({super.key, required this.child});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  bool _isSidebarCollapsed = false;

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
    final currentRoute = GoRouterState.of(context).uri.path;
    
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          _buildSidebar(currentRoute),
          
          // Main content
          Expanded(
            child: Column(
              children: [
                _buildAppBar(context),
                Expanded(child: widget.child),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar(String currentRoute) {
    final width = _isSidebarCollapsed 
        ? AppSizes.sidebarCollapsedWidth 
        : AppSizes.sidebarWidth;

    return AnimatedContainer(
      duration: AppDurations.normal,
      width: width,
      color: AppTheme.sidebarBackground,
      child: Column(
        children: [
          // RISA Logo
          Container(
            height: AppSizes.appBarHeight,
            padding: EdgeInsets.all(AppSizes.md),
            child: _isSidebarCollapsed
                ? Center(
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF2E3192), Color(0xFF00BCD4)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.play_arrow, color: Colors.white, size: 24),
                    ),
                  )
                : Image.asset(
                    'assets/images/logo.png',
                    height: 45,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      // Fallback to text if logo not found
                      return Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF2E3192), Color(0xFF00BCD4)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Icons.play_arrow, color: Colors.white, size: 24),
                          ),
                          SizedBox(width: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'RISA',
                                style: TextStyle(
                                  color: AppTheme.textPrimary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              Text(
                                'IPTV Player',
                                style: TextStyle(
                                  color: AppTheme.textSecondary,
                                  fontSize: 11,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
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
                final isSelected = currentRoute == item.route;
                
                return _buildNavigationItem(
                  item: item,
                  isSelected: isSelected,
                  onTap: () {
                    context.go(item.route);
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
              // Show logout confirmation
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: AppTheme.cardBackground,
                  title: Text('Logout'),
                  content: Text('Are you sure you want to logout?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        // Handle logout
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.accentRed,
                      ),
                      child: Text('Logout'),
                    ),
                  ],
                ),
              );
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

  Widget _buildAppBar(BuildContext context) {
    final now = DateTime.now();
    final time = '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    final days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
    final months = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'];
    final date = '${days[now.weekday - 1]}, ${months[now.month - 1]} ${now.day}';
    
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
          // RISA Logo
          Image.asset(
            'assets/images/logo.png',
            height: 40,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              // Fallback to text if logo not found
              return Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF2E3192), Color(0xFF00BCD4)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white, size: 24),
                  ),
                  SizedBox(width: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'RISA',
                        style: TextStyle(
                          color: AppTheme.textPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text(
                        'IPTV Player',
                        style: TextStyle(
                          color: AppTheme.textSecondary,
                          fontSize: 11,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          
          Expanded(child: Container()), // Spacer
          
          // Search button
          IconButton(
            icon: Icon(Icons.search, color: AppTheme.textPrimary),
            onPressed: () {
              context.go('/search');
            },
          ),
          
          SizedBox(width: AppSizes.sm),
          
          // Settings button
          IconButton(
            icon: Icon(Icons.settings, color: AppTheme.textPrimary),
            onPressed: () {
              context.go('/settings');
            },
          ),
          
          SizedBox(width: AppSizes.sm),
          
          // Time and date
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                date,
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
