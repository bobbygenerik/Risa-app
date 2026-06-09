part of '../playlist_editor_screen.dart';

extension PlaylistEditorActions on _PlaylistEditorScreenState {
Future<void> _pasteFromClipboard(TextEditingController controller) async {
  try {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    if (data != null && data.text != null && data.text!.isNotEmpty) {
      controller.text = data.text!;
      controller.selection =
          TextSelection.collapsed(offset: controller.text.length);
    }
  } catch (_) {
    // ignore
  }
}

Future<void> _loadPlaylistData() async {
  final prefs = await SharedPreferences.getInstance();
  final xtreamPassword = await XtreamCredentialStore.readGlobalPassword();
  _updateEditorState(() {
    _playlistType = prefs.getString('playlist_type') ?? 'm3u';
    _playlistNameController.text =
        prefs.getString('playlist_name') ?? 'My Playlist';
    _m3uUrlController.text = prefs.getString('m3u_url') ?? '';
    _xtreamServerController.text = prefs.getString('xtream_server') ?? '';
    _xtreamUsernameController.text = prefs.getString('xtream_username') ?? '';
    _xtreamPasswordController.text = xtreamPassword;
    _updateFrequencyHours = prefs.getInt('playlist_update_frequency') ?? 24;
    _isLoading = false;
  });
}

Future<void> _saveSettings() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('playlist_name', _playlistNameController.text);
  await prefs.setInt('playlist_update_frequency', _updateFrequencyHours);

  if (_playlistType == 'm3u') {
    await prefs.setString('m3u_url', _m3uUrlController.text);
  } else {
    await prefs.setString('xtream_server', _xtreamServerController.text);
    await prefs.setString('xtream_username', _xtreamUsernameController.text);
    await XtreamCredentialStore.writeGlobalPassword(
        _xtreamPasswordController.text);
  }

  if (mounted) {
    showAppSnackBar(
      context,
      const SnackBar(
        content: Text('Settings saved successfully'),
        backgroundColor: AppTheme.accentGreen,
      ),
    );
  }
}

Future<void> _updatePlaylist() async {
  _updateEditorState(() => _isLoading = true);

  try {
    final provider = Provider.of<ChannelProvider>(context, listen: false);

    if (_playlistType == 'm3u') {
      final url = _m3uUrlController.text.trim();
      if (url.isEmpty) {
        throw Exception('M3U URL is empty');
      }
      await provider.loadPlaylistFromUrl(url);
    } else {
      final server = _xtreamServerController.text.trim();
      final username = _xtreamUsernameController.text.trim();
      final password = _xtreamPasswordController.text.trim();

      if (server.isEmpty || username.isEmpty) {
        throw Exception('Server URL and username are required');
      }

      try {
        final cleaned = server.replaceAll(RegExp(r'\s+'), '');
        var baseUri = Uri.parse(cleaned);
        if (baseUri.scheme.isEmpty || baseUri.host.isEmpty) {
          baseUri = Uri.parse(
              'https://${cleaned.replaceAll(RegExp(r'^https?://'), '')}');
        }
        final playlistUri = baseUri.replace(
          path: (baseUri.path.trim().isEmpty)
              ? 'get.php'
              : '${baseUri.path.replaceAll(RegExp(r'^/'), '')}/get.php',
          queryParameters: {
            'username': username.replaceAll(' ', ''),
            'password': password.replaceAll(' ', ''),
            'type': 'm3u_plus',
            'output': 'ts'
          },
        );
        await provider.loadPlaylistFromUrl(playlistUri.toString());
      } catch (_) {
        await provider.loadPlaylistFromUrl(
            '${server.replaceAll(' ', '')}/get.php?username=${username.replaceAll(' ', '')}&password=${password.replaceAll(' ', '')}&type=m3u_plus&output=ts');
      }
    }

    if (mounted) {
      _updateEditorState(() => _isLoading = false);

      // Save settings after successful update
      await _saveSettings();

      if (mounted) {
        showAppSnackBar(
          context,
          SnackBar(
            content: Text(
                'Playlist updated! ${provider.channelCount} channels found.'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
      }
    }
  } catch (e) {
    if (mounted) {
      _updateEditorState(() => _isLoading = false);

      final provider = Provider.of<ChannelProvider>(context, listen: false);
      final errorMessage = provider.errorMessage ?? e.toString();

      // Show detailed error in dialog instead of snackbar
      unawaited(showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: AppTheme.dialogBackground,
          title: Row(
            children: [
              Icon(Icons.error_outline, color: AppTheme.accentRed, size: 28),
              const SizedBox(width: 12),
              const Text('Update Failed'),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Failed to update playlist. Please check your connection and try again in a few moments.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text('Error details:',
                    style: TextStyle(
                        fontSize: 12, color: AppTheme.textSecondary)),
                const SizedBox(height: 8),
                Text(
                  errorMessage,
                  style:
                      const TextStyle(fontSize: 12, fontFamily: 'monospace'),
                ),
                if (errorMessage.contains('429'))
                  const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      'ℹ️ HTTP 429 means the server is rate-limiting requests. Please wait a few minutes before trying again.',
                      style: TextStyle(
                          fontSize: 12, color: AppTheme.accentOrange),
                    ),
                  ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              autofocus: true,
              child: const Text('OK'),
            ),
          ],
        ),
      ));
    }
  }
}

Future<void> _deletePlaylist() async {
  final confirm = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppTheme.dialogBackground,
      title: const Text('Delete Playlist?'),
      content: const Text(
        'This will remove all saved playlist data and credentials. This action cannot be undone.',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          autofocus: true,
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(context, true),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.accentRed,
          ),
          child: const Text('Delete'),
        ),
      ],
    ),
  );

  if (confirm == true) {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('playlist_type');
    await prefs.remove('playlist_name');
    await prefs.remove('m3u_url');
    await prefs.remove('xtream_server');
    await prefs.remove('xtream_username');
    await XtreamCredentialStore.clearGlobalPassword();
    await prefs.remove('playlist_update_frequency');

    if (mounted) {
      showAppSnackBar(
        context,
        const SnackBar(
          content: Text('Playlist deleted'),
          backgroundColor: AppTheme.accentGreen,
        ),
      );
      // Use go instead of pop to navigate safely
      if (mounted) {
        if (GoRouter.of(context).canPop()) {
          context.pop();
        } else {
          context.go('/settings');
        }
      }
    }
  }
}

}
