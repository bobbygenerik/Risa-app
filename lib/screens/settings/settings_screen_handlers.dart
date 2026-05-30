part of '../settings_screen.dart';

extension SettingsScreenHandlers on _SettingsScreenState {
  Future<void> _handleSwitchTileChange(String title, bool newValue) async {
    setState(() {
      switch (title) {
        case 'Hardware Acceleration':
          _hardwareAcceleration = newValue;
          break;
        case 'Hardware Decoding':
          _hardwareDecoding = newValue;
          break;
        case 'Auto-play Next Episode':
          _autoPlayNextEpisode = newValue;
          break;
        case 'Remember Position':
          _rememberPlaybackPosition = newValue;
          break;
        case 'Enable Live Transcription':
          _transcriptionEnabled = newValue;
          break;
        case 'Enable Translation':
          _translationEnabled = newValue;
          break;
        case 'Hero Video Preview':
          _heroVideoPreview = newValue;
          break;
      }
    });

    final prefs = await SharedPreferences.getInstance();
    switch (title) {
      case 'Hardware Acceleration':
        await prefs.setBool('hardware_acceleration', newValue);
        break;
      case 'Hardware Decoding':
        await prefs.setBool('hardware_decoding', newValue);
        break;
      case 'Auto-play Next Episode':
        await prefs.setBool('auto_play_next', newValue);
        break;
      case 'Remember Position':
        await prefs.setBool('remember_playback_position', newValue);
        break;
      case 'Enable Live Transcription':
        await prefs.setBool('transcription_enabled', newValue);
        if (newValue && mounted) {
          unawaited(Provider.of<IntegratedTranscriptionService>(context,
                  listen: false)
              .initialize());
        }
        break;
      case 'Enable Translation':
        await prefs.setBool('translation_enabled', newValue);
        if (newValue && mounted) {
          Provider.of<IntegratedTranscriptionService>(context, listen: false)
              .setTranslationEnabled(newValue);
        }
        break;
      case 'Hero Video Preview':
        await prefs.setBool('hero_video_preview', newValue);
        if (mounted) {
          unawaited(Provider.of<SettingsProvider>(context, listen: false)
              .setHeroVideoPreview(newValue));
        }
        break;
    }
  }

  Future<void> _cycleVideoPlayerBackend() async {
    const nextValue = 'VLC';
    setState(() => _videoPlayerBackend = nextValue);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('video_player_backend', nextValue);
    if (mounted) {
      unawaited(Provider.of<SettingsProvider>(context, listen: false)
          .setVideoPlayerBackend(nextValue));
    }
    _showMessage('Video player engine set to $nextValue.');
  }

  Future<void> _savePlaylistToLibrary(SavedPlaylist playlist) async {
    final prefs = await SharedPreferences.getInstance();
    final existingJson = prefs.getString('saved_playlists');
    List<SavedPlaylist> list = [];
    if (existingJson != null && existingJson.trim().isNotEmpty) {
      try {
        final decoded =
            await compute(jsonDecode, existingJson) as List<dynamic>;
        list = decoded
            .map((j) => SavedPlaylist.fromJson(Map<String, dynamic>.from(j)))
            .toList();
      } catch (e) {
        debugLog('Settings: saved_playlists JSON parse failed: $e');
      }
    }

    int existingIndex = -1;
    if (playlist.type == 'm3u') {
      existingIndex = list.indexWhere(
          (p) => p.type == 'm3u' && p.url.trim() == playlist.url.trim());
    } else {
      existingIndex = list.indexWhere((p) =>
          p.type == 'xtream' &&
          (p.server ?? '').trim() == (playlist.server ?? '').trim() &&
          (p.username ?? '').trim() == (playlist.username ?? '').trim());
    }

    final normalized = SavedPlaylist(
      id: existingIndex >= 0 ? list[existingIndex].id : playlist.id,
      name: playlist.name,
      type: playlist.type,
      url: playlist.url,
      server: playlist.server,
      username: playlist.username,
      password: playlist.password,
      epgUrl: playlist.epgUrl,
      epgUrlSecondary: playlist.epgUrlSecondary,
      addedDate: existingIndex >= 0
          ? list[existingIndex].addedDate
          : playlist.addedDate,
    );

    if (existingIndex >= 0) {
      list[existingIndex] = normalized;
    } else {
      list.add(normalized);
    }

    await prefs.setString(
        'saved_playlists', jsonEncode(list.map((p) => p.toJson()).toList()));
    await prefs.setString('playlist_type', normalized.type);
    await prefs.setString('active_playlist_id', normalized.id);
  }

  void _adjustEpgCacheDuration(int delta) async {
    final newValue = (_epgCacheDuration + delta).clamp(1, 24);
    if (newValue != _epgCacheDuration) {
      setState(() => _epgCacheDuration = newValue);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('epg_cache_duration', newValue);
    }
  }

  void _adjustEpgRetentionDays(int delta) async {
    final newValue = (_epgRetentionDays + delta).clamp(1, 14);
    if (newValue != _epgRetentionDays) {
      setState(() => _epgRetentionDays = newValue);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('epg_retention_days', newValue);
    }
  }

  Future<void> _exportBackup() async {
    try {
      final filePath = await BackupService.exportBackup();
      if (filePath != null) _showMessage('Backup exported!');
    } catch (e) {
      _showMessage('Export failed: $e');
    }
  }

  Future<void> _importBackup() async {
    try {
      if (await BackupService.importBackup()) {
        _showMessage('Import successful! Restarting...');
        unawaited(_loadSettingsSync());
      }
    } catch (e) {
      _showMessage('Import failed: $e');
    }
  }

  void _showMessage(String message) {
    if (mounted) {
      SnackbarUtils.show(context, message);
    }
  }

  void _showLanguageModelsDialog() {
    context.push('/translation-models');
  }

  void _showSpeechModelsDialog() {
    context.push('/whisper-models');
  }

  void _showManagePlaylistsDialog() {
    // Use the unified playlist manager that reads the new saved_playlists store
    context.push('/playlist-manager');
  }
}
