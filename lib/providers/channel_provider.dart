import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/channel.dart';
import '../models/content.dart';
import '../services/m3u_parser_service.dart';
import '../services/xtream_codes_service.dart';
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
  String? _lastM3UContent; // Store last content for debugging

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
  String? get lastM3UContent => _lastM3UContent; // Expose for debugging

  /// Auto-load saved playlist on startup
  Future<void> autoLoadPlaylist() async {
    if (_hasLoadedPlaylist) return; // Already loaded
    
    print('ChannelProvider: Auto-loading playlist...');
    final prefs = await SharedPreferences.getInstance();
    final playlistType = prefs.getString('playlist_type');
    
    // First, try to load from cache
    final cachedPlaylist = prefs.getString('cached_playlist');
    final cacheTimestamp = prefs.getInt('cache_timestamp');
    final cacheAge = cacheTimestamp != null 
        ? DateTime.now().millisecondsSinceEpoch - cacheTimestamp 
        : null;
    
    // If cache is less than 6 hours old (21600000 ms), use it
    if (cachedPlaylist != null && cacheAge != null && cacheAge < 21600000) {
      print('ChannelProvider: Loading from cache (${(cacheAge / 60000).round()} minutes old)');
      try {
        loadPlaylistFromString(cachedPlaylist);
        _hasLoadedPlaylist = true;
        print('ChannelProvider: Cache loaded successfully with ${_channels.length} channels');
        
        // Load from network in background to update cache
        _refreshCacheInBackground(prefs, playlistType);
        return;
      } catch (e) {
        print('ChannelProvider: Cache load failed: $e, loading from network');
      }
    } else {
      print('ChannelProvider: Cache expired or not found, loading from network');
    }
    
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
  
  /// Refresh cache in background without blocking UI
  Future<void> _refreshCacheInBackground(SharedPreferences prefs, String? playlistType) async {
    print('ChannelProvider: Refreshing cache in background...');
    try {
      String? playlistUrl;
      
      if (playlistType == 'm3u') {
        playlistUrl = prefs.getString('m3u_url');
      } else if (playlistType == 'xtream') {
        final server = prefs.getString('xtream_server');
        final username = prefs.getString('xtream_username');
        final password = prefs.getString('xtream_password');
        if (server != null && username != null && password != null) {
          playlistUrl =
              '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';
        }
      }
      
      if (playlistUrl != null && playlistUrl.isNotEmpty) {
        // Download without showing loading state
        final client = http.Client();
        try {
          final response = await client.get(
            Uri.parse(playlistUrl),
            headers: {
              'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
              'Accept': '*/*',
            },
          ).timeout(Duration(seconds: 90));
          
          if (response.statusCode == 200) {
            await prefs.setString('cached_playlist', response.body);
            await prefs.setInt('cache_timestamp', DateTime.now().millisecondsSinceEpoch);
            print('ChannelProvider: Cache updated successfully');
          }
        } finally {
          client.close();
        }
      }
    } catch (e) {
      print('ChannelProvider: Background cache refresh failed: $e');
    }
  }

  /// Load channels from M3U URL
  Future<void> loadPlaylistFromUrl(String url) async {
    _isLoading = true;
    _errorMessage = null;
    _lastM3UContent = null; // Clear old content
    notifyListeners();

    try {
      print('ChannelProvider: Loading playlist from URL: $url');
      print('ChannelProvider: Starting download with 90 second timeout...');
      
      // Allow insecure connections for IPTV providers with SSL issues
      HttpOverrides.global = _MyHttpOverrides();
      
      // Create client with proper timeout and error handling
      final client = http.Client();
      try {
        final response = await client.get(
          Uri.parse(url),
          headers: {
            'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
            'Accept': '*/*',
            'Accept-Encoding': 'gzip, deflate',
          },
        ).timeout(
          Duration(seconds: 90), // Increased to 90 seconds for large playlists
          onTimeout: () {
            print('ChannelProvider: Request timed out after 90 seconds');
            throw Exception('Connection timeout - server took too long to respond (90s limit)');
          },
        );

        print('ChannelProvider: Response received - status: ${response.statusCode}');
        print('ChannelProvider: Content-Type: ${response.headers['content-type']}');
        
        // ALWAYS store response body for debugging, even if empty
        _lastM3UContent = response.body;
        print('ChannelProvider: Captured ${response.body.length} bytes of response data');
        
        if (response.statusCode == 200) {
          print('ChannelProvider: Parsing M3U content (${response.body.length} bytes)');
          _channels = _parserService.parseM3U(response.body);
          print('ChannelProvider: Parsed ${_channels.length} channels');
          
          // Cache the playlist for faster loading next time
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('cached_playlist', response.body);
          await prefs.setInt('cache_timestamp', DateTime.now().millisecondsSinceEpoch);
          print('ChannelProvider: Playlist cached successfully');
          
          // Save EPG URL if found in M3U header
          if (_parserService.epgUrl != null) {
            print('ChannelProvider: Saving EPG URL: ${_parserService.epgUrl}');
            await prefs.setString('epg_url', _parserService.epgUrl!);
          }

          // Load VOD content using Xtream Codes API if available
          await _loadXtreamVOD(url);

          _isLoading = false;
          _hasLoadedPlaylist = true;
          notifyListeners();
        } else {
          // Non-200 response - content is already stored above for debugging
          print('ChannelProvider: Non-200 response, content captured for debugging');
          throw Exception('HTTP ${response.statusCode}: Failed to load playlist');
        }
      } finally {
        client.close();
      }
    } catch (e, stackTrace) {
      print('ChannelProvider: Error loading playlist: $e');
      print('ChannelProvider: Stack trace: $stackTrace');
      
      // Provide more helpful error messages
      if (e.toString().contains('HandshakeException') || 
          e.toString().contains('WRONG_VERSION_NUMBER')) {
        _errorMessage = 'SSL/TLS Error: Server security configuration issue.\n\n'
            'This usually means:\n'
            '• The server URL should use HTTPS (not HTTP)\n'
            '• Or the server has SSL certificate problems\n\n'
            'Try changing http:// to https:// in your URL.';
      } else if (e.toString().contains('SocketException')) {
        final socketError = e.toString();
        _errorMessage = 'Connection Error: Unable to reach server.\n\n'
            'Details: $socketError\n\n'
            'Check your internet connection and server URL.';
      } else if (e.toString().contains('timeout')) {
        _errorMessage = 'Timeout Error: Playlist took too long to download (90 second limit).\n\n'
            'This could mean:\n'
            '• The playlist is very large\n'
            '• Your internet connection is slow\n'
            '• The server is overloaded\n\n'
            'Try again in a few moments.';
      } else if (e.toString().contains('FormatException')) {
        _errorMessage = 'Invalid URL: The playlist URL format is incorrect.\n\n'
            'Make sure your URL starts with http:// or https://';
      } else {
        _errorMessage = 'Error loading playlist:\n\n$e';
      }
      
      _isLoading = false;
      notifyListeners();
      rethrow; // Re-throw so UI can handle it
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

  /// Load VOD content using Xtream Codes API
  Future<void> _loadXtreamVOD(String m3uUrl) async {
    try {
      // Extract server, username, password from M3U URL
      // Format: http://server/get.php?username=X&password=Y&type=m3u_plus&output=ts
      final uri = Uri.parse(m3uUrl);
      final serverUrl = '${uri.scheme}://${uri.host}${uri.port != 80 && uri.port != 443 ? ':${uri.port}' : ''}';
      final username = uri.queryParameters['username'];
      final password = uri.queryParameters['password'];

      if (username == null || password == null) {
        print('ChannelProvider: Cannot load VOD - missing credentials in URL');
        return;
      }

      print('ChannelProvider: Loading VOD from Xtream Codes API...');
      final xtreamService = XtreamCodesService(
        serverUrl: serverUrl,
        username: username,
        password: password,
      );

      // Load movies and series in parallel
      final results = await Future.wait([
        xtreamService.getAllMovies(),
        xtreamService.getAllSeries(),
      ]);

      _movies = results[0];
      _series = results[1];

      print('ChannelProvider: Loaded ${_movies.length} movies, ${_series.length} series from Xtream API');

      // Sync VOD content to ContentProvider
      if (_contentProvider != null) {
        _contentProvider!.loadMovies(_movies);
        _contentProvider!.loadSeries(_series);
      }
    } catch (e) {
      print('ChannelProvider: Error loading Xtream VOD: $e');
      // Don't fail the whole playlist load if VOD fails
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

// SSL bypass for IPTV providers with certificate issues
class _MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) {
        // Allow all certificates - WARNING: Only use for IPTV providers you trust!
        print('SSL: Accepting certificate for $host:$port');
        return true;
      };
  }
}
