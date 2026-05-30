part of '../sidebar_navigation.dart';

extension SidebarNavigationWidgets on SidebarNavigationState {
Widget _buildSearchButton(int index) {
  final tab = _tabs[index];
  final isActive = widget.activeTab == tab.id;

  return Focus(
    focusNode: _tabFocusNodes[index],
    onKeyEvent: (node, event) {
      if (event is! KeyDownEvent) return KeyEventResult.ignored;
      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
        if (index > 0) {
          _navigateToTab(index - 1);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      }
      if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
        if (index < _tabs.length - 1) {
          _navigateToTab(index + 1);
          return KeyEventResult.handled;
        }
        _settingsFocusNode.requestFocus();
        return KeyEventResult.handled;
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
        widget.onSearch?.call();
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
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if (!_isExpanded) {
              _setExpanded(true);
            } else {
              widget.onSearch?.call();
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
                isFocused: isFocused,
                icon: Icon(
                  tab.icon,
                  color: (isActive || isFocused) ? Colors.white : Colors.white70,
                  size: 16,
                ),
                label: _isExpanded
                    ? Text(
                        tab.label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: (isActive || isFocused) ? Colors.white : Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
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

Widget _buildTabButton(int index) {
  final tab = _tabs[index];
  final isActive = widget.activeTab == tab.id;

  return Focus(
    focusNode: _tabFocusNodes[index],
    onKeyEvent: (node, event) {
      if (event is! KeyDownEvent) return KeyEventResult.ignored;
      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
        if (index > 0) {
          _navigateToTab(index - 1);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      }
      if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
        if (index < _tabs.length - 1) {
          _navigateToTab(index + 1);
          return KeyEventResult.handled;
        }
        _settingsFocusNode.requestFocus();
        return KeyEventResult.handled;
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
        context.go(tab.route);
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
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if (!_isExpanded) {
              _setExpanded(true);
            } else {
              _setExpanded(false);
              context.go(tab.route);
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
                isFocused: isFocused,
                icon: Icon(
                  tab.icon,
                  color:
                      isActive ? AppTheme.primaryBlue : (isFocused ? Colors.white : Colors.white70),
                  size: 16,
                ),
                label: _isExpanded
                    ? Text(
                        tab.label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: isActive
                              ? AppTheme.primaryBlue
                              : (isFocused ? Colors.white : Colors.white70),
                          fontSize: 12,
                          fontWeight:
                              isActive || isFocused ? FontWeight.w700 : FontWeight.w500,
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

Widget _buildSidebarRow({
  required bool isFocused,
  required Widget icon,
  Widget? label,
}) {
  final row = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      AnimatedContainer(
        duration: SidebarNavigationState._focusDuration,
        curve: TVFocusStyle.animationCurve,
        width: 4,
        height: 32,
        decoration: BoxDecoration(
          color: isFocused ? AppTheme.primaryBlue : Colors.transparent,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
        ),
      ),
      const SizedBox(width: 8),
      icon,
      if (label != null) ...[
        const SizedBox(width: 8),
        Flexible(child: label),
      ],
    ],
  );
  
  // Center the row when collapsed for better visual alignment
  if (!_isExpanded) {
    return Center(child: row);
  }
  return row;
}

}
