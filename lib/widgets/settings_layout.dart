import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

/// A premium Split-Pane layout for TV Settings.
///
/// Left Pane: Navigation Menu (Categories)
/// Right Pane: Content Area (Settings for selected category)
///
/// Handles focus management between panes.
class SettingsLayout extends StatefulWidget {
  final List<SettingsCategory> categories;
  final int selectedIndex;
  final ValueChanged<int> onCategorySelected;
  final Widget content;
  final VoidCallback? onBackToHome;
  final VoidCallback? onRequestContentFocus;
  final SettingsLayoutController? controller;
  final bool autoFocusOnShow;
  final String headerTitle;
  final bool showHeader;

  const SettingsLayout({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
    required this.content,
    this.onBackToHome,
    this.onRequestContentFocus,
    this.controller,
    this.autoFocusOnShow = false,
    this.headerTitle = 'Settings',
    this.showHeader = true,
  });

  @override
  State<SettingsLayout> createState() => _SettingsLayoutState();
}

class _SettingsLayoutState extends State<SettingsLayout> {
  final List<FocusNode> _menuFocusNodes = [];

  @override
  void initState() {
    super.initState();
    // Create focus nodes for menu items
    for (int i = 0; i < widget.categories.length; i++) {
      _menuFocusNodes.add(FocusNode(debugLabel: 'SettingsMenu_$i'));
    }
    // Optionally autofocus the selected menu item when the layout is shown
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && widget.autoFocusOnShow) {
        requestMenuFocus();
      }
    });
    widget.controller?._bind(requestMenuFocus);
  }

  @override
  void didUpdateWidget(SettingsLayout oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Adjust focus nodes if category count changes
    if (widget.categories.length != oldWidget.categories.length) {
      for (var node in _menuFocusNodes) {
        node.dispose();
      }
      _menuFocusNodes.clear();
      for (int i = 0; i < widget.categories.length; i++) {
        _menuFocusNodes.add(FocusNode(debugLabel: 'SettingsMenu_$i'));
      }
    }
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller?._unbind(requestMenuFocus);
      widget.controller?._bind(requestMenuFocus);
    }
  }

  @override
  void dispose() {
    widget.controller?._unbind(requestMenuFocus);
    for (var node in _menuFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  /// Request focus for the currently selected menu item
  void requestMenuFocus() {
    if (widget.selectedIndex < _menuFocusNodes.length) {
      _menuFocusNodes[widget.selectedIndex].requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    // Ensure the sidebar grabs focus when this screen is shown or when focus is lost
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final primaryFocus = FocusManager.instance.primaryFocus;
      if (primaryFocus != null) {
        final focusContext = primaryFocus.context;
        if (focusContext != null &&
            focusContext.findAncestorWidgetOfExactType<SettingsLayout>() ==
                null) {
          return;
        }
      }
      final node = widget.selectedIndex < _menuFocusNodes.length
          ? _menuFocusNodes[widget.selectedIndex]
          : null;
      if (node != null && !node.hasPrimaryFocus) {
        node.requestFocus();
      }
    });

    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      resizeToAvoidBottomInset: true,
      body: Container(
        color: AppTheme.darkBackground,
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).padding.left +
                AppSpacing.sidebarCollapsedWidth,
            bottom: bottomInset,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Left Pane: Sidebar
              SizedBox(
                width: 320, // Extended width for premium feel
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.showHeader && widget.headerTitle.isNotEmpty) ...[
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            24,
                            context.spacingLg(),
                            16,
                            0,
                          ),
                          child: Text(
                            widget.headerTitle,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  color: AppTheme.textPrimary,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.5,
                                ),
                          ),
                        ),
                      ],

                      // Allow menu to scroll when the keyboard is visible
                      Expanded(
                        child: ListView.builder(
                          itemCount: widget.categories.length,
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: context.spacingSm(),
                          ),
                          itemBuilder: (context, index) {
                            return _buildMenuItem(index);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Right Pane: Content
              Expanded(
                child: FocusScope(
                  autofocus: false,
                  child: Focus(
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;

                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        // Return focus to sidebar - go back to currently selected menu item
                        _menuFocusNodes[widget.selectedIndex].requestFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: widget.content,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(int index) {
    final category = widget.categories[index];
    final isSelected = widget.selectedIndex == index;

    return Focus(
      focusNode: _menuFocusNodes[index],
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;

        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          if (index < widget.categories.length - 1) {
            widget.onCategorySelected(index + 1);
            _menuFocusNodes[index + 1].requestFocus();
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          if (index > 0) {
            widget.onCategorySelected(index - 1);
            _menuFocusNodes[index - 1].requestFocus();
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          // Pass focus to content area - use explicit target when available
          if (widget.onRequestContentFocus != null) {
            widget.onRequestContentFocus!();
          } else {
            FocusScope.of(context).nextFocus();
          }
          return KeyEventResult.handled;
        } else if (event.logicalKey == LogicalKeyboardKey.goBack) {
          if (widget.onBackToHome != null) {
            widget.onBackToHome!();
            return KeyEventResult.handled;
          }
        }

        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
           final isHighlighted = isFocused || isSelected;
           final iconColor = isSelected
               ? AppTheme.primaryBlue
               : (isFocused ? Colors.white : Colors.white70);
           final labelColor = isSelected
               ? AppTheme.primaryBlue
               : (isFocused ? Colors.white : Colors.white70);

           return GestureDetector(
             onTap: () {
               widget.onCategorySelected(index);
               _menuFocusNodes[index].requestFocus();
             },
             child: AnimatedScale(
               duration: TVFocusStyle.animationDuration,
               curve: TVFocusStyle.animationCurve,
               scale: isFocused ? TVFocusStyle.focusScale : 1.0,
               child: AnimatedContainer(
                 duration: TVFocusStyle.animationDuration,
                 curve: TVFocusStyle.animationCurve,
                 margin: const EdgeInsets.symmetric(vertical: 4),
                 padding: const EdgeInsets.symmetric(
                   horizontal: 20,
                   vertical: 14,
                 ),
                 decoration: BoxDecoration(
                   color: Colors.transparent,
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Row(
                   children: [
                     AnimatedContainer(
                       duration: TVFocusStyle.animationDuration,
                       curve: TVFocusStyle.animationCurve,
                       width: 4,
                       height: 42,
                       decoration: BoxDecoration(
                         color: isHighlighted
                             ? AppTheme.primaryBlue
                             : Colors.transparent,
                         borderRadius: const BorderRadius.only(
                           topRight: Radius.circular(4),
                           bottomRight: Radius.circular(4),
                         ),
                       ),
                     ),
                     const SizedBox(width: 12),
                     Icon(
                       category.icon,
                       color: iconColor,
                       size: 24,
                     ),
                     const SizedBox(width: 14),
                     Expanded(
                       child: Text(
                         category.title,
                         style: TextStyle(
                           color: labelColor,
                           fontSize: 16,
                           fontWeight: isHighlighted
                               ? FontWeight.w600
                               : FontWeight.w500,
                         ),
                         maxLines: 1,
                         overflow: TextOverflow.ellipsis,
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
  }
}

class SettingsCategory {
  final String title;
  final IconData icon;

  const SettingsCategory({
    required this.title,
    required this.icon,
  });
}

class SettingsLayoutController {
  VoidCallback? _requestMenuFocus;

  void _bind(VoidCallback requestMenuFocus) {
    _requestMenuFocus = requestMenuFocus;
  }

  void _unbind(VoidCallback requestMenuFocus) {
    if (_requestMenuFocus == requestMenuFocus) {
      _requestMenuFocus = null;
    }
  }

  void requestMenuFocus() {
    _requestMenuFocus?.call();
  }
}
