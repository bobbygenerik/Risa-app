part of '../settings_screen.dart';

extension SettingsScreenPlayback on _SettingsScreenState {
  Widget _buildPlaybackSettings() {
    return ListView(
      controller: _contentScrollController,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        SettingsSectionHeader(
            title: AppLocalizations.of(context)!.playback,
            subtitle: AppLocalizations.of(context)!.videoPlayerConfiguration),
        SettingsGroup(
          title: AppLocalizations.of(context)!.performance,
          children: [
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.hardwareAcceleration,
              subtitle:
                  AppLocalizations.of(context)!.useGpuForBetterPerformance,
              value: _hardwareAcceleration,
              onChanged: (v) =>
                  _handleSwitchTileChange('Hardware Acceleration', v),
              focusNode: _playbackFirstFocusNode,
            ),
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.hardwareDecoding,
              value: _hardwareDecoding,
              onChanged: (v) => _handleSwitchTileChange('Hardware Decoding', v),
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.playerEngine,
              subtitle: AppLocalizations.of(context)!.selectPlayerBackend,
              trailing: Text(
                _videoPlayerBackend,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppTheme.primaryBlue,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              onTap: _cycleVideoPlayerBackend,
            ),
          ],
        ),
        SettingsGroup(
          title: AppLocalizations.of(context)!.behavior,
          children: [
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.autoPlayNextEpisode,
              value: _autoPlayNextEpisode,
              onChanged: (v) =>
                  _handleSwitchTileChange('Auto-play Next Episode', v),
            ),
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.heroVideoPreview,
              subtitle: AppLocalizations.of(context)!.showVideoPreviewInHero,
              value: _heroVideoPreview,
              onChanged: (v) =>
                  _handleSwitchTileChange('Hero Video Preview', v),
            ),
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.rememberPosition,
              value: _rememberPlaybackPosition,
              onChanged: (v) => _handleSwitchTileChange('Remember Position', v),
            ),
          ],
        ),
      ],
    );
  }
}
