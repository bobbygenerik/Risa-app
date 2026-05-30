part of '../playlist_manager_screen.dart';

extension PlaylistManagerLogic on _PlaylistManagerScreenState {
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
      final password =
          await XtreamCredentialStore.readPasswordForEncodedServer(enc);
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
        await XtreamCredentialStore.clearGlobalPassword();
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
        await XtreamCredentialStore.writeGlobalPassword(
            playlist.password ?? '');
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

}
