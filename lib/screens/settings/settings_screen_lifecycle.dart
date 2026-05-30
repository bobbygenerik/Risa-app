part of '../settings_screen.dart';

extension SettingsScreenLifecycle on _SettingsScreenState {
  Future<void> _loadSettingsSync() async {
    final prefs = await SharedPreferences.getInstance();
    final xtreamPassword = await XtreamCredentialStore.readGlobalPassword();
    if (!mounted) return;

    setState(() {
      _m3uUrlController.text = prefs.getString('m3u_url') ?? '';
      _xtreamServerController.text = prefs.getString('xtream_server') ?? '';
      _xtreamUsernameController.text = prefs.getString('xtream_username') ?? '';
      _xtreamPasswordController.text = xtreamPassword;
      _customEpgUrlController.text = prefs.getString('custom_epg_url') ?? '';
      _secondaryEpgUrlController.text =
          prefs.getString('secondary_epg_url') ?? '';
      _detectedEpgUrl = prefs.getString('epg_url') ?? '';
      _autoPlayNextEpisode = prefs.getBool('auto_play_next') ?? true;
      _hardwareAcceleration = prefs.getBool('hardware_acceleration') ?? true;
      _hardwareDecoding = prefs.getBool('hardware_decoding') ?? true;
      _transcriptionEnabled = prefs.getBool('transcription_enabled') ?? false;
      _translationEnabled = prefs.getBool('translation_enabled') ?? false;
      _heroVideoPreview = prefs.getBool('hero_video_preview') ?? false;
      _rememberPlaybackPosition =
          prefs.getBool('remember_playback_position') ?? true;
      _epgCacheDuration = prefs.getInt('epg_cache_duration') ?? 6;
      _epgRetentionDays = prefs.getInt('epg_retention_days') ?? 7;
      final storedSurface = prefs.getString('exo_player_surface_type');
      if (storedSurface != null && storedSurface != 'surface') {
        unawaited(prefs.setString('exo_player_surface_type', 'surface'));
      }
      final storedBackend = prefs.getString('video_player_backend');
      if (storedBackend == null || storedBackend == 'Auto') {
        _videoPlayerBackend = 'VLC';
        if (storedBackend == 'Auto') {
          unawaited(prefs.setString('video_player_backend', 'VLC'));
        }
      } else {
        _videoPlayerBackend = 'VLC';
      }
    });
  }

  void _saveCustomEpgUrl() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('custom_epg_url', _customEpgUrlController.text);
  }

  void _saveSecondaryEpgUrl() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('secondary_epg_url', _secondaryEpgUrlController.text);
  }

  void _registerGeneralFocusNodes() {
    final nodes = [
      _m3uTabFocusNode,
      _xtreamTabFocusNode,
      _m3uUrlFocusNode,
      _xtreamServerFocusNode,
      _xtreamUsernameFocusNode,
      _xtreamPasswordFocusNode,
      _customEpgUrlFocusNode,
      _secondaryEpgUrlFocusNode,
      _loadM3uButtonFocusNode,
      _loadXtreamButtonFocusNode,
      _clearM3uButtonFocusNode,
      _clearXtreamButtonFocusNode,
      _updateEpgButtonFocusNode,
      _clearEpgButtonFocusNode,
      _browseStorageButtonFocusNode,
    ];

    for (final node in nodes) {
      node.addListener(() {
        if (node.hasFocus) {
          _lastGeneralFocusNode = node;
        }
      });
    }
  }
}
