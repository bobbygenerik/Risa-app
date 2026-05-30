part of '../settings_tile_widgets.dart';

class SettingsActionTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData? icon;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Color? iconColor;
  final Color? titleColor;
  final FocusNode? focusNode;
  final VoidCallback? onArrowDown;
  final VoidCallback? onArrowRight;

  const SettingsActionTile({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    this.trailing,
    this.onTap,
    this.iconColor,
    this.titleColor,
    this.focusNode,
    this.onArrowDown,
    this.onArrowRight,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Focus(
          focusNode: focusNode,
          onFocusChange: (focused) {
            if (focused) {
              Scrollable.ensureVisible(
                context,
                alignment: 0.2,
                duration: const Duration(milliseconds: 150),
              );
            }
          },
          onKeyEvent: (node, event) {
            if (event is! KeyDownEvent) return KeyEventResult.ignored;

            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.space) {
              onTap?.call();
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowDown &&
                onArrowDown != null) {
              onArrowDown!();
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowRight &&
                onArrowRight != null) {
              onArrowRight!();
              return KeyEventResult.handled;
            }
            // Allow default focus engine to handle other keys (arrows, etc.)
            return KeyEventResult.ignored;
          },
          child: Builder(
            builder: (context) {
              final isFocused = Focus.of(context).hasFocus;
              return AnimatedScale(
                scale: isFocused ? 1.05 : 1.0,
                duration: TVFocusStyle.animationDuration,
              child: AnimatedContainer(
                duration: TVFocusStyle.animationDuration,
                decoration: BoxDecoration(
                  color: isFocused
                      ? Colors.white.withValues(alpha: 0.1)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: isFocused
                      ? Border.all(color: AppTheme.focusBorder, width: 3)
                      : null,
                  boxShadow: isFocused ? TVFocusStyle.focusedShadow : null,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: InkWell(
                  onTap: onTap,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      child: Row(
                        children: [
                          if (icon != null) ...[
                            Icon(
                              icon,
                              size: 24,
                              color: iconColor ?? Colors.white70,
                            ),
                            const SizedBox(width: 16),
                          ],
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        color: titleColor ?? AppTheme.textPrimary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                if (subtitle != null) ...[
                                  const SizedBox(height: 4),
                                  Text(
                                    subtitle!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: AppTheme.textSecondary,
                                        ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                          if (trailing != null)
                            trailing!
                          else if (onTap != null)
                            Icon(
                              Icons.chevron_right,
                              color: Colors.white24,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

