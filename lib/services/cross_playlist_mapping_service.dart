import 'dart:convert';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/incremental_epg_service.dart';
import '../utils/debug_helper.dart';

part 'cross_playlist_mapping/cross_playlist_mapping_logic.dart';
part 'cross_playlist_mapping/cross_playlist_mapping_logic_helpers.dart';
part 'cross_playlist_mapping/cross_playlist_mapping_models.dart';

/// Service for managing cross-playlist EPG mappings
/// Allows sharing mappings between different playlists and users
class CrossPlaylistMappingService extends ChangeNotifier {
  static const String _crossPlaylistMappingsKey = 'epg_cross_playlist_mappings';
  static const String _sharedMappingsKey = 'epg_shared_mappings';
  static const String _mappingHistoryKey = 'epg_mapping_history';

  // Storage for cross-playlist mappings
  final Map<String, CrossPlaylistMapping> _crossPlaylistMappings = {};
  final Map<String, SharedMapping> _sharedMappings = {};
  final List<MappingHistoryEntry> _mappingHistory = [];

  // Configuration
  final int _maxHistoryEntries = 1000;
  final bool _autoSyncEnabled = true;

  // Getters
  Map<String, CrossPlaylistMapping> get crossPlaylistMappings =>
      Map.unmodifiable(_crossPlaylistMappings);
  Map<String, SharedMapping> get sharedMappings =>
      Map.unmodifiable(_sharedMappings);
  List<MappingHistoryEntry> get mappingHistory =>
      List.unmodifiable(_mappingHistory);
  bool get autoSyncEnabled => _autoSyncEnabled;

  void _notifyMappingChange() => notifyListeners();
}
