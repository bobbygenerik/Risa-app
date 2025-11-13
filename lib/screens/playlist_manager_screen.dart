import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:iptv_player/models/saved_playlist.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:go_router/go_router.dart';

class PlaylistManagerScreen extends StatefulWidget {
  const PlaylistManagerScreen({super.key});

  @override
  State<PlaylistManagerScreen> createState() => _PlaylistManagerScreenState();
}

class _PlaylistManagerScreenState extends State<PlaylistManagerScreen> {
  List<SavedPlaylist> _playlists = [];
  bool _isLoading = true;
  String? _activePlaylistId;

  @override
  void initState() {
    super.initState();
    _loadPlaylists();
  }

  Future<void> _loadPlaylists() async {
    setState(() => _isLoading = true);

    final prefs = await SharedPreferences.getInstance();
    final playlistsJson = prefs.getString('saved_playlists');
    final activeId = prefs.getString('active_playlist_id');

    if (playlistsJson != null) {
      final List<dynamic> decoded = jsonDecode(playlistsJson);
      _playlists = decoded.map((json) => SavedPlaylist.fromJson(json)).toList();
    }

    setState(() {
      _activePlaylistId = activeId;
      _isLoading = false;
    });
  }

  Future<void> _savePlaylists() async {
    final prefs = await SharedPreferences.getInstance();
    final json = jsonEncode(_playlists.map((p) => p.toJson()).toList());
    await prefs.setString('saved_playlists', json);
  }

  Future<void> _deletePlaylist(SavedPlaylist playlist) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: Text('Delete Playlist'),
        content: Text('Are you sure you want to delete "${playlist.name}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: AppTheme.accentRed),
            child: Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      setState(() {
        _playlists.removeWhere((p) => p.id == playlist.id);
      });
      await _savePlaylists();

      // If this was the active playlist, clear it
      if (_activePlaylistId == playlist.id) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove('active_playlist_id');
        await prefs.remove('playlist_type');
        await prefs.remove('m3u_url');
        await prefs.remove('xtream_server');
        await prefs.remove('xtream_username');
        await prefs.remove('xtream_password');
        setState(() => _activePlaylistId = null);
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Playlist "${playlist.name}" deleted'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
      }
    }
  }

  Future<void> _loadPlaylist(SavedPlaylist playlist) async {
    setState(() => _isLoading = true);

    try {
      final channelProvider = Provider.of<ChannelProvider>(
        context,
        listen: false,
      );
      await channelProvider.loadPlaylistFromUrl(playlist.url);

      // Save as active playlist
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('active_playlist_id', playlist.id);
      await prefs.setString('playlist_type', playlist.type);

      if (playlist.type == 'm3u') {
        await prefs.setString('m3u_url', playlist.url);
      } else if (playlist.type == 'xtream') {
        await prefs.setString('xtream_server', playlist.server ?? '');
        await prefs.setString('xtream_username', playlist.username ?? '');
        await prefs.setString('xtream_password', playlist.password ?? '');
      }

      setState(() {
        _activePlaylistId = playlist.id;
        _isLoading = false;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '✓ Loaded "${playlist.name}" - ${channelProvider.channels.length} channels',
            ),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
        context.go('/home');
      }
    } catch (e) {
      setState(() => _isLoading = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to load playlist: $e'),
            backgroundColor: AppTheme.accentRed,
          ),
        );
      }
    }
  }

  Future<void> _editPlaylist(SavedPlaylist playlist) async {
    final nameController = TextEditingController(text: playlist.name);

    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: Text('Edit Playlist Name'),
        content: TextField(
          controller: nameController,
          decoration: InputDecoration(
            labelText: 'Playlist Name',
            border: OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, nameController.text),
            child: Text('Save'),
          ),
        ],
      ),
    );

    if (result != null && result.isNotEmpty) {
      setState(() {
        final index = _playlists.indexWhere((p) => p.id == playlist.id);
        if (index != -1) {
          _playlists[index] = SavedPlaylist(
            id: playlist.id,
            name: result,
            type: playlist.type,
            url: playlist.url,
            server: playlist.server,
            username: playlist.username,
            password: playlist.password,
            addedDate: playlist.addedDate,
          );
        }
      });
      await _savePlaylists();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Playlist renamed to "$result"'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('Manage Playlists'),
        backgroundColor: Colors.white.withOpacity(0.08),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'Add New Playlist',
            onPressed: () {
              context.go('/settings/playlist-login');
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF050710), Color(0xFF0d1140)],
          ),
        ),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : _playlists.isEmpty
            ? _buildEmptyState()
            : _buildPlaylistList(),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.playlist_play,
            size: 80,
            color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
          ),
          SizedBox(height: AppSizes.lg),
          Text(
            'No Saved Playlists',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: AppSizes.sm),
          Text(
            'Add a playlist to get started',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
          ),
          SizedBox(height: AppSizes.xl),
          BrandPrimaryButton(
            icon: Icons.add,
            label: 'Add Playlist',
            onPressed: () => context.go('/settings/playlist-login'),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaylistList() {
    return ListView.builder(
      padding: EdgeInsets.all(AppSizes.lg),
      itemCount: _playlists.length,
      itemBuilder: (context, index) {
        final playlist = _playlists[index];
        final isActive = playlist.id == _activePlaylistId;

        return Card(
          color: AppTheme.cardBackground,
          margin: EdgeInsets.only(bottom: AppSizes.md),
          child: ListTile(
            contentPadding: EdgeInsets.all(AppSizes.md),
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: isActive
                    ? AppTheme.primaryBlue
                    : AppTheme.primaryBlue.withAlpha((0.35 * 255).round()),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                playlist.type == 'm3u' ? Icons.link : Icons.cast,
                color: Colors.white,
                size: 28,
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    playlist.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                if (isActive)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppTheme.accentGreen,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'ACTIVE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                Text(
                  playlist.type == 'm3u' ? 'M3U Playlist' : 'Xtream Codes',
                  style: TextStyle(color: AppTheme.textSecondary, fontSize: 12),
                ),
                if (playlist.type == 'xtream' && playlist.server != null)
                  Text(
                    playlist.server!,
                    style: TextStyle(
                      color: AppTheme.textSecondary,
                      fontSize: 11,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
            trailing: PopupMenuButton(
              icon: Icon(Icons.more_vert, color: AppTheme.textPrimary),
              color: AppTheme.cardBackground,
              itemBuilder: (context) => [
                if (!isActive)
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.play_arrow, color: AppTheme.primaryBlue),
                        SizedBox(width: 8),
                        Text('Load'),
                      ],
                    ),
                    onTap: () => Future.delayed(
                      Duration.zero,
                      () => _loadPlaylist(playlist),
                    ),
                  ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.edit, color: AppTheme.textPrimary),
                      SizedBox(width: 8),
                      Text('Rename'),
                    ],
                  ),
                  onTap: () => Future.delayed(
                    Duration.zero,
                    () => _editPlaylist(playlist),
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: AppTheme.accentRed),
                      SizedBox(width: 8),
                      Text('Delete'),
                    ],
                  ),
                  onTap: () => Future.delayed(
                    Duration.zero,
                    () => _deletePlaylist(playlist),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
