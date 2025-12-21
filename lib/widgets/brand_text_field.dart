import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Standard text field widget for consistent styling across the app
class BrandTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool readOnly;
  final EdgeInsetsGeometry? margin;
  final bool? isFocusedOverride;

  const BrandTextField({
    super.key,
    required this.controller,
    this.focusNode,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.margin,
    this.isFocusedOverride,
  });

  @override
  Widget build(BuildContext context) {
    Widget field = Builder(
      builder: (context) {
        final isFocused = isFocusedOverride ?? Focus.of(context).hasFocus;
        final borderRadius = BorderRadius.circular(12);
        final theme = Theme.of(context);
        final selectionTheme = theme.textSelectionTheme.copyWith(
          selectionColor: Colors.transparent,
          selectionHandleColor: Colors.transparent,
        );
        return Container(
          decoration: isFocused
              ? BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.primaryBlue.withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                )
              : null,
          child: Theme(
            data: theme.copyWith(textSelectionTheme: selectionTheme),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              keyboardType: keyboardType,
              onChanged: onChanged,
              onTap: () {
                final text = controller.text;
                controller.selection =
                    TextSelection.collapsed(offset: text.length);
                onTap?.call();
              },
              readOnly: readOnly,
              showCursor: false,
              cursorColor: Colors.transparent,
              style: TextStyle(
                color: AppTheme.textPrimary,
                fontSize: context.tvTextSize(14),
              ),
              decoration: InputDecoration(
                labelText: labelText,
                hintText: hintText,
                filled: true,
                fillColor: isFocused
                    ? AppTheme.highlight
                    : AppTheme.highlight.withValues(alpha: 0.75),
                hintStyle: TextStyle(
                  color: AppTheme.textSecondary,
                  fontSize: context.tvTextSize(14),
                ),
                labelStyle: TextStyle(
                  color: AppTheme.textSecondary,
                  fontSize: context.tvTextSize(12),
                ),
                prefixIcon: prefixIcon != null
                    ? Icon(
                        prefixIcon,
                        size: context.tvIconSize(18),
                        color: AppTheme.textSecondary,
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(
                    color: Colors.white.withValues(alpha: 0.2),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: BorderSide(
                    color: Colors.white.withValues(alpha: 0.2),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: borderRadius,
                  borderSide: const BorderSide(
                    color: AppTheme.primaryBlue,
                    width: 2,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: context.tvSpacing(14),
                ),
              ),
            ),
          ),
        );
      },
    );

    if (focusNode != null) {
      field = Focus(
        focusNode: focusNode,
        onFocusChange: (hasFocus) {
          if (hasFocus) {
            final text = controller.text;
            controller.selection = TextSelection.collapsed(offset: text.length);
          }
        },
        child: field,
      );
    }

    return Container(
      margin: margin,
      child: field,
    );
  }
}
