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
  bool _menuFocusRecoveryScheduled = false;

  @override
  void initState() {
    super.initState();
    // Create focus nodes for menu items
    for (int i = 0; i < widget.categories.length; i++) {
      _menuFocusNodes.add(FocusNode(debugLabel: 'SettingsMenu_$i'));
    }
    _scheduleMenuFocusRecovery(force: widget.autoFocusOnShow);
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
      _scheduleMenuFocusRecovery();
    }
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller?._unbind(requestMenuFocus);
      widget.controller?._bind(requestMenuFocus);
    }
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _scheduleMenuFocusRecovery();
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

  void _scheduleMenuFocusRecovery({bool force = false, int attempt = 0}) {
    if (attempt == 0) {
      if (_menuFocusRecoveryScheduled) return;
      _menuFocusRecoveryScheduled = true;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) {
        _menuFocusRecoveryScheduled = false;
        return;
      }
      final selected = widget.selectedIndex < _menuFocusNodes.length
          ? _menuFocusNodes[widget.selectedIndex]
          : null;
      // Success: the intended menu item holds focus, so we have a dpad anchor.
      if (selected != null && selected.hasFocus) {
        _menuFocusRecoveryScheduled = false;
        return;
      }
      final primaryFocus = FocusManager.instance.primaryFocus;
      final hasFocusedContext = primaryFocus?.context != null;
      // When not forcing, don't yank focus away from content the user moved to.
      if (!force && hasFocusedContext) {
        _menuFocusRecoveryScheduled = false;
        return;
      }
      requestMenuFocus();
      // The initial request can drop while the route transition is still
      // animating (primaryFocus stays null and the dpad has nothing to move
      // from). Retry over a few frames until focus actually lands.
      if (attempt < 8) {
        _scheduleMenuFocusRecovery(force: force, attempt: attempt + 1);
      } else {
        _menuFocusRecoveryScheduled = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Shortcuts(
      shortcuts: widget.onBackToHome == null
          ? const {}
          : {
              SingleActivator(LogicalKeyboardKey.escape): const ActivateIntent(),
            },
      child: Actions(
        actions: widget.onBackToHome == null
            ? const {}
            : {
                ActivateIntent: CallbackAction<ActivateIntent>(
                  onInvoke: (_) {
                    widget.onBackToHome!();
                    return null;
                  },
                ),
              },
        child: Scaffold(
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

              // Right Pane: Content
              Expanded(
                child: FocusScope(
                  autofocus: false,
                  child: Focus(
                    canRequestFocus: false,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (widget.onBackToHome != null) _buildBackButton(),
                          if (widget.showHeader &&
                              widget.headerTitle.isNotEmpty) ...[
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                24,
                                widget.onBackToHome != null ? 8 : context.spacingLg(),
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
                  Expanded(
                    child: FocusScope(
                      autofocus: false,
                      child: Focus(
                        onKeyEvent: (node, event) {
                          if (event is! KeyDownEvent) {
                            return KeyEventResult.ignored;
                          }

                          if (event.logicalKey ==
                              LogicalKeyboardKey.arrowLeft) {
                            _menuFocusNodes[widget.selectedIndex]
                                .requestFocus();
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
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton.icon(
          onPressed: widget.onBackToHome,
          icon: const Icon(Icons.arrow_back, color: AppTheme.textPrimary),
          label: const Text(
            'Back',
            style: TextStyle(color: AppTheme.textPrimary),
          ),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
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
      autofocus: widget.autoFocusOnShow && index == widget.selectedIndex,
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
