import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:iptv_player/models/saved_playlist.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/utils/snackbar_utils.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/settings_tile_widgets.dart';
import 'package:iptv_player/widgets/settings_layout.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/widgets/safe_pop_scope.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/hash_utils.dart';
import 'package:iptv_player/services/xtream_credential_store.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';

part 'playlist_manager/playlist_manager_logic.dart';
part 'playlist_manager/playlist_manager_ui.dart';
part 'playlist_manager/playlist_manager_edit_screens.dart';

class PlaylistManagerScreen extends StatefulWidget {
  const PlaylistManagerScreen({super.key});

  @override
  State<PlaylistManagerScreen> createState() => _PlaylistManagerScreenState();
}

class _PlaylistManagerScreenState extends State<PlaylistManagerScreen> {
  List<SavedPlaylist> _playlists = [];
  bool _isLoading = true;
  String? _loadError;
  String? _activePlaylistId;
  final List<FocusNode> _playlistFocusNodes = [];
  final ScrollController _contentScrollController = ScrollController();
  final List<SettingsCategory> _categories = const [
    SettingsCategory(title: 'Playlists', icon: Icons.playlist_play),
    SettingsCategory(title: 'Actions', icon: Icons.settings),
  ];
  int _selectedCategoryIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(_loadPlaylists());
    });
  }

  @override
  void dispose() {
    _contentScrollController.dispose();
    for (final node in _playlistFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafePopScope(
      onWillPop: () async {
        if (GoRouter.of(context).canPop()) {
          context.pop();
        } else {
          context.go('/settings');
        }
        return false;
      },
      child: SettingsLayout(
        headerTitle: 'Playlists',
        categories: _categories,
        selectedIndex: _selectedCategoryIndex,
        onCategorySelected: (index) {
          setState(() {
            _selectedCategoryIndex = index;
          });
        },
        content: _buildSettingsContent(),
        onBackToHome: () {
          if (context.canPop()) {
            context.pop();
          } else {
            context.go('/settings');
          }
        },
        onRequestContentFocus: () {
          if (_playlistFocusNodes.isNotEmpty) {
            _playlistFocusNodes.first.requestFocus();
          } else {
            FocusScope.of(context).nextFocus();
          }
        },
        autoFocusOnShow: true,
      ),
    );
  }
}
