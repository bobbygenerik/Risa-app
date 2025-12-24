import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';

class EPGScreenState extends ChangeNotifier {
  // Date and view state
  final DateTime _selectedDate = DateTime.now();
  final bool _isHourlyView = true;

  // Category and favorites
  String? _selectedCategory;
  Set<String> _epgFavoriteChannelIds = {};

  // Pagination state
  static const int _channelsPerPage = 50;
  int _currentPage = 0;
  bool _isLoadingMore = false;
  List<Channel> _paginatedChannels = [];

  // Scroll synchronization
  bool _syncingScroll = false;

  // Getters
  DateTime get selectedDate => _selectedDate;
  bool get isHourlyView => _isHourlyView;
  String? get selectedCategory => _selectedCategory;
  Set<String> get epgFavoriteChannelIds => _epgFavoriteChannelIds;
  int get currentPage => _currentPage;
  bool get isLoadingMore => _isLoadingMore;
  List<Channel> get paginatedChannels => _paginatedChannels;
  bool get syncingScroll => _syncingScroll;
  int get channelsPerPage => _channelsPerPage;

  // Category management
  void setSelectedCategory(String? category) {
    if (_selectedCategory != category) {
      _selectedCategory = category;
      _resetPagination();
      notifyListeners();
    }
  }

  // Favorites management
  void setEpgFavoriteChannelIds(Set<String> favoriteIds) {
    _epgFavoriteChannelIds = favoriteIds;
    notifyListeners();
  }

  void toggleEpgFavorite(String channelId) {
    if (_epgFavoriteChannelIds.contains(channelId)) {
      _epgFavoriteChannelIds.remove(channelId);
    } else {
      _epgFavoriteChannelIds.add(channelId);
    }
    notifyListeners();
  }

  // Pagination management
  void _resetPagination() {
    _currentPage = 0;
    _paginatedChannels.clear();
  }

  void updatePaginatedChannels(List<Channel> allChannels) {
    // Sort channels first
    allChannels.sort((a, b) {
      if (a.sortOrder != null && b.sortOrder != null) {
        return a.sortOrder!.compareTo(b.sortOrder!);
      }
      if (a.channelNumber != null && b.channelNumber != null) {
        return a.channelNumber!.compareTo(b.channelNumber!);
      }
      return a.name.compareTo(b.name);
    });

    // Reset pagination when category changes
    _currentPage = 0;
    _paginatedChannels = allChannels.take(_channelsPerPage).toList();
    notifyListeners();
  }

  void loadMoreChannels(List<Channel> allChannels) {
    if (_isLoadingMore) return;

    final startIndex = (_currentPage + 1) * _channelsPerPage;
    if (startIndex >= allChannels.length) return;

    _isLoadingMore = true;
    notifyListeners();

    // Simulate loading delay for smooth UX
    Future.delayed(const Duration(milliseconds: 300), () {
      final endIndex =
          (startIndex + _channelsPerPage).clamp(0, allChannels.length);
      final newChannels = allChannels.sublist(startIndex, endIndex);

      _paginatedChannels.addAll(newChannels);
      _currentPage++;
      _isLoadingMore = false;
      notifyListeners();
    });
  }

  // Scroll synchronization
  void setSyncingScroll(bool syncing) {
    _syncingScroll = syncing;
  }

  double calculateGridWidth() {
    final hours = _isHourlyView ? 24 : 48;
    final cellWidth = _isHourlyView ? 120.0 : 60.0;
    const channelSidebarWidth = 80.0;
    return channelSidebarWidth + (hours * cellWidth);
  }

  double calculateProgramsGridWidth() {
    return calculateGridWidth();
  }
}
