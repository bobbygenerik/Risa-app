import 'dart:async';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

// removed unused imports
// Note: This screen intentionally does not use `SettingsLayout` to avoid
// displaying a second, nested settings sidebar. The app's main sidebar
// (from `MainShell`) remains visible on all pages.
import 'package:iptv_player/widgets/settings_tile_widgets.dart';
import 'package:iptv_player/services/xtream_credential_store.dart';

part 'playlist_management/playlist_management_ui.dart';
part 'playlist_management/playlist_management_actions.dart';
part 'playlist_management/playlist_management_models.dart';
part 'playlist_management/playlist_management_edit_screen.dart';


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
      final password =
          await XtreamCredentialStore.readPasswordForEncodedServer(enc);
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


  void _updatePlaylistState(VoidCallback fn) {
    if (!mounted) return;
    setState(fn);
  }
}

