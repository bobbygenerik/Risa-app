import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';

class AppDialog extends StatelessWidget {
  final String? title;
  final Widget? content;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? contentPadding;

  const AppDialog({
    super.key,
    this.title,
    this.content,
    this.actions,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        decoration: BoxDecoration(
          color: const Color(0xE6121629),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppTheme.primaryBlue.withValues(alpha: 0.3), width: 1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null) ...[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                child: Text(
                  title!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Divider(height: 1, color: Colors.white12),
            ],
            if (content != null)
              Padding(
                padding: contentPadding ?? const EdgeInsets.all(16),
                child: content!,
              ),
            if (actions != null && actions!.isNotEmpty) ...[
              const Divider(height: 1, color: Colors.white12),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: actions!
                      .map((action) => Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: action,
                          ))
                      .toList(),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class AppDialogButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isPrimary;

  const AppDialogButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Focus(
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            decoration: BoxDecoration(
              color: isPrimary
                  ? (isFocused ? AppTheme.primaryBlue : AppTheme.primaryBlue.withValues(alpha: 0.8))
                  : (isFocused ? Colors.white.withValues(alpha: 0.2) : Colors.transparent),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: isFocused
                    ? AppTheme.primaryBlue
                    : (isPrimary ? AppTheme.primaryBlue.withValues(alpha: 0.5) : Colors.white24),
                width: 1,
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(6),
                onTap: onPressed,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: isPrimary ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}