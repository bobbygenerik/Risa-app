import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Standard switch tile widget for consistent styling across the app
class BrandSwitchTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? margin;

  const BrandSwitchTile({
    super.key,
    required this.title,
    this.subtitle,
    required this.value,
    required this.onChanged,
    this.focusNode,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            margin: margin ?? EdgeInsets.only(bottom: context.tvSpacing(16)),
            padding: EdgeInsets.symmetric(vertical: context.tvSpacing(8), horizontal: context.tvSpacing(8)),
            decoration: BoxDecoration(
              border: isFocused ? Border.all(color: AppTheme.primaryBlue, width: 2) : null,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: context.tvTextSize(14),
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      if (subtitle != null) ...[
                        SizedBox(height: context.tvSpacing(4)),
                        Text(
                          subtitle!,
                          style: TextStyle(
                            fontSize: context.tvTextSize(12),
                            color: AppTheme.textSecondary,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                Switch(
                  value: value,
                  onChanged: onChanged,
                  activeThumbColor: AppTheme.primaryBlue,
                  inactiveThumbColor: AppTheme.textSecondary,
                  inactiveTrackColor: Colors.white.withValues(alpha: 0.2),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}