part of '../settings_tile_widgets.dart';

class SettingsInputTile extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String? hint;
  final bool obscureText;
  final IconData? icon;

  const SettingsInputTile({
    super.key,
    required this.label,
    required this.controller,
    required this.focusNode,
    this.hint,
    this.obscureText = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    // We wrap standard layout just to provide a clean label above/beside it
    // But since TVFriendlyTextField manages its own focus style effectively,
    // we can just place it inside the container.
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: AppTheme.textSecondary,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 10),
          // Using the existing robust TVFriendlyTextField
          // We need to import it in the parent file or replicate it.
          // For now, assume we use a simplified version here or the caller passes the widget.
          // BUT, to keep it "Premium", let's replicate the container style of SettingsActionTile
          // around the text field.
          // Actually, simply using the `TextField` with custom decoration is better for consistency.

          _PremiumTextField(
            controller: controller,
            focusNode: focusNode,
            hint: hint,
            obscureText: obscureText,
            icon: icon,
          ),
        ],
      ),
    );
  }
}

