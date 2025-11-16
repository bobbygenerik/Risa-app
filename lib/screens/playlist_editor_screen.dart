import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';

class PlaylistEditorScreen extends StatefulWidget {
  const PlaylistEditorScreen({super.key});

  @override
  State<PlaylistEditorScreen> createState() => _PlaylistEditorScreenState();
}

class _PlaylistEditorScreenState extends State<PlaylistEditorScreen> {
  final _nameController = TextEditingController();
  final _m3uUrlController = TextEditingController();
  final _xtreamServerController = TextEditingController();
  final _xtreamUsernameController = TextEditingController();
  final _xtreamPasswordController = TextEditingController();
  
  String _playlistType = 'm3u';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadPlaylistData();
  }

  Future<void> _loadPlaylistData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _nameController.text = prefs.getString('playlist_name') ?? 'My Playlist';
      _playlistType = prefs.getString('playlist_type') ?? 'm3u';
      _m3uUrlController.text = prefs.getString('m3u_url') ?? '';
      _xtreamServerController.text = prefs.getString('xtream_server') ?? '';
      _xtreamUsernameController.text = prefs.getString('xtream_username') ?? '';
      _xtreamPasswordController.text = prefs.getString('xtream_password') ?? '';
    });
  }

  Future<void> _savePlaylist() async {
    setState(() => _isLoading = true);
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('playlist_name', _nameController.text);
    await prefs.setString('playlist_type', _playlistType);
    
    if (_playlistType == 'm3u') {
      await prefs.setString('m3u_url', _m3uUrlController.text);
    } else {
      await prefs.setString('xtream_server', _xtreamServerController.text);
      await prefs.setString('xtream_username', _xtreamUsernameController.text);
      await prefs.setString('xtream_password', _xtreamPasswordController.text);
    }

    setState(() => _isLoading = false);
    
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Playlist settings saved'),
          backgroundColor: AppTheme.accentGreen,
        ),
      );
      context.pop();
    }
  }

  Future<void> _testConnection() async {
    setState(() => _isLoading = true);
    
    try {
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      
      if (_playlistType == 'm3u') {
        await provider.loadPlaylistFromUrl(_m3uUrlController.text);
      } else {
        final url = '${_xtreamServerController.text}/get.php?username=${_xtreamUsernameController.text}&password=${_xtreamPasswordController.text}&type=m3u_plus&output=ts';
        await provider.loadPlaylistFromUrl(url);
      }
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Connection successful! ${provider.channels.length} channels found.'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Connection failed: $e'),
            backgroundColor: AppTheme.accentRed,
          ),
        );
      }
    }
    
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('Edit Playlist'),
        backgroundColor: AppTheme.darkBackground,
        actions: [
          TextButton(
            onPressed: _isLoading ? null : _savePlaylist,
            child: const Text('Save'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Playlist Name
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Playlist Name',
                prefixIcon: Icon(Icons.playlist_play),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            
            // Playlist Type
            const Text('Playlist Type', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(value: 'm3u', label: Text('M3U URL')),
                ButtonSegment(value: 'xtream', label: Text('Xtream Codes')),
              ],
              selected: {_playlistType},
              onSelectionChanged: (Set<String> selection) {
                setState(() {
                  _playlistType = selection.first;
                });
              },
            ),
            const SizedBox(height: 24),
            
            // M3U URL Section
            if (_playlistType == 'm3u') ...[
              TextField(
                controller: _m3uUrlController,
                decoration: const InputDecoration(
                  labelText: 'M3U URL',
                  hintText: 'http://example.com/playlist.m3u',
                  prefixIcon: Icon(Icons.link),
                  border: OutlineInputBorder(),
                ),
              ),
            ],
            
            // Xtream Codes Section
            if (_playlistType == 'xtream') ...[
              TextField(
                controller: _xtreamServerController,
                decoration: const InputDecoration(
                  labelText: 'Server URL',
                  hintText: 'http://example.com:8080',
                  prefixIcon: Icon(Icons.dns),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _xtreamUsernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _xtreamPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),
            ],
            
            const SizedBox(height: 32),
            
            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: _isLoading ? null : _testConnection,
                    child: _isLoading
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Test Connection'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _savePlaylist,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                    ),
                    child: const Text('Save Playlist'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _m3uUrlController.dispose();
    _xtreamServerController.dispose();
    _xtreamUsernameController.dispose();
    _xtreamPasswordController.dispose();
    super.dispose();
  }
}