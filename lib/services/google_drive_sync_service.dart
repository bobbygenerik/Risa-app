import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:iptv_player/config/oauth_config.dart';

/// Google Drive Sync Service
/// Syncs app data to user's Google Drive (FREE - uses user's storage)
class GoogleDriveSyncService extends ChangeNotifier {
  drive.DriveApi? _driveApi;
  GoogleSignInAccount? _currentUser;
  bool _isSignedIn = false;
  bool _isSyncing = false;
  DateTime? _lastSyncTime;
  int? _storageLimit;
  int? _storageUsed;
  
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      drive.DriveApi.driveFileScope,
      drive.DriveApi.driveAppdataScope,
    ],
  );

  bool get _isSupportedPlatform {
    if (kIsWeb) {
      return false;
    }
    if (!OAuthConfig.isGoogleConfigured) {
      return false;
    }
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  bool get isSignedIn => _isSignedIn;
  bool get isSyncing => _isSyncing;
  DateTime? get lastSyncTime => _lastSyncTime;
  String? get userEmail => _currentUser?.email;
  String? get userName => _currentUser?.displayName;
  int? get storageLimit => _storageLimit;
  int? get storageUsed => _storageUsed;
  bool get isSupported => _isSupportedPlatform;

  /// Initialize and check sign-in status
  Future<void> initialize() async {
    if (!_isSupportedPlatform) {
      debugPrint('Google Drive sync is not supported on this platform.');
      return;
    }
    try {
      _currentUser = await _googleSignIn.signInSilently();
      if (_currentUser != null) {
        await _initializeDriveApi();
        _isSignedIn = true;
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Google Sign-In initialization error: $e');
    }
  }

  /// Sign in to Google account
  Future<bool> signIn() async {
    if (!_isSupportedPlatform) {
      debugPrint('Google Drive sign-in attempted on unsupported platform.');
      return false;
    }
    try {
      _currentUser = await _googleSignIn.signIn();
      if (_currentUser == null) {
        return false;
      }
      
      await _initializeDriveApi();
      _isSignedIn = true;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('Google Sign-In error: $e');
      return false;
    }
  }

  /// Sign out from Google account
  Future<void> signOut() async {
    if (!_isSupportedPlatform) {
      _currentUser = null;
      _driveApi = null;
      _isSignedIn = false;
      notifyListeners();
      return;
    }
    await _googleSignIn.signOut();
    _currentUser = null;
    _driveApi = null;
    _isSignedIn = false;
    notifyListeners();
  }

  /// Initialize Drive API
  Future<void> _initializeDriveApi() async {
    if (!_isSupportedPlatform) {
      return;
    }
    final authHeaders = await _currentUser!.authHeaders;
    final authenticateClient = GoogleAuthClient(authHeaders);
    _driveApi = drive.DriveApi(authenticateClient);
  }

  /// Sync all app data to Google Drive
  Future<bool> syncToCloud({
    Map<String, dynamic>? favorites,
    Map<String, dynamic>? playlists,
    Map<String, dynamic>? watchHistory,
    Map<String, dynamic>? settings,
  }) async {
    if (!_isSupportedPlatform) {
      debugPrint('Sync skipped: unsupported platform.');
      return false;
    }
    if (!_isSignedIn || _driveApi == null) {
      return false;
    }

    _isSyncing = true;
    notifyListeners();

    try {
      // Create app data folder in Drive
      final folderId = await _getOrCreateAppFolder();
      
      // Sync each data type
      if (favorites != null) {
        await _uploadJson('favorites.json', favorites, folderId);
      }
      if (playlists != null) {
        await _uploadJson('playlists.json', playlists, folderId);
      }
      if (watchHistory != null) {
        await _uploadJson('watch_history.json', watchHistory, folderId);
      }
      if (settings != null) {
        await _uploadJson('settings.json', settings, folderId);
      }

      _lastSyncTime = DateTime.now();
      _isSyncing = false;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('Sync to cloud error: $e');
      _isSyncing = false;
      notifyListeners();
      return false;
    }
  }

  /// Restore app data from Google Drive
  Future<Map<String, dynamic>?> restoreFromCloud() async {
    if (!_isSupportedPlatform) {
      debugPrint('Restore skipped: unsupported platform.');
      return null;
    }
    if (!_isSignedIn || _driveApi == null) {
      return null;
    }

    _isSyncing = true;
    notifyListeners();

    try {
      final folderId = await _getOrCreateAppFolder();
      
      final result = <String, dynamic>{};
      
      // Download each data file
      result['favorites'] = await _downloadJson('favorites.json', folderId);
      result['playlists'] = await _downloadJson('playlists.json', folderId);
      result['watchHistory'] = await _downloadJson('watch_history.json', folderId);
      result['settings'] = await _downloadJson('settings.json', folderId);

      _lastSyncTime = DateTime.now();
      _isSyncing = false;
      notifyListeners();
      return result;
    } catch (e) {
      debugPrint('Restore from cloud error: $e');
      _isSyncing = false;
      notifyListeners();
      return null;
    }
  }

  /// Get or create app folder in Google Drive
  Future<String> _getOrCreateAppFolder() async {
    const folderName = 'StreamHubData';
    
    // Search for existing folder
    final fileList = await _driveApi!.files.list(
      q: "name='$folderName' and mimeType='application/vnd.google-apps.folder' and trashed=false",
      spaces: 'appDataFolder',
    );

    if (fileList.files != null && fileList.files!.isNotEmpty) {
      return fileList.files!.first.id!;
    }

    // Create new folder
    final folder = drive.File()
      ..name = folderName
      ..mimeType = 'application/vnd.google-apps.folder'
      ..parents = ['appDataFolder'];

    final createdFolder = await _driveApi!.files.create(folder);
    return createdFolder.id!;
  }

  /// Upload JSON data to Drive
  Future<void> _uploadJson(String fileName, Map<String, dynamic> data, String folderId) async {
    final jsonString = jsonEncode(data);
    final media = drive.Media(
      Stream.value(utf8.encode(jsonString)),
      utf8.encode(jsonString).length,
    );

    // Check if file exists
    final existingFiles = await _driveApi!.files.list(
      q: "name='$fileName' and '$folderId' in parents and trashed=false",
    );

    final file = drive.File()
      ..name = fileName
      ..parents = [folderId];

    if (existingFiles.files != null && existingFiles.files!.isNotEmpty) {
      // Update existing file
      await _driveApi!.files.update(
        file,
        existingFiles.files!.first.id!,
        uploadMedia: media,
      );
    } else {
      // Create new file
      await _driveApi!.files.create(
        file,
        uploadMedia: media,
      );
    }
  }

  /// Download JSON data from Drive
  Future<Map<String, dynamic>?> _downloadJson(String fileName, String folderId) async {
    try {
      final fileList = await _driveApi!.files.list(
        q: "name='$fileName' and '$folderId' in parents and trashed=false",
      );

      if (fileList.files == null || fileList.files!.isEmpty) {
        return null;
      }

      final fileId = fileList.files!.first.id!;
      final response = await _driveApi!.files.get(
        fileId,
        downloadOptions: drive.DownloadOptions.fullMedia,
      ) as drive.Media;

      // Collect stream data into bytes
      final List<int> dataList = [];
      await for (var chunk in response.stream) {
        dataList.addAll(chunk);
      }
      final dataBytes = Uint8List.fromList(dataList);
      final jsonString = utf8.decode(dataBytes);
      return jsonDecode(jsonString) as Map<String, dynamic>;
    } catch (e) {
      debugPrint('Download JSON error for $fileName: $e');
      return null;
    }
  }

  /// Get Drive storage usage
  Future<Map<String, dynamic>> getStorageInfo() async {
    if (!_isSupportedPlatform) {
      return {};
    }
    if (!_isSignedIn || _driveApi == null) {
      return {};
    }

    try {
      final about = await _driveApi!.about.get($fields: 'storageQuota,user');
      final limit = about.storageQuota?.limit;
      final usage = about.storageQuota?.usage;
      
      // Update internal state
      _storageLimit = limit != null ? int.tryParse(limit) : null;
      _storageUsed = usage != null ? int.tryParse(usage) : null;
      notifyListeners();
      
      return {
        'total': limit ?? '0',
        'used': usage ?? '0',
        'usedByApp': about.storageQuota?.usageInDrive ?? '0',
      };
    } catch (e) {
      debugPrint('Storage info error: $e');
      return {};
    }
  }
}

/// HTTP Client for Google API authentication
class GoogleAuthClient extends http.BaseClient {
  final Map<String, String> _headers;
  final http.Client _client = http.Client();

  GoogleAuthClient(this._headers);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return _client.send(request..headers.addAll(_headers));
  }
}
