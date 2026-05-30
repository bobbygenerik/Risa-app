part of '../channel_provider.dart';

/// Thin public API delegates for [ChannelProvider].
extension ChannelProviderApi on ChannelProvider {
  List<Map<String, dynamic>> getChannelSampleMaps(int limit) {
    if (_channelMaps.isEmpty || limit <= 0) return const [];
    final count = limit.clamp(0, _channelMaps.length);
    return _channelMaps
        .take(count)
        .map((m) => Map<String, dynamic>.from(m))
        .toList();
  }

  List<Map<String, dynamic>> getChannelSampleMapsByStride(int limit) {
    if (_channelMaps.isEmpty || limit <= 0) return const [];
    final total = _channelMaps.length;
    final count =
        limit.clamp(1, total); // Ensure count >= 1 to prevent division by zero
    if (count <= 0) return const []; // Extra safety check
    final step = (total / count).ceil().clamp(1, total);
    final sampled = <Map<String, dynamic>>[];
    for (int i = 0; i < total && sampled.length < count; i += step) {
      sampled.add(Map<String, dynamic>.from(_channelMaps[i]));
    }
    if (sampled.isEmpty && _channelMaps.isNotEmpty) {
      sampled.add(Map<String, dynamic>.from(_channelMaps.first));
    }
    return sampled;
  }

  /// Get channel count without converting all channels
  int get channelCount => _dbReady ? _channelCountDb : _channelMaps.length;

  Future<int> getChannelCountAsync() =>
      _channelQueryService.getChannelCountAsync();

  /// Quick check if there are any channels (no conversion needed)
  bool get hasChannels => _dbReady
      ? (_channelCountDb > 0 || _channelMaps.isNotEmpty)
      : _channelMaps.isNotEmpty;

  /// Public accessor for virtualized lists
  Channel getChannelAt(int index) => _getChannelAt(index);

  /// Async paged channels for UI (DB-backed when available)
  Future<List<Channel>> getChannelsPage(
          {int offset = 0, int limit = 50}) =>
      _channelQueryService.getChannelsPage(offset: offset, limit: limit);

  Future<Map<String, List<Channel>>> getGroupedChannelsAsync(
          {int categoryLimit = 15, int channelLimit = 30}) =>
      _channelQueryService.getGroupedChannelsAsync(
        categoryLimit: categoryLimit,
        channelLimit: channelLimit,
      );

  /// Get channels - returns limited list for UI to prevent freezing
  List<Channel> get channels {
    // Return a preview list. Use getChannelAt() for full lists.
    final limit = _channelMaps.length < 30 ? _channelMaps.length : 30;
    return List.generate(limit, (i) => _getChannelAt(i));
  }

  /// Get channel maps for virtual scrolling (memory efficient)
  List<Map<String, dynamic>> getChannelMapsForUI({int limit = 50}) =>
      _channelAccess.getChannelMapsForUI(limit: limit);

  /// Get channel maps for category (virtual scrolling)
  List<Map<String, dynamic>> getChannelMapsForCategory(
    String category, {
    int limit = 50,
  }) =>
      _channelAccess.getChannelMapsForCategory(category, limit: limit);

  /// Find a channel by ID (lazy conversion)
  Channel? getChannelById(String id) => _channelAccess.getChannelById(id);

  /// Get filtered channels for EPG/search (with limit for performance)
  List<Channel> getFilteredChannels({
    String? category,
    Set<String>? favoriteIds,
    bool excludeHidden = true,
    int limit = 500,
  }) =>
      _channelQueryService.getFilteredChannels(
        category: category,
        favoriteIds: favoriteIds,
        excludeHidden: excludeHidden,
        limit: limit,
      );

  Future<List<Channel>> getFilteredChannelsAsync({
    String? category,
    Set<String>? favoriteIds,
    bool excludeHidden = true,
    int limit = 500,
    int offset = 0,
  }) =>
      _channelQueryService.getFilteredChannelsAsync(
        category: category,
        favoriteIds: favoriteIds,
        excludeHidden: excludeHidden,
        limit: limit,
        offset: offset,
      );

  /// Get next channel in the list (for channel surfing)
  Channel? getNextChannel(String currentChannelId) =>
      _channelAccess.getNextChannel(currentChannelId);

  /// Get previous channel in the list (for channel surfing)
  Channel? getPreviousChannel(String currentChannelId) =>
      _channelAccess.getPreviousChannel(currentChannelId);

  List<Channel> get favoriteChannels => _favoriteChannels;
  double get loadingProgress => _loadingProgress;
  String get loadingStatus => _loadingStatus;
  bool get isColdStartLoad => _isColdStartLoad;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get noPlaylistConfigured => _noPlaylistConfigured;
  bool get hasLoadedPlaylist => _hasLoadedPlaylist;
  String? get lastM3UContent => _lastM3UContent; // Expose for debugging
  bool get isDbReady => _dbReady;
  bool get isDbDisabled => _dbDisabled;
  bool get isDbReadOnlyRecoveryInFlight => _dbReadOnlyRecoveryInFlight;
  int get dbChannelCount => _channelCountDb;

  /// Get channels sorted by watch count (most watched first) - limited
  List<Channel> get mostWatchedChannels => _channelAccess.mostWatchedChannels;

  /// Track when a channel is watched
  Future<void> incrementWatchCount(String channelId) =>
      _channelAccess.incrementWatchCount(channelId);

  /// Auto-load saved playlist on startup
  Future<void> autoLoadPlaylist() => _channelAutoLoad.autoLoadPlaylist();

  /// Load channels from M3U URL
  Future<void> loadPlaylistFromUrl(String url) =>
      _channelPlaylistLoader.loadPlaylistFromUrl(url);

  /// Load channels from M3U content string without blocking the UI isolate
  Future<void> loadPlaylistFromString(String content) =>
      _channelPlaylistLoader.loadPlaylistFromString(content);

  /// Get list of category names (lightweight - computed in isolate)
  List<String> getCategories() => _channelQueryService.getCategories();

  /// Get channels for a specific category (on-demand, limited, lazy conversion)
  Future<List<Channel>> getChannelsForCategoryAsync(
    String category, {
    int offset = 0,
    int limit = 20,
  }) =>
      _channelQueryService.getChannelsForCategoryAsync(
        category,
        offset: offset,
        limit: limit,
      );

  Future<Map<String, List<Channel>>> getCategoryPreviewBatch(
    List<String> categories, {
    int limit = 20,
  }) =>
      _channelQueryService.getCategoryPreviewBatch(
        categories,
        limit: limit,
      );

  Future<List<String>> getAllCategoryNamesAsync() =>
      _channelQueryService.getAllCategoryNamesAsync();

  List<String> getAllCategoryNames() =>
      _channelQueryService.getAllCategoryNames();

  Map<String, List<Channel>> getGroupedChannels() =>
      _channelQueryService.getGroupedChannels();

  /// Add channel to favorites
  void addToFavorites(Channel channel) =>
      _channelAccess.addToFavorites(channel);

  /// Remove channel from favorites
  void removeFromFavorites(Channel channel) =>
      _channelAccess.removeFromFavorites(channel);

  /// Check if channel is favorite
  bool isFavorite(Channel channel) => _channelAccess.isFavorite(channel);

  List<Channel> searchChannels(String query, {int limit = 50}) =>
      _channelQueryService.searchChannels(query, limit: limit);

  Future<List<Channel>> searchChannelsAsync(
    String query, {
    int limit = 100,
  }) =>
      _channelQueryService.searchChannelsAsync(query, limit: limit);

  List<Channel> filterByCategory(
    String category, {
    int offset = 0,
    int limit = 100,
  }) =>
      _channelQueryService.filterByCategory(
        category,
        offset: offset,
        limit: limit,
      );

  /// Get count of channels in a category (no conversion needed)
  int getChannelCountForCategory(String category) =>
      _channelAccess.getChannelCountForCategory(category);

  /// Get a channel at a specific index within a category (for lazy loading)
  Channel? getChannelInCategoryAtIndex(String category, int index) =>
      _channelAccess.getChannelInCategoryAtIndex(category, index);

  Future<Map<String, int>> computeEpgMatchStats(
    IncrementalEpgService epgService, {
    int? maxChannels,
  }) =>
      _channelQueryService.computeEpgMatchStats(
        epgService,
        maxChannels: maxChannels,
      );
}
