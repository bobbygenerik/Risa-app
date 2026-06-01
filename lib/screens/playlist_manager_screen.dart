import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:iptv_player/models/saved_playlist.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/utils/snackbar_utils.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/settings_tile_widgets.dart';
import 'package:iptv_player/widgets/settings_layout.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/hash_utils.dart';
import 'package:iptv_player/services/xtream_credential_store.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

part 'playlist_manager/playlist_manager_logic.dart';
part 'playlist_manager/playlist_manager_ui.dart';
part 'playlist_manager/playlist_manager_edit_screens.dart';

class PlaylistManagerScreen extends StatefulWidget {
  const PlaylistManagerScreen({super.key});

  @override
  State<PlaylistManagerScreen> createState() => _PlaylistManagerScreenState();
}

class _PlaylistManagerScreenState extends State<PlaylistManagerScreen> {
  List<SavedPlaylist> _playlists = [];
  bool _isLoading = true;
  String? _loadError;
  String? _activePlaylistId;
  final List<FocusNode> _playlistFocusNodes = [];
  final ScrollController _contentScrollController = ScrollController();
  final List<SettingsCategory> _categories = const [
    SettingsCategory(title: 'Playlists', icon: Icons.playlist_play),
    SettingsCategory(title: 'Actions', icon: Icons.settings),
  ];
  int _selectedCategoryIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(_loadPlaylists());
    });
  }

  @override
  void dispose() {
    _contentScrollController.dispose();
    for (final node in _playlistFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafePopScope(
      onWillPop: () async {
        if (GoRouter.of(context).canPop()) {
          context.pop();
        } else {
          context.go('/settings');
        }
        return false;
      },
      autoFocusOnShow: true,
    );
  }

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
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppTheme.primaryBlue),
      );
    }
    if (_playlists.isEmpty) {
      return _buildEmptyState();
    }
    return _buildPlaylistList();
  }

  Widget _buildPremiumPlaylistTile({
    required SavedPlaylist playlist,
    required bool isActive,
    required int index,
  }) {
    final focusNode =
        _playlistFocusNodes.length > index ? _playlistFocusNodes[index] : null;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white.withAlpha((0.08 * 255).round()),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TVFocusable(
                focusNode: focusNode,
                borderRadius: BorderRadius.circular(12),
                onPressed: () {
                  if (!isActive) {
                    _loadPlaylist(playlist);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.sm),
                  child: Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: isActive
                              ? AppTheme.primaryBlue
                              : AppTheme.primaryBlue
                                  .withAlpha((0.2 * 255).round()),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          playlist.type == 'm3u' ? Icons.link : Icons.cast,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: AppSizes.md),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    playlist.name,
                                    style: AppTypography.cardTitle(context).copyWith(
                                      fontSize: context.tvTextSize(16),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                if (isActive) ...[
                                  const SizedBox(width: 8),
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
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              playlist.type == 'm3u'
                                  ? 'M3U Playlist'
                                  : 'Xtream Codes',
                              style: AppTypography.bodySecondary(context)
                                  .copyWith(fontSize: context.tvTextSize(13)),
                            ),
                            if (playlist.type == 'xtream' &&
                                playlist.server != null)
                              Text(
                                playlist.server!,
                                style: AppTypography.smallText(context).copyWith(
                                  fontSize: context.tvTextSize(11),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (!isActive) ...[
                    _buildPlaylistActionButton(
                      icon: Icons.play_arrow,
                      color: AppTheme.primaryBlue,
                      tooltip: 'Load',
                      onPressed: () => _loadPlaylist(playlist),
                    ),
                    const SizedBox(width: 6),
                  ],
                  _buildPlaylistActionButton(
                    icon: Icons.edit,
                    color: AppTheme.textPrimary,
                    tooltip: 'Rename',
                    onPressed: () => _editPlaylist(playlist),
                  ),
                  const SizedBox(width: 6),
                  _buildPlaylistActionButton(
                    icon: Icons.link,
                    color: AppTheme.textPrimary,
                    tooltip: 'Edit EPG URLs',
                    onPressed: () => _editEpgUrls(playlist),
                  ),
                  const SizedBox(width: 6),
                  _buildPlaylistActionButton(
                    icon: Icons.delete,
                    color: AppTheme.accentRed,
                    tooltip: 'Delete',
                    onPressed: () => _deletePlaylist(playlist, index),
                  ),
                ],
              ),
            ),
          ],
        ),
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
          return AnimatedScale(
            scale: isFocused ? 1.1 : 1.0,
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOutCubic,
            child: AnimatedContainer(
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
                iconSize: 20,
                padding: const EdgeInsets.all(8),
                constraints: const BoxConstraints(),
                onPressed: onPressed,
              ),
            ),
          );
        },
        onRequestContentFocus: () {
          if (_playlistFocusNodes.isNotEmpty) {
            _playlistFocusNodes.first.requestFocus();
          } else {
            FocusScope.of(context).nextFocus();
          }
        },
        autoFocusOnShow: true,
      ),
    );
  }
}
