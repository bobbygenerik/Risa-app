import 'package:flutter/foundation.dart';

// This is a minimal stub replacement for the removed Google Drive sync service.
// It preserves the API surface used by the app (no-op implementations) so the
// app can compile and run when Drive integration is intentionally removed.

class GoogleDriveSyncService extends ChangeNotifier {
  bool _isSupported = false;
  bool _isSignedIn = false;
  bool _isSyncing = false;
  String? _userEmail;
  String? _userName;
  DateTime? _lastSyncTime;

  GoogleDriveSyncService();

  // Called by the app at startup. Keeps the API but does nothing.
  Future<void> initialize() async {
    // intentionally left blank
    return;
  }

  bool get isSupported => _isSupported;
  bool get isSignedIn => _isSignedIn;
  bool get isSyncing => _isSyncing;
  String? get userEmail => _userEmail;
  String? get userName => _userName;
  DateTime? get lastSyncTime => _lastSyncTime;

  Future<bool> signIn() async {
    // No-op sign-in: return false to indicate not signed in
    _isSignedIn = false;
    notifyListeners();
    return false;
  }

  Future<void> signOut() async {
    _isSignedIn = false;
    notifyListeners();
  }

  Future<bool> syncToCloud({
    required Map<String, dynamic> favorites,
    required Map<String, dynamic> playlists,
    required Map<String, dynamic> watchHistory,
    required Map<String, dynamic> settings,
  }) async {
    // No-op: pretend sync failed / did nothing
    _isSyncing = false;
    notifyListeners();
    return false;
  }

  Future<Map<String, dynamic>?> restoreFromCloud() async {
    // No-op: nothing to restore
    return null;
  }
}
