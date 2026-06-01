part of '../sidebar_navigation.dart';

extension SidebarNavigationContent on SidebarNavigationState {
Widget _buildSidebarContent() {
  return LayoutBuilder(
    builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  child: Center(
                    child: Image(
                      image: AssetImage(_isExpanded
                          ? 'assets/images/logo.png'
                          : 'assets/images/logo_icon.png'),
                      height: _isExpanded ? 28 : 20,
                      filterQuality: FilterQuality.medium,
                      gaplessPlayback: true,
                    ),
                  ),
                ),
                Expanded(
                  child: FocusTraversalGroup(
                    policy: WidgetOrderTraversalPolicy(),
                    child: Column(
                      children: [
                        const Spacer(),
                        ..._tabs.map((tab) {
                          final index = _tabs.indexOf(tab);
                          return Container(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: tab.id == 'search'
                                ? _buildSearchButton(index)
                                : _buildTabButton(index),
                          );
                        }),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: _buildBottomButton(
                              Icons.settings, 'Settings', '/settings'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget _buildBottomButton(IconData icon, String label, String route) {
  final isActive = GoRouterState.of(context).uri.path == route;
  return Focus(
    focusNode: _settingsFocusNode,
    onKeyEvent: (node, event) {
      if (event is! KeyDownEvent) return KeyEventResult.ignored;
      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
        if (_tabs.isNotEmpty) {
          _navigateToTab(_tabs.length - 1);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      }
      if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
        // Always move focus to content when pressing right (expanded or collapsed)
        widget.onFocusContent?.call();
        if (_isExpanded) {
          _setExpanded(false);
        }
        return KeyEventResult.handled;
      }
      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
        if (!_isExpanded) {
          _setExpanded(true);
          return KeyEventResult.handled;
        }
        _setExpanded(false);
        return KeyEventResult.handled;
      }
      if (event.logicalKey == LogicalKeyboardKey.enter ||
          event.logicalKey == LogicalKeyboardKey.select ||
          event.logicalKey == LogicalKeyboardKey.space) {
        if (!_isExpanded) {
          _setExpanded(true);
          return KeyEventResult.handled;
        }
        _setExpanded(false);
        context.go(route);
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    },
    onFocusChange: (hasFocus) {
      if (hasFocus && !_isExpanded && !_suppressAutoExpandOnInitialFocus) {
        _setExpanded(true);
      }
    },
    child: Builder(
      builder: (context) {
        final isFocused = Focus.of(context).hasFocus;

        return GestureDetector(
          onTap: () {
            if (!_isExpanded) {
              _setExpanded(true);
            } else {
              _setExpanded(false);
              context.go(route);
            }
          },
          child: AnimatedScale(
            duration: SidebarNavigationState._focusDuration,
            curve: TVFocusStyle.animationCurve,
            scale: isFocused && _isExpanded ? 1.1 : 1.0,
            child: AnimatedContainer(
              duration: SidebarNavigationState._focusDuration,
              curve: TVFocusStyle.animationCurve,
              height: 32,
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.transparent,
              ),
              child: _buildSidebarRow(
                context: context,
                isFocused: isFocused,
                icon: Icon(
                  icon,
                  color: isActive
                      ? AppTheme.primaryBlue
                      : (isFocused ? Colors.white : Colors.white70),
                  size: 16,
                ),
                label: _isExpanded
                    ? Text(
                        label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: _sidebarLabelStyle(
                          context,
                          color: isActive
                              ? AppTheme.primaryBlue
                              : (isFocused ? Colors.white : Colors.white70),
                          fontWeight: isActive || isFocused
                              ? FontWeight.w700
                              : FontWeight.w500,
                        ),
                      )
                    : null,
              ),
            ),
          ),
        );
      },
    ),
  );
}
}
