import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/no_text_selection_controls.dart';

import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/settings_layout.dart';
import 'package:iptv_player/widgets/settings_tile_widgets.dart';
import 'package:iptv_player/models/saved_playlist.dart';

class PlaylistManagementScreen extends StatefulWidget {
  const PlaylistManagementScreen({super.key});

  @override
  State<PlaylistManagementScreen> createState() =>
      _PlaylistManagementScreenState();
}

class _PlaylistManagementScreenState extends State<PlaylistManagementScreen> {
  // Navigation State
  int _selectedIndex = 0;

  // Playlist management
  List<PlaylistInfo> _savedPlaylists = [];
  bool _isLoading = true;

  // Form controllers for editing
  final TextEditingController _playlistNameController = TextEditingController();
  final TextEditingController _playlistUrlController = TextEditingController();
  final TextEditingController _epgUrlController = TextEditingController();
  final TextEditingController _secondaryEpgUrlController =
      TextEditingController();

  // Dialog form controllers
  final TextEditingController _addM3uNameController = TextEditingController();
  final TextEditingController _addM3uUrlController = TextEditingController();
  final TextEditingController _addXtreamNameController =
      TextEditingController();
  final TextEditingController _addXtreamServerController =
      TextEditingController();
  final TextEditingController _addXtreamUsernameController =
      TextEditingController();
  final TextEditingController _addXtreamPasswordController =
      TextEditingController();

  // Focus nodes
  final FocusNode _playlistNameFocusNode = FocusNode();
  final FocusNode _playlistUrlFocusNode = FocusNode();
  final FocusNode _epgUrlFocusNode = FocusNode();
  final FocusNode _secondaryEpgUrlFocusNode = FocusNode();
  final FocusNode _firstFocusNode = FocusNode();

  // Dialog focus nodes
  final FocusNode _addM3uNameFocusNode = FocusNode();
  final FocusNode _addM3uUrlFocusNode = FocusNode();
  final FocusNode _addXtreamNameFocusNode = FocusNode();
  final FocusNode _addXtreamServerFocusNode = FocusNode();
  final FocusNode _addXtreamUsernameFocusNode = FocusNode();
  final FocusNode _addXtreamPasswordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _loadSavedPlaylists();
  }

  @override
  void dispose() {
    _playlistNameController.dispose();
    _playlistUrlController.dispose();
    _epgUrlController.dispose();
    _secondaryEpgUrlController.dispose();
    _addM3uNameController.dispose();
    _addM3uUrlController.dispose();
    _addXtreamNameController.dispose();
    _addXtreamServerController.dispose();
    _addXtreamUsernameController.dispose();
    _addXtreamPasswordController.dispose();
    _playlistNameFocusNode.dispose();
    _playlistUrlFocusNode.dispose();
    _epgUrlFocusNode.dispose();
    _secondaryEpgUrlFocusNode.dispose();
    _firstFocusNode.dispose();
    _addM3uNameFocusNode.dispose();
    _addM3uUrlFocusNode.dispose();
    _addXtreamNameFocusNode.dispose();
    _addXtreamServerFocusNode.dispose();
    _addXtreamUsernameFocusNode.dispose();
    _addXtreamPasswordFocusNode.dispose();
    super.dispose();
  }

  Future<void> _loadSavedPlaylists() async {
    setState(() => _isLoading = true);

    final prefs = await SharedPreferences.getInstance();
    final savedPlaylists = <PlaylistInfo>[];

    // Load M3U playlists
    final m3uUrls = prefs.getStringList('saved_m3u_playlists') ?? [];
    for (String url in m3uUrls) {
      final name = prefs.getString('m3u_playlist_name_$url') ?? 'M3U Playlist';
      final epgUrl = prefs.getString('m3u_epg_url_$url') ?? '';
      final secondaryEpg = prefs.getString('m3u_secondary_epg_$url') ?? '';
      final updateFreq = prefs.getInt('m3u_update_freq_$url') ?? 6;

      savedPlaylists.add(PlaylistInfo(
        id: url.hashCode.toString(),
        name: name,
        url: url,
        type: 'm3u',
        epgUrl: epgUrl,
        secondaryEpgUrl: secondaryEpg,
        updateFrequency: updateFreq,
      ));
    }

    // Load Xtream playlists
    final xtreamServers = prefs.getStringList('saved_xtream_servers') ?? [];
    for (String server in xtreamServers) {
      final username = prefs.getString('xtream_username_$server') ?? '';
      final password = prefs.getString('xtream_password_$server') ?? '';
      final name =
          prefs.getString('xtream_playlist_name_$server') ?? 'Xtream Playlist';
      final epgUrl = prefs.getString('xtream_epg_url_$server') ?? '';
      final secondaryEpg =
          prefs.getString('xtream_secondary_epg_$server') ?? '';
      final updateFreq = prefs.getInt('xtream_update_freq_$server') ?? 6;

      savedPlaylists.add(PlaylistInfo(
        id: server.hashCode.toString(),
        name: name,
        url: server,
        type: 'xtream',
        epgUrl: epgUrl,
        secondaryEpgUrl: secondaryEpg,
        updateFrequency: updateFreq,
        username: username,
        password: password,
      ));
    }

    setState(() {
      _savedPlaylists = savedPlaylists;
      _isLoading = false;
    });

    // Fallback for legacy storage: 'saved_playlists' JSON (older playlist manager)
    if (_savedPlaylists.isEmpty) {
      final legacyJson = prefs.getString('saved_playlists');
      if (legacyJson != null && legacyJson.trim().isNotEmpty) {
        try {
          final decoded = jsonDecode(legacyJson) as List<dynamic>;
          final legacyItems = decoded
              .map((e) => SavedPlaylist.fromJson(e as Map<String, dynamic>))
              .toList();
          final migrated = legacyItems
              .map((p) => PlaylistInfo(
                    id: p.id,
                    name: p.name,
                    url: p.type == 'm3u' ? p.url : (p.server ?? ''),
                    type: p.type,
                    epgUrl: '',
                    secondaryEpgUrl: '',
                    updateFrequency: 6,
                    username: p.username,
                    password: p.password,
                  ))
              .toList();

          if (mounted) {
            setState(() {
              _savedPlaylists = migrated;
            });
          }
        } catch (_) {
          // ignore parsing errors and leave list empty
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SettingsLayout(
      selectedIndex: _selectedIndex,
      onCategorySelected: (index) => setState(() => _selectedIndex = index),
      onBackToHome: () => context.go('/settings'),
      categories: const [
        SettingsCategory(title: 'Saved Playlists', icon: Icons.playlist_play),
        SettingsCategory(title: 'Add New', icon: Icons.add_circle),
      ],
      content: _buildActiveContent(),
    );
  }

  Widget _buildActiveContent() {
    switch (_selectedIndex) {
      case 0:
        return _buildSavedPlaylists();
      case 1:
        return _buildAddNewPlaylist();
      default:
        return _buildSavedPlaylists();
    }
  }

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
                SizedBox(
                  width: 200,
                  child: BrandPrimaryButton(
                    label: 'Add First Playlist',
                    onPressed: () => setState(() => _selectedIndex = 1),
                  ),
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

  Widget _buildAddNewPlaylist() {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        const SettingsSectionHeader(
          title: 'Add New Playlist',
          subtitle: 'Add a new playlist to manage',
        ),
        SettingsGroup(
          title: 'Quick Add',
          children: [
            SettingsActionTile(
              title: 'Add M3U Playlist',
              icon: Icons.link,
              focusNode: _firstFocusNode,
              onTap: () => _showAddM3uDialog(),
            ),
            SettingsActionTile(
              title: 'Add Xtream Playlist',
              icon: Icons.dns,
              onTap: () => _showAddXtreamDialog(),
            ),
          ],
        ),
      ],
    );
  }

  // Playlist editing methods
  void _editPlaylistName(PlaylistInfo playlist) {
    _playlistNameController.text = playlist.name;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.darkBackground,
        title: const Text('Edit Playlist Name',
            style: TextStyle(color: Colors.white)),
        content: SizedBox(
          width: double.maxFinite,
          child: _buildInputField(
            controller: _playlistNameController,
            focusNode: _playlistNameFocusNode,
            label: 'Playlist Name',
            hint: 'Enter playlist name',
            icon: Icons.edit,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _savePlaylistName(playlist),
            child: const Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _editPlaylistUrl(PlaylistInfo playlist) {
    _playlistUrlController.text = playlist.url;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.darkBackground,
        title: const Text('Edit Playlist URL',
            style: TextStyle(color: Colors.white)),
        content: SizedBox(
          width: double.maxFinite,
          child: _buildInputField(
            controller: _playlistUrlController,
            focusNode: _playlistUrlFocusNode,
            label: 'Playlist URL',
            hint: 'Enter playlist URL',
            icon: Icons.link,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _savePlaylistUrl(playlist),
            child: const Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _editPlaylistEpg(PlaylistInfo playlist) {
    _epgUrlController.text = playlist.epgUrl;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.darkBackground,
        title: const Text('Edit Primary EPG URL',
            style: TextStyle(color: Colors.white)),
        content: SizedBox(
          width: double.maxFinite,
          child: _buildInputField(
            controller: _epgUrlController,
            focusNode: _epgUrlFocusNode,
            label: 'Primary EPG URL',
            hint: 'Enter EPG URL',
            icon: Icons.tv,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _savePlaylistEpg(playlist),
            child: const Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _editPlaylistSecondaryEpg(PlaylistInfo playlist) {
    _secondaryEpgUrlController.text = playlist.secondaryEpgUrl;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.darkBackground,
        title: const Text('Edit Secondary EPG URL',
            style: TextStyle(color: Colors.white)),
        content: SizedBox(
          width: double.maxFinite,
          child: _buildInputField(
            controller: _secondaryEpgUrlController,
            focusNode: _secondaryEpgUrlFocusNode,
            label: 'Secondary EPG URL',
            hint: 'Enter secondary EPG URL',
            icon: Icons.tv,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _savePlaylistSecondaryEpg(playlist),
            child: const Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _updatePlaylistFrequency(PlaylistInfo playlist, int delta) async {
    final newFreq = (playlist.updateFrequency + delta).clamp(1, 24);
    if (newFreq != playlist.updateFrequency) {
      final prefs = await SharedPreferences.getInstance();
      if (playlist.type == 'm3u') {
        await prefs.setInt('m3u_update_freq_${playlist.url}', newFreq);
      } else {
        await prefs.setInt('xtream_update_freq_${playlist.url}', newFreq);
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
      playlistUrl =
          '${playlist.url}/get.php?username=${playlist.username}&password=${playlist.password}&type=m3u_plus&output=ts';
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
        await prefs.remove('m3u_playlist_name_${playlist.url}');
        await prefs.remove('m3u_epg_url_${playlist.url}');
        await prefs.remove('m3u_secondary_epg_${playlist.url}');
        await prefs.remove('m3u_update_freq_${playlist.url}');
      } else {
        final savedXtream = prefs.getStringList('saved_xtream_servers') ?? [];
        savedXtream.remove(playlist.url);
        await prefs.setStringList('saved_xtream_servers', savedXtream);
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

  void _showAddM3uDialog() {
    _addM3uNameController.clear();
    _addM3uUrlController.clear();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.darkBackground,
        title: const Text('Add M3U Playlist',
            style: TextStyle(color: Colors.white)),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildInputField(
                controller: _addM3uNameController,
                focusNode: _addM3uNameFocusNode,
                label: 'Playlist Name',
                hint: 'Enter playlist name',
                icon: Icons.edit,
              ),
              const SizedBox(height: 16),
              _buildInputField(
                controller: _addM3uUrlController,
                focusNode: _addM3uUrlFocusNode,
                label: 'Playlist URL',
                hint: 'http://example.com/playlist.m3u',
                icon: Icons.link,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _saveNewM3uPlaylist(
                _addM3uNameController.text, _addM3uUrlController.text),
            child: const Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _showAddXtreamDialog() {
    _addXtreamNameController.clear();
    _addXtreamServerController.clear();
    _addXtreamUsernameController.clear();
    _addXtreamPasswordController.clear();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.darkBackground,
        title: const Text('Add Xtream Playlist',
            style: TextStyle(color: Colors.white)),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildInputField(
                controller: _addXtreamNameController,
                focusNode: _addXtreamNameFocusNode,
                label: 'Playlist Name',
                hint: 'Enter playlist name',
                icon: Icons.edit,
              ),
              const SizedBox(height: 16),
              _buildInputField(
                controller: _addXtreamServerController,
                focusNode: _addXtreamServerFocusNode,
                label: 'Server URL',
                hint: 'http://example.com:8080',
                icon: Icons.dns,
              ),
              const SizedBox(height: 16),
              _buildInputField(
                controller: _addXtreamUsernameController,
                focusNode: _addXtreamUsernameFocusNode,
                label: 'Username',
                hint: 'Username',
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              _buildInputField(
                controller: _addXtreamPasswordController,
                focusNode: _addXtreamPasswordFocusNode,
                label: 'Password',
                hint: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _saveNewXtreamPlaylist(
              _addXtreamNameController.text,
              _addXtreamServerController.text,
              _addXtreamUsernameController.text,
              _addXtreamPasswordController.text,
            ),
            child: const Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required String label,
    required String hint,
    required IconData icon,
    bool obscureText = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.white70,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Focus(
          focusNode: focusNode,
          onFocusChange: (hasFocus) {
            if (hasFocus) {
              final text = controller.text;
              controller.selection =
                  TextSelection.collapsed(offset: text.length);
            }
          },
          child: Builder(
            builder: (context) {
              final isFocused = Focus.of(context).hasFocus;
              return GestureDetector(
                onTap: () => focusNode.requestFocus(),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    color: isFocused ? AppTheme.highlight : Colors.black26,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isFocused ? AppTheme.primaryBlue : Colors.white10,
                      width: isFocused ? 2 : 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        icon,
                        size: 20,
                        color: Colors.white54,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          controller: controller,
                          focusNode: focusNode,
                          enableInteractiveSelection: false,
                          selectionControls: NoTextSelectionControls(),
                          showCursor: false,
                          cursorColor: Colors.transparent,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          onTap: () {
                            final text = controller.text;
                            controller.selection =
                                TextSelection.collapsed(offset: text.length);
                          },
                          obscureText: obscureText,
                          decoration: InputDecoration.collapsed(
                            hintText: hint,
                            hintStyle: const TextStyle(
                              color: Colors.white30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // Save methods
  Future<void> _savePlaylistName(PlaylistInfo playlist) async {
    final prefs = await SharedPreferences.getInstance();
    if (playlist.type == 'm3u') {
      await prefs.setString(
          'm3u_playlist_name_${playlist.url}', _playlistNameController.text);
    } else {
      await prefs.setString(
          'xtream_playlist_name_${playlist.url}', _playlistNameController.text);
    }

    if (mounted) {
      setState(() {
        playlist.name = _playlistNameController.text;
      });

      Navigator.of(context).pop();
      _showMessage('Playlist name updated');
    }
  }

  Future<void> _savePlaylistUrl(PlaylistInfo playlist) async {
    final prefs = await SharedPreferences.getInstance();
    final newUrl = _playlistUrlController.text;

    if (playlist.type == 'm3u') {
      await prefs.setString('m3u_playlist_url_$newUrl', newUrl);
      await prefs.remove('m3u_playlist_url_${playlist.url}');
    } else {
      await prefs.setString('xtream_playlist_url_$newUrl', newUrl);
      await prefs.remove('xtream_playlist_url_${playlist.url}');
    }

    if (mounted) {
      setState(() {
        playlist.url = newUrl;
      });

      Navigator.of(context).pop();
      _showMessage('Playlist URL updated');
    }
  }

  Future<void> _savePlaylistEpg(PlaylistInfo playlist) async {
    final prefs = await SharedPreferences.getInstance();
    final epgUrl = _epgUrlController.text;

    if (playlist.type == 'm3u') {
      await prefs.setString('m3u_epg_url_${playlist.url}', epgUrl);
    } else {
      await prefs.setString('xtream_epg_url_${playlist.url}', epgUrl);
    }

    if (mounted) {
      setState(() {
        playlist.epgUrl = epgUrl;
      });

      Navigator.of(context).pop();
      _showMessage('EPG URL updated');
    }
  }

  Future<void> _savePlaylistSecondaryEpg(PlaylistInfo playlist) async {
    final prefs = await SharedPreferences.getInstance();
    final secondaryEpgUrl = _secondaryEpgUrlController.text;

    if (playlist.type == 'm3u') {
      await prefs.setString(
          'm3u_secondary_epg_${playlist.url}', secondaryEpgUrl);
    } else {
      await prefs.setString(
          'xtream_secondary_epg_${playlist.url}', secondaryEpgUrl);
    }

    if (mounted) {
      setState(() {
        playlist.secondaryEpgUrl = secondaryEpgUrl;
      });

      Navigator.of(context).pop();
      _showMessage('Secondary EPG URL updated');
    }
  }

  Future<void> _saveNewM3uPlaylist(String name, String url) async {
    if (name.isEmpty || url.isEmpty) {
      _showMessage('Please fill in all fields');
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    final savedM3u = prefs.getStringList('saved_m3u_playlists') ?? [];
    savedM3u.add(url);
    await prefs.setStringList('saved_m3u_playlists', savedM3u);
    await prefs.setString('m3u_playlist_name_$url', name);
    await prefs.setInt('m3u_update_freq_$url', 6);

    if (mounted) {
      Navigator.of(context).pop();
      await _loadSavedPlaylists();
      _showMessage('M3U playlist added successfully');
    }
  }

  Future<void> _saveNewXtreamPlaylist(
      String name, String server, String username, String password) async {
    if (name.isEmpty ||
        server.isEmpty ||
        username.isEmpty ||
        password.isEmpty) {
      _showMessage('Please fill in all fields');
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    final savedXtream = prefs.getStringList('saved_xtream_servers') ?? [];
    savedXtream.add(server);
    await prefs.setStringList('saved_xtream_servers', savedXtream);
    await prefs.setString('xtream_playlist_name_$server', name);
    await prefs.setString('xtream_username_$server', username);
    await prefs.setString('xtream_password_$server', password);
    await prefs.setInt('xtream_update_freq_$server', 6);

    if (mounted) {
      Navigator.of(context).pop();
      await _loadSavedPlaylists();
      _showMessage('Xtream playlist added successfully');
    }
  }

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
