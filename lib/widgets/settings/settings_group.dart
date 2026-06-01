part of '../settings_tile_widgets.dart';

class SettingsGroup extends StatelessWidget {
  final String? title;
  final List<Widget> children;

  const SettingsGroup({
    super.key,
    this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 12, top: 8),
            child: Text(
              title!.toUpperCase(),
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: AppTheme.primaryBlue.withValues(alpha: 0.9),
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF14161A), // Dark card background
            borderRadius: BorderRadius.circular(16),
          ),
          clipBehavior: Clip.none,
          child: Column(
            children: children,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

// -----------------------------------------------------------------------------
// TILES
// -----------------------------------------------------------------------------

