import 'dart:async';
import 'package:flutter/foundation.dart';
import '../models/channel.dart';
import '../utils/debug_helper.dart';

/// Optimized channel provider using fast startup techniques
class OptimizedChannelProvider extends ChangeNotifier {
  List<Channel> _channels = [];
  bool _isLoading = false;
  bool _criticalDataLoaded = false;
  String? _errorMessage;
  
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
    notifyListeners();
    
    try {
      debugLog('OptimizedChannelProvider: Starting fast channel load');
      
      // Mock fast loading
      await Future.delayed(const Duration(milliseconds: 300));
      
      _channels = [
        Channel(id: '1', name: 'Channel 1', url: 'http://example.com/1'),
        Channel(id: '2', name: 'Channel 2', url: 'http://example.com/2'),
        Channel(id: '3', name: 'Channel 3', url: 'http://example.com/3'),
      ];
      
      _criticalDataLoaded = true;
      _isLoading = false;
      notifyListeners();
      
      debugLog('OptimizedChannelProvider: Channels loaded (${_channels.length} channels)');
      
    } catch (e) {
      _errorMessage = 'Failed to load channels: $e';
      _isLoading = false;
      notifyListeners();
      debugLog('OptimizedChannelProvider: Error loading channels: $e');
    }
  }
  
  /// Get channels for category with pagination
  Future<List<Channel>> getChannelsForCategory(
    String category, {
    int offset = 0,
    int limit = 50,
  }) async {
    return _channels.skip(offset).take(limit).toList();
  }
  
  /// Get channel count for category
  int getChannelCountForCategory(String category) {
    return _channels.length;
  }
  
  /// Get all category names
  List<String> getAllCategoryNames() {
    return ['General', 'News', 'Sports'];
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
    return _channels.skip(offset).take(limit).toList();
  }
  
  /// Get channel in category at index
  Channel? getChannelInCategoryAtIndex(String category, int index) {
    if (index >= 0 && index < _channels.length) {
      return _channels[index];
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