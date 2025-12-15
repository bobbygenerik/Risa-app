  Widget _buildEmptyState(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF050710),
      ),
      child: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withAlpha((0.05 * 255).round()),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white.withAlpha((0.12 * 255).round()),
              width: 1,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [
                      AppTheme.primaryBlue,
                      AppTheme.accentPink,
                    ],
                  ),
                ),
                child: const Icon(
                  AppIcons.tvOff,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Guide Not Set Up',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              BrandPrimaryButton(
                icon: AppIcons.add,
                label: 'Add Playlist',
                onPressed: () => context.go('/settings'),
              ),
            ],
          ),
        ),
      ),
    );
  }
