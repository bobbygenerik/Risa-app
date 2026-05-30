import 'package:flutter/material.dart';
import 'package:iptv_player/l10n/gen/app_localizations.dart';
import 'package:iptv_player/utils/app_icons.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/go_to_settings_button.dart';

/// Empty state when no playlist is configured or channels failed to load.
class LiveTvNoPlaylistState extends StatelessWidget {
  const LiveTvNoPlaylistState({
    super.key,
    required this.errorMessage,
    required this.onGoToSettings,
    required this.settingsFocusNode,
  });

  final String? errorMessage;
  final VoidCallback onGoToSettings;
  final FocusNode settingsFocusNode;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            context.iconXxl(
              AppIcons.liveTV,
              color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
            ),
            SizedBox(height: context.tvSpacing(24)),
            Text(
              AppLocalizations.of(context)!.noLiveTvAvailable,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: context.tvSpacing(8)),
            Text(
              errorMessage != null && errorMessage!.isNotEmpty
                  ? errorMessage!
                  : AppLocalizations.of(context)!.loadPlaylistMessage,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.tvSpacing(32)),
            GoToSettingsButton(
              onPressed: onGoToSettings,
              focusNode: settingsFocusNode,
            ),
          ],
        ),
      ),
    );
  }
}
