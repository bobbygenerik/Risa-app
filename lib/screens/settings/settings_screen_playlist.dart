part of '../settings_screen.dart';

extension SettingsScreenPlaylist on _SettingsScreenState {
  // LOGIC HELPERS REMAIN UNCHANGED
  Future<String> _getStoragePath() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('recording_storage_path') ?? '/storage/recordings';
  }

  void _showPlaylistResponsePreview(String content) {
    const maxPreviewChars = 20000;
    final preview = content.trim().isEmpty ? '<empty response>' : content;
    final truncatedPreview = preview.length > maxPreviewChars
        ? '${preview.substring(0, maxPreviewChars)}\n\n…(truncated)'
        : preview;
    final extinfCount =
        RegExp(r'EXTINF:', caseSensitive: false).allMatches(content).length;
    final extinfHashCount =
        RegExp(r'#EXTINF:', caseSensitive: false).allMatches(content).length;
    final urlCount =
        RegExp(r'https?://', caseSensitive: false).allMatches(content).length;
    final lfCount = RegExp('\n').allMatches(content).length;
    final crCount = RegExp('\r').allMatches(content).length;
    final hasM3uHeader = content.contains('#EXTM3U');
    final diagnostics = [
      'Diagnostics',
      'length: ${content.length}',
      'EXTINF: $extinfCount',
      '#EXTINF: $extinfHashCount',
      'http(s)://: $urlCount',
      '\\n: $lfCount',
      '\\r: $crCount',
      'has #EXTM3U: $hasM3uHeader',
    ].join('\n');
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PlaylistResponsePreviewScreen(
          diagnostics: diagnostics,
          preview: truncatedPreview,
        ),
      ),
    );
  }

  String _normalizeHttpUrl(String input) {
    final trimmed = input.trim();
    if (trimmed.isEmpty) return '';
    if (trimmed.startsWith('http://') || trimmed.startsWith('https://')) {
      return trimmed;
    }
    return 'http://$trimmed';
  }

  Future<void> _loadM3uPlaylist() async {
    final url = _normalizeHttpUrl(_m3uUrlController.text);
    if (url.isEmpty) {
      _showMessage(AppLocalizations.of(context)!.pleaseEnterPlaylistUrl);
      return;
    }
    _showMessage(AppLocalizations.of(context)!.loadingPlaylist);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('m3u_url', url);
    await prefs.setString('playlist_type', 'm3u');
    if (mounted) {
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      await provider.loadPlaylistFromUrl(url);
      final hasContent = provider.channelCount > 0;
      final error = provider.errorMessage;
      final responsePreview = provider.lastM3UContent;
      if (error != null && error.trim().isNotEmpty) {
        _showMessage(error);
        if (responsePreview != null && responsePreview.isNotEmpty) {
          _showPlaylistResponsePreview(responsePreview);
        }
      } else if (!hasContent) {
        _showMessage('No channels found in this playlist.');
        if (responsePreview != null && responsePreview.isNotEmpty) {
          _showPlaylistResponsePreview(responsePreview);
        }
      } else {
        _m3uUrlController.clear();
        _showMessage('Playlist loaded successfully!');
        await _savePlaylistToLibrary(
          SavedPlaylist(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            name: url,
            type: 'm3u',
            url: url,
            epgUrl: prefs.getString('epg_url'),
            epgUrlSecondary: prefs.getString('secondary_epg_url'),
            addedDate: DateTime.now(),
          ),
        );
        // Trigger EPG refresh with the detected URL
        if (mounted) {
          unawaited(Provider.of<IncrementalEpgService>(context, listen: false)
              .initialize(forceRefresh: true));
        }
      }
      if (mounted) _refreshGeneralPlaylistStatus();
    }
  }

  Future<void> _loadXtreamPlaylist() async {
    final server = _normalizeHttpUrl(_xtreamServerController.text);
    final username = _xtreamUsernameController.text.trim();
    final password = _xtreamPasswordController.text.trim();
    if (server.isEmpty || username.isEmpty || password.isEmpty) {
      _showMessage('Please fill in all fields.');
      return;
    }
    _showMessage('Loading Xtream playlist...');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('xtream_server', server);
    await prefs.setString('xtream_username', username);
    await XtreamCredentialStore.writeGlobalPassword(password);
    await prefs.setString('playlist_type', 'xtream');
    String playlistUrlUsed = '';

    // Compute and save Xtream EPG URL at credential entry time.
    // Respect user-set `custom_epg_url`: if it's present, do not overwrite `epg_url`.
    try {
      try {
        final cleaned = server.trim();
        final epgBase = Uri.parse(cleaned);
        final base = (epgBase.scheme.isEmpty || epgBase.host.isEmpty)
            ? Uri.parse('https://${cleaned.replaceAll(_SettingsScreenState._httpPrefixRe, '')}')
            : epgBase;
        final epgUri = base.replace(
          path: (base.path.trim().isEmpty)
              ? 'xmltv.php'
              : '${base.path.replaceAll(_SettingsScreenState._leadingSlashRe, '')}/xmltv.php',
          queryParameters: {
            'username': username.replaceAll(' ', ''),
            'password': password.replaceAll(' ', ''),
          },
        );
        final custom = prefs.getString('custom_epg_url') ?? '';
        if (custom.trim().isEmpty) {
          await prefs.setString('epg_url', epgUri.toString());
        }
      } catch (e) {
        debugLog(
            'Settings: Xtream EPG URL construction failed (credentials not logged)');
      }
    } catch (e) {
      debugLog(
          'Settings: Xtream EPG URL outer block failed (credentials not logged)');
    }
    if (mounted) {
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      try {
        final cleaned = server.trim();
        Uri baseUri = Uri.parse(cleaned);
        if (baseUri.scheme.isEmpty || baseUri.host.isEmpty) {
          baseUri =
              Uri.parse('https://${cleaned.replaceAll(_SettingsScreenState._httpPrefixRe, '')}');
        }
        final playlistUri = baseUri.replace(
          path: (baseUri.path.trim().isEmpty)
              ? 'get.php'
              : '${baseUri.path.replaceAll(_SettingsScreenState._leadingSlashRe, '')}/get.php',
          queryParameters: {
            'username': username.replaceAll(' ', ''),
            'password': password.replaceAll(' ', ''),
            'type': 'm3u_plus',
          },
        );
        playlistUrlUsed = playlistUri.toString();
        await provider.loadPlaylistFromUrl(playlistUrlUsed);
      } catch (e) {
        playlistUrlUsed =
            '${server.replaceAll(' ', '')}/get.php?username=${username.replaceAll(' ', '')}&password=${password.replaceAll(' ', '')}&type=m3u_plus';
        await provider.loadPlaylistFromUrl(playlistUrlUsed);
      }
      final hasContent = provider.channelCount > 0;
      final error = provider.errorMessage;
      final responsePreview = provider.lastM3UContent;
      if (error != null && error.trim().isNotEmpty) {
        _showMessage(error);
        if (responsePreview != null && responsePreview.isNotEmpty) {
          _showPlaylistResponsePreview(responsePreview);
        }
      } else if (!hasContent) {
        _showMessage('No channels found in this playlist.');
        if (responsePreview != null && responsePreview.isNotEmpty) {
          _showPlaylistResponsePreview(responsePreview);
        }
      } else {
        _clearXtreamFields();
        _showMessage('Xtream playlist loaded successfully!');
        await _savePlaylistToLibrary(
          SavedPlaylist(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            name: server,
            type: 'xtream',
            url: playlistUrlUsed,
            server: server,
            username: username,
            password: password,
            epgUrl: prefs.getString('epg_url'),
            epgUrlSecondary: prefs.getString('secondary_epg_url'),
            addedDate: DateTime.now(),
          ),
        );
        // Trigger EPG refresh with the detected URL
        if (mounted) {
          unawaited(Provider.of<IncrementalEpgService>(context, listen: false)
              .initialize(forceRefresh: true));
        }
      }
      if (mounted) _refreshGeneralPlaylistStatus();
    }
  }

  void _clearXtreamFields() {
    _xtreamServerController.clear();
    _xtreamUsernameController.clear();
    _xtreamPasswordController.clear();
  }

  Future<void> _handleUpdateEpg() async {
    _showMessage('Updating EPG...');
    final service = Provider.of<IncrementalEpgService>(context, listen: false);
    await service.initialize();
    if (!mounted) return;
    _showMessage('EPG update triggered.');
  }

  Future<void> _handleClearEpg() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AppDialog(
        title: 'Clear EPG Data?',
        content: const Text(
          'This will delete all cached program data. You will need to re-download the EPG.',
          style: TextStyle(color: AppTheme.textSecondary),
        ),
        actions: [
          AppDialogButton(
            text: 'Cancel',
            onPressed: () => Navigator.of(context).pop(false),
          ),
          AppDialogButton(
            text: 'Clear',
            isPrimary: true,
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    if (!mounted) return;
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('live_tv_program_artwork_title_cache_v1');
    await prefs.remove('live_tv_program_artwork_negative_cache_v1');
    await epgService.clearAllData(
      clearUrls: false,
      clearSavedPlaylists: false,
    );
    if (!mounted) return;
    setState(() {});
    _showMessage('EPG cleared.');
  }

  Future<void> _handleClearArtworkCache() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AppDialog(
        title: 'Clear Artwork Cache?',
        content: const Text(
          'This will delete all cached artwork and negative cache entries.',
          style: TextStyle(color: AppTheme.textSecondary),
        ),
        actions: [
          AppDialogButton(
            text: 'Cancel',
            onPressed: () => Navigator.of(context).pop(false),
          ),
          AppDialogButton(
            text: 'Clear',
            isPrimary: true,
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    if (!mounted) return;
    // Access artwork service from LiveTV screen's state
    // For now, just clear SharedPreferences keys
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('live_tv_program_artwork_title_cache_v1');
    await prefs.remove('live_tv_program_artwork_negative_cache_v1');
    PaintingBinding.instance.imageCache.clear();
    PaintingBinding.instance.imageCache.clearLiveImages();
    if (!mounted) return;
    _showMessage('Artwork cache cleared. Restart app to refetch.');
  }

  void _browseStorage() async {
    try {
      final result = await FilePicker.platform.getDirectoryPath();
      if (!mounted) return;
      if (result != null) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('recording_storage_path', result);
        if (!mounted) return;
        _showMessage('Storage path updated: $result');
        setState(() {});
      }
    } catch (e) {
      if (!mounted) return;
      _showMessage('Failed to select directory: $e');
    }
  }
}
