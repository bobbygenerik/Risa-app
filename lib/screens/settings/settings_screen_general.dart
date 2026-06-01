part of '../settings_screen.dart';

extension SettingsScreenGeneral on _SettingsScreenState {
  Widget _buildGeneralSettings() {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return ListView(
      controller: _contentScrollController,
      padding: EdgeInsets.fromLTRB(48, 24, 48, 24 + bottomInset),
      children: [
        SettingsSectionHeader(
          title: AppLocalizations.of(context)!.generalSettings,
          subtitle: AppLocalizations.of(context)!.generalSettingsSubtitle,
        ),

        // Playlist Status
        Consumer<ChannelProvider>(
          builder: (context, channelProvider, _) {
            _generalPlaylistStatusFuture ??=
                _createGeneralPlaylistStatusFuture();
            return FutureBuilder<List<dynamic>>(
              future: _generalPlaylistStatusFuture,
              builder: (context, snapshot) {
                final data = snapshot.data;
                final rawChannels = data != null
                    ? data[0] as int
                    : channelProvider.channelCount;
                final xtreamCounts =
                    data != null ? data[1] as Map<String, int>? : null;

                final channels = xtreamCounts?['channels'] ?? rawChannels;

                final hasChannels = channels > 0;
                final hasContent = hasChannels;
                final totalContent = channels;
                final errorMessage = channelProvider.errorMessage;
                final responsePreview = channelProvider.lastM3UContent;

                return Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 24),
                  decoration: BoxDecoration(
                    color: hasContent
                        ? AppTheme.accentGreen.withValues(alpha: 0.1)
                        : AppTheme.accentRed.withValues(alpha: 0.1),
                    border: Border.all(
                      color: hasContent
                          ? AppTheme.accentGreen.withValues(alpha: 0.3)
                          : AppTheme.accentRed.withValues(alpha: 0.3),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        hasContent ? Icons.check_circle : Icons.error_outline,
                        color: hasContent
                            ? AppTheme.accentGreen
                            : AppTheme.accentRed,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hasContent
                                  ? AppLocalizations.of(context)!
                                      .itemsLoaded(totalContent)
                                  : (errorMessage != null &&
                                          errorMessage.isNotEmpty
                                      ? AppLocalizations.of(context)!
                                          .playlistError
                                      : AppLocalizations.of(context)!
                                          .noPlaylistLoaded),
                              style: TextStyle(
                                color: hasContent
                                    ? AppTheme.accentGreen
                                    : AppTheme.accentRed,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (!hasContent &&
                                errorMessage != null &&
                                errorMessage.isNotEmpty) ...[
                              const SizedBox(height: 6),
                              Text(
                                errorMessage,
                                style: const TextStyle(
                                  color: AppTheme.textSecondary,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                            if (!hasContent &&
                                responsePreview != null &&
                                responsePreview.isNotEmpty) ...[
                              const SizedBox(height: 10),
                              BrandSecondaryButton(
                                label:
                                    AppLocalizations.of(context)!.viewResponse,
                                onPressed: () => _showPlaylistResponsePreview(
                                    responsePreview),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 10,
                                ),
                              ),
                            ],
                            if (hasContent) ...[
                              const SizedBox(height: 4),
                              Text(
                                AppLocalizations.of(context)!
                                    .channelsCount(channels),
                                style: TextStyle(
                                  color: hasContent
                                      ? AppTheme.accentGreen
                                      : AppTheme.accentRed,
                                  fontSize: 12,
                                ),
                              ),
                            ]
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),

        SettingsGroup(
          title: AppLocalizations.of(context)!.playlists,
          children: [
            _buildInputMethodSelector(),
            if (_playlistInputMethod == 0) ...[
              SettingsInputTile(
                label: AppLocalizations.of(context)!.m3uPlaylistUrl,
                hint: 'http://example.com/playlist.m3u',
                icon: Icons.link,
                controller: _m3uUrlController,
                focusNode: _m3uUrlFocusNode,
              ),
              Builder(builder: (context) {
                final cp = Provider.of<ChannelProvider>(context);
                final progressPercent =
                    (cp.loadingProgress * 100).clamp(0, 100).round();
                final statusText = cp.loadingStatus.isNotEmpty
                    ? cp.loadingStatus
                    : AppLocalizations.of(context)!.loading;
                return SettingsActionTile(
                  title: AppLocalizations.of(context)!.loadPlaylist,
                  icon: Icons.download,
                  iconColor: AppTheme.primaryBlue,
                  titleColor: AppTheme.primaryBlue,
                  focusNode: _loadM3uButtonFocusNode,
                  onTap: _loadM3uPlaylist,
                  subtitle:
                      cp.isLoading ? '$statusText ($progressPercent%)' : null,
                  trailing: cp.isLoading
                      ? IconButton(
                          icon: const Icon(Icons.cancel),
                          color: Colors.white70,
                          tooltip: AppLocalizations.of(context)!.cancelLoad,
                          onPressed: () {
                            cp.cancelPlaylistLoad();
                            _showMessage(AppLocalizations.of(context)!
                                .playlistLoadCancelled);
                          },
                        )
                      : null,
                );
              }),
              SettingsActionTile(
                title: AppLocalizations.of(context)!.clearUrl,
                icon: Icons.clear,
                focusNode: _clearM3uButtonFocusNode,
                onTap: () => _m3uUrlController.clear(),
              ),
              SettingsActionTile(
                title: AppLocalizations.of(context)!.managePlaylists,
                icon: Icons.playlist_add_check,
                onTap: _showManagePlaylistsDialog,
              ),
            ] else ...[
              SettingsInputTile(
                label: AppLocalizations.of(context)!.serverUrl,
                hint: 'http://example.com:8080',
                icon: Icons.dns,
                controller: _xtreamServerController,
                focusNode: _xtreamServerFocusNode,
              ),
              SettingsInputTile(
                label: AppLocalizations.of(context)!.username,
                hint: AppLocalizations.of(context)!.username,
                icon: Icons.person,
                controller: _xtreamUsernameController,
                focusNode: _xtreamUsernameFocusNode,
              ),
              SettingsInputTile(
                label: AppLocalizations.of(context)!.password,
                hint: AppLocalizations.of(context)!.password,
                icon: Icons.lock,
                obscureText: true,
                controller: _xtreamPasswordController,
                focusNode: _xtreamPasswordFocusNode,
              ),
              Builder(builder: (context) {
                final cp = Provider.of<ChannelProvider>(context);
                final progressPercent =
                    (cp.loadingProgress * 100).clamp(0, 100).round();
                final statusText = cp.loadingStatus.isNotEmpty
                    ? cp.loadingStatus
                    : AppLocalizations.of(context)!.loading;
                return SettingsActionTile(
                  title: AppLocalizations.of(context)!.loadXtreamPlaylist,
                  icon: Icons.download,
                  iconColor: AppTheme.primaryBlue,
                  titleColor: AppTheme.primaryBlue,
                  focusNode: _loadXtreamButtonFocusNode,
                  onTap: _loadXtreamPlaylist,
                  subtitle:
                      cp.isLoading ? '$statusText ($progressPercent%)' : null,
                  trailing: cp.isLoading
                      ? IconButton(
                          icon: const Icon(Icons.cancel),
                          color: Colors.white70,
                          tooltip: AppLocalizations.of(context)!.cancelLoad,
                          onPressed: () {
                            cp.cancelPlaylistLoad();
                            _showMessage(AppLocalizations.of(context)!
                                .playlistLoadCancelled);
                          },
                        )
                      : null,
                );
              }),
              SettingsActionTile(
                title: AppLocalizations.of(context)!.clearFields,
                icon: Icons.clear,
                focusNode: _clearXtreamButtonFocusNode,
                onTap: _clearXtreamFields,
              ),
              SettingsActionTile(
                title: AppLocalizations.of(context)!.managePlaylists,
                icon: Icons.playlist_add_check,
                onTap: _showManagePlaylistsDialog,
              ),
            ],
          ],
        ),

        SettingsGroup(
          title: AppLocalizations.of(context)!.epgPreferences,
          children: [
            Consumer<IncrementalEpgService>(
              builder: (context, epgService, _) {
                final detected = epgService.currentUrl ?? _detectedEpgUrl;
                return SettingsActionTile(
                  title: AppLocalizations.of(context)!.detectedEpgUrl,
                  subtitle: detected.isNotEmpty
                      ? detected
                      : AppLocalizations.of(context)!.noneDetected,
                  icon: Icons.link,
                  onTap: null,
                );
              },
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.updateEpgNow,
              icon: Icons.sync,
              iconColor: AppTheme.primaryBlue,
              titleColor: AppTheme.primaryBlue,
              focusNode: _updateEpgButtonFocusNode,
              onTap: _handleUpdateEpg,
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.clearEpgData,
              icon: Icons.delete_outline,
              focusNode: _clearEpgButtonFocusNode,
              onTap: _handleClearEpg,
            ),
            SettingsActionTile(
              title: 'Clear Artwork Cache',
              subtitle: 'Reset artwork negative cache and retry failed fetches',
              icon: Icons.image_not_supported,
              onTap: _handleClearArtworkCache,
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.autoRefreshInterval,
              subtitle: AppLocalizations.of(context)!
                  .refreshEveryHours(_epgCacheDuration),
              icon: Icons.timer,
              trailing: Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.remove, color: Colors.white),
                      onPressed: () => _adjustEpgCacheDuration(-1)),
                  const SizedBox(width: 8),
                  IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () => _adjustEpgCacheDuration(1)),
                ],
              ),
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.dataRetention,
              subtitle: AppLocalizations.of(context)!
                  .keepDataForDays(_epgRetentionDays),
              icon: Icons.calendar_today,
              trailing: Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.remove, color: Colors.white),
                      onPressed: () => _adjustEpgRetentionDays(-1)),
                  const SizedBox(width: 8),
                  IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () => _adjustEpgRetentionDays(1)),
                ],
              ),
            ),
          ],
        ),

        SettingsGroup(
          title: AppLocalizations.of(context)!.system,
          children: [
            SettingsActionTile(
              title: AppLocalizations.of(context)!.epgDiagnosticTool,
              icon: Icons.bug_report,
              onTap: () => context.push('/epg-diagnostic'),
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.exportBackup,
              icon: Icons.upload_file,
              onTap: _exportBackup,
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.importBackup,
              icon: Icons.file_download,
              onTap: _importBackup,
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.debugPerformance,
              icon: Icons.speed,
              onTap: () => context.push('/debug'),
            ),
          ],
        ),
      ],
    );
  }

  Future<Map<String, int>?> _fetchXtreamPanelCounts() async {
    final server = _xtreamServerController.text.trim();
    final username = _xtreamUsernameController.text.trim();
    final password = _xtreamPasswordController.text.trim();
    if (server.isEmpty || username.isEmpty || password.isEmpty) {
      return null;
    }

    if (_xtreamPanelCounts != null &&
        _xtreamPanelCountsFetchedAt != null &&
        DateTime.now().difference(_xtreamPanelCountsFetchedAt!) <
            const Duration(minutes: 5)) {
      return _xtreamPanelCounts;
    }

    if (_xtreamPanelCountsInFlight) return _xtreamPanelCounts;
    _xtreamPanelCountsInFlight = true;

    try {
      final service = XtreamCodesService(
        serverUrl: server,
        username: username,
        password: password,
      );
      final counts = await service.getPanelCounts();
      service.dispose();
      if (counts != null) {
        _xtreamPanelCounts = counts;
        _xtreamPanelCountsFetchedAt = DateTime.now();
      }
      return counts;
    } finally {
      _xtreamPanelCountsInFlight = false;
    }
  }
}
