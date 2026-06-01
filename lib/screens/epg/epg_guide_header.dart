import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:iptv_player/utils/app_icons.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';

/// Top header bar for the EPG guide (title, date, now/refresh actions).
class EpgGuideHeader extends StatelessWidget {
  const EpgGuideHeader({
    super.key,
    required this.selectedDate,
    required this.isLoading,
    required this.refreshAnimation,
    required this.refreshButtonFocus,
    required this.firstProgramFocus,
    required this.onScrollToNow,
    required this.onRefresh,
  });

  final DateTime selectedDate;
  final bool isLoading;
  final Animation<double> refreshAnimation;
  final FocusNode refreshButtonFocus;
  final FocusNode firstProgramFocus;
  final VoidCallback onScrollToNow;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              context.iconMd(AppIcons.dvr, color: AppTheme.primaryBlue),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Guide',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                        ),
                  ),
                  Text(
                    DateFormat('EEEE, MMM dd').format(selectedDate),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white.withValues(alpha: 0.7),
                          decoration: TextDecoration.none,
                        ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppTheme.darkBackgroundOpacity(0.3),
                  borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                ),
                child: IconButton(
                  onPressed: onScrollToNow,
                  icon: context.timeIcon(),
                  color: AppTheme.primaryBlue,
                  tooltip: 'Jump to Now',
                ),
              ),
              const SizedBox(width: 8),
              Focus(
                onKeyEvent: (node, event) {
                  if (event is KeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.arrowDown) {
                    firstProgramFocus.requestFocus();
                    return KeyEventResult.handled;
                  }
                  return KeyEventResult.ignored;
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.darkBackgroundOpacity(0.3),
                    borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                  ),
                  child: IconButton(
                    focusNode: refreshButtonFocus,
                    onPressed: isLoading
                        ? null
                        : () {
                            ImageFailureCache.clear();
                            onRefresh();
                          },
                    icon: AnimatedBuilder(
                      animation: refreshAnimation,
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: isLoading
                              ? refreshAnimation.value * 2 * 3.14159
                              : 0,
                          child: Icon(
                            AppIcons.refresh,
                            size: 18,
                            color: isLoading
                                ? AppTheme.primaryBlue
                                : Colors.white.withValues(alpha: 0.8),
                          ),
                        );
                      },
                    ),
                    tooltip: 'Refresh EPG',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
