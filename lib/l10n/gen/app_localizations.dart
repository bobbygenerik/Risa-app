import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @noLiveTvAvailable.
  ///
  /// In en, this message translates to:
  /// **'No Live TV Available'**
  String get noLiveTvAvailable;

  /// No description provided for @loadPlaylistMessage.
  ///
  /// In en, this message translates to:
  /// **'Load a playlist with Live TV channels from Settings'**
  String get loadPlaylistMessage;

  /// No description provided for @generalSettings.
  ///
  /// In en, this message translates to:
  /// **'General Settings'**
  String get generalSettings;

  /// No description provided for @generalSettingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage your playlists and program guide'**
  String get generalSettingsSubtitle;

  /// No description provided for @itemsLoaded.
  ///
  /// In en, this message translates to:
  /// **'{count} items loaded'**
  String itemsLoaded(int count);

  /// No description provided for @playlistError.
  ///
  /// In en, this message translates to:
  /// **'Playlist error'**
  String get playlistError;

  /// No description provided for @noPlaylistLoaded.
  ///
  /// In en, this message translates to:
  /// **'No playlist loaded'**
  String get noPlaylistLoaded;

  /// No description provided for @viewResponse.
  ///
  /// In en, this message translates to:
  /// **'View Response'**
  String get viewResponse;

  /// No description provided for @channelsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} channels'**
  String channelsCount(int count);

  /// No description provided for @playlists.
  ///
  /// In en, this message translates to:
  /// **'Playlists'**
  String get playlists;

  /// No description provided for @inputMethodM3u.
  ///
  /// In en, this message translates to:
  /// **'Input Method: M3U URL'**
  String get inputMethodM3u;

  /// No description provided for @inputMethodXtream.
  ///
  /// In en, this message translates to:
  /// **'Input Method: Xtream Codes'**
  String get inputMethodXtream;

  /// No description provided for @m3uPlaylistUrl.
  ///
  /// In en, this message translates to:
  /// **'M3U Playlist URL'**
  String get m3uPlaylistUrl;

  /// No description provided for @loadPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Load Playlist'**
  String get loadPlaylist;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @cancelLoad.
  ///
  /// In en, this message translates to:
  /// **'Cancel load'**
  String get cancelLoad;

  /// No description provided for @playlistLoadCancelled.
  ///
  /// In en, this message translates to:
  /// **'Playlist load cancelled'**
  String get playlistLoadCancelled;

  /// No description provided for @clearUrl.
  ///
  /// In en, this message translates to:
  /// **'Clear URL'**
  String get clearUrl;

  /// No description provided for @managePlaylists.
  ///
  /// In en, this message translates to:
  /// **'Manage Playlists'**
  String get managePlaylists;

  /// No description provided for @serverUrl.
  ///
  /// In en, this message translates to:
  /// **'Server URL'**
  String get serverUrl;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @loadXtreamPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Load Xtream Playlist'**
  String get loadXtreamPlaylist;

  /// No description provided for @clearFields.
  ///
  /// In en, this message translates to:
  /// **'Clear Fields'**
  String get clearFields;

  /// No description provided for @epgPreferences.
  ///
  /// In en, this message translates to:
  /// **'EPG Preferences'**
  String get epgPreferences;

  /// No description provided for @detectedEpgUrl.
  ///
  /// In en, this message translates to:
  /// **'Detected EPG URL (from playlist)'**
  String get detectedEpgUrl;

  /// No description provided for @noneDetected.
  ///
  /// In en, this message translates to:
  /// **'None detected'**
  String get noneDetected;

  /// No description provided for @updateEpgNow.
  ///
  /// In en, this message translates to:
  /// **'Update EPG Now'**
  String get updateEpgNow;

  /// No description provided for @clearEpgData.
  ///
  /// In en, this message translates to:
  /// **'Clear EPG Data'**
  String get clearEpgData;

  /// No description provided for @autoRefreshInterval.
  ///
  /// In en, this message translates to:
  /// **'Auto-refresh Interval'**
  String get autoRefreshInterval;

  /// No description provided for @refreshEveryHours.
  ///
  /// In en, this message translates to:
  /// **'Refresh every {hours} hours'**
  String refreshEveryHours(int hours);

  /// No description provided for @dataRetention.
  ///
  /// In en, this message translates to:
  /// **'Data Retention'**
  String get dataRetention;

  /// No description provided for @keepDataForDays.
  ///
  /// In en, this message translates to:
  /// **'Keep data for {days} days'**
  String keepDataForDays(int days);

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @epgDiagnosticTool.
  ///
  /// In en, this message translates to:
  /// **'Diagnostics'**
  String get epgDiagnosticTool;

  /// No description provided for @exportBackup.
  ///
  /// In en, this message translates to:
  /// **'Export Backup'**
  String get exportBackup;

  /// No description provided for @importBackup.
  ///
  /// In en, this message translates to:
  /// **'Import Backup'**
  String get importBackup;

  /// No description provided for @debugPerformance.
  ///
  /// In en, this message translates to:
  /// **'Debug Performance'**
  String get debugPerformance;

  /// No description provided for @playback.
  ///
  /// In en, this message translates to:
  /// **'Playback'**
  String get playback;

  /// No description provided for @videoPlayerConfiguration.
  ///
  /// In en, this message translates to:
  /// **'Video player configuration'**
  String get videoPlayerConfiguration;

  /// No description provided for @performance.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get performance;

  /// No description provided for @hardwareAcceleration.
  ///
  /// In en, this message translates to:
  /// **'Hardware Acceleration'**
  String get hardwareAcceleration;

  /// No description provided for @useGpuForBetterPerformance.
  ///
  /// In en, this message translates to:
  /// **'Use GPU for better performance'**
  String get useGpuForBetterPerformance;

  /// No description provided for @hardwareDecoding.
  ///
  /// In en, this message translates to:
  /// **'Hardware Decoding'**
  String get hardwareDecoding;

  /// No description provided for @playerEngine.
  ///
  /// In en, this message translates to:
  /// **'Player Engine'**
  String get playerEngine;

  /// No description provided for @selectPlayerBackend.
  ///
  /// In en, this message translates to:
  /// **'Select underlying video player backend'**
  String get selectPlayerBackend;

  /// No description provided for @exoPlayerSurface.
  ///
  /// In en, this message translates to:
  /// **'ExoPlayer Surface'**
  String get exoPlayerSurface;

  /// No description provided for @surfaceViewDescription.
  ///
  /// In en, this message translates to:
  /// **'SurfaceView reduces tinting; TextureView for overlays'**
  String get surfaceViewDescription;

  /// No description provided for @behavior.
  ///
  /// In en, this message translates to:
  /// **'Behavior'**
  String get behavior;

  /// No description provided for @autoPlayNextEpisode.
  ///
  /// In en, this message translates to:
  /// **'Auto-play Next Episode'**
  String get autoPlayNextEpisode;

  /// No description provided for @heroVideoPreview.
  ///
  /// In en, this message translates to:
  /// **'Hero Video Preview'**
  String get heroVideoPreview;

  /// No description provided for @showVideoPreviewInHero.
  ///
  /// In en, this message translates to:
  /// **'Show video preview in the hero banner'**
  String get showVideoPreviewInHero;

  /// No description provided for @rememberPosition.
  ///
  /// In en, this message translates to:
  /// **'Remember Position'**
  String get rememberPosition;

  /// No description provided for @aiFeatures.
  ///
  /// In en, this message translates to:
  /// **'AI Features'**
  String get aiFeatures;

  /// No description provided for @transcriptionTranslationSubtitles.
  ///
  /// In en, this message translates to:
  /// **'Transcription, Translation & Subtitles'**
  String get transcriptionTranslationSubtitles;

  /// No description provided for @liveServices.
  ///
  /// In en, this message translates to:
  /// **'Live Services'**
  String get liveServices;

  /// No description provided for @liveTranscription.
  ///
  /// In en, this message translates to:
  /// **'Live Transcription'**
  String get liveTranscription;

  /// No description provided for @generateSubtitlesRealTime.
  ///
  /// In en, this message translates to:
  /// **'Generate subtitles from audio in real-time'**
  String get generateSubtitlesRealTime;

  /// No description provided for @realTimeTranslation.
  ///
  /// In en, this message translates to:
  /// **'Real-time Translation'**
  String get realTimeTranslation;

  /// No description provided for @translateTranscription.
  ///
  /// In en, this message translates to:
  /// **'Translate transcription to your language'**
  String get translateTranscription;

  /// No description provided for @manageSpeechModels.
  ///
  /// In en, this message translates to:
  /// **'Manage Speech Models'**
  String get manageSpeechModels;

  /// No description provided for @manageTranslationModels.
  ///
  /// In en, this message translates to:
  /// **'Manage Translation Models'**
  String get manageTranslationModels;

  /// No description provided for @integration.
  ///
  /// In en, this message translates to:
  /// **'Integration'**
  String get integration;

  /// No description provided for @recordings.
  ///
  /// In en, this message translates to:
  /// **'Recordings'**
  String get recordings;

  /// No description provided for @manageDvrStorage.
  ///
  /// In en, this message translates to:
  /// **'Manage DVR storage'**
  String get manageDvrStorage;

  /// No description provided for @storagePath.
  ///
  /// In en, this message translates to:
  /// **'Storage Path'**
  String get storagePath;

  /// No description provided for @playlistResponsePreview.
  ///
  /// In en, this message translates to:
  /// **'Playlist Response Preview'**
  String get playlistResponsePreview;

  /// No description provided for @diagnostics.
  ///
  /// In en, this message translates to:
  /// **'Diagnostics'**
  String get diagnostics;

  /// No description provided for @responseSummary.
  ///
  /// In en, this message translates to:
  /// **'Response summary and raw preview'**
  String get responseSummary;

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @firstPartOfResponse.
  ///
  /// In en, this message translates to:
  /// **'First part of the response payload'**
  String get firstPartOfResponse;

  /// No description provided for @testConnection.
  ///
  /// In en, this message translates to:
  /// **'Test Connection'**
  String get testConnection;

  /// No description provided for @pleaseEnterPlaylistUrl.
  ///
  /// In en, this message translates to:
  /// **'Please enter a playlist URL'**
  String get pleaseEnterPlaylistUrl;

  /// No description provided for @loadingPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Loading playlist...'**
  String get loadingPlaylist;

  /// No description provided for @noChannelsFound.
  ///
  /// In en, this message translates to:
  /// **'No channels found in this playlist.'**
  String get noChannelsFound;

  /// No description provided for @playlistLoadedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Playlist loaded successfully!'**
  String get playlistLoadedSuccessfully;

  /// No description provided for @pleaseFillAllFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all fields.'**
  String get pleaseFillAllFields;

  /// No description provided for @loadingXtreamPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Loading Xtream playlist...'**
  String get loadingXtreamPlaylist;

  /// No description provided for @xtreamPlaylistLoaded.
  ///
  /// In en, this message translates to:
  /// **'Xtream playlist loaded successfully!'**
  String get xtreamPlaylistLoaded;

  /// No description provided for @updatingEpg.
  ///
  /// In en, this message translates to:
  /// **'Updating EPG...'**
  String get updatingEpg;

  /// No description provided for @epgUpdateTriggered.
  ///
  /// In en, this message translates to:
  /// **'EPG update triggered.'**
  String get epgUpdateTriggered;

  /// No description provided for @epgCleared.
  ///
  /// In en, this message translates to:
  /// **'EPG cleared.'**
  String get epgCleared;

  /// No description provided for @backupExported.
  ///
  /// In en, this message translates to:
  /// **'Backup exported!'**
  String get backupExported;

  /// No description provided for @exportFailed.
  ///
  /// In en, this message translates to:
  /// **'Export failed: {error}'**
  String exportFailed(String error);

  /// No description provided for @importSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Import successful! Restarting...'**
  String get importSuccessful;

  /// No description provided for @importFailed.
  ///
  /// In en, this message translates to:
  /// **'Import failed: {error}'**
  String importFailed(String error);

  /// No description provided for @testingConnection.
  ///
  /// In en, this message translates to:
  /// **'Testing connection...'**
  String get testingConnection;

  /// No description provided for @testingApiKey.
  ///
  /// In en, this message translates to:
  /// **'Testing API Key...'**
  String get testingApiKey;

  /// No description provided for @exoPlayerSurfaceSetTo.
  ///
  /// In en, this message translates to:
  /// **'ExoPlayer surface set to {type}.'**
  String exoPlayerSurfaceSetTo(String type);

  /// No description provided for @videoPlayerEngineSetTo.
  ///
  /// In en, this message translates to:
  /// **'Video player engine set to {engine}.'**
  String videoPlayerEngineSetTo(String engine);

  /// No description provided for @storagePathUpdated.
  ///
  /// In en, this message translates to:
  /// **'Storage path updated: {path}'**
  String storagePathUpdated(String path);

  /// No description provided for @failedToSelectDirectory.
  ///
  /// In en, this message translates to:
  /// **'Failed to select directory: {error}'**
  String failedToSelectDirectory(String error);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
