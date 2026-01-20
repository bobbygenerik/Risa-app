// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get noLiveTvAvailable => 'No Live TV Available';

  @override
  String get loadPlaylistMessage =>
      'Load a playlist with Live TV channels from Settings';

  @override
  String get generalSettings => 'General Settings';

  @override
  String get generalSettingsSubtitle =>
      'Manage your playlists and program guide';

  @override
  String itemsLoaded(int count) {
    return '$count items loaded';
  }

  @override
  String get playlistError => 'Playlist error';

  @override
  String get noPlaylistLoaded => 'No playlist loaded';

  @override
  String get viewResponse => 'View Response';

  @override
  String channelsCount(int count) {
    return '$count channels';
  }

  @override
  String get playlists => 'Playlists';

  @override
  String get inputMethodM3u => 'Input Method: M3U URL';

  @override
  String get inputMethodXtream => 'Input Method: Xtream Codes';

  @override
  String get m3uPlaylistUrl => 'M3U Playlist URL';

  @override
  String get loadPlaylist => 'Load Playlist';

  @override
  String get loading => 'Loading...';

  @override
  String get cancelLoad => 'Cancel load';

  @override
  String get playlistLoadCancelled => 'Playlist load cancelled';

  @override
  String get clearUrl => 'Clear URL';

  @override
  String get managePlaylists => 'Manage Playlists';

  @override
  String get serverUrl => 'Server URL';

  @override
  String get username => 'Username';

  @override
  String get password => 'Password';

  @override
  String get loadXtreamPlaylist => 'Load Xtream Playlist';

  @override
  String get clearFields => 'Clear Fields';

  @override
  String get epgPreferences => 'EPG Preferences';

  @override
  String get detectedEpgUrl => 'Detected EPG URL (from playlist)';

  @override
  String get noneDetected => 'None detected';

  @override
  String get updateEpgNow => 'Update EPG Now';

  @override
  String get clearEpgData => 'Clear EPG Cache';

  @override
  String get autoRefreshInterval => 'Auto-refresh Interval';

  @override
  String refreshEveryHours(int hours) {
    return 'Refresh every $hours hours';
  }

  @override
  String get dataRetention => 'Data Retention';

  @override
  String keepDataForDays(int days) {
    return 'Keep data for $days days';
  }

  @override
  String get system => 'System';

  @override
  String get epgDiagnosticTool => 'Diagnostics';

  @override
  String get exportBackup => 'Export Backup';

  @override
  String get importBackup => 'Import Backup';

  @override
  String get debugPerformance => 'Debug Performance';

  @override
  String get playback => 'Playback';

  @override
  String get videoPlayerConfiguration => 'Video player configuration';

  @override
  String get performance => 'Performance';

  @override
  String get hardwareAcceleration => 'Hardware Acceleration';

  @override
  String get useGpuForBetterPerformance => 'Use GPU for better performance';

  @override
  String get hardwareDecoding => 'Hardware Decoding';

  @override
  String get playerEngine => 'Player Engine';

  @override
  String get selectPlayerBackend => 'Select underlying video player backend';

  @override
  String get exoPlayerSurface => 'ExoPlayer Surface';

  @override
  String get surfaceViewDescription =>
      'SurfaceView reduces tinting; TextureView for overlays';

  @override
  String get behavior => 'Behavior';

  @override
  String get autoPlayNextEpisode => 'Auto-play Next Episode';

  @override
  String get heroVideoPreview => 'Hero Video Preview';

  @override
  String get showVideoPreviewInHero => 'Show video preview in the hero banner';

  @override
  String get rememberPosition => 'Remember Position';

  @override
  String get aiFeatures => 'AI Features';

  @override
  String get transcriptionTranslationSubtitles =>
      'Transcription, Translation & Subtitles';

  @override
  String get liveServices => 'Live Services';

  @override
  String get liveTranscription => 'Live Transcription';

  @override
  String get generateSubtitlesRealTime =>
      'Generate subtitles from audio in real-time';

  @override
  String get realTimeTranslation => 'Real-time Translation';

  @override
  String get translateTranscription =>
      'Translate transcription to your language';

  @override
  String get manageSpeechModels => 'Manage Speech Models';

  @override
  String get manageTranslationModels => 'Manage Translation Models';

  @override
  String get integration => 'Integration';

  @override
  String get recordings => 'Recordings';

  @override
  String get manageDvrStorage => 'Manage DVR storage';

  @override
  String get storagePath => 'Storage Path';

  @override
  String get playlistResponsePreview => 'Playlist Response Preview';

  @override
  String get diagnostics => 'Diagnostics';

  @override
  String get responseSummary => 'Response summary and raw preview';

  @override
  String get preview => 'Preview';

  @override
  String get firstPartOfResponse => 'First part of the response payload';

  @override
  String get testConnection => 'Test Connection';

  @override
  String get pleaseEnterPlaylistUrl => 'Please enter a playlist URL';

  @override
  String get loadingPlaylist => 'Loading playlist...';

  @override
  String get noChannelsFound => 'No channels found in this playlist.';

  @override
  String get playlistLoadedSuccessfully => 'Playlist loaded successfully!';

  @override
  String get pleaseFillAllFields => 'Please fill in all fields.';

  @override
  String get loadingXtreamPlaylist => 'Loading Xtream playlist...';

  @override
  String get xtreamPlaylistLoaded => 'Xtream playlist loaded successfully!';

  @override
  String get updatingEpg => 'Updating EPG...';

  @override
  String get epgUpdateTriggered => 'EPG update triggered.';

  @override
  String get epgCleared => 'EPG cleared.';

  @override
  String get backupExported => 'Backup exported!';

  @override
  String exportFailed(String error) {
    return 'Export failed: $error';
  }

  @override
  String get importSuccessful => 'Import successful! Restarting...';

  @override
  String importFailed(String error) {
    return 'Import failed: $error';
  }

  @override
  String get testingConnection => 'Testing connection...';

  @override
  String get testingApiKey => 'Testing API Key...';

  @override
  String exoPlayerSurfaceSetTo(String type) {
    return 'ExoPlayer surface set to $type.';
  }

  @override
  String videoPlayerEngineSetTo(String engine) {
    return 'Video player engine set to $engine.';
  }

  @override
  String storagePathUpdated(String path) {
    return 'Storage path updated: $path';
  }

  @override
  String failedToSelectDirectory(String error) {
    return 'Failed to select directory: $error';
  }
}
