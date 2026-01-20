import 'dart:async';
import 'package:flutter/foundation.dart';
import '../utils/throttled_notifier.dart';
import '../models/channel.dart';
import '../utils/debug_helper.dart';
import '../providers/playlist_loader.dart';

/// Optimized channel provider using fast startup techniques
class OptimizedChannelProvider extends ChangeNotifier with ThrottledNotifier {
  final List<Channel> _channels = [];
  final Map<String, List<int>> _indicesByCategory = {};

  bool _isLoading = false;
  bool _criticalDataLoaded = false;
  String? _errorMessage;
  final PlaylistLoader _playlistLoader;

  OptimizedChannelProvider({PlaylistLoader? playlistLoader})
      : _playlistLoader = playlistLoader ?? PlaylistLoader();
  
  List<Channel> get channels => _channels;
  bool get isLoading => _isLoading;
  bool get hasCriticalData => _criticalDataLoaded;
  bool get hasChannels => _channels.isNotEmpty;
  String? get errorMessage => _errorMessage;
  int get channelCount => _channels.length;
  bool get hasLoadedPlaylist => _criticalDataLoaded;
  
  /// Load channels with fast startup optimizations
  Future<void> loadChannels(String m3uUrl) async {
    if (_isLoading) return;
    
    _isLoading = true;
    _errorMessage = null;
    notifyListenersThrottled();
    
    try {
      debugLog('OptimizedChannelProvider: Starting fast channel load from $m3uUrl');
      
      _channels.clear();
      _indicesByCategory.clear();
      _criticalDataLoaded = false;

      await _playlistLoader.loadFromUrl(
        m3uUrl,
        onProgress: (count) {
             // We can expose progress if needed, but critical data flag handles the "ready" state
        },
        onChannelsChunk: (chunk) {
            final newChannels = chunk.map((map) => Channel.fromMap(map)).toList();
            final startIndex = _channels.length;
            _channels.addAll(newChannels);

            // Index by category
            for (int i = 0; i < newChannels.length; i++) {
                final channel = newChannels[i];
                final rawGroup = (channel.groupTitle ?? '').trim();
                final category = rawGroup.isEmpty ? 'Uncategorized' : rawGroup;

                if (!_indicesByCategory.containsKey(category)) {
                  _indicesByCategory[category] = [];
                }
                _indicesByCategory[category]!.add(startIndex + i);
            }

            if (!_criticalDataLoaded && _channels.isNotEmpty) {
              _criticalDataLoaded = true;
            }
            notifyListenersThrottled();
        }
      );
      
      _criticalDataLoaded = true;
      _isLoading = false;
      notifyListenersThrottled();
      
      debugLog('OptimizedChannelProvider: Channels loaded (${_channels.length} channels)');
      
    } catch (e) {
      _errorMessage = 'Failed to load channels: $e';
      _isLoading = false;
      notifyListenersThrottled();
      debugLog('OptimizedChannelProvider: Error loading channels: $e');
    }
  }
  
  @override
  void dispose() {
    _playlistLoader.cancelCurrent();
    super.dispose();
  }

  /// Get channels for category with pagination
  Future<List<Channel>> getChannelsForCategory(
    String category, {
    int offset = 0,
    int limit = 50,
  }) async {
    final indices = _indicesByCategory[category];
    if (indices == null) return [];

    final end = (offset + limit).clamp(0, indices.length);
    if (offset >= end) return [];

    return indices.sublist(offset, end).map((i) => _channels[i]).toList();
  }
  
  /// Get channel count for category
  int getChannelCountForCategory(String category) {
    return _indicesByCategory[category]?.length ?? 0;
  }
  
  /// Get all category names
  List<String> getAllCategoryNames() {
    final categories = _indicesByCategory.keys.toList();
    categories.sort();
    // Ensure Uncategorized is at the end if present, or handle sorting as preferred
    // For now simple sort
    return categories;
  }
  
  /// Get category names asynchronously (for compatibility)
  Future<List<String>> getAllCategoryNamesAsync() async {
    return getAllCategoryNames();
  }
  
  /// Get channels page with pagination
  Future<List<Channel>> getChannelsPage({
    int offset = 0,
    int limit = 50,
  }) async {
    final end = (offset + limit).clamp(0, _channels.length);
    if (offset >= end) return [];
    return _channels.sublist(offset, end);
  }
  
  /// Get channel in category at index
  Channel? getChannelInCategoryAtIndex(String category, int index) {
    final indices = _indicesByCategory[category];
    if (indices != null && index >= 0 && index < indices.length) {
      final realIndex = indices[index];
      if (realIndex >= 0 && realIndex < _channels.length) {
        return _channels[realIndex];
      }
    }
    return null;
  }
  
  /// Check if channel is favorite (placeholder implementation)
  bool isFavorite(Channel channel) {
    return false;
  }
  
  /// Add to favorites (placeholder implementation)
  void addToFavorites(Channel channel) {
    // No-op
  }
  
  /// Remove from favorites (placeholder implementation)
  void removeFromFavorites(Channel channel) {
    // No-op
  }
  
  /// Get most watched channels (placeholder implementation)
  List<Channel> get mostWatchedChannels {
    return _channels.take(5).toList();
  }
}
