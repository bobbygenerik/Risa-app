import 'package:flutter/material.dart';
import 'package:iptv_player/widgets/brand_button.dart';

/// A unified button for 'Go to Settings' on all main screens.
/// Uses the brand button focus style.
class GoToSettingsButton extends StatelessWidget {
  final VoidCallback onPressed;
  final FocusNode? focusNode;
  const GoToSettingsButton({super.key, required this.onPressed, this.focusNode});

  @override
  Widget build(BuildContext context) {
    return BrandPrimaryButton(
      onPressed: onPressed,
      label: 'Go to Settings',
      icon: Icons.settings,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      fontSize: 16,
      focusNode: focusNode,
    );
  }
}
