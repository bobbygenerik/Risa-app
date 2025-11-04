import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/channel.dart';
import '../models/content.dart';
import '../services/m3u_parser_service.dart';
import 'package:http/http.dart' as http;
import 'content_provider.dart';

class ChannelProvider with ChangeNotifier {
  List<Channel> _channels = [];
  List<Channel> _favoriteChannels = [];
  List<Content> _movies = [];
  List<Content> _series = [];
  bool _isLoading = false;
  String? _errorMessage;
  ContentProvider? _contentProvider;
  bool _hasLoadedPlaylist = false;

  final M3UParserService _parserService = M3UParserService();

  // Set the ContentProvider reference for VOD sync
  void setContentProvider(ContentProvider provider) {
    _contentProvider = provider;
  }

  List<Channel> get channels => _channels;
  List<Channel> get favoriteChannels => _favoriteChannels;
  List<Content> get movies => _movies;
  List<Content> get series => _series;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get hasLoadedPlaylist => _hasLoadedPlaylist;

  /// Auto-load saved playlist on startup
  Future<void> autoLoadPlaylist() async {
    if (_hasLoadedPlaylist) return; // Already loaded
    
    print('ChannelProvider: Auto-loading playlist...');
    final prefs = await SharedPreferences.getInstance();
    final playlistType = prefs.getString('playlist_type');
    
    print('ChannelProvider: Playlist type: $playlistType');
    if (playlistType == null) {
      print('ChannelProvider: No saved playlist found');
      return; // No saved playlist
    }
    
    try {
      String? playlistUrl;
      
      if (playlistType == 'm3u') {
        playlistUrl = prefs.getString('m3u_url');
        print('ChannelProvider: M3U URL: $playlistUrl');
      } else if (playlistType == 'xtream') {
        final server = prefs.getString('xtream_server');
        final username = prefs.getString('xtream_username');
        final password = prefs.getString('xtream_password');
        
        print('ChannelProvider: Xtream - Server: $server, User: $username');
        if (server != null && username != null && password != null) {
          playlistUrl =
              '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';
        }
      }
      
      if (playlistUrl != null && playlistUrl.isNotEmpty) {
        print('ChannelProvider: Loading playlist URL: $playlistUrl');
        await loadPlaylistFromUrl(playlistUrl);
        _hasLoadedPlaylist = true;
        print('ChannelProvider: Auto-load completed successfully');
      } else {
        print('ChannelProvider: Playlist URL is empty');
      }
    } catch (e) {
      // Silently fail - user can manually load from settings
      print('ChannelProvider: Auto-load playlist failed: $e');
    }
  }

  /// Load channels from M3U URL
  Future<void> loadPlaylistFromUrl(String url) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      print('ChannelProvider: Loading playlist from URL: $url');
      final response = await http.get(Uri.parse(url));

      print('ChannelProvider: Response status: ${response.statusCode}');
      if (response.statusCode == 200) {
        print('ChannelProvider: Parsing M3U content (${response.body.length} bytes)');
        _channels = _parserService.parseM3U(response.body);
        print('ChannelProvider: Parsed ${_channels.length} channels');

        // Also parse VOD content (movies and series)
        final vodContent = _parserService.parseVOD(response.body);
        _movies = vodContent['movies'] ?? [];
        _series = vodContent['series'] ?? [];
        print('ChannelProvider: Parsed ${_movies.length} movies, ${_series.length} series');

        // Sync VOD content to ContentProvider
        if (_contentProvider != null) {
          _contentProvider!.loadMovies(_movies);
          _contentProvider!.loadSeries(_series);
        }

        _isLoading = false;
        _hasLoadedPlaylist = true;
        notifyListeners();
      } else {
        throw Exception('Failed to load playlist: ${response.statusCode}');
      }
    } catch (e) {
      print('ChannelProvider: Error loading playlist: $e');
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

      // Also parse VOD content (movies and series)
      final vodContent = _parserService.parseVOD(content);
      _movies = vodContent['movies'] ?? [];
      _series = vodContent['series'] ?? [];

      // Sync VOD content to ContentProvider
      if (_contentProvider != null) {
        _contentProvider!.loadMovies(_movies);
        _contentProvider!.loadSeries(_series);
      }

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
        .where(
          (channel) => channel.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  /// Filter channels by category
  List<Channel> filterByCategory(String category) {
    return _channels
        .where((channel) => channel.groupTitle == category)
        .toList();
  }
}
