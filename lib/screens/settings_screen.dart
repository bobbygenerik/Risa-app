import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';
import 'package:iptv_player/services/whisper_transcription_service.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
// Drive sync removed: import omitted
import 'package:iptv_player/services/opensubtitles_service.dart';
import 'package:iptv_player/services/real_debrid_service.dart';
import 'package:iptv_player/services/whisper_speech_service.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:provider/provider.dart';

import 'package:iptv_player/providers/channel_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with SingleTickerProviderStateMixin {
  late Size _screenSize;
  TabController? _tabController;

  // Playlist Settings - Late initialization to avoid memory issues
  late final TextEditingController _m3uUrlController;
  late final TextEditingController _xtreamServerController;
  late final TextEditingController _xtreamUsernameController;
  late final TextEditingController _xtreamPasswordController;

  // Playlist Input Method (0 = M3U, 1 = Xtream)
  int _playlistInputMethod = 0;

  // EPG Settings
  late final TextEditingController _customEpgUrlController;
  late final TextEditingController _secondaryEpgUrlController;

  // Integration Settings - Late initialization
  late final TextEditingController _realDebridApiKeyController;
  late final TextEditingController _openSubtitlesUsernameController;
  late final TextEditingController _openSubtitlesPasswordController;

  // Editable states for text fields (prevent auto-keyboard on Android TV)
  bool _m3uUrlEditable = false;
  bool _xtreamServerEditable = false;
  bool _xtreamUsernameEditable = false;
  bool _xtreamPasswordEditable = false;
  bool _realDebridApiKeyEditable = false;
  bool _openSubtitlesUsernameEditable = false;
  bool _openSubtitlesPasswordEditable = false;
  bool _customEpgUrlEditable = false;
  bool _secondaryEpgUrlEditable = false;

  // Focus nodes for text fields and tab buttons
  final FocusNode _m3uUrlFocusNode = FocusNode();
  final FocusNode _xtreamServerFocusNode = FocusNode();
  final FocusNode _xtreamUsernameFocusNode = FocusNode();
  final FocusNode _xtreamPasswordFocusNode = FocusNode();
  final FocusNode _realDebridApiKeyFocusNode = FocusNode();
  final FocusNode _openSubtitlesUsernameFocusNode = FocusNode();
  final FocusNode _openSubtitlesPasswordFocusNode = FocusNode();
  final FocusNode _loadM3uButtonFocusNode =
      FocusNode(debugLabel: 'LoadM3UButton');
  final FocusNode _loadXtreamButtonFocusNode =
      FocusNode(debugLabel: 'LoadXtreamButton');
  final FocusNode _clearPlaylistCacheButtonFocusNode =
      FocusNode(debugLabel: 'ClearPlaylistCacheButton');
  final FocusNode _savedPlaylistFocusNode =
      FocusNode(debugLabel: 'SavedPlaylistButton');
  final FocusNode _updateEpgButtonFocusNode =
      FocusNode(debugLabel: 'UpdateEPGButton');
  final FocusNode _clearEpgButtonFocusNode =
      FocusNode(debugLabel: 'ClearEPGButton');
  final FocusNode _m3uTabFocusNode = FocusNode(debugLabel: 'M3UTabButton');
  final FocusNode _xtreamTabFocusNode =
      FocusNode(debugLabel: 'XtreamTabButton');
  final FocusNode _clearM3uButtonFocusNode =
      FocusNode(debugLabel: 'ClearM3UButton');
  final FocusNode _clearXtreamButtonFocusNode =
      FocusNode(debugLabel: 'ClearXtreamButton');
  final FocusNode _customEpgUrlFocusNode =
      FocusNode(debugLabel: 'CustomEpgUrlField');
  final FocusNode _secondaryEpgUrlFocusNode =
      FocusNode(debugLabel: 'SecondaryEpgUrlField');
  final FocusNode _viewUnmatchedChannelsFocusNode =
      FocusNode(debugLabel: 'ViewUnmatchedChannels');
  // EPG interval stepper buttons
  final FocusNode _epgIntervalMinusFocusNode =
      FocusNode(debugLabel: 'EpgIntervalMinus');
  final FocusNode _epgIntervalPlusFocusNode =
      FocusNode(debugLabel: 'EpgIntervalPlus');
  final FocusNode _epgPastDaysMinusFocusNode =
      FocusNode(debugLabel: 'EpgPastDaysMinus');
  final FocusNode _epgPastDaysPlusFocusNode =
      FocusNode(debugLabel: 'EpgPastDaysPlus');
  // EPG section switches
  final FocusNode _storeDescriptionsSwitchFocusNode =
      FocusNode(debugLabel: 'StoreDescriptionsSwitch');
  final FocusNode _showLogosSwitchFocusNode =
      FocusNode(debugLabel: 'ShowLogosSwitch');
  final FocusNode _showImagesSwitchFocusNode =
      FocusNode(debugLabel: 'ShowImagesSwitch');
  final FocusNode _editProfileButtonFocusNode =
      FocusNode(debugLabel: 'EditProfileButton');
  final FocusNode _browseStorageButtonFocusNode =
      FocusNode(debugLabel: 'BrowseStorageButton');
  // First focusable elements for Playback and AI tabs
  final FocusNode _playbackFirstFocusNode =
      FocusNode(debugLabel: 'PlaybackFirstSwitch');
  final FocusNode _aiFirstFocusNode = FocusNode(debugLabel: 'AIFirstSwitch');
  final Map<FocusNode, VoidCallback> _focusNodeListeners = {};

  // Playback Settings
  bool _autoPlayNextEpisode = true;
  bool _hardwareAcceleration = true;
  bool _hardwareDecoding = true;
  bool _hardwarePostProcessing = true;
  bool _autoFrameRate = true;
  String _decoderType = 'Auto';
  String _renderingEngine = 'Auto';
  double _videoBufferSize = 50;
  String _videoQuality = 'Auto';
  bool _rememberPlaybackPosition = true;
  bool _skipIntro = true;
  bool _showChannelLogos = true;
  bool _showProgramImages = true;

  // Audio Settings
  String _audioDecoderType = 'Auto';
  bool _audioPassthrough = false;
  bool _audioBoost = false;
  String _preferredAudioLanguage = 'Default';
  bool _normalizeAudio = false;
  int _audioChannels = 0; // 0 = Auto, 2 = Stereo, 6 = 5.1, 8 = 7.1

  // Real-Debrid Settings
  bool _realDebridEnabled = false;
  bool _realDebridForCatchup = true;
  bool _realDebridForVOD = true;

  // OpenSubtitles Settings
  bool _openSubtitlesEnabled = false;

  String _aiQuality = 'Balanced';
  bool _autoDownloadSubtitles = true;
  // ignore: unused_field
  String _preferredSubtitleLanguage = 'English';

  // Other Settings
  // ignore: unused_field
  String _selectedLanguage = 'English';
  // ignore: unused_field
  String _chromecastDevice = 'Chromecast';

  @override
  void initState() {
    super.initState();

    // Initialize text controllers
    _m3uUrlController = TextEditingController();
    _xtreamServerController = TextEditingController();
    _xtreamUsernameController = TextEditingController();
    _xtreamPasswordController = TextEditingController();
    _customEpgUrlController = TextEditingController();
    _secondaryEpgUrlController = TextEditingController();
    _realDebridApiKeyController = TextEditingController();
    _openSubtitlesUsernameController = TextEditingController();
    _openSubtitlesPasswordController = TextEditingController();

    // Add listener to save custom EPG URL when changed
    _customEpgUrlController.addListener(_saveCustomEpgUrl);
    _secondaryEpgUrlController.addListener(_saveSecondaryEpgUrl);

    _tabController = TabController(
      length: 5,
      vsync: this,
    ); // Reduced from 7 to 5
    // Prepare focus nodes for the sidebar menu so external callers can request focus
    for (int i = 0; i < 5; i++) {
      _menuFocusNodes.add(FocusNode(debugLabel: 'SettingsMenu$i'));
    }
    // Rebuild when the active tab changes so we can lazily render tab content
    _tabController!.addListener(() {
      if (mounted) setState(() {});
    });
    // Load settings - no setState during init
    _loadSettingsSync();

    // Auto-focus the first sidebar tab (General) when settings screen opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _menuFocusNodes.isNotEmpty) {
        _menuFocusNodes[0].requestFocus();
      }
    });
  }

  final List<FocusNode> _menuFocusNodes = [];

  // Load settings from SharedPreferences synchronously without setState
  void _loadSettingsSync() async {
    final prefs = await SharedPreferences.getInstance();
    // Don't use setState - just update controllers and variables
    _m3uUrlController.text = prefs.getString('m3u_url') ?? '';
    _xtreamServerController.text = prefs.getString('xtream_server') ?? '';
    _xtreamUsernameController.text = prefs.getString('xtream_username') ?? '';
    _xtreamPasswordController.text = prefs.getString('xtream_password') ?? '';
    _customEpgUrlController.text = prefs.getString('custom_epg_url') ?? '';
    _secondaryEpgUrlController.text =
        prefs.getString('secondary_epg_url') ?? '';
    _realDebridApiKeyController.text =
        prefs.getString('realdebrid_api_key') ?? '';
    _openSubtitlesUsernameController.text =
        prefs.getString('opensubtitles_username') ?? '';
    _openSubtitlesPasswordController.text =
        prefs.getString('opensubtitles_password') ?? '';

    // Boolean settings
    _autoPlayNextEpisode = prefs.getBool('auto_play_next') ?? true;
    _hardwareAcceleration = prefs.getBool('hardware_acceleration') ?? true;
    _hardwareDecoding = prefs.getBool('hardware_decoding') ?? true;
    _hardwarePostProcessing = prefs.getBool('hardware_postprocessing') ?? true;
    _autoFrameRate = prefs.getBool('auto_frame_rate') ?? true;
    _realDebridEnabled = prefs.getBool('realdebrid_enabled') ?? false;
    _realDebridForCatchup = prefs.getBool('realdebrid_catchup') ?? true;
    _realDebridForVOD = prefs.getBool('realdebrid_vod') ?? true;
    _openSubtitlesEnabled = prefs.getBool('opensubtitles_enabled') ?? false;

    _autoDownloadSubtitles = prefs.getBool('auto_download_subtitles') ?? true;
    _rememberPlaybackPosition =
        prefs.getBool('remember_playback_position') ?? true;
    _skipIntro = prefs.getBool('skip_intro_available') ?? true;
    _showChannelLogos = prefs.getBool('show_channel_logos') ?? true;
    _showProgramImages = prefs.getBool('show_program_images') ?? true;

    // String settings
    _decoderType = prefs.getString('decoder_type') ?? 'Auto';
    _renderingEngine = prefs.getString('rendering_engine') ?? 'Auto';
    _videoQuality = prefs.getString('video_quality') ?? 'Auto';
    _aiQuality = prefs.getString('ai_quality') ?? 'Balanced';
    _preferredSubtitleLanguage =
        prefs.getString('subtitle_language') ?? 'English';
    _selectedLanguage = prefs.getString('app_language') ?? 'English';
    _chromecastDevice = prefs.getString('chromecast_device') ?? 'Chromecast';

    // Audio settings
    _audioDecoderType = prefs.getString('audio_decoder_type') ?? 'Auto';
    _preferredAudioLanguage =
        prefs.getString('preferred_audio_language') ?? 'Default';
    _audioPassthrough = prefs.getBool('audio_passthrough') ?? false;
    _audioBoost = prefs.getBool('audio_boost') ?? false;
    _normalizeAudio = prefs.getBool('normalize_audio') ?? false;
    _audioChannels = prefs.getInt('audio_channels') ?? 0;

    // Double settings
    _videoBufferSize = prefs.getDouble('video_buffer_size') ?? 50;
  }

  // Save custom EPG URL when the text field changes
  void _saveCustomEpgUrl() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('custom_epg_url', _customEpgUrlController.text);
  }

  // Save secondary EPG URL when the text field changes
  void _saveSecondaryEpgUrl() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('secondary_epg_url', _secondaryEpgUrlController.text);
  }

  @override
  void dispose() {
    _focusNodeListeners.forEach((node, listener) {
      node.removeListener(listener);
    });
    _focusNodeListeners.clear();
    for (var n in _menuFocusNodes) {
      n.dispose();
    }
    _tabController?.removeListener(() {});
    _tabController?.dispose();
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
    _realDebridApiKeyController.dispose();
    _realDebridApiKeyFocusNode.dispose();
    _openSubtitlesUsernameController.dispose();
    _openSubtitlesUsernameFocusNode.dispose();
    _openSubtitlesPasswordController.dispose();
    _openSubtitlesPasswordFocusNode.dispose();
    _loadM3uButtonFocusNode.dispose();
    _loadXtreamButtonFocusNode.dispose();
    _clearPlaylistCacheButtonFocusNode.dispose();
    _savedPlaylistFocusNode.dispose();
    _updateEpgButtonFocusNode.dispose();
    _clearEpgButtonFocusNode.dispose();
    _m3uTabFocusNode.dispose();
    _xtreamTabFocusNode.dispose();
    _clearM3uButtonFocusNode.dispose();
    _clearXtreamButtonFocusNode.dispose();
    _customEpgUrlFocusNode.dispose();
    _secondaryEpgUrlFocusNode.dispose();
    _viewUnmatchedChannelsFocusNode.dispose();
    _epgIntervalMinusFocusNode.dispose();
    _epgIntervalPlusFocusNode.dispose();
    _epgPastDaysMinusFocusNode.dispose();
    _epgPastDaysPlusFocusNode.dispose();
    _storeDescriptionsSwitchFocusNode.dispose();
    _showLogosSwitchFocusNode.dispose();
    _showImagesSwitchFocusNode.dispose();
    _editProfileButtonFocusNode.dispose();
    _browseStorageButtonFocusNode.dispose();
    _playbackFirstFocusNode.dispose();
    _aiFirstFocusNode.dispose();
    super.dispose();
  }

  void _focusFirstContentElement() {
    // Focus the first interactive element in the current tab's content area
    Future.microtask(() {
      if (_tabController!.index == 0) {
        // General tab - focus M3U tab button
        _m3uTabFocusNode.requestFocus();
      } else if (_tabController!.index == 1) {
        // Account tab
        _editProfileButtonFocusNode.requestFocus();
      } else if (_tabController!.index == 2) {
        // Playback tab - focus first switch
        _playbackFirstFocusNode.requestFocus();
      } else if (_tabController!.index == 3) {
        // AI Features tab - focus first switch
        _aiFirstFocusNode.requestFocus();
      } else if (_tabController!.index == 4) {
        // Recordings tab
        _browseStorageButtonFocusNode.requestFocus();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF050710),
      body: PopScope(
        canPop: false,
        // ignore: deprecated_member_use
        onPopInvoked: (didPop) {
          if (didPop) return;
          // Check if any sidebar menu item has focus
          final sidebarHasFocus = _menuFocusNodes.any((node) => node.hasFocus);
          if (sidebarHasFocus) {
            // If already on sidebar, exit to home
            context.go('/home');
          } else {
            // If in content area, go back to sidebar
            requestFirstSidebarFocus();
          }
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSidebarMenu(),
            Expanded(
              child: FocusScope(
                canRequestFocus: true,
                onKeyEvent: (node, event) {
                  if (event is! KeyDownEvent) return KeyEventResult.ignored;
                  final key = event.logicalKey;
                  if (key == LogicalKeyboardKey.arrowLeft ||
                      key == LogicalKeyboardKey.goBack) {
                    requestFirstSidebarFocus();
                    return KeyEventResult.handled;
                  }
                  return KeyEventResult.ignored;
                },
                child: Builder(
                  builder: (context) {
                    // Build only the active tab to avoid constructing
                    // heavy consumers for hidden tabs (reduces memory use)
                    switch (_tabController!.index) {
                      case 0:
                        return _buildGeneralSettings();
                      case 1:
                        return _buildAccountSettings();
                      case 2:
                        return _buildPlaybackSettings();
                      case 3:
                        return _buildAISettings();
                      case 4:
                        return _buildRecordingsSettings();
                      default:
                        return _buildGeneralSettings();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSidebarMenu() {
    final menuItems = [
      {'title': 'General', 'icon': Icons.settings_outlined},
      {'title': 'Account', 'icon': Icons.person_outline},
      {'title': 'Playback', 'icon': Icons.play_circle_outline},
      {'title': 'AI Features', 'icon': Icons.auto_awesome},
      {'title': 'Recordings', 'icon': Icons.fiber_manual_record},
    ];

    return Container(
      width: 240,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        border: Border(
          right: BorderSide(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          // Settings header - centered, no background
          Container(
            height: 80,
            alignment: Alignment.center,
            child: Text(
              'Settings',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: AppTheme.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 20),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final item = menuItems[index];
                final bool isSelected = _tabController!.index == index;
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      _tabController!.index = index;
                    });
                  },
                  child: Focus(
                    focusNode: _menuFocusNodes[index],
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      final key = event.logicalKey;
                      if (key == LogicalKeyboardKey.arrowDown) {
                        final next = (index + 1) % menuItems.length;
                        _menuFocusNodes[next].requestFocus();
                        setState(() => _tabController!.index = next);
                        return KeyEventResult.handled;
                      } else if (key == LogicalKeyboardKey.arrowUp) {
                        if (index == 0) {
                          return KeyEventResult.ignored;
                        }
                        final prev = index - 1;
                        _menuFocusNodes[prev].requestFocus();
                        setState(() => _tabController!.index = prev);
                        return KeyEventResult.handled;
                      } else if (key == LogicalKeyboardKey.arrowRight) {
                        _focusFirstContentElement();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isFocused
                                  ? AppTheme.primaryBlue
                                  : (isSelected
                                      ? AppTheme.primaryBlue.withOpacity(0.5)
                                      : Colors.transparent),
                              width: isFocused ? 3.0 : (isSelected ? 2.0 : 0),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                item['icon'] as IconData,
                                color: (isFocused || isSelected)
                                    ? AppTheme.primaryBlue
                                    : AppTheme.textSecondary,
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  item['title'] as String,
                                  style: TextStyle(
                                    color: (isFocused || isSelected)
                                        ? AppTheme.textPrimary
                                        : AppTheme.textSecondary,
                                    fontSize: 16,
                                    fontWeight: (isFocused || isSelected)
                                        ? FontWeight.w600
                                        : FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Allow parent shell to request focus into this screen's sidebar
  void requestFirstSidebarFocus() {
    if (_menuFocusNodes.isNotEmpty) {
      final idx = _tabController!.index.clamp(0, _menuFocusNodes.length - 1);
      _menuFocusNodes[idx].requestFocus();
    }
  }

  Widget _buildGeneralSettings() {
    return _buildSettingsSection(
      title: 'General',
      children: [
        _buildPlaylistStatusCard(),
        _buildSectionCard(
          title: 'Playlist Source',
          children: [
            Container(
              height: 40,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: AppTheme.highlight,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: _buildTabButton(
                      title: 'M3U URL',
                      icon: Icons.link,
                      isSelected: _playlistInputMethod == 0,
                      onTap: () => setState(() => _playlistInputMethod = 0),
                      focusNode: _m3uTabFocusNode,
                    ),
                  ),
                  Expanded(
                    child: _buildTabButton(
                      title: 'Xtream Codes',
                      icon: Icons.dns,
                      isSelected: _playlistInputMethod == 1,
                      onTap: () => setState(() => _playlistInputMethod = 1),
                      focusNode: _xtreamTabFocusNode,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            if (_playlistInputMethod == 0) ...[
              _buildTVTextField(
                controller: _m3uUrlController,
                focusNode: _m3uUrlFocusNode,
                isEditable: _m3uUrlEditable,
                onEditableChanged: (value) => setState(() => _m3uUrlEditable = value),
                hintText: 'http://example.com/playlist.m3u',
                prefixIcon: Icons.link,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildFocusButton(
                    focusNode: _clearM3uButtonFocusNode,
                    onPressed: () => _m3uUrlController.clear(),
                    child: const Text('Clear'),
                  ),
                  const SizedBox(width: 8),
                  _buildFocusButton(
                    focusNode: _loadM3uButtonFocusNode,
                    onPressed: _loadM3uPlaylist,
                    child: const Text('Load'),
                    isPrimary: true,
                  ),
                ],
              ),
            ],
            if (_playlistInputMethod == 1) ...[
              _buildTVTextField(
                controller: _xtreamServerController,
                focusNode: _xtreamServerFocusNode,
                isEditable: _xtreamServerEditable,
                onEditableChanged: (value) => setState(() => _xtreamServerEditable = value),
                hintText: 'http://example.com:8080',
                prefixIcon: Icons.dns,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _buildTVTextField(
                      controller: _xtreamUsernameController,
                      focusNode: _xtreamUsernameFocusNode,
                      isEditable: _xtreamUsernameEditable,
                      onEditableChanged: (value) => setState(() => _xtreamUsernameEditable = value),
                      hintText: 'Username',
                      prefixIcon: Icons.person,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildTVTextField(
                      controller: _xtreamPasswordController,
                      focusNode: _xtreamPasswordFocusNode,
                      isEditable: _xtreamPasswordEditable,
                      onEditableChanged: (value) => setState(() => _xtreamPasswordEditable = value),
                      hintText: 'Password',
                      prefixIcon: Icons.lock,
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildFocusButton(
                    focusNode: _clearXtreamButtonFocusNode,
                    onPressed: _clearXtreamFields,
                    child: const Text('Clear'),
                  ),
                  const SizedBox(width: 8),
                  _buildFocusButton(
                    focusNode: _loadXtreamButtonFocusNode,
                    onPressed: _loadXtreamPlaylist,
                    child: const Text('Load'),
                    isPrimary: true,
                  ),
                ],
              ),
            ],
          ],
        ),
        _buildSectionCard(
          title: 'EPG Settings',
          children: [
            _buildTVTextField(
              controller: _customEpgUrlController,
              focusNode: _customEpgUrlFocusNode,
              isEditable: _customEpgUrlEditable,
              onEditableChanged: (value) => setState(() => _customEpgUrlEditable = value),
              hintText: 'Custom EPG URL (optional)',
              prefixIcon: Icons.tv_outlined,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _buildFocusButton(
                    focusNode: _updateEpgButtonFocusNode,
                    onPressed: _handleUpdateEpg,
                    child: const Text('Update EPG'),
                    isPrimary: true,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildFocusButton(
                    focusNode: _clearEpgButtonFocusNode,
                    onPressed: _handleClearEpg,
                    child: const Text('Clear EPG'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAccountSettings() {
    return _buildSettingsSection(
      title: 'Account',
      children: [
        _buildSectionCard(
          title: 'Profile',
          children: [
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: AppTheme.highlight,
                    child: Icon(Icons.person, size: 40, color: AppTheme.primaryBlue),
                  ),
                  const SizedBox(height: 16),
                  const Text('User Profile', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  _buildFocusButton(
                    focusNode: _editProfileButtonFocusNode,
                    onPressed: () => context.push('/edit-profile'),
                    child: const Text('Edit Profile'),
                    isPrimary: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPlaybackSettings() {
    return _buildSettingsSection(
      title: 'Playback',
      children: [
        _buildSectionCard(
          title: 'Video Settings',
          children: [
            _buildSwitchTile('Hardware Acceleration', _hardwareAcceleration, focusNode: _playbackFirstFocusNode),
            _buildSwitchTile('Hardware Decoding', _hardwareDecoding),
            _buildSwitchTile('Auto Frame Rate', _autoFrameRate),
          ],
        ),
        _buildSectionCard(
          title: 'Playback Options',
          children: [
            _buildSwitchTile('Auto-play Next Episode', _autoPlayNextEpisode),
            _buildSwitchTile('Remember Position', _rememberPlaybackPosition),
            _buildSwitchTile('Show Channel Logos', _showChannelLogos),
          ],
        ),
      ],
    );
  }

  Widget _buildAISettings() {
    return _buildSettingsSection(
      title: 'AI Features',
      children: [
        _buildSectionCard(
          title: 'OpenSubtitles',
          children: [
            _buildSwitchTile('Enable OpenSubtitles', _openSubtitlesEnabled, focusNode: _aiFirstFocusNode),
            if (_openSubtitlesEnabled) ...[
              const SizedBox(height: 12),
              _buildTVTextField(
                controller: _openSubtitlesUsernameController,
                focusNode: _openSubtitlesUsernameFocusNode,
                isEditable: _openSubtitlesUsernameEditable,
                onEditableChanged: (value) => setState(() => _openSubtitlesUsernameEditable = value),
                hintText: 'Username',
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 12),
              _buildTVTextField(
                controller: _openSubtitlesPasswordController,
                focusNode: _openSubtitlesPasswordFocusNode,
                isEditable: _openSubtitlesPasswordEditable,
                onEditableChanged: (value) => setState(() => _openSubtitlesPasswordEditable = value),
                hintText: 'Password',
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
            ],
          ],
        ),
        _buildSectionCard(
          title: 'Real-Debrid',
          children: [
            _buildSwitchTile('Enable Real-Debrid', _realDebridEnabled),
            if (_realDebridEnabled) ...[
              const SizedBox(height: 12),
              _buildTVTextField(
                controller: _realDebridApiKeyController,
                focusNode: _realDebridApiKeyFocusNode,
                isEditable: _realDebridApiKeyEditable,
                onEditableChanged: (value) => setState(() => _realDebridApiKeyEditable = value),
                hintText: 'API Key',
                prefixIcon: Icons.vpn_key,
              ),
            ],
          ],
        ),
      ],
    );
  }

  Widget _buildRecordingsSettings() {
    return _buildSettingsSection(
      title: 'Recordings',
      children: [
        _buildSectionCard(
          title: 'Storage',
          children: [
            const Text('Recording storage path:', style: TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
            Row(
              children: [
                const Expanded(
                  child: Text('/storage/recordings', style: TextStyle(color: AppTheme.textSecondary)),
                ),
                _buildFocusButton(
                  focusNode: _browseStorageButtonFocusNode,
                  onPressed: _browseStorage,
                  child: const Text('Browse'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSettingsSection({required String title, required List<Widget> children}) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF050710)),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 24),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard({required String title, required List<Widget> children}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(height: 16),
          ...children,
        ],
      ),
    );
  }

  Widget _buildPlaylistStatusCard() {
    return Consumer<ChannelProvider>(
      builder: (context, provider, _) {
        final hasChannels = provider.hasChannels;
        return _buildSectionCard(
          title: 'Playlist Status',
          children: [
            Row(
              children: [
                Icon(
                  hasChannels ? Icons.check_circle : Icons.warning_amber_outlined,
                  color: hasChannels ? AppTheme.accentGreen : AppTheme.accentOrange,
                  size: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  hasChannels ? '${provider.channelCount} channels loaded' : 'No playlist loaded',
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppTheme.textPrimary,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildTabButton({
    required String title,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
    FocusNode? focusNode,
  }) {
    return Focus(
      focusNode: focusNode,
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: isSelected 
                    ? AppTheme.primaryBlue.withOpacity(0.8)
                    : (isFocused ? AppTheme.primaryBlue.withOpacity(0.3) : Colors.transparent),
                borderRadius: BorderRadius.circular(8),
                border: isFocused ? Border.all(color: AppTheme.primaryBlue, width: 2) : null,
              ),
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: (isSelected || isFocused) ? Colors.white : AppTheme.textSecondary,
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(
                      color: (isSelected || isFocused) ? Colors.white : AppTheme.textSecondary,
                      fontSize: 13,
                      fontWeight: (isSelected || isFocused) ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTVTextField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required bool isEditable,
    required Function(bool) onEditableChanged,
    String? hintText,
    IconData? prefixIcon,
    bool obscureText = false,
  }) {
    return Focus(
      focusNode: focusNode,
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return TextField(
            controller: controller,
            obscureText: obscureText,
            style: const TextStyle(color: AppTheme.textPrimary),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: AppTheme.textSecondary),
              prefixIcon: prefixIcon != null 
                  ? Icon(prefixIcon, size: 18, color: AppTheme.textSecondary) 
                  : null,
              filled: true,
              fillColor: Colors.white.withOpacity(0.05),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppTheme.primaryBlue, width: 2),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFocusButton({
    required FocusNode focusNode,
    required VoidCallback onPressed,
    required Widget child,
    bool isPrimary = false,
  }) {
    return Focus(
      focusNode: focusNode,
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: isPrimary 
                  ? AppTheme.primaryBlue 
                  : Colors.white.withOpacity(0.1),
              foregroundColor: isPrimary ? Colors.white : AppTheme.textPrimary,
              side: isFocused 
                  ? const BorderSide(color: AppTheme.primaryBlue, width: 2) 
                  : BorderSide(color: Colors.white.withOpacity(0.2)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: child,
          );
        },
      ),
    );
  }

  Widget _buildSwitchTile(String title, bool value, {FocusNode? focusNode}) {
    return Focus(
      focusNode: focusNode,
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: isFocused 
                    ? AppTheme.primaryBlue 
                    : Colors.white.withOpacity(0.1),
                width: isFocused ? 2 : 1,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                ),
                Switch(
                  value: value,
                  onChanged: (newValue) => _handleSwitchTileChange(title, newValue),
                  activeColor: AppTheme.primaryBlue,
                  inactiveThumbColor: AppTheme.textSecondary,
                  inactiveTrackColor: Colors.white.withOpacity(0.2),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Helper methods
  void _loadM3uPlaylist() async {
    final url = _m3uUrlController.text.trim();
    if (url.isEmpty) return;
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('m3u_url', url);
    await prefs.setString('playlist_type', 'm3u');
    
    if (mounted) {
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      await provider.loadM3UFromUrl(url);
    }
  }

  void _loadXtreamPlaylist() async {
    final server = _xtreamServerController.text.trim();
    final username = _xtreamUsernameController.text.trim();
    final password = _xtreamPasswordController.text.trim();
    
    if (server.isEmpty || username.isEmpty || password.isEmpty) return;
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('xtream_server', server);
    await prefs.setString('xtream_username', username);
    await prefs.setString('xtream_password', password);
    await prefs.setString('playlist_type', 'xtream');
    
    if (mounted) {
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      await provider.loadXtreamPlaylist(server, username, password);
    }
  }

  void _clearXtreamFields() {
    _xtreamServerController.clear();
    _xtreamUsernameController.clear();
    _xtreamPasswordController.clear();
  }

  Future<void> _handleUpdateEpg() async {
    // EPG update logic
  }

  Future<void> _handleClearEpg() async {
    // EPG clear logic
  }

  void _browseStorage() async {
    // Storage browser logic
  }

  Future<void> _handleSwitchTileChange(String title, bool newValue) async {
    setState(() {
      switch (title) {
        case 'Hardware Acceleration': _hardwareAcceleration = newValue; break;
        case 'Hardware Decoding': _hardwareDecoding = newValue; break;
        case 'Auto Frame Rate': _autoFrameRate = newValue; break;
        case 'Auto-play Next Episode': _autoPlayNextEpisode = newValue; break;
        case 'Remember Position': _rememberPlaybackPosition = newValue; break;
        case 'Show Channel Logos': _showChannelLogos = newValue; break;
        case 'Enable OpenSubtitles': _openSubtitlesEnabled = newValue; break;
        case 'Enable Real-Debrid': _realDebridEnabled = newValue; break;
      }
    });
    
    final prefs = await SharedPreferences.getInstance();
    switch (title) {
      case 'Hardware Acceleration': await prefs.setBool('hardware_acceleration', newValue); break;
      case 'Hardware Decoding': await prefs.setBool('hardware_decoding', newValue); break;
      case 'Auto Frame Rate': await prefs.setBool('auto_frame_rate', newValue); break;
      case 'Auto-play Next Episode': await prefs.setBool('auto_play_next', newValue); break;
      case 'Remember Position': await prefs.setBool('remember_playback_position', newValue); break;
      case 'Show Channel Logos': await prefs.setBool('show_channel_logos', newValue); break;
      case 'Enable OpenSubtitles': await prefs.setBool('opensubtitles_enabled', newValue); break;
      case 'Enable Real-Debrid': await prefs.setBool('realdebrid_enabled', newValue); break;
    }
  }
}