import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/app_icons.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/cached_image.dart';

/// Returns true when [url] looks like a portrait/poster image unsuitable for dialog hero.
bool epgIsLikelyPosterUrl(String url) {
  final lower = url.toLowerCase();
  if (lower.contains('/w500') ||
      lower.contains('/w342') ||
      lower.contains('/w300') ||
      lower.contains('/w185') ||
      lower.contains('poster') ||
      lower.contains('portrait') ||
      lower.contains('cover')) {
    return true;
  }
  return false;
}

/// Shows program details with catch-up, record, and remind actions.
Future<void> showEpgProgramDetailsDialog({
  required BuildContext context,
  required Program program,
  required VoidCallback onPlayCatchup,
}) {
  final rootContext = context;
  final catchupFocus = FocusNode(debugLabel: 'EpgCatchup');
  final recordFocus = FocusNode(debugLabel: 'EpgRecord');
  final remindFocus = FocusNode(debugLabel: 'EpgRemind');

  final dialogFuture = showDialog<void>(
    context: context,
    builder: (dialogContext) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!dialogContext.mounted) return;
        if (program.hasCatchup) {
          if (catchupFocus.canRequestFocus) {
            catchupFocus.requestFocus();
          }
        } else if (program.isFutureProgram) {
          if (recordFocus.canRequestFocus) {
            recordFocus.requestFocus();
          }
        }
      });
      return Dialog(
        backgroundColor: AppColors.cardDark,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(AppSizes.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (program.imageUrl != null &&
                  !epgIsLikelyPosterUrl(program.imageUrl!))
                CachedImage(
                  imageUrl: program.imageUrl!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                  errorWidget: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      color: AppTheme.darkBackground,
                    ),
                    child: const Icon(Icons.dvr, size: 64),
                  ),
                ),
              const SizedBox(height: AppSizes.lg),
              Text(
                program.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: AppSizes.sm),
              Row(
                children: [
                  const Icon(
                    Icons.access_time,
                    size: 16,
                    color: AppTheme.textSecondary,
                  ),
                  const SizedBox(width: AppSizes.xs),
                  Text(
                    '${DateFormat.jm().format(program.startTime)} - ${DateFormat.jm().format(program.endTime)}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(width: AppSizes.md),
                  if (program.isCurrentlyPlaying)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.sm,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.accentRed,
                        borderRadius:
                            BorderRadius.circular(AppSizes.radiusSm),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.fiber_manual_record,
                            size: 8,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'LIVE',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              const SizedBox(height: AppSizes.md),
              if (program.description != null)
                Text(
                  program.description!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              const SizedBox(height: AppSizes.xl),
              FocusTraversalGroup(
                policy: WidgetOrderTraversalPolicy(),
                child: Row(
                  children: [
                    if (program.hasCatchup)
                      Expanded(
                        child: BrandPrimaryButton(
                          focusNode: catchupFocus,
                          onPressed: () {
                            Navigator.pop(dialogContext);
                            onPlayCatchup();
                          },
                          icon: AppIcons.replay,
                          label: 'Watch Catch-up',
                          expand: true,
                        ),
                      ),
                    if (program.hasCatchup && program.isFutureProgram)
                      const SizedBox(width: AppSizes.sm),
                    if (program.isFutureProgram)
                      Expanded(
                        child: BrandSecondaryButton(
                          focusNode: recordFocus,
                          onPressed: () {
                            Navigator.pop(dialogContext);
                            showAppSnackBar(
                              rootContext,
                              SnackBar(
                                content: Text(
                                  'Recording scheduled for ${program.title}',
                                ),
                              ),
                            );
                          },
                          icon: AppIcons.record,
                          label: 'Record',
                          expand: true,
                        ),
                      ),
                    if (program.isFutureProgram) ...[
                      const SizedBox(width: AppSizes.sm),
                      Expanded(
                        child: BrandSecondaryButton(
                          focusNode: remindFocus,
                          onPressed: () {
                            Navigator.pop(dialogContext);
                            showAppSnackBar(
                              rootContext,
                              SnackBar(
                                content: Text(
                                  'Reminder set for ${program.title}',
                                ),
                              ),
                            );
                          },
                          icon: AppIcons.alarm,
                          label: 'Remind',
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );

  return dialogFuture.whenComplete(() {
    catchupFocus.dispose();
    recordFocus.dispose();
    remindFocus.dispose();
  });
}
