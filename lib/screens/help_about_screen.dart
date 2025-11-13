import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';

class HelpAboutScreen extends StatefulWidget {
  const HelpAboutScreen({super.key});

  @override
  State<HelpAboutScreen> createState() => _HelpAboutScreenState();
}

class _HelpAboutScreenState extends State<HelpAboutScreen> {
  int _selectedTab = 0;
  late DateTime _currentTime;
  final List<FocusNode> _tabFocusNodes = [
    FocusNode(debugLabel: 'HelpTab'),
    FocusNode(debugLabel: 'AboutTab'),
    FocusNode(debugLabel: 'ShortcutsTab'),
  ];

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    Future.delayed(Duration(seconds: 1), _updateTime);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _tabFocusNodes[0].requestFocus();
      }
    });
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {
      _currentTime = DateTime.now();
    });
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    for (var node in _tabFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  // Called by AppShell when navigating RIGHT from sidebar on this screen
  void requestFirstSecondaryFocus() {
    if (_tabFocusNodes.isNotEmpty) {
      _tabFocusNodes[_selectedTab.clamp(0, _tabFocusNodes.length - 1)].requestFocus();
    }
  }

  // Fallback for AppShell to move into content if needed (scrollable body has no focusables by default)
  void requestFirstContentFocus() {
    // Keep focus on the active tab as primary interaction surface on this screen
    requestFirstSecondaryFocus();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.go('/home');
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF050710), Color(0xFF0d1140)],
            ),
          ),
          child: Column(
          children: [
            _buildGlassAppBar(),
            Divider(height: 1, color: AppTheme.accentPink, thickness: 2),
            Expanded(
              child: Column(
                children: [
                  // Tabs
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.lg, vertical: AppSizes.md),
                    child: Row(
                      children: [
                        _buildTab('Help', 0),
                        SizedBox(width: AppSizes.md),
                        _buildTab('About', 1),
                        SizedBox(width: AppSizes.md),
                        _buildTab('Shortcuts', 2),
                      ],
                    ),
                  ),
                  Divider(height: 1, color: AppTheme.divider),
                  
                  // Content
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(AppSizes.xl),
                      child: _buildTabContent(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }

  Widget _buildGlassAppBar() {
    return Container(
      height: AppSizes.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.lg, vertical: AppSizes.md),
      decoration: BoxDecoration(
        color: AppTheme.darkBackground.withAlpha((0.8 * 255).round()),
        border: Border(
          bottom: BorderSide(color: AppTheme.accentPink, width: 2),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.help_outline, color: AppTheme.primaryBlue, size: 24),
          SizedBox(width: AppSizes.md),
          Text(
            'Help & About',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            _formatTime(_currentTime),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String label, int index) {
    final isSelected = _selectedTab == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTab = index;
        });
        _tabFocusNodes[index].requestFocus();
      },
      child: Focus(
        focusNode: _tabFocusNodes[index],
        onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        final key = event.logicalKey;
        if (key == LogicalKeyboardKey.arrowUp) {
          // Pressing UP from any tab should go to top bar
          FocusScope.of(context).previousFocus();
          return KeyEventResult.handled;
        } else if (key == LogicalKeyboardKey.arrowRight && index < 2) {
          setState(() {
            _selectedTab = index + 1;
            _tabFocusNodes[index + 1].requestFocus();
          });
          return KeyEventResult.handled;
        } else if (key == LogicalKeyboardKey.arrowLeft && index > 0) {
          setState(() {
            _selectedTab = index - 1;
            _tabFocusNodes[index - 1].requestFocus();
          });
          return KeyEventResult.handled;
        } else if (key == LogicalKeyboardKey.select || key == LogicalKeyboardKey.enter) {
          setState(() {
            _selectedTab = index;
          });
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return AnimatedContainer(
            duration: AppDurations.fast,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              gradient: isSelected ? AppTheme.brandGradient : null,
              color: isSelected ? null : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isFocused ? Border.all(color: AppTheme.primaryBlue, width: 2) : null,
            ),
            child: Text(
              label,
              style: TextStyle(
                color: AppTheme.textPrimary,
                fontWeight: (isSelected || isFocused) ? FontWeight.bold : FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ); // AnimatedContainer closes
        }, // builder function closes
      ), // Builder widget closes
    ), // Focus widget closes
  ); // GestureDetector closes and return statement ends
  }

  Widget _buildTabContent() {
    switch (_selectedTab) {
      case 0:
        return _buildHelpContent();
      case 1:
        return _buildAboutContent();
      case 2:
        return _buildShortcutsContent();
      default:
        return Container();
    }
  }

  Widget _buildHelpContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Getting Started',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppSizes.lg),
        _buildHelpSection(
          'Loading Playlists',
          'To get started, you need to load an M3U playlist:\n\n'
          '1. Navigate to Settings from the sidebar\n'
          '2. Select "Playlist Manager"\n'
          '3. Enter your playlist URL or upload a file\n'
          '4. Press "Load Playlist" to start watching',
        ),
        SizedBox(height: AppSizes.xl),
        _buildHelpSection(
          'Navigation',
          'Use your remote control or keyboard to navigate:\n\n'
          '• Arrow keys to move between items\n'
          '• Select/Enter to choose items\n'
          '• Back button to return to previous screen\n'
          '• Press Right from sidebar to access content',
        ),
        SizedBox(height: AppSizes.xl),
        _buildHelpSection(
          'Features',
          '• Live TV: Watch live channels\n'
          '• Movies & Series: Browse VOD content\n'
          '• EPG: View TV guide with program info\n'
          '• Favorites: Mark channels as favorites\n'
          '• Search: Find content quickly',
        ),
        SizedBox(height: AppSizes.xl),
        _buildHelpSection(
          'Need More Help?',
          'If you encounter issues or have questions:\n\n'
          '• Check your internet connection\n'
          '• Verify your playlist URL is correct\n'
          '• Restart the app if needed\n'
          '• Contact support for assistance',
        ),
      ],
    );
  }

  Widget _buildAboutContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Column(
            children: [
              Container(
                width: 120,
                height: 120,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppTheme.textPrimary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  'assets/images/croppedlogo2.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: AppSizes.lg),
              Text(
                'IPTV Player',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: AppSizes.sm),
              Text(
                'Version 1.0.0',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppTheme.textSecondary,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: AppSizes.lg),
        Text(
          'About',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppSizes.md),
        Text(
          'A modern, feature-rich IPTV player built for Android TV. '
              'Stream live TV, movies, and series with an intuitive interface '
              'designed for remote control navigation.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: AppSizes.xl),
        Text(
          'Features',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppSizes.md),
        _buildFeatureItem(Icons.live_tv, 'Live TV streaming'),
        _buildFeatureItem(Icons.movie, 'Movies & Series on demand'),
        _buildFeatureItem(Icons.calendar_today, 'Electronic Program Guide (EPG)'),
        _buildFeatureItem(Icons.favorite, 'Favorites management'),
        _buildFeatureItem(Icons.search, 'Quick search'),
        _buildFeatureItem(Icons.video_library, 'Recording support'),
        SizedBox(height: AppSizes.xl),
        Center(
          child: Text(
            '© 2025 IPTV Player. All rights reserved.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppTheme.textSecondary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildShortcutsContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Keyboard & Remote Shortcuts',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppSizes.lg),
        Text(
          'Navigation',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryBlue,
          ),
        ),
        SizedBox(height: AppSizes.md),
        _buildShortcut('Arrow Keys / D-pad', 'Navigate between items'),
        _buildShortcut('Select / Enter', 'Confirm selection'),
        _buildShortcut('Back', 'Return to previous screen'),
        _buildShortcut('Right (from sidebar)', 'Move to main content'),
        _buildShortcut('Left (from content)', 'Return to sidebar'),
        _buildShortcut('Up (from content)', 'Move to top bar'),
        SizedBox(height: AppSizes.xl),
        Text(
          'Playback',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryBlue,
          ),
        ),
        SizedBox(height: AppSizes.md),
        _buildShortcut('Play/Pause', 'Toggle playback'),
        _buildShortcut('Fast Forward', 'Skip forward'),
        _buildShortcut('Rewind', 'Skip backward'),
        _buildShortcut('Volume Up/Down', 'Adjust volume'),
        _buildShortcut('Menu', 'Show player controls'),
        SizedBox(height: AppSizes.xl),
        Text(
          'Quick Actions',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryBlue,
          ),
        ),
        SizedBox(height: AppSizes.md),
        _buildShortcut('Long Press Select', 'Show context menu'),
        _buildShortcut('Number Keys', 'Jump to channel (if available)'),
        _buildShortcut('Info', 'Show program information'),
        SizedBox(height: AppSizes.xl),
          Container(
          padding: EdgeInsets.all(AppSizes.lg),
          decoration: BoxDecoration(
            color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round())),
          ),
          child: Row(
            children: [
              Icon(Icons.info_outline, color: AppTheme.primaryBlue),
              SizedBox(width: AppSizes.md),
              Expanded(
                child: Text(
                  'Tip: All navigation can be done with D-pad only. '
                  'No touch input required for TV use.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHelpSection(String title, String content) {
    return Container(
      padding: EdgeInsets.all(AppSizes.lg),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryBlue,
            ),
          ),
          SizedBox(height: AppSizes.md),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
      child: Row(
        children: [
          Icon(icon, color: AppTheme.primaryBlue, size: 24),
          SizedBox(width: AppSizes.md),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildShortcut(String key, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
      child: Row(
        children: [
          Container(
            width: 180,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: AppTheme.cardBackground,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: AppTheme.primaryBlue),
            ),
            child: Text(
              key,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
            ),
          ),
          SizedBox(width: AppSizes.lg),
          Expanded(
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
