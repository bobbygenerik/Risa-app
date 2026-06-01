import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../providers/channel_provider.dart';
import '../utils/app_theme.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/no_text_selection_controls.dart';
import 'package:iptv_player/services/xtream_credential_store.dart';

part 'playlist_editor/playlist_editor_actions.dart';
part 'playlist_editor/playlist_editor_fields.dart';
part 'playlist_editor/playlist_editor_content.dart';

class PlaylistEditorScreen extends StatefulWidget {
  const PlaylistEditorScreen({super.key});

  @override
  State<PlaylistEditorScreen> createState() => _PlaylistEditorScreenState();
}

class _PlaylistEditorScreenState extends State<PlaylistEditorScreen> {
  final TextEditingController _playlistNameController = TextEditingController();
  final TextEditingController _m3uUrlController = TextEditingController();
  final TextEditingController _xtreamServerController = TextEditingController();
  final TextEditingController _xtreamUsernameController =
      TextEditingController();
  final TextEditingController _xtreamPasswordController =
      TextEditingController();

  final FocusNode _playlistNameFocusNode = FocusNode();
  final FocusNode _m3uUrlFocusNode = FocusNode();
  final FocusNode _xtreamServerFocusNode = FocusNode();
  final FocusNode _xtreamUsernameFocusNode = FocusNode();
  final FocusNode _xtreamPasswordFocusNode = FocusNode();
  final FocusNode _updateFrequencyFocusNode = FocusNode();

  bool _playlistNameEditable = false;
  bool _m3uUrlEditable = false;
  bool _xtreamServerEditable = false;
  bool _xtreamUsernameEditable = false;
  bool _xtreamPasswordEditable = false;

  String _playlistType = 'm3u';
  int _updateFrequencyHours = 24; // Default: update every 24 hours
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    unawaited(_loadPlaylistData());
  }

  @override
  void dispose() {
    _playlistNameController.dispose();
    _m3uUrlController.dispose();
    _xtreamServerController.dispose();
    _xtreamUsernameController.dispose();
    _xtreamPasswordController.dispose();
    _playlistNameFocusNode.dispose();
    _m3uUrlFocusNode.dispose();
    _xtreamServerFocusNode.dispose();
    _xtreamUsernameFocusNode.dispose();
    _xtreamPasswordFocusNode.dispose();
    _updateFrequencyFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompatPopScope(
      onWillPop: () async {
        context.go('/home');
        return false;
      },
      child: _buildContent(),
    );
  }
  void _updateEditorState(VoidCallback fn) {
    if (!mounted) return;
    setState(fn);
  }
}

