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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Focus(
        focusNode: focusNode,
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            return Container(
              decoration: isFocused ? BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ) : null,
              child: TextField(
                controller: controller,
              obscureText: obscureText,
              keyboardType: keyboardType,
              onChanged: onChanged,
              onTap: onTap,
              readOnly: readOnly,
              style: TextStyle(
                color: AppTheme.textPrimary,
                fontSize: context.tvTextSize(14),
              ),
              decoration: InputDecoration(
                labelText: labelText,
                hintText: hintText,
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
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white.withValues(alpha: 0.2),
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.primaryBlue, width: 2),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 0, 
                  vertical: context.tvSpacing(14),
                ),
              ),
            ),
            );
          },
        ),
      ),
    );
  }
}