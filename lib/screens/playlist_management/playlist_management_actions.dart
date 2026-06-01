part of '../playlist_management_screen.dart';

extension PlaylistManagementActions on _PlaylistManagementScreenState {
void _editPlaylistName(PlaylistInfo playlist) {
  Navigator.of(context)
      .push<String>(
    MaterialPageRoute(
      builder: (context) => _PlaylistFieldEditScreen(
        title: 'Edit Playlist Name',
        playlistName: playlist.name,
        label: 'Playlist Name',
        hint: 'Enter playlist name',
        icon: Icons.edit,
        initialValue: playlist.name,
        saveLabel: 'Save Name',
      ),
    ),
  )
      .then((value) {
    if (value == null || value.trim().isEmpty) return;
    _playlistNameController.text = value.trim();
    _savePlaylistName(playlist);
  });
}

void _editPlaylistUrl(PlaylistInfo playlist) {
  Navigator.of(context)
      .push<String>(
    MaterialPageRoute(
      builder: (context) => _PlaylistFieldEditScreen(
        title: 'Edit Playlist URL',
        playlistName: playlist.name,
        label: 'Playlist URL',
        hint: 'Enter playlist URL',
        icon: Icons.link,
        initialValue: playlist.url,
        saveLabel: 'Save URL',
      ),
    ),
  )
      .then((value) {
    if (value == null || value.trim().isEmpty) return;
    _playlistUrlController.text = value.trim();
    _savePlaylistUrl(playlist);
  });
}

void _editPlaylistEpg(PlaylistInfo playlist) {
  Navigator.of(context)
      .push<String>(
    MaterialPageRoute(
      builder: (context) => _PlaylistFieldEditScreen(
        title: 'Edit Primary EPG URL',
        playlistName: playlist.name,
        label: 'Primary EPG URL',
        hint: 'Enter EPG URL',
        icon: Icons.tv,
        initialValue: playlist.epgUrl,
        saveLabel: 'Save Primary URL',
      ),
    ),
  )
      .then((value) {
    if (value == null) return;
    _epgUrlController.text = value.trim();
    _savePlaylistEpg(playlist);
  });
}

void _editPlaylistSecondaryEpg(PlaylistInfo playlist) {
  Navigator.of(context)
      .push<String>(
    MaterialPageRoute(
      builder: (context) => _PlaylistFieldEditScreen(
        title: 'Edit Secondary EPG URL',
        playlistName: playlist.name,
        label: 'Secondary EPG URL',
        hint: 'Enter secondary EPG URL',
        icon: Icons.tv,
        initialValue: playlist.secondaryEpgUrl,
        saveLabel: 'Save Secondary URL',
      ),
    ),
  )
      .then((value) {
    if (value == null) return;
    _secondaryEpgUrlController.text = value.trim();
    _savePlaylistSecondaryEpg(playlist);
  });
}

void _updatePlaylistFrequency(PlaylistInfo playlist, int delta) async {
  final newFreq = (playlist.updateFrequency + delta).clamp(1, 24);
  if (newFreq != playlist.updateFrequency) {
    final prefs = await SharedPreferences.getInstance();
    final enc = base64Url.encode(utf8.encode(playlist.url));
    if (playlist.type == 'm3u') {
      await prefs.setInt('m3u_update_freq_$enc', newFreq);
      await prefs.remove('m3u_update_freq_${playlist.url}');
    } else {
      await prefs.setInt('xtream_update_freq_$enc', newFreq);
      await prefs.remove('xtream_update_freq_${playlist.url}');
    }

    _updatePlaylistState(() {
      playlist.updateFrequency = newFreq;
    });

    _showMessage('Update frequency updated to $newFreq hours');
  }
}

void _manualUpdatePlaylist(PlaylistInfo playlist) async {
  _showMessage('Manual update started...');
  final service = Provider.of<IncrementalEpgService>(context, listen: false);
  await service.initialize();
  _showMessage('Manual update triggered for ${playlist.name}');
}

void _loadPlaylist(PlaylistInfo playlist) async {
  _showMessage('Loading ${playlist.name}...');
  final provider = Provider.of<ChannelProvider>(context, listen: false);

  String playlistUrl;
  if (playlist.type == 'm3u') {
    playlistUrl = playlist.url;
  } else {
    try {
      final cleaned = playlist.url.trim();
      var baseUri = Uri.parse(cleaned);
      if (baseUri.scheme.isEmpty || baseUri.host.isEmpty) {
        baseUri = Uri.parse(
            'https://${cleaned.replaceAll(RegExp(r'^https?://'), '')}');
      }
      final playlistUri = baseUri.replace(
        path: (baseUri.path.trim().isEmpty)
            ? 'xmltv.php'
            : '${baseUri.path.replaceAll(RegExp(r'^/'), '')}/xmltv.php',
        queryParameters: {
          'username': (playlist.username ?? '').replaceAll(' ', ''),
          'password': (playlist.password ?? '').replaceAll(' ', ''),
          'type': 'm3u_plus',
          'output': 'ts'
        },
      );
      playlistUrl = playlistUri.toString();
    } catch (_) {
      playlistUrl =
          '${playlist.url}/get.php?username=${playlist.username}&password=${playlist.password}&type=m3u_plus&output=ts';
    }
  }

  await provider.loadPlaylistFromUrl(playlistUrl);
  _showMessage('${playlist.name} loaded successfully!');
}

void _deletePlaylist(PlaylistInfo playlist) async {
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppTheme.darkBackground,
      title: const Text('Delete Playlist',
          style: TextStyle(color: Colors.white)),
      content: Text(
        'Are you sure you want to delete "${playlist.name}"? This action cannot be undone.',
        style: const TextStyle(color: Colors.white70),
      ),
      actions: [
        TVFocusable(
          autofocus: true,
          child: TextButton(
            onPressed: () => Navigator.pop(context, false),
            child:
                const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
        ),
        TVFocusable(
          child: TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete',
                style: TextStyle(color: AppTheme.accentRed)),
          ),
        ),
      ],
    ),
  );

  if (confirmed == true) {
    final prefs = await SharedPreferences.getInstance();

    if (playlist.type == 'm3u') {
      final savedM3u = prefs.getStringList('saved_m3u_playlists') ?? [];
      savedM3u.remove(playlist.url);
      await prefs.setStringList('saved_m3u_playlists', savedM3u);
      final enc = base64Url.encode(utf8.encode(playlist.url));
      await prefs.remove('m3u_playlist_name_$enc');
      await prefs.remove('m3u_epg_url_$enc');
      await prefs.remove('m3u_secondary_epg_$enc');
      await prefs.remove('m3u_update_freq_$enc');
      // legacy keys cleanup
      await prefs.remove('m3u_playlist_name_${playlist.url}');
      await prefs.remove('m3u_epg_url_${playlist.url}');
      await prefs.remove('m3u_secondary_epg_${playlist.url}');
      await prefs.remove('m3u_update_freq_${playlist.url}');
    } else {
      final savedXtream = prefs.getStringList('saved_xtream_servers') ?? [];
      savedXtream.remove(playlist.url);
      await prefs.setStringList('saved_xtream_servers', savedXtream);
      final enc = base64Url.encode(utf8.encode(playlist.url));
      await prefs.remove('xtream_playlist_name_$enc');
      await prefs.remove('xtream_epg_url_$enc');
      await prefs.remove('xtream_secondary_epg_$enc');
      await prefs.remove('xtream_update_freq_$enc');
      await prefs.remove('xtream_username_$enc');
      await XtreamCredentialStore.clearPasswordForEncodedServer(enc);
      // legacy keys cleanup
      await prefs.remove('xtream_playlist_name_${playlist.url}');
      await prefs.remove('xtream_epg_url_${playlist.url}');
      await prefs.remove('xtream_secondary_epg_${playlist.url}');
      await prefs.remove('xtream_update_freq_${playlist.url}');
    }

    _updatePlaylistState(() {
      _savedPlaylists.removeWhere((p) => p.id == playlist.id);
    });

    _showMessage('${playlist.name} deleted successfully');
  }
}

// Add-dialogs removed: playlist creation handled via Settings → General

// Save methods
Future<void> _savePlaylistName(PlaylistInfo playlist) async {
  final prefs = await SharedPreferences.getInstance();
  final enc = base64Url.encode(utf8.encode(playlist.url));
  if (playlist.type == 'm3u') {
    await prefs.setString(
        'm3u_playlist_name_$enc', _playlistNameController.text);
    await prefs.remove('m3u_playlist_name_${playlist.url}');
  } else {
    await prefs.setString(
        'xtream_playlist_name_$enc', _playlistNameController.text);
    await prefs.remove('xtream_playlist_name_${playlist.url}');
  }

  if (mounted) {
    _updatePlaylistState(() {
      playlist.name = _playlistNameController.text;
    });

    _showMessage('Playlist name updated');
  }
}

Future<void> _savePlaylistUrl(PlaylistInfo playlist) async {
  final prefs = await SharedPreferences.getInstance();
  final newUrl = _playlistUrlController.text;

  if (playlist.type == 'm3u') {
    final enc = base64Url.encode(utf8.encode(newUrl));
    await prefs.setString('m3u_playlist_url_$enc', newUrl);
    await prefs.remove('m3u_playlist_url_${playlist.url}');
  } else {
    final enc = base64Url.encode(utf8.encode(newUrl));
    await prefs.setString('xtream_playlist_url_$enc', newUrl);
    await prefs.remove('xtream_playlist_url_${playlist.url}');
  }

  if (mounted) {
    _updatePlaylistState(() {
      playlist.url = newUrl;
    });

    _showMessage('Playlist URL updated');
  }
}

Future<void> _savePlaylistEpg(PlaylistInfo playlist) async {
  final prefs = await SharedPreferences.getInstance();
  final epgUrl = _epgUrlController.text;

  final enc = base64Url.encode(utf8.encode(playlist.url));
  if (playlist.type == 'm3u') {
    await prefs.setString('m3u_epg_url_$enc', epgUrl);
    await prefs.remove('m3u_epg_url_${playlist.url}');
  } else {
    await prefs.setString('xtream_epg_url_$enc', epgUrl);
    await prefs.remove('xtream_epg_url_${playlist.url}');
  }

  if (mounted) {
    _updatePlaylistState(() {
      playlist.epgUrl = epgUrl;
    });

    _showMessage('EPG URL updated');
  }
}

Future<void> _savePlaylistSecondaryEpg(PlaylistInfo playlist) async {
  final prefs = await SharedPreferences.getInstance();
  final secondaryEpgUrl = _secondaryEpgUrlController.text;

  final enc = base64Url.encode(utf8.encode(playlist.url));
  if (playlist.type == 'm3u') {
    await prefs.setString('m3u_secondary_epg_$enc', secondaryEpgUrl);
    await prefs.remove('m3u_secondary_epg_${playlist.url}');
  } else {
    await prefs.setString('xtream_secondary_epg_$enc', secondaryEpgUrl);
    await prefs.remove('xtream_secondary_epg_${playlist.url}');
  }

  if (mounted) {
    _updatePlaylistState(() {
      playlist.secondaryEpgUrl = secondaryEpgUrl;
    });

    _showMessage('Secondary EPG URL updated');
  }
}

// Playlist creation is handled via Settings → General; helper methods removed.

void _showMessage(String message) {
  if (mounted) {
    showAppSnackBar(
      context,
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1E2328),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
}
