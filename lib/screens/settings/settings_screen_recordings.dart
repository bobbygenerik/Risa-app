part of '../settings_screen.dart';

extension SettingsScreenRecordings on _SettingsScreenState {
  Widget _buildRecordingsSettings() {
    return ListView(
      controller: _contentScrollController,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        SettingsSectionHeader(
            title: AppLocalizations.of(context)!.recordings,
            subtitle: AppLocalizations.of(context)!.manageDvrStorage),
        SettingsGroup(
          children: [
            FutureBuilder<String>(
              future: _getStoragePath(),
              builder: (context, snapshot) {
                return SettingsActionTile(
                  title: AppLocalizations.of(context)!.storagePath,
                  subtitle:
                      snapshot.data ?? AppLocalizations.of(context)!.loading,
                  icon: Icons.folder,
                  trailing: const Icon(Icons.edit, color: Colors.white54),
                  focusNode: _browseStorageButtonFocusNode,
                  onTap: _browseStorage,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
