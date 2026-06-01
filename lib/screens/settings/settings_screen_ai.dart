part of '../settings_screen.dart';

extension SettingsScreenAI on _SettingsScreenState {
  Widget _buildAISettings() {
    return ListView(
      controller: _contentScrollController,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        SettingsSectionHeader(
            title: AppLocalizations.of(context)!.aiFeatures,
            subtitle: AppLocalizations.of(context)!
                .transcriptionTranslationSubtitles),
        SettingsGroup(
          title: AppLocalizations.of(context)!.liveServices,
          children: [
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.liveTranscription,
              subtitle: AppLocalizations.of(context)!.generateSubtitlesRealTime,
              value: _transcriptionEnabled,
              onChanged: (v) =>
                  _handleSwitchTileChange('Enable Live Transcription', v),
              focusNode: _aiFirstFocusNode,
            ),
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.realTimeTranslation,
              subtitle: AppLocalizations.of(context)!.translateTranscription,
              value: _translationEnabled,
              onChanged: (v) =>
                  _handleSwitchTileChange('Enable Translation', v),
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.manageSpeechModels,
              icon: Icons.mic,
              onTap: _showSpeechModelsDialog,
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.manageTranslationModels,
              icon: Icons.translate,
              onTap: _showLanguageModelsDialog,
            ),
          ],
        ),
      ],
    );
  }
}
