part of '../playlist_management_screen.dart';

extension PlaylistManagementUi on _PlaylistManagementScreenState {
Widget _buildSavedPlaylists() {
  if (_isLoading) {
    return const Center(
      child: CircularProgressIndicator(color: Colors.white),
    );
  }

  if (_savedPlaylists.isEmpty) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        const SettingsSectionHeader(
          title: 'Saved Playlists',
          subtitle: 'Manage your existing playlists',
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.playlist_play, size: 64, color: Colors.white24),
              const SizedBox(height: 16),
              Text(
                'No saved playlists found',
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
              const SizedBox(height: 24),
              const SizedBox(height: 8),
              Text(
                'Add playlists from Settings → General',
                style: TextStyle(color: Colors.white54, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  return FocusTraversalGroup(
    policy: WidgetOrderTraversalPolicy(),
    child: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        const SettingsSectionHeader(
          title: 'Saved Playlists',
          subtitle: 'Manage your existing playlists',
        ),
        ..._savedPlaylists.asMap().entries.map((entry) {
          final index = entry.key;
          final playlist = entry.value;
          return TVFocusable(
            autofocus: index == 0,
            child: _buildPlaylistCard(playlist),
          );
        }),
      ],
    ),
  );
}

Widget _buildPlaylistCard(PlaylistInfo playlist) {
  return Container(
    margin: const EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      color: AppTheme.cardBackground,
      border: Border.all(color: Colors.white12),
      borderRadius: BorderRadius.circular(12),
    ),
    child: ExpansionTile(
      backgroundColor: Colors.transparent,
      collapsedBackgroundColor: Colors.transparent,
      title: Row(
        children: [
          Icon(
            playlist.type == 'm3u' ? Icons.link : Icons.dns,
            color: Colors.white70,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playlist.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  playlist.type == 'm3u' ? 'M3U Playlist' : 'Xtream Playlist',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SettingsGroup(
                title: 'Playlist Details',
                children: [
                  SettingsActionTile(
                    title: 'Playlist Name',
                    subtitle: playlist.name,
                    icon: Icons.edit,
                    onTap: () => _editPlaylistName(playlist),
                  ),
                  SettingsActionTile(
                    title: 'Playlist URL',
                    subtitle: playlist.url,
                    icon: Icons.link,
                    onTap: () => _editPlaylistUrl(playlist),
                  ),
                  SettingsActionTile(
                    title: 'Update Frequency',
                    subtitle: 'Every ${playlist.updateFrequency} hours',
                    icon: Icons.timer,
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TVFocusable(
                          child: IconButton(
                            icon:
                                const Icon(Icons.remove, color: Colors.white),
                            onPressed: () =>
                                _updatePlaylistFrequency(playlist, -1),
                          ),
                        ),
                        const SizedBox(width: 8),
                        TVFocusable(
                          child: IconButton(
                            icon: const Icon(Icons.add, color: Colors.white),
                            onPressed: () =>
                                _updatePlaylistFrequency(playlist, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SettingsGroup(
                title: 'EPG Settings',
                children: [
                  SettingsActionTile(
                    title: 'Primary EPG URL',
                    subtitle:
                        playlist.epgUrl.isEmpty ? 'Not set' : playlist.epgUrl,
                    icon: Icons.tv,
                    onTap: () => _editPlaylistEpg(playlist),
                  ),
                  SettingsActionTile(
                    title: 'Secondary EPG URL',
                    subtitle: playlist.secondaryEpgUrl.isEmpty
                        ? 'Not set'
                        : playlist.secondaryEpgUrl,
                    icon: Icons.tv,
                    onTap: () => _editPlaylistSecondaryEpg(playlist),
                  ),
                ],
              ),
              SettingsGroup(
                title: 'Actions',
                children: [
                  SettingsActionTile(
                    title: 'Manual Update',
                    icon: Icons.sync,
                    iconColor: AppTheme.primaryBlue,
                    titleColor: AppTheme.primaryBlue,
                    onTap: () => _manualUpdatePlaylist(playlist),
                  ),
                  SettingsActionTile(
                    title: 'Load Playlist',
                    icon: Icons.play_circle,
                    iconColor: AppTheme.accentGreen,
                    titleColor: AppTheme.accentGreen,
                    onTap: () => _loadPlaylist(playlist),
                  ),
                  SettingsActionTile(
                    title: 'Delete Playlist',
                    icon: Icons.delete_outline,
                    iconColor: AppTheme.accentRed,
                    titleColor: AppTheme.accentRed,
                    onTap: () => _deletePlaylist(playlist),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// Playlist editing methods
}
