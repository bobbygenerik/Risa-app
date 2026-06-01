part of '../playlist_manager_screen.dart';

extension PlaylistManagerUi on _PlaylistManagerScreenState {
  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.lg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.playlist_play,
              size: 80,
              color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
            ),
            const SizedBox(height: AppSizes.lg),
            Text(
              'No Saved Playlists',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: AppSizes.sm),
            Text(
              'No saved playlists. Add playlists from Settings → General',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
            ),
            const SizedBox(height: AppSizes.xl),
            // Intentionally no add button here to centralize playlist creation
          ],
        ),
      ),
    );
  }

  Widget _buildPlaylistList() {
    final tiles = List<Widget>.generate(
      _playlists.length,
      (index) {
        final playlist = _playlists[index];
        final isActive = playlist.id == _activePlaylistId;
        return _buildPremiumPlaylistTile(
          playlist: playlist,
          isActive: isActive,
          index: index,
        );
      },
    );

    return FocusTraversalGroup(
      policy: WidgetOrderTraversalPolicy(),
      child: ListView(
        controller: _contentScrollController,
        padding: const EdgeInsets.symmetric(
          horizontal: 48,
          vertical: 24,
        ),
        children: [
          const SettingsSectionHeader(
            title: 'Manage Playlists',
            subtitle: 'Select or edit a saved playlist',
          ),
          SettingsGroup(
            children: tiles,
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsContent() {
    if (_selectedCategoryIndex == 1) {
      return _buildActionsPanel();
    }

    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppTheme.primaryBlue),
      );
    }
    if (_loadError != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.lg),
          child: Text(
            _loadError!,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: AppTheme.accentRed),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
    if (_playlists.isEmpty) {
      return _buildEmptyState();
    }
    return _buildPlaylistList();
  }

  Widget _buildActionsPanel() {
    SavedPlaylist? active;
    if (_activePlaylistId != null) {
      for (final playlist in _playlists) {
        if (playlist.id == _activePlaylistId) {
          active = playlist;
          break;
        }
      }
    }

    return ListView(
      controller: _contentScrollController,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        const SettingsSectionHeader(
          title: 'Actions',
          subtitle: 'Refresh playlists, reload channels, or update EPG',
        ),
        SettingsGroup(
          title: 'Navigation',
          children: [
            SettingsActionTile(
              title: 'Back to Settings',
              subtitle: 'Return to the main settings screen',
              icon: Icons.arrow_back,
              onTap: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.go('/settings');
                }
              },
            ),
            SettingsActionTile(
              title: 'Open Playlist Editor',
              subtitle: 'Edit M3U/Xtream credentials and update frequency',
              icon: Icons.edit_note,
              onTap: () => context.push('/playlist-editor'),
            ),
            SettingsActionTile(
              title: 'EPG Diagnostics',
              subtitle: 'Check match rates and configured EPG URLs',
              icon: Icons.analytics_outlined,
              onTap: () => context.push('/epg-diagnostic'),
            ),
          ],
        ),
        SettingsGroup(
          title: 'Refresh',
          children: [
            SettingsActionTile(
              title: 'Refresh Saved Playlists',
              subtitle: 'Reload the playlist list from storage',
              icon: Icons.refresh,
              onTap: () => unawaited(_loadPlaylists()),
            ),
            SettingsActionTile(
              title: 'Reload Active Playlist',
              subtitle: active == null
                  ? 'No active playlist selected'
                  : 'Reload channels for "${active.name}"',
              icon: Icons.playlist_play,
              onTap: active == null
                  ? null
                  : () {
                      final playlist = active!;
                      unawaited(_reloadActivePlaylist(playlist));
                    },
            ),
            SettingsActionTile(
              title: 'Force Refresh EPG',
              subtitle: 'Re-download primary and secondary EPG sources',
              icon: Icons.live_tv,
              onTap: () => unawaited(_forceRefreshEpg()),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPremiumPlaylistTile({
    required SavedPlaylist playlist,
    required bool isActive,
    required int index,
  }) {
    final focusNode =
        _playlistFocusNodes.length > index ? _playlistFocusNodes[index] : null;

    return Focus(
      focusNode: focusNode,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          final nextIndex = index + 1;
          if (nextIndex < _playlistFocusNodes.length) {
            _playlistFocusNodes[nextIndex].requestFocus();
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          final prevIndex = index - 1;
          if (prevIndex >= 0) {
            _playlistFocusNodes[prevIndex].requestFocus();
            return KeyEventResult.handled;
          }
        } else if (event.logicalKey == LogicalKeyboardKey.enter ||
            event.logicalKey == LogicalKeyboardKey.select ||
            event.logicalKey == LogicalKeyboardKey.space) {
          if (!isActive) {
            _loadPlaylist(playlist);
          }
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      onFocusChange: (hasFocus) {
        if (hasFocus) {
          Scrollable.ensureVisible(
            focusNode?.context ?? context,
            alignment: 0.2,
            duration: const Duration(milliseconds: 180),
          );
        }
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          final borderColor =
              isFocused ? AppTheme.focusBorder : Colors.transparent;
          final boxShadow = isFocused
              ? TVFocusStyle.focusedShadow
              : TVFocusStyle.defaultShadow;

          return AnimatedScale(
            scale: isFocused ? TVFocusStyle.focusScale : 1.0,
            duration: TVFocusStyle.animationDuration,
            curve: TVFocusStyle.animationCurve,
            child: AnimatedContainer(
              duration: TVFocusStyle.animationDuration,
              curve: TVFocusStyle.animationCurve,
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: AppTheme.cardBackground,
                borderRadius: BorderRadius.circular(16),
                border:
                    Border.all(color: borderColor, width: isFocused ? 3 : 1),
                boxShadow: boxShadow,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  if (!isActive) {
                    _loadPlaylist(playlist);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.md),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: isActive
                              ? AppTheme.primaryBlue
                              : AppTheme.primaryBlue
                                  .withAlpha((0.35 * 255).round()),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          playlist.type == 'm3u' ? Icons.link : Icons.cast,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: AppSizes.md),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    playlist.name,
                                    style: AppTypography.cardTitle(context),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                if (isActive)
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: AppTheme.accentGreen,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Text(
                                      'ACTIVE',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              playlist.type == 'm3u'
                                  ? 'M3U Playlist'
                                  : 'Xtream Codes',
                              style: AppTypography.bodySecondary(context)
                                  .copyWith(fontSize: context.tvTextSize(14)),
                            ),
                            if (playlist.type == 'xtream' &&
                                playlist.server != null)
                              Text(
                                playlist.server!,
                                style: AppTypography.smallText(context),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (!isActive)
                            _buildPlaylistActionButton(
                              icon: Icons.play_arrow,
                              color: AppTheme.primaryBlue,
                              tooltip: 'Load',
                              onPressed: () => _loadPlaylist(playlist),
                            ),
                          _buildPlaylistActionButton(
                            icon: Icons.edit,
                            color: AppTheme.textPrimary,
                            tooltip: 'Rename',
                            onPressed: () => _editPlaylist(playlist),
                          ),
                          _buildPlaylistActionButton(
                            icon: Icons.link,
                            color: AppTheme.textPrimary,
                            tooltip: 'Edit EPG URLs',
                            onPressed: () => _editEpgUrls(playlist),
                          ),
                          _buildPlaylistActionButton(
                            icon: Icons.delete,
                            color: AppTheme.accentRed,
                            tooltip: 'Delete',
                            onPressed: () => _deletePlaylist(playlist, index),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPlaylistActionButton({
    required IconData icon,
    required Color color,
    required String tooltip,
    required VoidCallback onPressed,
  }) {
    return FocusableActionDetector(
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            onPressed();
            return null;
          },
        ),
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOutCubic,
            decoration: BoxDecoration(
              color: isFocused ? color.withAlpha((0.2 * 255).round()) : null,
              borderRadius: BorderRadius.circular(8),
              border: isFocused ? Border.all(color: color, width: 2) : null,
            ),
            child: IconButton(
              tooltip: tooltip,
              icon: Icon(icon, color: color),
              onPressed: onPressed,
            ),
          );
        },
      ),
    );
  }
}
