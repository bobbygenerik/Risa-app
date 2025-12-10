import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedIndex = 0;
  final List<FocusNode> _menuFocusNodes = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 5; i++) {
      _menuFocusNodes.add(FocusNode(debugLabel: 'SettingsMenu$i'));
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _menuFocusNodes.isNotEmpty) {
        _menuFocusNodes[0].requestFocus();
      }
    });
  }

  @override
  void dispose() {
    for (var node in _menuFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void requestFirstSidebarFocus() {
    if (_menuFocusNodes.isNotEmpty) {
      final idx = _selectedIndex.clamp(0, _menuFocusNodes.length - 1);
      _menuFocusNodes[idx].requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        elevation: 0,
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) return;
          context.go('/home');
        },
        child: Container(
          decoration: const BoxDecoration(
            color: AppTheme.darkBackground,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: _buildLeftPane(),
              ),
              Flexible(
                flex: 3,
                child: _buildRightPane(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLeftPane() {
    final menuItems = [
      {'title': 'General', 'icon': Icons.settings_outlined},
      {'title': 'Account', 'icon': Icons.person_outline},
      {'title': 'Playback', 'icon': Icons.play_circle_outline},
      {'title': 'AI Features', 'icon': Icons.auto_awesome},
      {'title': 'Recordings', 'icon': Icons.fiber_manual_record},
    ];

    return Container(
      decoration: BoxDecoration(
        color: AppTheme.sidebarBackground,
        border: Border(
          right: BorderSide(
            color: AppTheme.divider,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 64,
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg),
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppTheme.primaryBlue, width: 2),
              ),
            ),
            child: Text(
              'Settings',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: AppTheme.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: AppSizes.md),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final item = menuItems[index];
                final bool isSelected = _selectedIndex == index;
                return Focus(
                  focusNode: _menuFocusNodes[index],
                  onKeyEvent: (node, event) {
                    if (event is! KeyDownEvent) return KeyEventResult.ignored;
                    final key = event.logicalKey;
                    if (key == LogicalKeyboardKey.arrowDown) {
                      final next = (index + 1) % menuItems.length;
                      _menuFocusNodes[next].requestFocus();
                      setState(() => _selectedIndex = next);
                      return KeyEventResult.handled;
                    } else if (key == LogicalKeyboardKey.arrowUp) {
                      if (index == 0) return KeyEventResult.ignored;
                      final prev = index - 1;
                      _menuFocusNodes[prev].requestFocus();
                      setState(() => _selectedIndex = prev);
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: Builder(
                    builder: (context) {
                      final isFocused = Focus.of(context).hasFocus;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.symmetric(
                              horizontal: AppSizes.sm, vertical: AppSizes.xs),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppTheme.primaryBlue.withValues(alpha: 0.2)
                                : (isFocused
                                    ? AppTheme.highlight
                                    : Colors.transparent),
                            border: Border.all(
                              color: isFocused
                                  ? AppTheme.primaryBlue
                                  : (isSelected
                                      ? AppTheme.primaryBlue.withValues(alpha: 0.5)
                                      : Colors.transparent),
                              width: isFocused ? 3.0 : (isSelected ? 2.0 : 0),
                            ),
                            borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(AppSizes.md),
                            child: Row(
                              children: [
                                Icon(
                                  item['icon'] as IconData,
                                  color: (isFocused || isSelected)
                                      ? AppTheme.primaryBlue
                                      : AppTheme.textSecondary,
                                  size: AppSizes.iconMd,
                                ),
                                const SizedBox(width: AppSizes.md),
                                Expanded(
                                  child: Text(
                                    item['title'] as String,
                                    style: TextStyle(
                                      color: (isFocused || isSelected)
                                          ? AppTheme.textPrimary
                                          : AppTheme.textSecondary,
                                      fontSize: 16,
                                      fontWeight: (isFocused || isSelected)
                                          ? FontWeight.w600
                                          : FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRightPane() {
    return Container(
      color: AppTheme.darkBackground,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.xxl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _getSelectedTitle(),
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textPrimary,
                  ),
            ),
            const SizedBox(height: AppSizes.xxl),
            _buildSelectedContent(),
          ],
        ),
      ),
    );
  }

  String _getSelectedTitle() {
    switch (_selectedIndex) {
      case 0:
        return 'General';
      case 1:
        return 'Account';
      case 2:
        return 'Playback';
      case 3:
        return 'AI Features';
      case 4:
        return 'Recordings';
      default:
        return 'General';
    }
  }

  Widget _buildSelectedContent() {
    return Card(
      color: AppTheme.cardBackground,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusLg),
        side: BorderSide(
          color: AppTheme.divider,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings for ${_getSelectedTitle()}',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textPrimary,
                  ),
            ),
            const SizedBox(height: AppSizes.lg),
            Text(
              'Settings content will be implemented here.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}