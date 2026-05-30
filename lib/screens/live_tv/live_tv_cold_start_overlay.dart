import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';

/// Loading playlist overlay shown during cold start.
class LiveTvColdStartOverlay extends StatelessWidget {
  const LiveTvColdStartOverlay({
    super.key,
    this.titleText,
    this.statusText,
    this.secondaryStatusText,
    this.progress,
  });

  final String? titleText;
  final String? statusText;
  final String? secondaryStatusText;
  final double? progress;

  @override
  Widget build(BuildContext context) {
    final trimmedTitle = (titleText ?? '').trim();
    final resolvedTitle =
        trimmedTitle.isNotEmpty ? trimmedTitle : 'Loading playlist';
    final trimmedStatus = (statusText ?? '').trim();
    final resolvedStatus =
        trimmedStatus.isNotEmpty ? trimmedStatus : 'Preparing playlist...';
    final trimmedSecondary = (secondaryStatusText ?? '').trim();
    final resolvedSecondary =
        trimmedSecondary.isNotEmpty ? trimmedSecondary : '';
    final resolvedProgress = (progress ?? 0.0).clamp(0.0, 1.0);
    final showProgressValue = resolvedProgress > 0.02;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 520, minWidth: 280),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            resolvedTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            resolvedStatus,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white.withValues(alpha: 0.8),
                ),
            textAlign: TextAlign.center,
          ),
          if (resolvedSecondary.isNotEmpty) ...[
            const SizedBox(height: 6),
            Text(
              resolvedSecondary,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
              textAlign: TextAlign.center,
            ),
          ],
          const SizedBox(height: 16),
          LinearProgressIndicator(
            value: showProgressValue ? resolvedProgress : null,
            minHeight: 6,
            color: AppTheme.primaryBlue,
            backgroundColor: Colors.white.withValues(alpha: 0.15),
          ),
          const SizedBox(height: 10),
          Text(
            'First load can take a minute on large playlists.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white.withValues(alpha: 0.6),
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            '(Please keep the app open while this completes.)',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white.withValues(alpha: 0.5),
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
