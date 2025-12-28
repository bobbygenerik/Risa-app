import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:iptv_player/models/saved_playlist.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/brand_text_field.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
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

    if (playlistsJson != null && playlistsJson.trim().isNotEmpty) {
      final List<dynamic> decoded = jsonDecode(playlistsJson);
      _playlists = decoded
          .map((json) => SavedPlaylist.fromJson(Map<String, dynamic>.from(json)))
          .toList();
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
        backgroundColor: AppTheme.darkBackground,
        title: const Text('Delete Playlist'),
        content: Text('Are you sure you want to delete "${playlist.name}"?'),
        actions: [
          BrandSecondaryButton(
            label: 'Cancel',
            onPressed: () => Navigator.pop(context, false),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          BrandPrimaryButton(
            label: 'Delete',
            onPressed: () => Navigator.pop(context, true),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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
        showAppSnackBar(
          context,
          SnackBar(
            content: Text(
              'Playlist "${playlist.name}" deleted',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: const Color(0xFF1E2328),
            elevation: 8,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                color: AppTheme.accentGreen,
                width: 1,
              ),
            ),
            margin: const EdgeInsets.all(16),
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
      if (playlist.epgUrl != null && playlist.epgUrl!.isNotEmpty) {
        await prefs.setString('epg_url', playlist.epgUrl!);
        await prefs.setString('custom_epg_url', playlist.epgUrl!);
      }
      if (playlist.epgUrlSecondary != null &&
          playlist.epgUrlSecondary!.isNotEmpty) {
        await prefs.setString('secondary_epg_url', playlist.epgUrlSecondary!);
      } else {
        await prefs.remove('secondary_epg_url');
      }

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
        showAppSnackBar(
          context,
          SnackBar(
            content: Text(
              '✓ Loaded "${playlist.name}" - ${channelProvider.channelCount} channels',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: const Color(0xFF1E2328),
            elevation: 8,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                color: AppTheme.accentGreen,
                width: 1,
              ),
            ),
            margin: const EdgeInsets.all(16),
          ),
        );
        context.go('/home');
      }
    } catch (e) {
      setState(() => _isLoading = false);
      if (mounted) {
        showAppSnackBar(
          context,
          SnackBar(
            content: Text(
              'Failed to load playlist: $e',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: const Color(0xFF1E2328),
            elevation: 8,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                color: AppTheme.accentRed,
                width: 1,
              ),
            ),
            margin: const EdgeInsets.all(16),
          ),
        );
      }
    }
  }

  Future<void> _editEpgUrls(SavedPlaylist playlist) async {
    final primaryController =
        TextEditingController(text: playlist.epgUrl ?? '');
    final secondaryController =
        TextEditingController(text: playlist.epgUrlSecondary ?? '');

    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        final insets = MediaQuery.of(context).viewInsets;
        final maxHeight =
            MediaQuery.of(context).size.height - insets.bottom - 48;
        return AnimatedPadding(
          padding:
              insets + const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 560, maxHeight: maxHeight),
              child: Material(
                color: AppTheme.darkBackground,
                borderRadius: BorderRadius.circular(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(24, 24, 24, 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Edit EPG URLs',
                          style: TextStyle(
                            color: AppTheme.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            BrandTextField(
                              controller: primaryController,
                              labelText: 'Primary EPG URL',
                              hintText: 'http://example.com/epg.xml',
                            ),
                            const SizedBox(height: AppSizes.md),
                            BrandTextField(
                              controller: secondaryController,
                              labelText: 'Secondary EPG URL',
                              hintText: 'Optional backup',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                      child: Column(
                        children: [
                          BrandSecondaryButton(
                            label: 'Cancel',
                            onPressed: () => Navigator.pop(context, false),
                            expand: true,
                          ),
                          const SizedBox(height: 12),
                          BrandPrimaryButton(
                            label: 'Save',
                            onPressed: () => Navigator.pop(context, true),
                            expand: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    if (result == true) {
      setState(() {
        final idx = _playlists.indexWhere((p) => p.id == playlist.id);
        if (idx != -1) {
          _playlists[idx] = SavedPlaylist(
            id: playlist.id,
            name: playlist.name,
            type: playlist.type,
            url: playlist.url,
            server: playlist.server,
            username: playlist.username,
            password: playlist.password,
            epgUrl: primaryController.text.trim(),
            epgUrlSecondary: secondaryController.text.trim(),
            addedDate: playlist.addedDate,
          );
        }
      });
      await _savePlaylists();
    }
  }

  Future<void> _editPlaylist(SavedPlaylist playlist) async {
    final nameController = TextEditingController(text: playlist.name);

    final result = await showDialog<String>(
      context: context,
      builder: (context) {
        return AnimatedPadding(
          padding: MediaQuery.of(context).viewInsets +
              const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: AlertDialog(
                insetPadding: EdgeInsets.zero,
                backgroundColor: AppTheme.darkBackground,
                title: const Text('Edit Playlist Name'),
                content: SingleChildScrollView(
                  child: BrandTextField(
                    controller: nameController,
                    labelText: 'Playlist Name',
                    hintText: 'Enter playlist name',
                  ),
                ),
                actions: [
                  BrandSecondaryButton(
                    label: 'Cancel',
                    onPressed: () => Navigator.pop(context),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  BrandPrimaryButton(
                    label: 'Save',
                    onPressed: () => Navigator.pop(context, nameController.text),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                ],
              ),
            ),
          ),
        );
      },
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
        showAppSnackBar(
          context,
          SnackBar(
            content: Text(
              'Playlist renamed to "$result"',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: const Color(0xFF1E2328),
            elevation: 8,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                color: AppTheme.accentGreen,
                width: 1,
              ),
            ),
            margin: const EdgeInsets.all(16),
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
        title: const Text('Manage Playlists'),
        backgroundColor: AppTheme.darkBackground,
        elevation: 0,
        foregroundColor: AppTheme.textPrimary,
        // No add action here — playlists should be added from Settings → General
        actions: [],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: AppTheme.darkBackground,
        ),
        child: _isLoading
            ? const Center(
                child: CircularProgressIndicator(color: AppTheme.primaryBlue))
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
          const SizedBox(height: AppSizes.lg),
          Text(
            'No Saved Playlists',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: AppSizes.sm),
          Text(
            'No saved playlists. Add playlists from Settings → General',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
          ),
          const SizedBox(height: AppSizes.xl),
          // Intentionally no add button here to centralize playlist creation
        ],
      ),
    );
  }

  Widget _buildPlaylistList() {
    return ListView.builder(
      padding: const EdgeInsets.all(AppSizes.lg),
      itemCount: _playlists.length,
      itemBuilder: (context, index) {
        final playlist = _playlists[index];
        final isActive = playlist.id == _activePlaylistId;

        return Container(
          margin: const EdgeInsets.only(bottom: AppSizes.md),
          child: ListTile(
            contentPadding: const EdgeInsets.all(AppSizes.md),
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
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                if (isActive)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppTheme.accentGreen,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
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
                const SizedBox(height: 4),
                Text(
                  playlist.type == 'm3u' ? 'M3U Playlist' : 'Xtream Codes',
                  style: const TextStyle(
                      color: AppTheme.textSecondary, fontSize: 12),
                ),
                if (playlist.type == 'xtream' && playlist.server != null)
                  Text(
                    playlist.server!,
                    style: const TextStyle(
                      color: AppTheme.textSecondary,
                      fontSize: 11,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
            trailing: PopupMenuButton(
              icon: const Icon(Icons.more_vert, color: AppTheme.textPrimary),
              color: AppTheme.darkBackground,
              itemBuilder: (context) => [
                if (!isActive)
                  PopupMenuItem(
                    child: const Row(
                      children: [
                        Icon(Icons.play_arrow, color: AppTheme.primaryBlue),
                        SizedBox(width: 8),
                        Text('Load'),
                      ],
                    ),
                    onTap: () => Future.delayed(
                      Duration.zero,
                      () {
                        final idx = _playlists.indexWhere((p) => p.id == playlist.id);
                        if (idx != -1 && mounted) {
                          _loadPlaylist(_playlists[idx]);
                        }
                      },
                    ),
                  ),
                PopupMenuItem(
                  child: const Row(
                    children: [
                      Icon(Icons.edit, color: AppTheme.textPrimary),
                      SizedBox(width: 8),
                      Text('Rename'),
                    ],
                  ),
                  onTap: () => Future.delayed(
                    Duration.zero,
                    () {
                      final idx = _playlists.indexWhere((p) => p.id == playlist.id);
                      if (idx != -1 && mounted) {
                        _editPlaylist(_playlists[idx]);
                      }
                    },
                  ),
                ),
                PopupMenuItem(
                  child: const Row(
                    children: [
                      Icon(Icons.link, color: AppTheme.textPrimary),
                      SizedBox(width: 8),
                      Text('Edit EPG URLs'),
                    ],
                  ),
                  onTap: () => Future.delayed(
                    Duration.zero,
                    () {
                      final idx = _playlists.indexWhere((p) => p.id == playlist.id);
                      if (idx != -1 && mounted) {
                        _editEpgUrls(_playlists[idx]);
                      }
                    },
                  ),
                ),
                PopupMenuItem(
                  child: const Row(
                    children: [
                      Icon(Icons.delete, color: AppTheme.accentRed),
                      SizedBox(width: 8),
                      Text('Delete'),
                    ],
                  ),
                  onTap: () => Future.delayed(
                    Duration.zero,
                    () {
                      final idx = _playlists.indexWhere((p) => p.id == playlist.id);
                      if (idx != -1 && mounted) {
                        _deletePlaylist(_playlists[idx]);
                      }
                    },
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
