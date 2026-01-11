import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  SettingsProvider();

  SharedPreferences? _prefs;
  bool _isInitialized = false;

  bool _hardwareAcceleration = true;
  bool _hardwareDecoding = true;
  bool _hardwarePostProcessing = true;

  String _decoderType = 'Auto';
  String _renderingEngine = 'Auto';

  String _audioDecoderType = 'Auto';
  bool _audioPassthrough = false;
  bool _audioBoost = false;
  bool _normalizeAudio = false;
  int _audioChannels = 0;
  String _preferredAudioLanguage = 'Default';

  bool _autoPlayNextEpisode = true;
  bool _rememberPlaybackPosition = true;
  bool _skipIntro = true;
  String _videoQuality = 'Auto';
  String _playbackQuality = 'Auto';
  double _videoBufferSize = 50;
  bool _heroVideoPreview = false;
  String _videoPlayerBackend = 'MediaKit'; // ExoPlayer, MediaKit
  String _exoPlayerSurfaceType = 'surface'; // surface

  Map<String, String?>? _profileCache;
  Map<String, String?>? _savedPlaylistsCache;
  Map<String, dynamic>? _epgCache;

  bool get isInitialized => _isInitialized;
  bool get hardwareAcceleration => _hardwareAcceleration;
  bool get hardwareDecoding => _hardwareDecoding;
  bool get hardwarePostProcessing => _hardwarePostProcessing;

  String get decoderType => _decoderType;
  String get renderingEngine => _renderingEngine;
  String get audioDecoderType => _audioDecoderType;
  bool get audioPassthrough => _audioPassthrough;
  bool get audioBoost => _audioBoost;
  bool get normalizeAudio => _normalizeAudio;
  int get audioChannels => _audioChannels;
  String get preferredAudioLanguage => _preferredAudioLanguage;
  bool get autoPlayNextEpisode => _autoPlayNextEpisode;
  bool get rememberPlaybackPosition => _rememberPlaybackPosition;
  bool get skipIntro => _skipIntro;
  String get videoQuality => _videoQuality;
  String get playbackQuality => _playbackQuality;
  double get videoBufferSize => _videoBufferSize;
  bool get heroVideoPreview => _heroVideoPreview;
  String get videoPlayerBackend => _videoPlayerBackend;
  String get exoPlayerSurfaceType => _exoPlayerSurfaceType;

  Future<void> initialize() async {
    if (_isInitialized) return;
    _prefs = await SharedPreferences.getInstance();
    _loadFromPrefs();
    _isInitialized = true;
    notifyListeners();
  }

  Future<SharedPreferences> _ensurePrefs() async {
    if (_prefs != null) return _prefs!;
    _prefs = await SharedPreferences.getInstance();
    return _prefs!;
  }

  void _loadFromPrefs() {
    final prefs = _prefs;
    if (prefs == null) return;

    _hardwareAcceleration = prefs.getBool('hardware_acceleration') ?? true;
    _hardwareDecoding = prefs.getBool('hardware_decoding') ?? true;
    _hardwarePostProcessing = prefs.getBool('hardware_postprocessing') ?? true;

    _decoderType = prefs.getString('decoder_type') ?? 'Auto';
    _renderingEngine = prefs.getString('rendering_engine') ?? 'Auto';

    _audioDecoderType = prefs.getString('audio_decoder_type') ?? 'Auto';
    _audioPassthrough = prefs.getBool('audio_passthrough') ?? false;
    _audioBoost = prefs.getBool('audio_boost') ?? false;
    _normalizeAudio = prefs.getBool('normalize_audio') ?? false;
    _audioChannels = prefs.getInt('audio_channels') ?? 0;
    _preferredAudioLanguage =
        prefs.getString('preferred_audio_language') ?? 'Default';

    _autoPlayNextEpisode = prefs.getBool('auto_play_next') ?? true;
    _rememberPlaybackPosition =
        prefs.getBool('remember_playback_position') ?? true;
    _skipIntro = prefs.getBool('skip_intro') ?? true;
    _videoQuality = prefs.getString('video_quality') ?? 'Auto';
    _playbackQuality = prefs.getString('playback_quality') ?? 'Auto';
    _videoBufferSize = prefs.getDouble('video_buffer_size') ?? 50;
    _heroVideoPreview = prefs.getBool('hero_video_preview') ?? false;
    final storedBackend = prefs.getString('video_player_backend');
    if (storedBackend == null || storedBackend == 'Auto') {
      _videoPlayerBackend = 'MediaKit';
      if (storedBackend == 'Auto') {
        prefs.setString('video_player_backend', _videoPlayerBackend);
      }
    } else {
      _videoPlayerBackend = storedBackend;
    }
    final storedSurface = prefs.getString('exo_player_surface_type');
    if (storedSurface == null || storedSurface == 'surface') {
      _exoPlayerSurfaceType = 'surface';
    } else {
      _exoPlayerSurfaceType = 'surface';
      prefs.setString('exo_player_surface_type', _exoPlayerSurfaceType);
    }
  }

  Future<void> setHardwareAcceleration(bool value) async {
    if (_hardwareAcceleration == value) return;
    _hardwareAcceleration = value;
    await _prefs?.setBool('hardware_acceleration', value);
    notifyListeners();
  }

  Future<void> setHardwareDecoding(bool value) async {
    if (_hardwareDecoding == value) return;
    _hardwareDecoding = value;
    await _prefs?.setBool('hardware_decoding', value);
    notifyListeners();
  }

  Future<void> setHardwarePostProcessing(bool value) async {
    if (_hardwarePostProcessing == value) return;
    _hardwarePostProcessing = value;
    await _prefs?.setBool('hardware_postprocessing', value);
    notifyListeners();
  }

  Future<void> setDecoderType(String value) async {
    if (_decoderType == value) return;
    _decoderType = value;
    await _prefs?.setString('decoder_type', value);
    notifyListeners();
  }

  Future<void> setRenderingEngine(String value) async {
    if (_renderingEngine == value) return;
    _renderingEngine = value;
    await _prefs?.setString('rendering_engine', value);
    notifyListeners();
  }

  Future<void> setAudioDecoderType(String value) async {
    if (_audioDecoderType == value) return;
    _audioDecoderType = value;
    await _prefs?.setString('audio_decoder_type', value);
    notifyListeners();
  }

  Future<void> setAudioPassthrough(bool value) async {
    if (_audioPassthrough == value) return;
    _audioPassthrough = value;
    await _prefs?.setBool('audio_passthrough', value);
    notifyListeners();
  }

  Future<void> setAudioBoost(bool value) async {
    if (_audioBoost == value) return;
    _audioBoost = value;
    await _prefs?.setBool('audio_boost', value);
    notifyListeners();
  }

  Future<void> setNormalizeAudio(bool value) async {
    if (_normalizeAudio == value) return;
    _normalizeAudio = value;
    await _prefs?.setBool('normalize_audio', value);
    notifyListeners();
  }

  Future<void> setAudioChannels(int channels) async {
    if (_audioChannels == channels) return;
    _audioChannels = channels;
    await _prefs?.setInt('audio_channels', channels);
    notifyListeners();
  }

  Future<void> setPreferredAudioLanguage(String value) async {
    if (_preferredAudioLanguage == value) return;
    _preferredAudioLanguage = value;
    await _prefs?.setString('preferred_audio_language', value);
    notifyListeners();
  }

  Future<void> setAutoPlayNextEpisode(bool value) async {
    if (_autoPlayNextEpisode == value) return;
    _autoPlayNextEpisode = value;
    await _prefs?.setBool('auto_play_next', value);
    notifyListeners();
  }

  Future<void> setRememberPlaybackPosition(bool value) async {
    if (_rememberPlaybackPosition == value) return;
    _rememberPlaybackPosition = value;
    await _prefs?.setBool('remember_playback_position', value);
    notifyListeners();
  }

  Future<void> setSkipIntro(bool value) async {
    if (_skipIntro == value) return;
    _skipIntro = value;
    await _prefs?.setBool('skip_intro', value);
    notifyListeners();
  }

  Future<void> setVideoQuality(String value) async {
    if (_videoQuality == value) return;
    _videoQuality = value;
    await _prefs?.setString('video_quality', value);
    notifyListeners();
  }

  Future<void> setPlaybackQuality(String value) async {
    if (_playbackQuality == value) return;
    _playbackQuality = value;
    await _prefs?.setString('playback_quality', value);
    notifyListeners();
  }

  Future<void> setVideoBufferSize(double value) async {
    final clamped = value.clamp(0, 100).toDouble();
    if ((_videoBufferSize - clamped).abs() < 0.01) return;
    _videoBufferSize = clamped;
    await _prefs?.setDouble('video_buffer_size', clamped);
    notifyListeners();
  }

  Future<void> setHeroVideoPreview(bool value) async {
    if (_heroVideoPreview == value) return;
    _heroVideoPreview = value;
    await _prefs?.setBool('hero_video_preview', value);
    notifyListeners();
  }

  Future<void> setVideoPlayerBackend(String value) async {
    final resolved = value == 'Auto' ? 'MediaKit' : value;
    if (_videoPlayerBackend == resolved) return;
    _videoPlayerBackend = resolved;
    await _prefs?.setString('video_player_backend', resolved);
    notifyListeners();
  }

  Future<void> setExoPlayerSurfaceType(String value) async {
    final resolved = value == 'surface' ? 'surface' : 'surface';
    if (_exoPlayerSurfaceType == resolved) return;
    _exoPlayerSurfaceType = resolved;
    await _prefs?.setString('exo_player_surface_type', resolved);
    notifyListeners();
  }

  Future<Map<String, String?>> getProfileData(
      {bool forceRefresh = false}) async {
    if (!forceRefresh && _profileCache != null) {
      return _profileCache!;
    }
    final prefs = await _ensurePrefs();
    final data = {
      'name': prefs.getString('user_name'),
      'email': prefs.getString('user_email'),
      'imagePath': prefs.getString('profile_image_path'),
    };
    _profileCache = data;
    return data;
  }

  Future<Map<String, String?>> getSavedPlaylists(
      {bool forceRefresh = false}) async {
    if (!forceRefresh && _savedPlaylistsCache != null) {
      return _savedPlaylistsCache!;
    }
    final prefs = await _ensurePrefs();
    final data = {
      'type': prefs.getString('playlist_type'),
      'name': prefs.getString('playlist_name'),
      'm3u_url': prefs.getString('m3u_url'),
      'xtream_server': prefs.getString('xtream_server'),
      'xtream_username': prefs.getString('xtream_username'),
    };
    _savedPlaylistsCache = data;
    return data;
  }

  Future<Map<String, dynamic>> getEpgData({bool forceRefresh = false}) async {
    if (!forceRefresh && _epgCache != null) {
      return _epgCache!;
    }
    final prefs = await _ensurePrefs();
    final data = {
      'epg_url': prefs.getString('epg_url'),
      'custom_epg_url': prefs.getString('custom_epg_url'),
      'playlist_type': prefs.getString('playlist_type'),
      'm3u_url': prefs.getString('m3u_url'),
      'xtream_server': prefs.getString('xtream_server'),
      'epg_update_interval': prefs.getInt('epg_update_interval') ?? 12,
      'epg_past_days': prefs.getInt('epg_past_days') ?? 0,
      'store_descriptions': prefs.getBool('store_program_descriptions') ?? true,
      'show_channel_logos': prefs.getBool('show_channel_logos') ?? true,
      'show_program_images': prefs.getBool('show_program_images') ?? true,
    };
    _epgCache = data;
    return data;
  }

  Future<void> refreshProfileData() async {
    _profileCache = null;
    await getProfileData(forceRefresh: true);
    notifyListeners();
  }

  Future<void> refreshSavedPlaylists() async {
    _savedPlaylistsCache = null;
    await getSavedPlaylists(forceRefresh: true);
    notifyListeners();
  }

  Future<void> refreshEpgData() async {
    _epgCache = null;
    await getEpgData(forceRefresh: true);
    notifyListeners();
  }

  Future<void> setCustomEpgUrl(String value) async {
    final prefs = await _ensurePrefs();
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      await prefs.remove('custom_epg_url');
    } else {
      await prefs.setString('custom_epg_url', trimmed);
    }
    await refreshEpgData();
  }

  Future<void> setEpgUpdateInterval(int hours) async {
    final prefs = await _ensurePrefs();
    final clamped = hours < 1
        ? 1
        : hours > 48
            ? 48
            : hours;
    await prefs.setInt('epg_update_interval', clamped);
    await refreshEpgData();
  }

  Future<void> setEpgPastDays(int days) async {
    final prefs = await _ensurePrefs();
    final clamped = days < 0
        ? 0
        : days > 30
            ? 30
            : days;
    await prefs.setInt('epg_past_days', clamped);
    await refreshEpgData();
  }

  Future<void> setStoreProgramDescriptions(bool value) async {
    final prefs = await _ensurePrefs();
    await prefs.setBool('store_program_descriptions', value);
    await refreshEpgData();
  }

  Future<void> setShowChannelLogos(bool value) async {
    final prefs = await _ensurePrefs();
    await prefs.setBool('show_channel_logos', value);
    await refreshEpgData();
  }

  Future<void> setShowProgramImages(bool value) async {
    final prefs = await _ensurePrefs();
    await prefs.setBool('show_program_images', value);
    await refreshEpgData();
  }

  Future<void> clearEpgData() async {
    final prefs = await _ensurePrefs();
    await prefs.remove('epg_url');
    await prefs.remove('custom_epg_url');
    await prefs.remove('playlist_type');
    await prefs.remove('m3u_url');
    await prefs.remove('xtream_server');
    await prefs.remove('epg_update_interval');
    await prefs.remove('epg_past_days');
    await prefs.remove('store_program_descriptions');
    await prefs.remove('show_channel_logos');
    await prefs.remove('show_program_images');
    await refreshEpgData();
  }
}
