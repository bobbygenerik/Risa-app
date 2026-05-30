import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'package:iptv_player/l10n/gen/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import 'package:file_picker/file_picker.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/backup_service.dart';
import 'package:iptv_player/utils/snackbar_utils.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/widgets/app_dialog.dart';

import 'package:iptv_player/widgets/settings_layout.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:iptv_player/widgets/settings_tile_widgets.dart';
import 'package:iptv_player/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/models/saved_playlist.dart';
import 'package:iptv_player/services/xtream_codes_service.dart';
import 'package:iptv_player/services/xtream_credential_store.dart';
import 'package:iptv_player/screens/settings/playlist_response_preview_screen.dart';

part 'settings/settings_screen_ai.dart';
part 'settings/settings_screen_content.dart';
part 'settings/settings_screen_general.dart';
part 'settings/settings_screen_handlers.dart';
part 'settings/settings_screen_lifecycle.dart';
part 'settings/settings_screen_navigation.dart';
part 'settings/settings_screen_playback.dart';
part 'settings/settings_screen_playlist.dart';
part 'settings/settings_screen_recordings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with ContentFocusRegistrant<SettingsScreen> {
  static final RegExp _httpPrefixRe = RegExp(r'^https?://');
  static final RegExp _leadingSlashRe = RegExp(r'^/');

  // Navigation State
  int _selectedIndex = 0;

  // Playlist Settings
  late final TextEditingController _m3uUrlController;
  late final TextEditingController _xtreamServerController;
  late final TextEditingController _xtreamUsernameController;
  late final TextEditingController _xtreamPasswordController;

  // Playlist Input Method (0 = M3U, 1 = Xtream)
  int _playlistInputMethod = 0;
  String _detectedEpgUrl = '';

  // EPG Settings
  late final TextEditingController _customEpgUrlController;
  late final TextEditingController _secondaryEpgUrlController;

  // Boolean settings
  bool _hardwareAcceleration = true;
  bool _hardwareDecoding = true;
  bool _autoPlayNextEpisode = true;
  bool _rememberPlaybackPosition = true;
  bool _transcriptionEnabled = false;
  bool _translationEnabled = false;
  bool _heroVideoPreview = false;
  String _videoPlayerBackend = 'VLC';

  // EPG Settings
  int _epgCacheDuration = 6; // hours
  int _epgRetentionDays = 7; // days
  // Focus nodes
  final FocusNode _m3uTabFocusNode = FocusNode();
  final FocusNode _xtreamTabFocusNode = FocusNode();
  final FocusNode _m3uUrlFocusNode = FocusNode();
  final FocusNode _xtreamServerFocusNode = FocusNode();
  final FocusNode _xtreamUsernameFocusNode = FocusNode();
  final FocusNode _xtreamPasswordFocusNode = FocusNode();
  final FocusNode _customEpgUrlFocusNode = FocusNode();
  final FocusNode _secondaryEpgUrlFocusNode = FocusNode();

  // Action Button Focus Nodes
  final FocusNode _loadM3uButtonFocusNode = FocusNode();
  final FocusNode _loadXtreamButtonFocusNode = FocusNode();
  final FocusNode _clearM3uButtonFocusNode = FocusNode();
  final FocusNode _clearXtreamButtonFocusNode = FocusNode();
  final FocusNode _updateEpgButtonFocusNode = FocusNode();
  final FocusNode _clearEpgButtonFocusNode = FocusNode();
  final FocusNode _browseStorageButtonFocusNode = FocusNode();

  // Toggles Focus Nodes (for first items in sections)
  final FocusNode _playbackFirstFocusNode = FocusNode();
  final FocusNode _aiFirstFocusNode = FocusNode();
  final ScrollController _contentScrollController = ScrollController();
  Map<String, int>? _xtreamPanelCounts;
  DateTime? _xtreamPanelCountsFetchedAt;
  bool _xtreamPanelCountsInFlight = false;
  FocusNode? _lastGeneralFocusNode;
  final SettingsLayoutController _layoutController = SettingsLayoutController();

  @override
  void initState() {
    super.initState();
    _m3uUrlController = TextEditingController();
    _xtreamServerController = TextEditingController();
    _xtreamUsernameController = TextEditingController();
    _xtreamPasswordController = TextEditingController();
    _customEpgUrlController = TextEditingController();
    _secondaryEpgUrlController = TextEditingController();
    _customEpgUrlController.addListener(_saveCustomEpgUrl);
    _secondaryEpgUrlController.addListener(_saveSecondaryEpgUrl);
    _registerGeneralFocusNodes();
    _loadSettingsSync();
  }

  @override
  void dispose() {
    _m3uUrlController.dispose();
    _m3uUrlFocusNode.dispose();
    _xtreamServerController.dispose();
    _xtreamServerFocusNode.dispose();
    _xtreamUsernameController.dispose();
    _xtreamUsernameFocusNode.dispose();
    _xtreamPasswordController.dispose();
    _xtreamPasswordFocusNode.dispose();
    _customEpgUrlController.removeListener(_saveCustomEpgUrl);
    _customEpgUrlController.dispose();
    _secondaryEpgUrlController.removeListener(_saveSecondaryEpgUrl);
    _secondaryEpgUrlController.dispose();
    _m3uTabFocusNode.dispose();
    _xtreamTabFocusNode.dispose();
    _loadM3uButtonFocusNode.dispose();
    _loadXtreamButtonFocusNode.dispose();
    _clearM3uButtonFocusNode.dispose();
    _clearXtreamButtonFocusNode.dispose();
    _updateEpgButtonFocusNode.dispose();
    _clearEpgButtonFocusNode.dispose();
    _browseStorageButtonFocusNode.dispose();
    _playbackFirstFocusNode.dispose();
    _aiFirstFocusNode.dispose();
    _contentScrollController.dispose();
    _customEpgUrlFocusNode.dispose();
    _secondaryEpgUrlFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompatPopScope(
      onWillPop: () async {
        final router = GoRouter.of(context);
        final shouldLeave = await _confirmLeaveWhileLoading();
        if (!context.mounted) {
          return false;
        }
        if (shouldLeave) {
          router.go('/home');
        }
        return false;
      },
      child: SettingsLayout(
        autoFocusOnShow: true,
        controller: _layoutController,
        selectedIndex: _selectedIndex,
        onCategorySelected: _handleCategorySelected,
        onBackToHome: _handleBackToHome,
        onRequestContentFocus: _requestContentFocus,
        categories: const [
          SettingsCategory(title: 'General', icon: Icons.settings),
          SettingsCategory(title: 'Playback', icon: Icons.play_circle),
          SettingsCategory(title: 'AI Features', icon: Icons.auto_awesome),
          SettingsCategory(
              title: 'Recordings', icon: Icons.fiber_manual_record),
        ],
        content: _buildActiveContent(),
      ),
    );
  }
  @override
  bool handleContentFocusRequest() {
    _layoutController.requestMenuFocus();
    return true;
  }
}
