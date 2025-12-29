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
  bool _hasMore = true;

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
  bool get hasMore => _hasMore;

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
    final sameLength = _paginatedChannels.length == allChannels.length;
    if (sameLength && allChannels.isNotEmpty) {
      final sameFirst = _paginatedChannels.first.id == allChannels.first.id;
      final sameLast = _paginatedChannels.last.id == allChannels.last.id;
      if (sameFirst && sameLast) {
        return;
      }
    } else if (sameLength && allChannels.isEmpty) {
      return;
    }
    _paginatedChannels = allChannels;
    notifyListeners();
  }

  void loadMoreChannels() {
    if (_isLoadingMore || !_hasMore) return;
    _isLoadingMore = true;
    _currentPage++;
    notifyListeners();
    Future.delayed(const Duration(milliseconds: 250), () {
      _isLoadingMore = false;
      notifyListeners();
    });
  }

  void setHasMore(bool value) {
    _hasMore = value;
  }

  // Scroll synchronization
  void setSyncingScroll(bool syncing) {
    _syncingScroll = syncing;
  }

  double calculateGridWidth() {
    final hours = _isHourlyView ? 24 : 48;
    final cellWidth = _isHourlyView ? 120.0 : 60.0;
    return hours * cellWidth;
  }

  double calculateProgramsGridWidth() {
    return calculateGridWidth();
  }
}
