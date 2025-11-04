import 'package:flutter/foundation.dart';
import '../models/channel.dart';
import '../services/m3u_parser_service.dart';
import 'package:http/http.dart' as http;

class ChannelProvider with ChangeNotifier {
  List<Channel> _channels = [];
  List<Channel> _favoriteChannels = [];
  bool _isLoading = false;
  String? _errorMessage;
  
  final M3UParserService _parserService = M3UParserService();

  List<Channel> get channels => _channels;
  List<Channel> get favoriteChannels => _favoriteChannels;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  /// Load channels from M3U URL
  Future<void> loadPlaylistFromUrl(String url) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final response = await http.get(Uri.parse(url));
      
      if (response.statusCode == 200) {
        _channels = _parserService.parseM3U(response.body);
        _isLoading = false;
        notifyListeners();
      } else {
        throw Exception('Failed to load playlist: ${response.statusCode}');
      }
    } catch (e) {
      _errorMessage = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Load channels from M3U content string
  void loadPlaylistFromString(String content) {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _channels = _parserService.parseM3U(content);
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _errorMessage = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Get channels grouped by category
  Map<String, List<Channel>> getGroupedChannels() {
    return _parserService.groupChannelsByCategory(_channels);
  }

  /// Add channel to favorites
  void addToFavorites(Channel channel) {
    if (!_favoriteChannels.contains(channel)) {
      _favoriteChannels.add(channel);
      notifyListeners();
    }
  }

  /// Remove channel from favorites
  void removeFromFavorites(Channel channel) {
    _favoriteChannels.remove(channel);
    notifyListeners();
  }

  /// Check if channel is favorite
  bool isFavorite(Channel channel) {
    return _favoriteChannels.any((c) => c.id == channel.id);
  }

  /// Search channels by name
  List<Channel> searchChannels(String query) {
    if (query.isEmpty) return _channels;
    
    return _channels
        .where((channel) => 
            channel.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  /// Filter channels by category
  List<Channel> filterByCategory(String category) {
    return _channels
        .where((channel) => channel.groupTitle == category)
        .toList();
  }
}
