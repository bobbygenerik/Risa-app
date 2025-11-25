import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// A unified button for 'Go to Settings' on all main screens.
/// - Consistent size and style
/// - No default glow/focus overlay
/// - Subtle border on focus
class GoToSettingsButton extends StatefulWidget {
  final VoidCallback onPressed;
  final FocusNode? focusNode;
  const GoToSettingsButton({Key? key, required this.onPressed, this.focusNode}) : super(key: key);

  @override
  State<GoToSettingsButton> createState() => _GoToSettingsButtonState();
}

class _GoToSettingsButtonState extends State<GoToSettingsButton> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.focusNode,
      onFocusChange: (f) => setState(() => _focused = f),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        curve: Curves.ease,
        decoration: BoxDecoration(
          color: AppTheme.primaryBlue,
          borderRadius: BorderRadius.circular(12),
          border: _focused
              ? Border.all(color: Colors.white.withOpacity(0.25), width: 2)
              : null,
        ),
        child: ElevatedButton.icon(
          onPressed: widget.onPressed,
          icon: const Icon(Icons.settings, color: Colors.white),
          label: const Text('Go to Settings', style: TextStyle(fontWeight: FontWeight.w700)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
            minimumSize: const Size(200, 48),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            foregroundColor: Colors.white,
            enableFeedback: false,
          ).copyWith(
            // Remove default focus highlight
            side: MaterialStateProperty.resolveWith<BorderSide?>((states) => BorderSide.none),
          ),
        ),
      ),
    );
  }
}
