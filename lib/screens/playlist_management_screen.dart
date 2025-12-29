import 'dart:async';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/app_theme.dart';

// removed unused imports
// Note: This screen intentionally does not use `SettingsLayout` to avoid
// displaying a second, nested settings sidebar. The app's main sidebar
// (from `MainShell`) remains visible on all pages.
import 'package:iptv_player/widgets/settings_tile_widgets.dart';

class PlaylistManagementScreen extends StatefulWidget {
  const PlaylistManagementScreen({super.key});

  @override
  State<PlaylistManagementScreen> createState() =>
      _PlaylistManagementScreenState();
}

class _PlaylistManagementScreenState extends State<PlaylistManagementScreen> {
  // Navigation State (not used - this screen is a standalone list)

  // Playlist management
  List<PlaylistInfo> _savedPlaylists = [];
  bool _isLoading = true;

  // Form controllers for editing
  final TextEditingController _playlistNameController = TextEditingController();
  final TextEditingController _playlistUrlController = TextEditingController();
  final TextEditingController _epgUrlController = TextEditingController();
  final TextEditingController _secondaryEpgUrlController =
      TextEditingController();

  // (Add-dialog controllers removed — creation handled via Settings → General)

  // Focus nodes
  final FocusNode _firstFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _loadSavedPlaylists();
  }

  Future<void> _loadSavedPlaylists() async {
    setState(() => _isLoading = true);

    final prefs = await SharedPreferences.getInstance();
    final savedPlaylists = <PlaylistInfo>[];

    // Load M3U playlists
    final m3uUrls = prefs.getStringList('saved_m3u_playlists') ?? [];
    for (final url in m3uUrls) {
      final enc = base64Url.encode(utf8.encode(url));
      final name = prefs.getString('m3u_playlist_name_$enc') ?? 'M3U Playlist';
      final epgUrl = prefs.getString('m3u_epg_url_$enc') ?? '';
      final secondary = prefs.getString('m3u_secondary_epg_$enc') ?? '';
      final freq = prefs.getInt('m3u_update_freq_$enc') ?? 6;

      savedPlaylists.add(PlaylistInfo(
        id: url.hashCode.toString(),
        name: name,
        url: url,
        type: 'm3u',
        epgUrl: epgUrl,
        secondaryEpgUrl: secondary,
        updateFrequency: freq,
      ));
    }

    // Load Xtream servers
    final xtreamServers = prefs.getStringList('saved_xtream_servers') ?? [];
    for (final server in xtreamServers) {
      final enc = base64Url.encode(utf8.encode(server));
      final name =
          prefs.getString('xtream_playlist_name_$enc') ?? 'Xtream Playlist';
      final username = prefs.getString('xtream_username_$enc') ?? '';
      final password = prefs.getString('xtream_password_$enc') ?? '';
      final epgUrl = prefs.getString('xtream_epg_url_$enc') ?? '';
      final secondary = prefs.getString('xtream_secondary_epg_$enc') ?? '';
      final freq = prefs.getInt('xtream_update_freq_$enc') ?? 6;

      savedPlaylists.add(PlaylistInfo(
        id: server.hashCode.toString(),
        name: name,
        url: server,
        type: 'xtream',
        epgUrl: epgUrl,
        secondaryEpgUrl: secondary,
        updateFrequency: freq,
        username: username,
        password: password,
      ));
    }

    setState(() {
      _savedPlaylists = savedPlaylists;
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    _playlistNameController.dispose();
    _playlistUrlController.dispose();
    _epgUrlController.dispose();
    _secondaryEpgUrlController.dispose();
    _firstFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Manage Playlists'),
        backgroundColor: Colors.white.withAlpha((0.08 * 255).round()),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: AppTheme.darkBackground,
        ),
        child: _buildSavedPlaylists(),
      ),
    );
  }

  // Note: active content switching removed — this screen always shows saved playlists.

  Widget _buildSavedPlaylists() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: Colors.white),
      );
    }

    if (_savedPlaylists.isEmpty) {
      return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
        children: [
          const SettingsSectionHeader(
            title: 'Saved Playlists',
            subtitle: 'Manage your existing playlists',
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.playlist_play, size: 64, color: Colors.white24),
                const SizedBox(height: 16),
                Text(
                  'No saved playlists found',
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                const SizedBox(height: 24),
                const SizedBox(height: 8),
                Text(
                  'Add playlists from Settings → General',
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        const SettingsSectionHeader(
          title: 'Saved Playlists',
          subtitle: 'Manage your existing playlists',
        ),
        ..._savedPlaylists.map((playlist) => _buildPlaylistCard(playlist)),
      ],
    );
  }

  Widget _buildPlaylistCard(PlaylistInfo playlist) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        border: Border.all(color: Colors.white12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ExpansionTile(
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        title: Row(
          children: [
            Icon(
              playlist.type == 'm3u' ? Icons.link : Icons.dns,
              color: Colors.white70,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    playlist.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    playlist.type == 'm3u' ? 'M3U Playlist' : 'Xtream Playlist',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SettingsGroup(
                  title: 'Playlist Details',
                  children: [
                    SettingsActionTile(
                      title: 'Playlist Name',
                      subtitle: playlist.name,
                      icon: Icons.edit,
                      onTap: () => _editPlaylistName(playlist),
                    ),
                    SettingsActionTile(
                      title: 'Playlist URL',
                      subtitle: playlist.url,
                      icon: Icons.link,
                      onTap: () => _editPlaylistUrl(playlist),
                    ),
                    SettingsActionTile(
                      title: 'Update Frequency',
                      subtitle: 'Every ${playlist.updateFrequency} hours',
                      icon: Icons.timer,
                      trailing: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove, color: Colors.white),
                            onPressed: () =>
                                _updatePlaylistFrequency(playlist, -1),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: const Icon(Icons.add, color: Colors.white),
                            onPressed: () =>
                                _updatePlaylistFrequency(playlist, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SettingsGroup(
                  title: 'EPG Settings',
                  children: [
                    SettingsActionTile(
                      title: 'Primary EPG URL',
                      subtitle:
                          playlist.epgUrl.isEmpty ? 'Not set' : playlist.epgUrl,
                      icon: Icons.tv,
                      onTap: () => _editPlaylistEpg(playlist),
                    ),
                    SettingsActionTile(
                      title: 'Secondary EPG URL',
                      subtitle: playlist.secondaryEpgUrl.isEmpty
                          ? 'Not set'
                          : playlist.secondaryEpgUrl,
                      icon: Icons.tv,
                      onTap: () => _editPlaylistSecondaryEpg(playlist),
                    ),
                  ],
                ),
                SettingsGroup(
                  title: 'Actions',
                  children: [
                    SettingsActionTile(
                      title: 'Manual Update',
                      icon: Icons.sync,
                      iconColor: AppTheme.primaryBlue,
                      titleColor: AppTheme.primaryBlue,
                      onTap: () => _manualUpdatePlaylist(playlist),
                    ),
                    SettingsActionTile(
                      title: 'Load Playlist',
                      icon: Icons.play_circle,
                      iconColor: AppTheme.accentGreen,
                      titleColor: AppTheme.accentGreen,
                      onTap: () => _loadPlaylist(playlist),
                    ),
                    SettingsActionTile(
                      title: 'Delete Playlist',
                      icon: Icons.delete_outline,
                      iconColor: AppTheme.accentRed,
                      titleColor: AppTheme.accentRed,
                      onTap: () => _deletePlaylist(playlist),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Playlist editing methods
  void _editPlaylistName(PlaylistInfo playlist) {
    Navigator.of(context)
        .push<String>(
      MaterialPageRoute(
        builder: (context) => _PlaylistFieldEditScreen(
          title: 'Edit Playlist Name',
          playlistName: playlist.name,
          label: 'Playlist Name',
          hint: 'Enter playlist name',
          icon: Icons.edit,
          initialValue: playlist.name,
          saveLabel: 'Save Name',
        ),
      ),
    )
        .then((value) {
      if (value == null || value.trim().isEmpty) return;
      _playlistNameController.text = value.trim();
      _savePlaylistName(playlist);
    });
  }

  void _editPlaylistUrl(PlaylistInfo playlist) {
    Navigator.of(context)
        .push<String>(
      MaterialPageRoute(
        builder: (context) => _PlaylistFieldEditScreen(
          title: 'Edit Playlist URL',
          playlistName: playlist.name,
          label: 'Playlist URL',
          hint: 'Enter playlist URL',
          icon: Icons.link,
          initialValue: playlist.url,
          saveLabel: 'Save URL',
        ),
      ),
    )
        .then((value) {
      if (value == null || value.trim().isEmpty) return;
      _playlistUrlController.text = value.trim();
      _savePlaylistUrl(playlist);
    });
  }

  void _editPlaylistEpg(PlaylistInfo playlist) {
    Navigator.of(context)
        .push<String>(
      MaterialPageRoute(
        builder: (context) => _PlaylistFieldEditScreen(
          title: 'Edit Primary EPG URL',
          playlistName: playlist.name,
          label: 'Primary EPG URL',
          hint: 'Enter EPG URL',
          icon: Icons.tv,
          initialValue: playlist.epgUrl,
          saveLabel: 'Save Primary URL',
        ),
      ),
    )
        .then((value) {
      if (value == null) return;
      _epgUrlController.text = value.trim();
      _savePlaylistEpg(playlist);
    });
  }

  void _editPlaylistSecondaryEpg(PlaylistInfo playlist) {
    Navigator.of(context)
        .push<String>(
      MaterialPageRoute(
        builder: (context) => _PlaylistFieldEditScreen(
          title: 'Edit Secondary EPG URL',
          playlistName: playlist.name,
          label: 'Secondary EPG URL',
          hint: 'Enter secondary EPG URL',
          icon: Icons.tv,
          initialValue: playlist.secondaryEpgUrl,
          saveLabel: 'Save Secondary URL',
        ),
      ),
    )
        .then((value) {
      if (value == null) return;
      _secondaryEpgUrlController.text = value.trim();
      _savePlaylistSecondaryEpg(playlist);
    });
  }

  void _updatePlaylistFrequency(PlaylistInfo playlist, int delta) async {
    final newFreq = (playlist.updateFrequency + delta).clamp(1, 24);
    if (newFreq != playlist.updateFrequency) {
      final prefs = await SharedPreferences.getInstance();
      final enc = base64Url.encode(utf8.encode(playlist.url));
      if (playlist.type == 'm3u') {
        await prefs.setInt('m3u_update_freq_$enc', newFreq);
        await prefs.remove('m3u_update_freq_${playlist.url}');
      } else {
        await prefs.setInt('xtream_update_freq_$enc', newFreq);
        await prefs.remove('xtream_update_freq_${playlist.url}');
      }

      setState(() {
        playlist.updateFrequency = newFreq;
      });

      _showMessage('Update frequency updated to $newFreq hours');
    }
  }

  void _manualUpdatePlaylist(PlaylistInfo playlist) async {
    _showMessage('Manual update started...');
    final service = Provider.of<IncrementalEpgService>(context, listen: false);
    await service.initialize();
    _showMessage('Manual update triggered for ${playlist.name}');
  }

  void _loadPlaylist(PlaylistInfo playlist) async {
    _showMessage('Loading ${playlist.name}...');
    final provider = Provider.of<ChannelProvider>(context, listen: false);

    String playlistUrl;
    if (playlist.type == 'm3u') {
      playlistUrl = playlist.url;
    } else {
      try {
        final cleaned = playlist.url.trim();
        var baseUri = Uri.parse(cleaned);
        if (baseUri.scheme.isEmpty || baseUri.host.isEmpty) {
          baseUri = Uri.parse(
              'https://${cleaned.replaceAll(RegExp(r'^https?://'), '')}');
        }
        final playlistUri = baseUri.replace(
          path: (baseUri.path.trim().isEmpty)
              ? 'xmltv.php'
              : '${baseUri.path.replaceAll(RegExp(r'^/'), '')}/xmltv.php',
          queryParameters: {
            'username': (playlist.username ?? '').replaceAll(' ', ''),
            'password': (playlist.password ?? '').replaceAll(' ', ''),
            'type': 'm3u_plus',
            'output': 'ts'
          },
        );
        playlistUrl = playlistUri.toString();
      } catch (_) {
        playlistUrl =
            '${playlist.url}/get.php?username=${playlist.username}&password=${playlist.password}&type=m3u_plus&output=ts';
      }
    }

    await provider.loadPlaylistFromUrl(playlistUrl);
    _showMessage('${playlist.name} loaded successfully!');
  }

  void _deletePlaylist(PlaylistInfo playlist) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.darkBackground,
        title: const Text('Delete Playlist',
            style: TextStyle(color: Colors.white)),
        content: Text(
          'Are you sure you want to delete "${playlist.name}"? This action cannot be undone.',
          style: const TextStyle(color: Colors.white70),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            autofocus: true,
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete',
                style: TextStyle(color: AppTheme.accentRed)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      final prefs = await SharedPreferences.getInstance();

      if (playlist.type == 'm3u') {
        final savedM3u = prefs.getStringList('saved_m3u_playlists') ?? [];
        savedM3u.remove(playlist.url);
        await prefs.setStringList('saved_m3u_playlists', savedM3u);
        final enc = base64Url.encode(utf8.encode(playlist.url));
        await prefs.remove('m3u_playlist_name_$enc');
        await prefs.remove('m3u_epg_url_$enc');
        await prefs.remove('m3u_secondary_epg_$enc');
        await prefs.remove('m3u_update_freq_$enc');
        // legacy keys cleanup
        await prefs.remove('m3u_playlist_name_${playlist.url}');
        await prefs.remove('m3u_epg_url_${playlist.url}');
        await prefs.remove('m3u_secondary_epg_${playlist.url}');
        await prefs.remove('m3u_update_freq_${playlist.url}');
      } else {
        final savedXtream = prefs.getStringList('saved_xtream_servers') ?? [];
        savedXtream.remove(playlist.url);
        await prefs.setStringList('saved_xtream_servers', savedXtream);
        final enc = base64Url.encode(utf8.encode(playlist.url));
        await prefs.remove('xtream_playlist_name_$enc');
        await prefs.remove('xtream_epg_url_$enc');
        await prefs.remove('xtream_secondary_epg_$enc');
        await prefs.remove('xtream_update_freq_$enc');
        await prefs.remove('xtream_username_$enc');
        await prefs.remove('xtream_password_$enc');
        // legacy keys cleanup
        await prefs.remove('xtream_playlist_name_${playlist.url}');
        await prefs.remove('xtream_epg_url_${playlist.url}');
        await prefs.remove('xtream_secondary_epg_${playlist.url}');
        await prefs.remove('xtream_update_freq_${playlist.url}');
      }

      setState(() {
        _savedPlaylists.removeWhere((p) => p.id == playlist.id);
      });

      _showMessage('${playlist.name} deleted successfully');
    }
  }

  // Add-dialogs removed: playlist creation handled via Settings → General

  // Save methods
  Future<void> _savePlaylistName(PlaylistInfo playlist) async {
    final prefs = await SharedPreferences.getInstance();
    final enc = base64Url.encode(utf8.encode(playlist.url));
    if (playlist.type == 'm3u') {
      await prefs.setString(
          'm3u_playlist_name_$enc', _playlistNameController.text);
      await prefs.remove('m3u_playlist_name_${playlist.url}');
    } else {
      await prefs.setString(
          'xtream_playlist_name_$enc', _playlistNameController.text);
      await prefs.remove('xtream_playlist_name_${playlist.url}');
    }

    if (mounted) {
      setState(() {
        playlist.name = _playlistNameController.text;
      });

      _showMessage('Playlist name updated');
    }
  }

  Future<void> _savePlaylistUrl(PlaylistInfo playlist) async {
    final prefs = await SharedPreferences.getInstance();
    final newUrl = _playlistUrlController.text;

    if (playlist.type == 'm3u') {
      final enc = base64Url.encode(utf8.encode(newUrl));
      await prefs.setString('m3u_playlist_url_$enc', newUrl);
      await prefs.remove('m3u_playlist_url_${playlist.url}');
    } else {
      final enc = base64Url.encode(utf8.encode(newUrl));
      await prefs.setString('xtream_playlist_url_$enc', newUrl);
      await prefs.remove('xtream_playlist_url_${playlist.url}');
    }

    if (mounted) {
      setState(() {
        playlist.url = newUrl;
      });

      _showMessage('Playlist URL updated');
    }
  }

  Future<void> _savePlaylistEpg(PlaylistInfo playlist) async {
    final prefs = await SharedPreferences.getInstance();
    final epgUrl = _epgUrlController.text;

    final enc = base64Url.encode(utf8.encode(playlist.url));
    if (playlist.type == 'm3u') {
      await prefs.setString('m3u_epg_url_$enc', epgUrl);
      await prefs.remove('m3u_epg_url_${playlist.url}');
    } else {
      await prefs.setString('xtream_epg_url_$enc', epgUrl);
      await prefs.remove('xtream_epg_url_${playlist.url}');
    }

    if (mounted) {
      setState(() {
        playlist.epgUrl = epgUrl;
      });

      _showMessage('EPG URL updated');
    }
  }

  Future<void> _savePlaylistSecondaryEpg(PlaylistInfo playlist) async {
    final prefs = await SharedPreferences.getInstance();
    final secondaryEpgUrl = _secondaryEpgUrlController.text;

    final enc = base64Url.encode(utf8.encode(playlist.url));
    if (playlist.type == 'm3u') {
      await prefs.setString('m3u_secondary_epg_$enc', secondaryEpgUrl);
      await prefs.remove('m3u_secondary_epg_${playlist.url}');
    } else {
      await prefs.setString('xtream_secondary_epg_$enc', secondaryEpgUrl);
      await prefs.remove('xtream_secondary_epg_${playlist.url}');
    }

    if (mounted) {
      setState(() {
        playlist.secondaryEpgUrl = secondaryEpgUrl;
      });

      _showMessage('Secondary EPG URL updated');
    }
  }

  // Playlist creation is handled via Settings → General; helper methods removed.

  void _showMessage(String message) {
    if (mounted) {
      showAppSnackBar(
        context,
        SnackBar(
          content: Text(message, style: const TextStyle(color: Colors.white)),
          backgroundColor: const Color(0xFF1E2328),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }
}

class PlaylistInfo {
  final String id;
  String name;
  String url;
  final String type;
  String epgUrl;
  String secondaryEpgUrl;
  int updateFrequency;
  String? username;
  String? password;

  PlaylistInfo({
    required this.id,
    required this.name,
    required this.url,
    required this.type,
    required this.epgUrl,
    required this.secondaryEpgUrl,
    required this.updateFrequency,
    this.username,
    this.password,
  });
}

class _PlaylistFieldEditScreen extends StatefulWidget {
  final String title;
  final String playlistName;
  final String label;
  final String hint;
  final IconData icon;
  final String initialValue;
  final String saveLabel;

  const _PlaylistFieldEditScreen({
    required this.title,
    required this.playlistName,
    required this.label,
    required this.hint,
    required this.icon,
    required this.initialValue,
    required this.saveLabel,
  });

  @override
  State<_PlaylistFieldEditScreen> createState() =>
      _PlaylistFieldEditScreenState();
}

class _PlaylistFieldEditScreenState extends State<_PlaylistFieldEditScreen> {
  late final TextEditingController _controller;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _handleSave() {
    Navigator.pop(context, _controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white.withAlpha((0.08 * 255).round()),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: [
          SettingsSectionHeader(
            title: widget.playlistName,
            subtitle: widget.label,
          ),
          SettingsGroup(
            title: widget.label,
            children: [
              SettingsInputTile(
                label: widget.label,
                hint: widget.hint,
                icon: widget.icon,
                controller: _controller,
                focusNode: _focusNode,
              ),
            ],
          ),
          SettingsGroup(
            title: 'Actions',
            children: [
              SettingsActionTile(
                title: 'Cancel',
                icon: Icons.close,
                onTap: () => Navigator.pop(context),
              ),
              SettingsActionTile(
                title: widget.saveLabel,
                icon: Icons.save,
                iconColor: AppTheme.primaryBlue,
                titleColor: AppTheme.primaryBlue,
                onTap: _handleSave,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
