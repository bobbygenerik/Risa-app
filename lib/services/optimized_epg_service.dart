import 'dart:async';
import 'package:flutter/foundation.dart';
import '../models/program.dart';
import '../models/channel.dart';
import '../utils/debug_helper.dart';
import 'local_db_service.dart';

/// Optimized EPG service using fast startup and streaming techniques
class OptimizedEpgService extends ChangeNotifier {
  Map<String, List<Program>> _programs = {};
  bool _isLoading = false;
  bool _isReady = false;
  
  // Manual mappings storage
  final Map<String, String> _manualMappings = {};
  bool _mappingsLoaded = false;

  Map<String, List<Program>> get programs => _programs;
  bool get isLoading => _isLoading;
  bool get isReady => _isReady;
  bool get hasEpgUrl => true;
  int get loadedChannelCount => _programs.length;
  bool get isDownloading => false;
  bool get isParsing => false;
  
  /// Load EPG data with fast startup optimizations
  Future<void> loadEpgData(String epgUrl, List<Channel> criticalChannels) async {
    if (_isLoading) return;
    
    _isLoading = true;
    notifyListeners();
    
    // Ensure mappings are loaded
    await _ensureMappingsLoaded();

    try {
      debugLog('OptimizedEpgService: Starting fast EPG load');
      
      // Mock loading
      await Future.delayed(const Duration(milliseconds: 200));
      
      _programs = {
        for (final channel in criticalChannels)
          channel.id: [
            Program(
              id: '${channel.id}_1',
              channelId: channel.id,
              title: 'Live Program',
              description: 'Currently airing',
              startTime: DateTime.now(),
              endTime: DateTime.now().add(const Duration(hours: 1)),
            ),
          ],
      };
      
      _isReady = true;
      _isLoading = false;
      notifyListeners();
      
      debugLog('OptimizedEpgService: EPG data loaded (${_programs.length} channels)');
      
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      debugLog('OptimizedEpgService: Error loading EPG: $e');
    }
  }
  
  /// Get current program for channel
  Program? getCurrentProgram(
    String channelId, {
    String? channelName,
    String? groupTitle,
  }) {
    final channelPrograms = _programs[channelId];
    if (channelPrograms == null || channelPrograms.isEmpty) {
      return null;
    }
    return channelPrograms.first;
  }
  
  /// Check if channel has programs
  bool hasProgramsForChannel(
    String channelId, {
    String? channelName,
    String? groupTitle,
  }) {
    return _programs.containsKey(channelId) && _programs[channelId]!.isNotEmpty;
  }
  
  /// Ensure channel is loaded (for compatibility)
  Future<void> ensureChannelLoaded(
    String channelId, {
    String? channelName,
  }) async {
    // No-op for compatibility
  }
  
  /// Ensure channels are loaded in batch
  Future<void> ensureChannelsLoadedBatch(
    List<String> channelIds, {
    List<String>? channelNames,
  }) async {
    // No-op for compatibility
  }
  
  /// Check if channel should be hidden
  bool shouldHideChannel(
    String channelId, {
    String? channelName,
  }) {
    return false;
  }
  
  /// Get EPG channel IDs
  List<String> getEpgChannelIds() {
    return _programs.keys.toList();
  }
  
  /// Get channel preview
  String? getChannelPreview(String channelId) {
    final currentProgram = getCurrentProgram(channelId);
    return currentProgram?.title;
  }
  
  /// Get suggested matches for channel
  List<MapEntry<String, double>> getSuggestedMatches(
    String channelId,
    String channelName, {
    int limit = 10,
  }) {
    return [];
  }
  
  /// Manual mapping methods
  String? getManualMapping(String channelId) {
    return _manualMappings[channelId];
  }

  Future<void> setManualMapping(String channelId, String epgChannelId) async {
    if (channelId.isEmpty || epgChannelId.isEmpty) return;

    // Update memory cache
    _manualMappings[channelId] = epgChannelId;
    notifyListeners();

    // Persist to DB
    try {
      await LocalDbService.instance.upsertEpgMapping({channelId: epgChannelId});
    } catch (e) {
      debugLog('OptimizedEpgService: Failed to persist mapping: $e');
    }
  }

  Future<void> removeManualMapping(String channelId) async {
    if (channelId.isEmpty) return;
    if (!_manualMappings.containsKey(channelId)) return;

    // Update memory cache
    _manualMappings.remove(channelId);
    notifyListeners();

    // Persist to DB
    try {
      await LocalDbService.instance.deleteEpgMapping(channelId);
    } catch (e) {
      debugLog('OptimizedEpgService: Failed to delete mapping: $e');
    }
  }

  bool hasManualMapping(String channelId) {
    return _manualMappings.containsKey(channelId);
  }

  /// Helper to ensure mappings are loaded from DB
  Future<void> _ensureMappingsLoaded() async {
    if (_mappingsLoaded) return;
    try {
      final mappings = await LocalDbService.instance.getAllMappings();
      _manualMappings.addAll(mappings);
      _mappingsLoaded = true;
      debugLog('OptimizedEpgService: Loaded ${_manualMappings.length} manual mappings');
    } catch (e) {
      debugLog('OptimizedEpgService: Failed to load manual mappings: $e');
    }
  }
}
