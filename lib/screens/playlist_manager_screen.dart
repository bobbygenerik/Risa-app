import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class PlaylistManagerScreen extends StatefulWidget {
  const PlaylistManagerScreen({super.key});

  @override
  State<PlaylistManagerScreen> createState() => _PlaylistManagerScreenState();
}

class _PlaylistManagerScreenState extends State<PlaylistManagerScreen> {
  List<SavedPlaylist> _playlists = [];
  bool _isLoading = true;
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
    _loadPlaylists();
  }

  @override
  void dispose() {
    _contentScrollController.dispose();
    for (final node in _playlistFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  Future<void> _loadPlaylists() async {
    setState(() => _isLoading = true);

    final prefs = await SharedPreferences.getInstance();
    final playlistsJson = prefs.getString('saved_playlists');
    var activeId = prefs.getString('active_playlist_id');

    if (playlistsJson != null && playlistsJson.trim().isNotEmpty) {
      final List<dynamic> decoded = jsonDecode(playlistsJson);
      _playlists = decoded
          .map(
              (json) => SavedPlaylist.fromJson(Map<String, dynamic>.from(json)))
          .toList();
    }

    await _migrateLegacyPlaylistsIfNeeded(prefs);
    await _normalizePlaylistIds(prefs);
    activeId = prefs.getString('active_playlist_id');

    setState(() {
      _activePlaylistId = activeId;
      _isLoading = false;
      _syncPlaylistFocusNodes();
    });
  }

  Future<void> _migrateLegacyPlaylistsIfNeeded(SharedPreferences prefs) async {
    final alreadyMigrated = prefs.getBool('legacy_playlists_migrated') ?? false;
    final legacyM3u = prefs.getStringList('saved_m3u_playlists') ?? [];
    final legacyXtream = prefs.getStringList('saved_xtream_servers') ?? [];
    if (alreadyMigrated || (legacyM3u.isEmpty && legacyXtream.isEmpty)) {
      return;
    }

    final existingKeys = _playlists.map((p) => '${p.type}:${p.url}').toSet();
    final migrated = <SavedPlaylist>[];

    for (final url in legacyM3u) {
      final key = 'm3u:$url';
      if (existingKeys.contains(key)) continue;
      final enc = base64Url.encode(utf8.encode(url));
      final name = prefs.getString('m3u_playlist_name_$enc') ?? 'M3U Playlist';
      final epgUrl = prefs.getString('m3u_epg_url_$enc') ?? '';
      final secondary = prefs.getString('m3u_secondary_epg_$enc') ?? '';
      migrated.add(
        SavedPlaylist(
          id: stablePlaylistId(type: 'm3u', url: url),
          name: name,
          type: 'm3u',
          url: url,
          server: null,
          username: null,
          password: null,
          epgUrl: epgUrl.isEmpty ? null : epgUrl,
          epgUrlSecondary: secondary.isEmpty ? null : secondary,
          addedDate: DateTime.now(),
        ),
      );
    }

    for (final server in legacyXtream) {
      final key = 'xtream:$server';
      if (existingKeys.contains(key)) continue;
      final enc = base64Url.encode(utf8.encode(server));
      final name =
          prefs.getString('xtream_playlist_name_$enc') ?? 'Xtream Playlist';
      final username = prefs.getString('xtream_username_$enc') ?? '';
      final password = prefs.getString('xtream_password_$enc') ?? '';
      final epgUrl = prefs.getString('xtream_epg_url_$enc') ?? '';
      final secondary = prefs.getString('xtream_secondary_epg_$enc') ?? '';
      migrated.add(
        SavedPlaylist(
          id: stablePlaylistId(
            type: 'xtream',
            server: server,
            username: username,
          ),
          name: name,
          type: 'xtream',
          url: server,
          server: server,
          username: username.isEmpty ? null : username,
          password: password.isEmpty ? null : password,
          epgUrl: epgUrl.isEmpty ? null : epgUrl,
          epgUrlSecondary: secondary.isEmpty ? null : secondary,
          addedDate: DateTime.now(),
        ),
      );
    }

    if (migrated.isNotEmpty) {
      _playlists = [..._playlists, ...migrated];
      await _savePlaylists();
    }

    await prefs.setBool('legacy_playlists_migrated', true);
  }

  Future<void> _normalizePlaylistIds(SharedPreferences prefs) async {
    if (_playlists.isEmpty) return;
    final activeId = prefs.getString('active_playlist_id');
    var updated = false;
    String? nextActiveId = activeId;
    final next = <SavedPlaylist>[];

    for (final playlist in _playlists) {
      final stableId = stablePlaylistId(
        type: playlist.type,
        url: playlist.url,
        server: playlist.server,
        username: playlist.username,
      );
      if (playlist.id != stableId) {
        updated = true;
        if (activeId == playlist.id) {
          nextActiveId = stableId;
        }
        next.add(SavedPlaylist(
          id: stableId,
          name: playlist.name,
          type: playlist.type,
          url: playlist.url,
          server: playlist.server,
          username: playlist.username,
          password: playlist.password,
          epgUrl: playlist.epgUrl,
          epgUrlSecondary: playlist.epgUrlSecondary,
          addedDate: playlist.addedDate,
        ));
      } else {
        next.add(playlist);
      }
    }

    if (updated) {
      await prefs.setString(
        'saved_playlists',
        jsonEncode(next.map((p) => p.toJson()).toList()),
      );
      if (nextActiveId != null && nextActiveId.isNotEmpty) {
        await prefs.setString('active_playlist_id', nextActiveId);
      }
      _playlists = next;
    }
  }

  void _syncPlaylistFocusNodes() {
    while (_playlistFocusNodes.length < _playlists.length) {
      _playlistFocusNodes.add(
        FocusNode(debugLabel: 'PlaylistTile${_playlistFocusNodes.length}'),
      );
    }
    while (_playlistFocusNodes.length > _playlists.length) {
      _playlistFocusNodes.removeLast().dispose();
    }
  }

  Future<void> _savePlaylists() async {
    final prefs = await SharedPreferences.getInstance();
    final json = jsonEncode(_playlists.map((p) => p.toJson()).toList());
    await prefs.setString('saved_playlists', json);
  }

  Future<void> _deletePlaylist(SavedPlaylist playlist, int index) async {
    final cancelFocus = FocusNode(debugLabel: 'PlaylistDeleteCancel');
    final confirmFocus = FocusNode(debugLabel: 'PlaylistDeleteConfirm');
    const actionButtonWidth = 140.0;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (cancelFocus.canRequestFocus) {
            cancelFocus.requestFocus();
          }
        });
        return AlertDialog(
          backgroundColor: AppTheme.darkBackground,
          title: const Text('Delete Playlist'),
          content: Text('Are you sure you want to delete "${playlist.name}"?'),
          actions: [
            SizedBox(
              width: actionButtonWidth,
              child: BrandSecondaryButton(
                focusNode: cancelFocus,
                label: 'Cancel',
                expand: true,
                onPressed: () => Navigator.pop(context, false),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
            SizedBox(
              width: actionButtonWidth,
              child: BrandPrimaryButton(
                focusNode: confirmFocus,
                label: 'Delete',
                expand: true,
                onPressed: () => Navigator.pop(context, true),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        );
      },
    );
    cancelFocus.dispose();
    confirmFocus.dispose();

    if (confirmed == true) {
      setState(() {
        var removalIndex = index;
        if (removalIndex < 0 ||
            removalIndex >= _playlists.length ||
            _playlists[removalIndex].id != playlist.id) {
          removalIndex =
              _playlists.indexWhere((element) => element.id == playlist.id);
        }
        if (removalIndex >= 0 && removalIndex < _playlists.length) {
          _playlists.removeAt(removalIndex);
        }
        _syncPlaylistFocusNodes();
      });
      await _savePlaylists();

      // If this was the active playlist, clear it
      if (_activePlaylistId == playlist.id) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove('active_playlist_id');
        await prefs.remove('playlist_type');
        await prefs.remove('m3u_url');
        await prefs.remove('xtream_server');
        await prefs.remove('xtream_username');
        await prefs.remove('xtream_password');
        setState(() => _activePlaylistId = null);
      }

      if (mounted) {
        SnackbarUtils.show(context, 'Playlist "${playlist.name}" deleted');
      }
    }
  }

  Future<void> _loadPlaylist(SavedPlaylist playlist) async {
    setState(() => _isLoading = true);

    try {
      final channelProvider = Provider.of<ChannelProvider>(
        context,
        listen: false,
      );
      await channelProvider.loadPlaylistFromUrl(playlist.url);

      // Save as active playlist
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('active_playlist_id', playlist.id);
      await prefs.setString('playlist_type', playlist.type);
      if (playlist.epgUrl != null && playlist.epgUrl!.isNotEmpty) {
        await prefs.setString('epg_url', playlist.epgUrl!);
        await prefs.setString('custom_epg_url', playlist.epgUrl!);
      }
      if (playlist.epgUrlSecondary != null &&
          playlist.epgUrlSecondary!.isNotEmpty) {
        await prefs.setString('secondary_epg_url', playlist.epgUrlSecondary!);
      } else {
        await prefs.remove('secondary_epg_url');
      }

      if (playlist.type == 'm3u') {
        await prefs.setString('m3u_url', playlist.url);
      } else if (playlist.type == 'xtream') {
        await prefs.setString('xtream_server', playlist.server ?? '');
        await prefs.setString('xtream_username', playlist.username ?? '');
        await prefs.setString('xtream_password', playlist.password ?? '');
      }

      setState(() {
        _activePlaylistId = playlist.id;
        _isLoading = false;
      });

      if (mounted) {
        SnackbarUtils.showSuccess(
          context,
          '✓ Loaded "${playlist.name}" - ${channelProvider.channelCount} channels',
        );
        context.go('/home');
      }
    } catch (e) {
      setState(() => _isLoading = false);
      if (mounted) {
        SnackbarUtils.showError(context, 'Failed to load playlist: $e');
      }
    }
  }

  Future<void> _editEpgUrls(SavedPlaylist playlist) async {
    final result = await Navigator.of(context).push<_EpgEditResult>(
      MaterialPageRoute(
        builder: (context) => _PlaylistEpgEditScreen(
          playlistName: playlist.name,
          primaryEpgUrl: playlist.epgUrl ?? '',
          secondaryEpgUrl: playlist.epgUrlSecondary ?? '',
        ),
      ),
    );

    if (result != null) {
      setState(() {
        final idx = _playlists.indexWhere((p) => p.id == playlist.id);
        if (idx != -1) {
          _playlists[idx] = SavedPlaylist(
            id: playlist.id,
            name: playlist.name,
            type: playlist.type,
            url: playlist.url,
            server: playlist.server,
            username: playlist.username,
            password: playlist.password,
            epgUrl: result.primary.trim(),
            epgUrlSecondary: result.secondary.trim(),
            addedDate: playlist.addedDate,
          );
          _syncPlaylistFocusNodes();
        }
      });
      await _savePlaylists();
      if (_activePlaylistId == playlist.id) {
        final prefs = await SharedPreferences.getInstance();
        final primary = result.primary.trim();
        final secondary = result.secondary.trim();
        if (primary.isNotEmpty) {
          await prefs.setString('epg_url', primary);
          await prefs.setString('custom_epg_url', primary);
        } else {
          await prefs.remove('custom_epg_url');
        }
        if (secondary.isNotEmpty) {
          await prefs.setString('secondary_epg_url', secondary);
        } else {
          await prefs.remove('secondary_epg_url');
        }
      }
    }
  }

  Future<void> _editPlaylist(SavedPlaylist playlist) async {
    final result = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => _PlaylistNameEditScreen(
          initialName: playlist.name,
          playlistName: playlist.name,
        ),
      ),
    );

    if (result != null && result.isNotEmpty) {
      setState(() {
        final index = _playlists.indexWhere((p) => p.id == playlist.id);
        if (index != -1) {
          _playlists[index] = SavedPlaylist(
            id: playlist.id,
            name: result,
            type: playlist.type,
            url: playlist.url,
            server: playlist.server,
            username: playlist.username,
            password: playlist.password,
            addedDate: playlist.addedDate,
          );
          _syncPlaylistFocusNodes();
        }
      });
      await _savePlaylists();

      if (mounted) {
        SnackbarUtils.showSuccess(context, 'Playlist renamed to "$result"');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SettingsLayout(
      categories: _categories,
      selectedIndex: _selectedCategoryIndex,
      onCategorySelected: (index) {
        setState(() {
          _selectedCategoryIndex = index;
        });
      },
      content: _buildSettingsContent(),
      onBackToHome: () {
        context.go('/settings');
      },
      onRequestContentFocus: () {
        if (_playlistFocusNodes.isNotEmpty) {
          _playlistFocusNodes.first.requestFocus();
        } else {
          FocusScope.of(context).nextFocus();
        }
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

class _EpgEditResult {
  final String primary;
  final String secondary;

  const _EpgEditResult({
    required this.primary,
    required this.secondary,
  });
}

class _PlaylistEpgEditScreen extends StatefulWidget {
  final String playlistName;
  final String primaryEpgUrl;
  final String secondaryEpgUrl;

  const _PlaylistEpgEditScreen({
    required this.playlistName,
    required this.primaryEpgUrl,
    required this.secondaryEpgUrl,
  });

  @override
  State<_PlaylistEpgEditScreen> createState() => _PlaylistEpgEditScreenState();
}

class _PlaylistNameEditScreen extends StatefulWidget {
  final String playlistName;
  final String initialName;

  const _PlaylistNameEditScreen({
    required this.playlistName,
    required this.initialName,
  });

  @override
  State<_PlaylistNameEditScreen> createState() =>
      _PlaylistNameEditScreenState();
}

class _PlaylistNameEditScreenState extends State<_PlaylistNameEditScreen> {
  late final TextEditingController _nameController;
  final FocusNode _nameFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nameFocus.dispose();
    super.dispose();
  }

  void _handleSave() {
    Navigator.pop(context, _nameController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('Rename Playlist'),
        backgroundColor: Colors.white.withValues(alpha: 0.08),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: [
          SettingsSectionHeader(
            title: widget.playlistName,
            subtitle: 'Update the display name for this playlist',
          ),
          SettingsGroup(
            title: 'Playlist Name',
            children: [
              SettingsInputTile(
                label: 'Name',
                hint: 'Enter playlist name',
                icon: Icons.edit,
                controller: _nameController,
                focusNode: _nameFocus,
              ),
            ],
          ),
          SettingsGroup(
            title: 'Actions',
            children: [
              SettingsActionTile(
                title: 'Cancel',
                icon: Icons.close,
                onTap: () => Navigator.pop(context),
              ),
              SettingsActionTile(
                title: 'Save Name',
                icon: Icons.save,
                iconColor: AppTheme.primaryBlue,
                titleColor: AppTheme.primaryBlue,
                onTap: _handleSave,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PlaylistEpgEditScreenState extends State<_PlaylistEpgEditScreen> {
  late final TextEditingController _primaryController;
  late final TextEditingController _secondaryController;
  final FocusNode _primaryFocus = FocusNode();
  final FocusNode _secondaryFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _primaryController = TextEditingController(text: widget.primaryEpgUrl);
    _secondaryController = TextEditingController(text: widget.secondaryEpgUrl);
  }

  @override
  void dispose() {
    _primaryController.dispose();
    _secondaryController.dispose();
    _primaryFocus.dispose();
    _secondaryFocus.dispose();
    super.dispose();
  }

  void _handleSave() {
    Navigator.pop(
      context,
      _EpgEditResult(
        primary: _primaryController.text,
        secondary: _secondaryController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('Edit EPG URLs'),
        backgroundColor: Colors.white.withValues(alpha: 0.08),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: [
          SettingsSectionHeader(
            title: widget.playlistName,
            subtitle: 'Update primary and secondary EPG sources',
          ),
          SettingsGroup(
            title: 'EPG URLs',
            children: [
              SettingsInputTile(
                label: 'Primary EPG URL',
                hint: 'http://example.com/epg.xml',
                icon: Icons.tv,
                controller: _primaryController,
                focusNode: _primaryFocus,
              ),
              SettingsInputTile(
                label: 'Secondary EPG URL',
                hint: 'Optional backup',
                icon: Icons.tv,
                controller: _secondaryController,
                focusNode: _secondaryFocus,
              ),
            ],
          ),
          SettingsGroup(
            title: 'Actions',
            children: [
              SettingsActionTile(
                title: 'Cancel',
                icon: Icons.close,
                onTap: () => Navigator.pop(context),
              ),
              SettingsActionTile(
                title: 'Save EPG URLs',
                icon: Icons.save,
                iconColor: AppTheme.primaryBlue,
                titleColor: AppTheme.primaryBlue,
                onTap: _handleSave,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
