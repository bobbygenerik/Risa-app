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
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  // Playlist Settings - Late initialization to avoid memory issues
  late final TextEditingController _m3uUrlController;
  late final TextEditingController _xtreamServerController;
  late final TextEditingController _xtreamUsernameController;
  late final TextEditingController _xtreamPasswordController;

  // Playlist Input Method (0 = M3U, 1 = Xtream)
  int _playlistInputMethod = 0;

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

  // Focus nodes for text fields and tab buttons
  final FocusNode _m3uUrlFocusNode = FocusNode();
  final FocusNode _xtreamServerFocusNode = FocusNode();
  final FocusNode _xtreamUsernameFocusNode = FocusNode();
  final FocusNode _xtreamPasswordFocusNode = FocusNode();
  final FocusNode _realDebridApiKeyFocusNode = FocusNode();
  final FocusNode _openSubtitlesUsernameFocusNode = FocusNode();
  final FocusNode _openSubtitlesPasswordFocusNode = FocusNode();
  final FocusNode _loadM3uButtonFocusNode = FocusNode(debugLabel: 'LoadM3UButton');
  final FocusNode _loadXtreamButtonFocusNode = FocusNode(debugLabel: 'LoadXtreamButton');
  final FocusNode _clearPlaylistCacheButtonFocusNode = FocusNode(debugLabel: 'ClearPlaylistCacheButton');
  final FocusNode _updateEpgButtonFocusNode = FocusNode(debugLabel: 'UpdateEPGButton');
  final FocusNode _clearEpgButtonFocusNode = FocusNode(debugLabel: 'ClearEPGButton');
  final FocusNode _m3uTabFocusNode = FocusNode(debugLabel: 'M3UTabButton');
  final FocusNode _xtreamTabFocusNode = FocusNode(debugLabel: 'XtreamTabButton');
  final FocusNode _clearM3uButtonFocusNode = FocusNode(debugLabel: 'ClearM3UButton');
  final FocusNode _clearXtreamButtonFocusNode = FocusNode(debugLabel: 'ClearXtreamButton');
  final FocusNode _customEpgUrlFocusNode = FocusNode(debugLabel: 'CustomEpgUrlField');
  // EPG interval stepper buttons
  final FocusNode _epgIntervalMinusFocusNode = FocusNode(debugLabel: 'EpgIntervalMinus');
  final FocusNode _epgIntervalPlusFocusNode = FocusNode(debugLabel: 'EpgIntervalPlus');
  final FocusNode _epgPastDaysMinusFocusNode = FocusNode(debugLabel: 'EpgPastDaysMinus');
  final FocusNode _epgPastDaysPlusFocusNode = FocusNode(debugLabel: 'EpgPastDaysPlus');
  // EPG section switches
  final FocusNode _storeDescriptionsSwitchFocusNode = FocusNode(debugLabel: 'StoreDescriptionsSwitch');
  final FocusNode _showLogosSwitchFocusNode = FocusNode(debugLabel: 'ShowLogosSwitch');
  final FocusNode _showImagesSwitchFocusNode = FocusNode(debugLabel: 'ShowImagesSwitch');
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

  // AI Upscaling settings
  bool _aiUpscalingEnabled = false;
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
    _realDebridApiKeyController = TextEditingController();
    _openSubtitlesUsernameController = TextEditingController();
    _openSubtitlesPasswordController = TextEditingController();

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
    _aiUpscalingEnabled = prefs.getBool('ai_upscaling') ?? false;
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

  // Save individual setting
  // ignore: unused_element
  Future<void> _saveSetting(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is String) {
      await prefs.setString(key, value);
    } else if (value is bool) {
      await prefs.setBool(key, value);
    } else if (value is double) {
      await prefs.setDouble(key, value);
    }
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
    _realDebridApiKeyController.dispose();
    _realDebridApiKeyFocusNode.dispose();
    _openSubtitlesUsernameController.dispose();
    _openSubtitlesUsernameFocusNode.dispose();
    _openSubtitlesPasswordController.dispose();
    _openSubtitlesPasswordFocusNode.dispose();
    _loadM3uButtonFocusNode.dispose();
    _loadXtreamButtonFocusNode.dispose();
    _clearPlaylistCacheButtonFocusNode.dispose();
    _updateEpgButtonFocusNode.dispose();
    _clearEpgButtonFocusNode.dispose();
    _m3uTabFocusNode.dispose();
    _xtreamTabFocusNode.dispose();
    _clearM3uButtonFocusNode.dispose();
    _clearXtreamButtonFocusNode.dispose();
    _customEpgUrlFocusNode.dispose();
    _epgIntervalMinusFocusNode.dispose();
    _epgIntervalPlusFocusNode.dispose();
    _epgPastDaysMinusFocusNode.dispose();
    _epgPastDaysPlusFocusNode.dispose();
    _storeDescriptionsSwitchFocusNode.dispose();
    _showLogosSwitchFocusNode.dispose();
    _showImagesSwitchFocusNode.dispose();
    super.dispose();
  }

  void _focusFirstContentElement() {
    // Focus the first interactive element in the current tab's content area
    Future.microtask(() {
      if (_tabController!.index == 0) {
        // General tab - focus M3U tab button
        _m3uTabFocusNode.requestFocus();
      } else {
        // For other tabs, traverse to the first focusable element in the content scope
        FocusScope.of(context).nextFocus();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF050710), Color(0xFF0d1140)],
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSidebarMenu(),
              VerticalDivider(
                width: 1,
                color: Colors.white.withAlpha((0.1 * 255).round()),
              ),
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
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha((0.05 * 255).round()),
        border: Border(
          right: BorderSide(
            color: Colors.white.withAlpha((0.1 * 255).round()),
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          // Settings header
          Container(
            height: AppSizes.appBarHeight,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppTheme.primaryBlue, width: 2),
              ),
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Settings',
                style: TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 12),
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
                          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppTheme.primaryBlue.withAlpha(
                                    (0.3 * 255).round(),
                                  )
                                : Colors.transparent,
                            border: Border.all(
                              color: isFocused
                                  ? Colors.white
                                  : (isSelected
                                      ? AppTheme.primaryBlue.withAlpha(
                                          (0.5 * 255).round(),
                                        )
                                      : Colors.transparent),
                              width: isFocused ? 2.0 : 1.5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 12,
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
                                      fontSize: 14,
                                      fontWeight: (isFocused || isSelected)
                                          ? FontWeight.w600
                                          : FontWeight.w500,
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

  void requestFirstContentFocus() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Focus the first input field based on current tab
      switch (_tabController!.index) {
        case 0: // General
          _m3uUrlFocusNode.requestFocus();
          break;
        case 1: // Account
          _realDebridApiKeyFocusNode.requestFocus();
          break;
        case 2: // Playback
        case 3: // AI Features
        case 4: // Recordings
        default:
          // For tabs without specific focus nodes, just request focus on content scope
          FocusScope.of(context).nextFocus();
          break;
      }
    });
  }

  Widget _buildAccountSettings() {
    // Drive sync feature removed from the app. Only show profile section.
    return FutureBuilder<Map<String, String?>>(
      future: _loadProfileData(),
      builder: (context, snapshot) {
        final userName = snapshot.data?['name'] ?? 'User';
        final userEmail = snapshot.data?['email'] ?? 'user@example.com';
        final profileImagePath = snapshot.data?['imagePath'];

        return _buildSettingsSection(
          title: 'Account',
          children: [
            _buildSectionCard(
              title: 'Profile',
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: AppTheme.cardBackground,
                        backgroundImage:
                            profileImagePath != null &&
                                profileImagePath.isNotEmpty
                            ? ResizeImage(
                                FileImage(File(profileImagePath)),
                                width: 100,
                                height: 100,
                              )
                            : null,
                        child:
                            profileImagePath == null || profileImagePath.isEmpty
                            ? const Icon(
                                Icons.person,
                                size: 50,
                                color: AppTheme.primaryBlue,
                              )
                            : null,
                      ),
                      const SizedBox(height: AppSizes.md),
                      Text(
                        userName,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        userEmail,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                      ),
                      const SizedBox(height: AppSizes.md),
                      Focus(
                        onKeyEvent: (node, event) {
                          if (event is! KeyDownEvent) return KeyEventResult.ignored;
                          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                            requestFirstSidebarFocus();
                            return KeyEventResult.handled;
                          }
                          return KeyEventResult.ignored;
                        },
                        child: Builder(
                          builder: (context) {
                            final isFocused = Focus.of(context).hasFocus;
                            return Container(
                              decoration: isFocused
                                  ? BoxDecoration(
                                      border: Border.all(color: AppTheme.primaryBlue, width: 2),
                                      borderRadius: BorderRadius.circular(8),
                                    )
                                  : null,
                              child: ElevatedButton(
                                onPressed: () async {
                                  final result = await context.push('/edit-profile');
                                  if (!mounted) return;
                                  if (result == true) {
                                    setState(() {});
                                  }
                                },
                                child: const Text('Edit Profile'),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Future<Map<String, String?>> _loadProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'name': prefs.getString('user_name'),
      'email': prefs.getString('user_email'),
      'imagePath': prefs.getString('profile_image_path'),
    };
  }

  Widget _buildPlaybackSettings() {
    return _buildSettingsSection(
      title: 'Playback',
      children: [
        _buildSectionCard(
          title: 'Video Settings',
          children: [
            _buildSwitchTile('Hardware Acceleration', _hardwareAcceleration),
            _buildSwitchTile('Hardware Decoding', _hardwareDecoding),
            _buildSwitchTile(
              'Hardware Post-Processing',
              _hardwarePostProcessing,
            ),
            _buildSwitchTile(
              'Auto Frame Rate Matching',
              _autoFrameRate,
              subtitle:
                  'Match display refresh rate to video frame rate for smoother playback',
            ),
            _buildDropdown(
              'Decoder Type',
              _decoderType,
              ['Auto', 'MediaCodec', 'FFmpeg', 'Software'],
              (value) {
                if (value != null) {
                  setState(() => _decoderType = value);
                }
              },
            ),
            _buildDropdown(
              'Rendering Engine',
              _renderingEngine,
              ['Auto', 'SurfaceView', 'TextureView'],
              (value) {
                if (value != null) {
                  setState(() => _renderingEngine = value);
                }
              },
            ),
          ],
        ),
        _buildSectionCard(
          title: 'Audio Settings',
          children: [
            _buildDropdown(
              'Audio Decoder',
              _audioDecoderType,
              ['Auto', 'MediaCodec', 'FFmpeg', 'OpenSL ES'],
              (value) async {
                if (value != null) {
                  setState(() => _audioDecoderType = value);
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('audio_decoder_type', value);
                }
              },
            ),
            _buildDropdown(
              'Audio Channels',
              _audioChannels == 0
                  ? 'Auto'
                  : _audioChannels == 2
                  ? 'Stereo'
                  : _audioChannels == 6
                  ? '5.1 Surround'
                  : '7.1 Surround',
              ['Auto', 'Stereo', '5.1 Surround', '7.1 Surround'],
              (value) async {
                if (value != null) {
                  int channels = 0;
                  if (value == 'Stereo') {
                    channels = 2;
                  } else if (value == '5.1 Surround') {
                    channels = 6;
                  } else if (value == '7.1 Surround') {
                    channels = 8;
                  }

                  setState(() => _audioChannels = channels);
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setInt('audio_channels', channels);
                }
              },
            ),
            _buildDropdown(
              'Preferred Audio Language',
              _preferredAudioLanguage,
              [
                'Default',
                'English',
                'Spanish',
                'French',
                'German',
                'Italian',
                'Portuguese',
                'Russian',
                'Chinese',
                'Japanese',
                'Korean',
                'Arabic',
              ],
              (value) async {
                if (value != null) {
                  setState(() => _preferredAudioLanguage = value);
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('preferred_audio_language', value);
                }
              },
            ),
            _buildAudioSwitchTile(
              'Audio Passthrough',
              _audioPassthrough,
              subtitle:
                  'Send audio directly to receiver without decoding (for surround sound systems)',
            ),
            _buildAudioSwitchTile(
              'Audio Boost',
              _audioBoost,
              subtitle: 'Increase audio volume for quiet content',
            ),
            _buildAudioSwitchTile(
              'Normalize Audio',
              _normalizeAudio,
              subtitle:
                  'Automatically adjust volume levels for consistent playback',
            ),
          ],
        ),
        _buildSectionCard(
          title: 'Playback Options',
          children: [
            _buildSwitchTile('Auto-play Next Episode', _autoPlayNextEpisode),
            _buildDropdown(
              'Video Quality',
              _videoQuality,
              ['Auto', '4K', '1080p', '720p', '480p'],
              (value) {
                if (value != null) {
                  setState(() => _videoQuality = value);
                }
              },
            ),
          ],
        ),
        _buildSectionCard(
          title: 'Buffer Settings',
          children: [
            Text('Video Buffer Size: ${_videoBufferSize.round()}%'),
            Focus(
              onKeyEvent: (node, event) {
                if (event is! KeyDownEvent) return KeyEventResult.ignored;
                if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                  if (_videoBufferSize > 0) {
                    setState(() => _videoBufferSize = (_videoBufferSize - 5).clamp(0, 100));
                    return KeyEventResult.handled;
                  }
                  requestFirstSidebarFocus();
                  return KeyEventResult.handled;
                }
                if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                  if (_videoBufferSize < 100) {
                    setState(() => _videoBufferSize = (_videoBufferSize + 5).clamp(0, 100));
                    return KeyEventResult.handled;
                  }
                }
                return KeyEventResult.ignored;
              },
              child: Builder(
                builder: (context) {
                  final isFocused = Focus.of(context).hasFocus;
                  return Container(
                    decoration: isFocused
                        ? BoxDecoration(
                            border: Border.all(color: AppTheme.primaryBlue, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          )
                        : null,
                    child: Slider(
                      value: _videoBufferSize,
                      min: 0,
                      max: 100,
                      divisions: 20,
                      label: '${_videoBufferSize.round()}%',
                      onChanged: (value) {
                        setState(() => _videoBufferSize = value);
                      },
                    ),
                  );
                },
              ),
            ),
            Text(
              'Higher buffer reduces stuttering but increases memory usage',
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEPGSourceSection() {
    return FutureBuilder<Map<String, dynamic>>(
      future: () async {
        final prefs = await SharedPreferences.getInstance();
        return {
          'custom_epg_url': prefs.getString('custom_epg_url'),
          'playlist_type': prefs.getString('playlist_type'),
          'm3u_url': prefs.getString('m3u_url'),
          'xtream_server': prefs.getString('xtream_server'),
          'epg_update_interval': prefs.getInt('epg_update_interval') ?? 12,
          'epg_past_days': prefs.getInt('epg_past_days') ?? 1,
          'store_descriptions':
              prefs.getBool('store_program_descriptions') ?? true,
          'show_channel_logos': prefs.getBool('show_channel_logos') ?? true,
          'show_program_images': prefs.getBool('show_program_images') ?? true,
        };
      }(),
      builder: (context, snapshot) {
        if (!snapshot.hasData || snapshot.data == null) {
          return const Card(
            margin: EdgeInsets.only(bottom: AppSizes.lg),
            child: Padding(
              padding: EdgeInsets.all(AppSizes.lg),
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        }

        final data = snapshot.data!;
        final epgUrl = data['epg_url'] as String?;
        final customEpgUrl = data['custom_epg_url'] as String?;
        final playlistType = data['playlist_type'] as String?;
        final m3uUrl = data['m3u_url'] as String?;
        final xtreamServer = data['xtream_server'] as String?;
        final epgUpdateInterval = data['epg_update_interval'] as int;
        final epgPastDays = data['epg_past_days'] as int;
        final storeDescriptions = data['store_descriptions'] as bool;
        final showChannelLogos = data['show_channel_logos'] as bool;
        final showProgramImages = data['show_program_images'] as bool;

        // Determine provider name
        String providerName = 'No Playlist Loaded';
        if (playlistType == 'm3u' && m3uUrl != null) {
          try {
            final uri = Uri.parse(m3uUrl);
            providerName = uri.host;
          } catch (e) {
            providerName = 'M3U Playlist';
          }
        } else if (playlistType == 'xtream' && xtreamServer != null) {
          try {
            final uri = Uri.parse(xtreamServer);
            providerName = uri.host;
          } catch (e) {
            providerName = 'Xtream Codes';
          }
        }

        final TextEditingController customEpgController = TextEditingController(
          text: customEpgUrl ?? '',
        );

        return _buildSectionCard(
          title: 'EPG (Electronic Program Guide)',
          subtitle: 'Configure TV guide information and display settings',
          children: [
            // === 1. EPG SOURCES ===
            Text(
              'EPG Sources',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
            ),
            const SizedBox(height: AppSizes.md),

            // Current Provider Info
            Container(
              padding: const EdgeInsets.all(AppSizes.md),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                border: Border.all(
                  color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.tv, color: AppTheme.primaryBlue, size: 20),
                      SizedBox(width: 8),
                      Text(
                        'Current Provider',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    providerName,
                    style: const TextStyle(
                      color: AppTheme.textSecondary,
                      fontSize: 13,
                    ),
                  ),
                  if (epgUrl != null) ...[
                    const SizedBox(height: 12),
                    const Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: AppTheme.accentGreen,
                          size: 16,
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            'Auto-detected EPG',
                            style: TextStyle(
                              color: AppTheme.accentGreen,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      epgUrl,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 11,
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            const SizedBox(height: AppSizes.lg),

            // Custom EPG URL Input
            Text(
              'Custom EPG URL',
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: AppSizes.sm),
            _buildTVTextField(
              controller: customEpgController,
              focusNode: _customEpgUrlFocusNode,
              isEditable: _customEpgUrlEditable,
              onEditableChanged: (val) => setState(() => _customEpgUrlEditable = val),
              hintText: 'http://example.com/epg.xml.gz',
              prefixIcon: Icons.link,
              enableDirectionalNavigation: true,
              onLeftArrow: requestFirstSidebarFocus,
              onUpArrow: () => _clearPlaylistCacheButtonFocusNode.requestFocus(),
              onDownArrow: () => FocusScope.of(context).nextFocus(),
            ),
            const SizedBox(height: AppSizes.xs),
            const Text(
              'Override auto-detected EPG or provide EPG for playlists without one',
              style: TextStyle(
                fontSize: 11,
                color: AppTheme.textSecondary,
                fontStyle: FontStyle.italic,
              ),
            ),

            const SizedBox(height: AppSizes.md),
            const Divider(),
            const SizedBox(height: AppSizes.lg),

            // === 3. UPDATE SETTINGS ===
            Text(
              'Update Settings',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
            ),
            const SizedBox(height: AppSizes.md),

            // Update Interval
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.update, color: AppTheme.primaryBlue),
              title: const Text('Auto-Update Interval'),
              subtitle: Text('Update EPG data every $epgUpdateInterval hours'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Focus(
                    focusNode: _epgIntervalMinusFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                        _epgIntervalPlusFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                        _customEpgUrlFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                        _epgPastDaysMinusFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return IconButton(
                          icon: Icon(
                            Icons.remove_circle_outline,
                            color: isFocused ? AppTheme.primaryBlue : null,
                          ),
                          style: IconButton.styleFrom(
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 2)
                                : null,
                          ),
                          onPressed: epgUpdateInterval > 1
                              ? () async {
                                  final newValue = epgUpdateInterval - 1;
                                  final prefs = await SharedPreferences.getInstance();
                                  await prefs.setInt('epg_update_interval', newValue);
                                  setState(() {});
                                }
                              : null,
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue.withAlpha(
                        (0.1 * 255).round(),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '$epgUpdateInterval',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Focus(
                    focusNode: _epgIntervalPlusFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        _epgIntervalMinusFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                        _customEpgUrlFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                        _epgPastDaysPlusFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return IconButton(
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: isFocused ? AppTheme.primaryBlue : null,
                          ),
                          style: IconButton.styleFrom(
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 2)
                                : null,
                          ),
                          onPressed: epgUpdateInterval < 48
                              ? () async {
                                  final newValue = epgUpdateInterval + 1;
                                  final prefs = await SharedPreferences.getInstance();
                                  await prefs.setInt('epg_update_interval', newValue);
                                  setState(() {});
                                }
                              : null,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppSizes.md),
            const Divider(),
            const SizedBox(height: AppSizes.lg),

            // === 2. DATA MANAGEMENT ===
            Text(
              'Data Management',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
            ),
            const SizedBox(height: AppSizes.md),

            // 2. Past Days to Keep
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.history, color: AppTheme.primaryBlue),
              title: const Text('Past Days to Keep'),
              subtitle: Text('Keep EPG data for the past $epgPastDays days'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Focus(
                    focusNode: _epgPastDaysMinusFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is KeyDownEvent) {
                        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                          requestFirstSidebarFocus();
                          return KeyEventResult.handled;
                        } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                          _epgPastDaysPlusFocusNode.requestFocus();
                          return KeyEventResult.handled;
                        } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                          _epgIntervalMinusFocusNode.requestFocus();
                          return KeyEventResult.handled;
                        } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                          // Focus next element below
                          FocusScope.of(context).nextFocus();
                          return KeyEventResult.handled;
                        }
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return IconButton(
                          icon: Icon(
                            Icons.remove_circle_outline,
                            color: isFocused ? AppTheme.primaryBlue : null,
                          ),
                          style: IconButton.styleFrom(
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 2)
                                : null,
                          ),
                          onPressed: epgPastDays > 0
                              ? () async {
                                  final newValue = epgPastDays - 1;
                                  final prefs = await SharedPreferences.getInstance();
                                  await prefs.setInt('epg_past_days', newValue);
                                  setState(() {});
                                }
                              : null,
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue.withAlpha(
                        (0.1 * 255).round(),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '$epgPastDays',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Focus(
                    focusNode: _epgPastDaysPlusFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is KeyDownEvent) {
                        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                          _epgPastDaysMinusFocusNode.requestFocus();
                          return KeyEventResult.handled;
                        } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                          requestFirstSidebarFocus();
                          return KeyEventResult.handled;
                        } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                          _epgIntervalPlusFocusNode.requestFocus();
                          return KeyEventResult.handled;
                        } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                          // Focus next element below
                          FocusScope.of(context).nextFocus();
                          return KeyEventResult.handled;
                        }
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return IconButton(
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: isFocused ? AppTheme.primaryBlue : null,
                          ),
                          style: IconButton.styleFrom(
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 2)
                                : null,
                          ),
                          onPressed: epgPastDays < 30
                              ? () async {
                                  final newValue = epgPastDays + 1;
                                  final prefs = await SharedPreferences.getInstance();
                                  await prefs.setInt('epg_past_days', newValue);
                                  setState(() {});
                                }
                              : null,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // 3. STORE PROGRAM DESCRIPTIONS TOGGLE
            Focus(
              focusNode: _storeDescriptionsSwitchFocusNode,
              onKeyEvent: (node, event) {
                if (event is! KeyDownEvent) return KeyEventResult.ignored;
                if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                  requestFirstSidebarFocus();
                  return KeyEventResult.handled;
                }
                if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                  _epgPastDaysMinusFocusNode.requestFocus();
                  return KeyEventResult.handled;
                }
                if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                  _showLogosSwitchFocusNode.requestFocus();
                  return KeyEventResult.handled;
                }
                return KeyEventResult.ignored;
              },
              child: Builder(
                builder: (context) {
                  final isFocused = Focus.of(context).hasFocus;
                  return Container(
                    decoration: isFocused
                        ? BoxDecoration(
                            border: Border.all(color: AppTheme.primaryBlue, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          )
                        : null,
                    child: SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Store Program Descriptions'),
                      subtitle: const Text(
                        'Save detailed program information (uses more storage)',
                      ),
                      value: storeDescriptions,
                      onChanged: (value) async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('store_program_descriptions', value);
                        setState(() {});
                      },
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: AppSizes.md),
            const Divider(),
            const SizedBox(height: AppSizes.lg),

            // === 7. DISPLAY OPTIONS ===
            Text(
              'Display Options',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
            ),
            const SizedBox(height: AppSizes.sm),

            Focus(
              focusNode: _showLogosSwitchFocusNode,
              onKeyEvent: (node, event) {
                if (event is! KeyDownEvent) return KeyEventResult.ignored;
                if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                  requestFirstSidebarFocus();
                  return KeyEventResult.handled;
                }
                if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                  _storeDescriptionsSwitchFocusNode.requestFocus();
                  return KeyEventResult.handled;
                }
                if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                  _showImagesSwitchFocusNode.requestFocus();
                  return KeyEventResult.handled;
                }
                return KeyEventResult.ignored;
              },
              child: Builder(
                builder: (context) {
                  final isFocused = Focus.of(context).hasFocus;
                  return Container(
                    decoration: isFocused
                        ? BoxDecoration(
                            border: Border.all(color: AppTheme.primaryBlue, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          )
                        : null,
                    child: SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Show Channel Logos'),
                      subtitle: const Text('Display channel logos in EPG grid'),
                      value: showChannelLogos,
                      onChanged: (value) async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('show_channel_logos', value);
                        setState(() {});
                      },
                    ),
                  );
                },
              ),
            ),

            Focus(
              focusNode: _showImagesSwitchFocusNode,
              onKeyEvent: (node, event) {
                if (event is! KeyDownEvent) return KeyEventResult.ignored;
                if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                  requestFirstSidebarFocus();
                  return KeyEventResult.handled;
                }
                if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                  _showLogosSwitchFocusNode.requestFocus();
                  return KeyEventResult.handled;
                }
                if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                  _updateEpgButtonFocusNode.requestFocus();
                  return KeyEventResult.handled;
                }
                return KeyEventResult.ignored;
              },
              child: Builder(
                builder: (context) {
                  final isFocused = Focus.of(context).hasFocus;
                  return Container(
                    decoration: isFocused
                        ? BoxDecoration(
                            border: Border.all(color: AppTheme.primaryBlue, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          )
                        : null,
                    child: SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Show Program Images'),
                      subtitle: const Text('Display program thumbnails and posters'),
                      value: showProgramImages,
                      onChanged: (value) async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('show_program_images', value);
                        setState(() {});
                      },
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: AppSizes.lg),

            // Update EPG & Clear EPG Buttons
            Row(
              children: [
                Expanded(
                  child: Focus(
                    focusNode: _updateEpgButtonFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                        _clearEpgButtonFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                        _showImagesSwitchFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        if (isFocused) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            final ctx = _updateEpgButtonFocusNode.context;
                            if (ctx != null) {
                              Scrollable.ensureVisible(
                                ctx,
                                duration: const Duration(milliseconds: 150),
                                curve: Curves.easeOut,
                                alignment: 0.6,
                              );
                            }
                          });
                        }
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: isFocused
                                ? Border.all(color: AppTheme.primaryBlue, width: 3)
                                : null,
                          ),
                          child: ElevatedButton.icon(
                            onPressed: () {
                              showAppSnackBar(
                                context,
                                const SnackBar(
                                  content: Text('Updating EPG data...'),
                                ),
                              );
                            },
                            icon: const Icon(Icons.refresh),
                            label: const Text('Update EPG'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.primaryBlue,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: AppSizes.md),
                Expanded(
                  child: Focus(
                    focusNode: _clearEpgButtonFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        _updateEpgButtonFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                        _showImagesSwitchFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        if (isFocused) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            final ctx = _clearEpgButtonFocusNode.context;
                            if (ctx != null) {
                              Scrollable.ensureVisible(
                                ctx,
                                duration: const Duration(milliseconds: 150),
                                curve: Curves.easeOut,
                                alignment: 0.6,
                              );
                            }
                          });
                        }
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: isFocused
                                ? Border.all(color: AppTheme.primaryBlue, width: 3)
                                : null,
                          ),
                          child: ElevatedButton.icon(
                    onPressed: () async {
                      // Show confirmation dialog
                      final confirm = await showDialog<bool>(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Clear EPG Data'),
                          content: const Text(
                            'Are you sure you want to clear all EPG data? This cannot be undone.',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, false),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, true),
                              child: const Text(
                                'Clear',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      );

                      if (confirm == true) {
                        // TODO: Implement EPG data clearing
                        final localContext = context;
                        if (localContext.mounted) {
                          showAppSnackBar(
                            localContext,
                            const SnackBar(
                              content: Text('EPG data cleared'),
                              backgroundColor: AppTheme.accentGreen,
                            ),
                          );
                        }
                      }
                    },
                            icon: const Icon(Icons.delete_sweep),
                            label: const Text('Clear EPG'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.shade700,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildGeneralSettings() {
    return _buildSettingsSection(
      title: 'General',
      children: [
        _buildPlaylistStatusCard(),
        _buildSectionCard(
          title: 'Playlist Source',
          subtitle: 'Select your playlist type and enter details',
          children: [
            // Input Method Tabs
            Container(
              height: 48,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppTheme.highlight,
                borderRadius: BorderRadius.circular(AppSizes.radiusMd),
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
                      onDownArrow: () => _m3uUrlFocusNode.requestFocus(),
                    ),
                  ),
                  Expanded(
                    child: _buildTabButton(
                      title: 'Xtream Codes',
                      icon: Icons.dns,
                      isSelected: _playlistInputMethod == 1,
                      onTap: () => setState(() => _playlistInputMethod = 1),
                      focusNode: _xtreamTabFocusNode,
                      onDownArrow: () => _xtreamServerFocusNode.requestFocus(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.lg),
            // M3U Content
            if (_playlistInputMethod == 0) ...[
              _buildTVTextField(
                controller: _m3uUrlController,
                focusNode: _m3uUrlFocusNode,
                isEditable: _m3uUrlEditable,
                onEditableChanged: (value) =>
                    setState(() => _m3uUrlEditable = value),
                hintText: 'http://example.com/playlist.m3u',
                helperText: 'Enter M3U URL and click Load',
                prefixIcon: Icons.link,
                onLeftArrow: requestFirstSidebarFocus,
                onUpArrow: () => _m3uTabFocusNode.requestFocus(),
                onDownArrow: () {
                  _focusLoadM3uButton();
                  _loadM3uButtonFocusNode.requestFocus();
                },
                enableDirectionalNavigation: true,
              ),
              const SizedBox(height: AppSizes.md),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Focus(
                    focusNode: _clearM3uButtonFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                        _m3uUrlFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                        _loadM3uButtonFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                        _clearPlaylistCacheButtonFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return TextButton(
                          onPressed: () {
                            _m3uUrlController.clear();
                          },
                          style: TextButton.styleFrom(
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 3)
                                : null,
                          ),
                          child: const Text('Clear'),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: AppSizes.sm),
                  Focus(
                    focusNode: _loadM3uButtonFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) {
                        return KeyEventResult.ignored;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                        _m3uUrlFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        _clearM3uButtonFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                        _clearPlaylistCacheButtonFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        if (isFocused) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            final ctx = _loadM3uButtonFocusNode.context;
                            if (ctx != null) {
                              Scrollable.ensureVisible(
                                ctx,
                                duration: const Duration(milliseconds: 150),
                                curve: Curves.easeOut,
                                alignment: 0.6,
                              );
                            }
                          });
                        }
                        return ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.primaryBlue,
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 3)
                                : null,
                          ),
                          onPressed: () async {
                            final url = _m3uUrlController.text.trim();
                            if (url.isEmpty) {
                              if (!mounted) return;
                              showAppSnackBar(
                                context,
                                const SnackBar(content: Text('Please enter a valid M3U URL')),
                              );
                              return;
                            }

                            if (mounted) {
                              showAppSnackBar(
                                context,
                                const SnackBar(content: Text('Loading playlist from URL...')),
                              );
                            }

                            try {
                              final provider = Provider.of<ChannelProvider>(
                                context,
                                listen: false,
                              );
                              await provider.loadPlaylistFromUrl(url);

                              final prefs = await SharedPreferences.getInstance();
                              await prefs.setString('m3u_url', url);
                              await prefs.setString('playlist_type', 'm3u');

                              if (!mounted) return;
                              showAppSnackBar(
                                context,
                                SnackBar(
                                  content: Text(
                                    'Playlist loaded successfully! ${provider.channels.length} channels found.',
                                  ),
                                  backgroundColor: AppTheme.accentGreen,
                                ),
                              );
                            } catch (e) {
                              if (mounted) {
                                showAppSnackBar(
                                  context,
                                  SnackBar(
                                    content: Text(
                                      'Failed to load playlist: ${e.toString()}',
                                    ),
                                    backgroundColor: AppTheme.accentRed,
                                  ),
                                );
                              }
                            }
                          },
                          icon: const Icon(Icons.download),
                          label: const Text('Load Playlist'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],

            // Xtream Content
            if (_playlistInputMethod == 1) ...[
              _buildTVTextField(
                controller: _xtreamServerController,
                focusNode: _xtreamServerFocusNode,
                isEditable: _xtreamServerEditable,
                onEditableChanged: (value) =>
                    setState(() => _xtreamServerEditable = value),
                labelText: 'Server URL',
                hintText: 'http://example.com:8080',
                prefixIcon: Icons.dns,
                onLeftArrow: requestFirstSidebarFocus,
                onUpArrow: () => _xtreamTabFocusNode.requestFocus(),
                onDownArrow: () => _xtreamUsernameFocusNode.requestFocus(),
                enableDirectionalNavigation: true,
              ),
              const SizedBox(height: AppSizes.md),
              Row(
                children: [
                  Expanded(
                    child: _buildTVTextField(
                      controller: _xtreamUsernameController,
                      focusNode: _xtreamUsernameFocusNode,
                      isEditable: _xtreamUsernameEditable,
                      onEditableChanged: (value) =>
                          setState(() => _xtreamUsernameEditable = value),
                      labelText: 'Username',
                      prefixIcon: Icons.person,
                      onLeftArrow: requestFirstSidebarFocus,
                      onUpArrow: () => _xtreamServerFocusNode.requestFocus(),
                      onDownArrow: () => _loadXtreamButtonFocusNode.requestFocus(),
                      onRightArrow: () => _xtreamPasswordFocusNode.requestFocus(),
                      enableDirectionalNavigation: true,
                    ),
                  ),
                  const SizedBox(width: AppSizes.md),
                  Expanded(
                    child: _buildTVTextField(
                      controller: _xtreamPasswordController,
                      focusNode: _xtreamPasswordFocusNode,
                      isEditable: _xtreamPasswordEditable,
                      onEditableChanged: (value) =>
                          setState(() => _xtreamPasswordEditable = value),
                      labelText: 'Password',
                      prefixIcon: Icons.lock,
                      obscureText: true,
                      onLeftArrow: () => _xtreamUsernameFocusNode.requestFocus(),
                      onUpArrow: () => _xtreamServerFocusNode.requestFocus(),
                      onDownArrow: () => _loadXtreamButtonFocusNode.requestFocus(),
                      enableDirectionalNavigation: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.md),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Focus(
                    focusNode: _clearXtreamButtonFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                        _xtreamPasswordFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                        _loadXtreamButtonFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                        _clearPlaylistCacheButtonFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return TextButton(
                          onPressed: () {
                            _xtreamServerController.clear();
                            _xtreamUsernameController.clear();
                            _xtreamPasswordController.clear();
                          },
                          style: TextButton.styleFrom(
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 3)
                                : null,
                          ),
                          child: const Text('Clear'),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: AppSizes.sm),
                  Focus(
                    focusNode: _loadXtreamButtonFocusNode,
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        _clearXtreamButtonFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                        _xtreamPasswordFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                        _clearPlaylistCacheButtonFocusNode.requestFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        if (isFocused) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            final ctx = _loadXtreamButtonFocusNode.context;
                            if (ctx != null) {
                              Scrollable.ensureVisible(
                                ctx,
                                duration: const Duration(milliseconds: 150),
                                curve: Curves.easeOut,
                                alignment: 0.6,
                              );
                            }
                          });
                        }
                        return ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.primaryBlue,
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 3)
                                : null,
                          ),
                          onPressed: () async {
                            final server = _xtreamServerController.text.trim();
                            final username = _xtreamUsernameController.text.trim();
                            final password = _xtreamPasswordController.text.trim();

                            if (server.isEmpty ||
                                username.isEmpty ||
                                password.isEmpty) {
                              if (!mounted) return;
                              showAppSnackBar(
                                context,
                                const SnackBar(
                                  content: Text(
                                    'Please fill in all Xtream Codes fields',
                                  ),
                                ),
                              );
                              return;
                            }

                            if (mounted) {
                              showAppSnackBar(
                                context,
                                const SnackBar(
                                  content: Text('Loading Xtream Codes playlist...'),
                                ),
                              );
                            }

                            final url =
                                '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';

                            try {
                              final provider = Provider.of<ChannelProvider>(
                                context,
                                listen: false,
                              );
                              await provider.loadPlaylistFromUrl(url);

                              final prefs = await SharedPreferences.getInstance();
                              await prefs.setString('xtream_server', server);
                              await prefs.setString('xtream_username', username);
                              await prefs.setString('xtream_password', password);
                              await prefs.setString('playlist_type', 'xtream');

                              if (!mounted) return;
                              showAppSnackBar(
                                context,
                                SnackBar(
                                  content: Text(
                                    'Xtream playlist loaded! ${provider.channels.length} channels found.',
                                  ),
                                  backgroundColor: AppTheme.accentGreen,
                                ),
                              );
                            } catch (e) {
                              if (mounted) {
                                showAppSnackBar(
                                  context,
                                  SnackBar(
                                    content: Text(
                                      'Failed to load Xtream playlist: ${e.toString()}',
                                    ),
                                    backgroundColor: AppTheme.accentRed,
                                  ),
                                );
                              }
                            }
                          },
                          icon: const Icon(Icons.download),
                          label: const Text('Load Playlist'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
            
            // Clear Playlist Cache Button (shown for both M3U and Xtream)
            const SizedBox(height: AppSizes.md),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Focus(
                focusNode: _clearPlaylistCacheButtonFocusNode,
                onKeyEvent: (node, event) {
                  if (event is! KeyDownEvent) return KeyEventResult.ignored;
                  if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                    requestFirstSidebarFocus();
                    return KeyEventResult.handled;
                  }
                  if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                    if (_playlistInputMethod == 0) {
                      _loadM3uButtonFocusNode.requestFocus();
                    } else {
                      _loadXtreamButtonFocusNode.requestFocus();
                    }
                    return KeyEventResult.handled;
                  }
                  if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                    _customEpgUrlFocusNode.requestFocus();
                    return KeyEventResult.handled;
                  }
                  return KeyEventResult.ignored;
                },
                child: Builder(
                  builder: (context) {
                    final isFocused = Focus.of(context).hasFocus;
                    if (isFocused) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        final ctx = _clearPlaylistCacheButtonFocusNode.context;
                        if (ctx != null) {
                          Scrollable.ensureVisible(
                            ctx,
                            duration: const Duration(milliseconds: 150),
                            curve: Curves.easeOut,
                            alignment: 0.6,
                          );
                        }
                      });
                    }
                    return ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade700,
                        side: isFocused
                            ? const BorderSide(color: AppTheme.primaryBlue, width: 3)
                            : null,
                      ),
                      onPressed: () async {
                        final confirm = await showDialog<bool>(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Clear Playlist Cache?'),
                            content: const Text('Are you sure you want to clear the playlist cache? This will remove all locally cached playlist data.'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text('Clear', style: TextStyle(color: Colors.red)),
                              ),
                            ],
                          ),
                        );
                        if (confirm == true) {
                          Provider.of<ChannelProvider>(context, listen: false);
                          await clearPlaylistCache();
                          if (mounted) {
                            showAppSnackBar(
                              context,
                              const SnackBar(
                                content: Text('Playlist cache cleared'),
                                backgroundColor: AppTheme.accentGreen,
                              ),
                            );
                          }
                        }
                      },
                      icon: const Icon(Icons.delete_sweep),
                      label: const Text('Clear Playlist Cache'),
                    );
                  },
                ),
              ),
              ],
            ),
          ],
        ),
        _buildSavedPlaylistsSection(),
        _buildEPGSourceSection(),
      ],
    );
  }

  Widget _buildPlaylistStatusCard() {
    return Consumer<ChannelProvider>(
      builder: (context, provider, _) {
        final hasChannels = provider.channels.isNotEmpty;
        final statusText = hasChannels
            ? 'Loaded ${provider.channels.length} live channels'
            : provider.isLoading
            ? 'Loading playlist...'
            : 'No playlist loaded';
        final previewLine =
            provider.lastM3UContent?.split('\n').first ?? 'Unavailable';
        final subtitle = hasChannels
            ? 'Last response preview: $previewLine'
            : 'Add an M3U or Xtream login below';

        return _buildSectionCard(
          title: 'Playlist Status',
          subtitle: subtitle,
          children: [
            Row(
              children: [
                Icon(
                  hasChannels
                      ? Icons.check_circle
                      : Icons.warning_amber_outlined,
                  color: hasChannels
                      ? AppTheme.accentGreen
                      : AppTheme.accentOrange,
                ),
                const SizedBox(width: AppSizes.sm),
                Expanded(
                  child: Text(
                    statusText,
                    style: const TextStyle(
                      color: AppTheme.textPrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                if (hasChannels)
                  Focus(
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return TextButton(
                          style: TextButton.styleFrom(
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 2)
                                : null,
                          ),
                          onPressed: () {
                            showAppSnackBar(
                              context,
                              SnackBar(
                                content: Text(
                                  'First channel: ${provider.channels.first.name}',
                                ),
                              ),
                            );
                          },
                          child: const Text('Inspect'),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }

  void _focusLoadM3uButton() {
    if (!_loadM3uButtonFocusNode.canRequestFocus) return;
    FocusScope.of(context).requestFocus(_loadM3uButtonFocusNode);
    final buttonContext = _loadM3uButtonFocusNode.context;
    if (buttonContext != null) {
      Scrollable.ensureVisible(
        buttonContext,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
        alignment: 0.6,
      );
    }
  }

  Widget _buildTabButton({
    required String title,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
    FocusNode? focusNode,
    VoidCallback? onDownArrow,
  }) {
    // Determine which tab this is based on the focusNode
    final bool isM3uTab = focusNode == _m3uTabFocusNode;
    final bool isXtreamTab = focusNode == _xtreamTabFocusNode;
    
    return Focus(
      focusNode: focusNode,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        final key = event.logicalKey;
        
        // Left/right navigation between tabs
        if (key == LogicalKeyboardKey.arrowRight) {
          if (isM3uTab) {
            // From M3U tab, go to Xtream tab
            _xtreamTabFocusNode.requestFocus();
            return KeyEventResult.handled;
          }
          // From Xtream tab, stay (rightmost)
          return KeyEventResult.handled;
        } else if (key == LogicalKeyboardKey.arrowLeft) {
          if (isXtreamTab) {
            // From Xtream tab, go to M3U tab
            _m3uTabFocusNode.requestFocus();
            return KeyEventResult.handled;
          } else if (isM3uTab) {
            // From M3U tab, go to sidebar
            requestFirstSidebarFocus();
            return KeyEventResult.handled;
          }
          return KeyEventResult.handled;
        } else if (key == LogicalKeyboardKey.goBack) {
          // Back button always goes to sidebar
          requestFirstSidebarFocus();
          return KeyEventResult.handled;
        } else if (key == LogicalKeyboardKey.arrowDown) {
          // Move to first input field for the CURRENT tab (the one we're focused on)
          if (onDownArrow != null) {
            onDownArrow();
          } else if (isM3uTab) {
            _m3uUrlFocusNode.requestFocus();
          } else if (isXtreamTab) {
            _xtreamServerFocusNode.requestFocus();
          }
          return KeyEventResult.handled;
        } else if (key == LogicalKeyboardKey.arrowUp) {
          // Stay on tab (top of screen)
          return KeyEventResult.handled;
        } else if (key == LogicalKeyboardKey.enter || key == LogicalKeyboardKey.select) {
          onTap();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                // When focused, show white border; when selected but not focused, show blue background
                color: isFocused
                    ? AppTheme.primaryBlue.withAlpha((0.5 * 255).round())
                    : (isSelected
                        ? AppTheme.primaryBlue.withAlpha((0.3 * 255).round())
                        : Colors.transparent),
                borderRadius: BorderRadius.circular(AppSizes.radiusMd - 2),
                border: isFocused
                    ? Border.all(color: Colors.white, width: 2)
                    : null,
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: (isFocused || isSelected) ? Colors.white : AppTheme.textSecondary,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(
                      color: (isFocused || isSelected) ? Colors.white : AppTheme.textSecondary,
                      fontWeight: (isFocused || isSelected)
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: 13,
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

  // ignore: unused_element
  Widget _buildAISettingsSection() {
    return _buildSettingsSection(
      title: 'AI Settings',
      children: [
        // Whisper Live Captions
        Consumer<WhisperTranscriptionService>(
          builder: (context, transcriptionService, _) {
            try {
              final hasWhisperModel = transcriptionService.isWhisperLoaded;
              final isTranscribing = transcriptionService.isTranscribing;
              final transcripts = transcriptionService.transcriptions;
                final statusText = hasWhisperModel
                  ? (isTranscribing
                      ? 'Listening and transcribing locally in real-time.'
                    : 'Tap to convert audio to text entirely offline.')
                  : 'Download a Whisper GGML model in Speech Recognition to enable live captions.';

              return _buildSectionCard(
                title: 'Whisper Live Captions',
                subtitle:
                    'On-device speech-to-text and translation powered by Whisper.',
                children: [
                  SwitchListTile(
                    title: const Text('Enable live captions'),
                    subtitle: Text(statusText),
                    value: isTranscribing,
                    onChanged: hasWhisperModel
                        ? (value) async {
                            if (value) {
                              final started =
                                  await transcriptionService.startTranscription();
                              if (!started) {
                                if (!context.mounted) return;
                                showAppSnackBar(
                                  context,
                                  const SnackBar(
                                    content: Text(
                                      'Unable to start transcription. Confirm the audio-capture permission ("Start capturing audio") was granted and that a Whisper GGML model is downloaded.',
                                    ),
                                  ),
                                );
                              }
                            } else {
                              await transcriptionService.stopTranscription();
                            }
                          }
                        : null,
                  ),
                  if (!hasWhisperModel)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: _buildWhisperModelReminder(),
                    ),
                  if (hasWhisperModel) ...[
                    ListTile(
                      leading: const Icon(Icons.record_voice_over),
                      title: const Text('Source language'),
                      subtitle: Text(
                        _formatTranslateLanguage(
                          transcriptionService.sourceLanguage,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () => _showWhisperLanguageSelector(
                        context,
                        transcriptionService,
                        isTarget: false,
                      ),
                    ),
                    SwitchListTile(
                      title: const Text('Enable translation'),
                      subtitle: const Text(
                        'Translate captions to another language using offline models',
                      ),
                      value: transcriptionService.isTranslating,
                      onChanged: (value) async {
                        transcriptionService.setTranslationEnabled(value);
                        if (value) {
                          final success =
                              await transcriptionService.downloadTranslationModels();
                          if (!context.mounted) return;
                          showAppSnackBar(
                            context,
                            SnackBar(
                              content: Text(
                                success
                                    ? 'Translation packs ready for offline use.'
                                    : 'Translation pack download failed.',
                              ),
                            ),
                          );
                        }
                      },
                    ),
                    if (transcriptionService.isTranslating) ...[
                      ListTile(
                        leading: const Icon(Icons.translate),
                        title: const Text('Target language'),
                        subtitle: Text(
                          _formatTranslateLanguage(
                            transcriptionService.targetLanguage,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () => _showWhisperLanguageSelector(
                          context,
                          transcriptionService,
                          isTarget: true,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text('Speak translated text'),
                        subtitle: const Text(
                          'Text-to-speech reads translated captions aloud',
                        ),
                        value: transcriptionService.isTTSEnabled,
                        onChanged: transcriptionService.setTTSEnabled,
                      ),
                      if (transcriptionService.isDownloadingModels) ...[
                        const SizedBox(height: 12),
                        LinearProgressIndicator(
                            value: transcriptionService.downloadProgress > 0
                              ? transcriptionService.downloadProgress
                              : null,
                          backgroundColor: AppTheme.highlight,
                          color: AppTheme.primaryBlue,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Downloading offline translation packs... '
                          '${(transcriptionService.downloadProgress * 100).toStringAsFixed(0)}%',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ] else ...[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ElevatedButton.icon(
                            onPressed: () async {
                              final success = await transcriptionService
                                  .downloadTranslationModels();
                              if (!context.mounted) return;
                              showAppSnackBar(
                                context,
                                SnackBar(
                                  content: Text(
                                    success
                                        ? 'Translation packs downloaded'
                                        : 'Could not download translation packs',
                                  ),
                                ),
                              );
                            },
                            icon: const Icon(Icons.download),
                            label: const Text('Download translation packs'),
                          ),
                        ),
                      ],
                    ],
                  ],
                  if (transcripts.isNotEmpty) ...[
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.download),
                      title: const Text('Export transcriptions'),
                      subtitle: Text(
                        '${transcripts.length} entries available',
                      ),
                      trailing: ElevatedButton(
                        onPressed: () => _exportWhisperTranscriptions(
                          context,
                          transcriptionService,
                        ),
                        child: const Text('Export as SRT'),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.delete_outline),
                      title: const Text('Clear transcriptions'),
                      subtitle: const Text('Remove all saved captions'),
                      trailing: TextButton(
                        onPressed: () => _confirmClearWhisperTranscriptions(
                          context,
                          transcriptionService,
                        ),
                        child: const Text('Clear All'),
                      ),
                    ),
                  ],
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(AppSizes.md),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue.withAlpha(
                        (0.1 * 255).round(),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.offline_bolt,
                              size: 20,
                              color: AppTheme.primaryBlue,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'About Whisper Live Captions',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Captions run entirely on-device using Whisper GGML (whisper.cpp). Audio never leaves your device and translations rely on offline ML Kit models for privacy.',
                          style: TextStyle(fontSize: 12, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } catch (e, st) {
              debugPrint(
                'Settings: Whisper transcription builder error: $e\n$st',
              );
              return _buildSectionCard(
                title: 'Whisper Live Captions',
                children: [
                  const Text(
                    'Unavailable on this device',
                    style: TextStyle(color: AppTheme.textSecondary),
                  ),
                ],
              );
            }
          },
        ),

        // AI Video Enhancement
        Consumer<AIUpscalingService>(
          builder: (context, aiService, _) {
            try {
              return _buildSectionCard(
                title: 'AI Video Enhancement',
                subtitle: 'On-device upscaling for better quality (FREE)',
                children: [
                  SwitchListTile(
                    title: const Text('Enable AI Upscaling'),
                    subtitle: Text(
                      aiService.isModelLoaded
                          ? 'Upscale video to 2x resolution using AI'
                          : 'Model not loaded - See AI_MODEL_SETUP_GUIDE.md',
                    ),
                    value: _aiUpscalingEnabled && aiService.isModelLoaded,
                    onChanged: aiService.isModelLoaded
                        ? (value) async {
                            setState(() {
                              _aiUpscalingEnabled = value;
                            });
                            final prefs = await SharedPreferences.getInstance();
                            await prefs.setBool('ai_upscaling', value);
                            aiService.setEnabled(value);
                            final localContext = context;
                            if (!localContext.mounted) return;
                            showAppSnackBar(
                              localContext,
                              SnackBar(
                                content: Text(
                                  value
                                      ? 'AI Upscaling enabled'
                                      : 'AI Upscaling disabled',
                                ),
                              ),
                            );
                          }
                        : null,
                  ),
                  if (_aiUpscalingEnabled && aiService.isModelLoaded) ...[
                    _buildDropdown(
                      'Quality Preset',
                      _aiQuality,
                      ['Fast', 'Balanced', 'Quality'],
                      (value) async {
                        if (value == null) return;
                        setState(() {
                          _aiQuality = value;
                        });
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setString('ai_quality', value);
                        aiService.setQualityPreset(value);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.md),
                      child: Container(
                        padding: const EdgeInsets.all(AppSizes.md),
                        decoration: BoxDecoration(
                          color: AppTheme.highlight,
                          borderRadius: BorderRadius.circular(
                            AppSizes.radiusMd,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.info_outline, size: 16),
                                SizedBox(width: 8),
                                Text(
                                  'AI Enhancement Info',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '• GPU Acceleration: ${aiService.isGPUAvailable ? "✓ Available" : "✗ CPU Only"}',
                            ),
                            const Text('• Upscales video to 2x resolution'),
                            Text('• Quality: $_aiQuality'),
                            if (aiService.isGPUAvailable)
                              Text(
                                '• Est. Performance: ${_getAIPerformanceText(_aiQuality, true)}',
                              ),
                            if (!aiService.isGPUAvailable)
                              Text(
                                '• Est. Performance: ${_getAIPerformanceText(_aiQuality, false)}',
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  if (!aiService.isModelLoaded)
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.md),
                      child: _buildAIModelDownloadCard(aiService),
                    ),
                ],
              );
            } catch (e, st) {
              debugPrint('Settings: AIUpscaling builder error: $e\n$st');
              return _buildSectionCard(
                title: 'AI Video Enhancement',
                children: [
                  const Text(
                    'Unavailable on this device',
                    style: TextStyle(color: AppTheme.textSecondary),
                  ),
                ],
              );
            }
          },
        ),

        _buildSectionCard(
          title: 'Playback Options',
          children: [
            _buildSwitchTile('Auto-play Next Episode', _autoPlayNextEpisode),
            _buildSwitchTile(
              'Remember Playback Position',
              _rememberPlaybackPosition,
            ),
            _buildSwitchTile('Skip Intro (if available)', _skipIntro),
            _buildDropdown('Video Quality', 'Auto', [
              'Auto',
              '4K',
              '1080p',
              '720p',
              '480p',
            ], (value) {}),
          ],
        ),

        _buildSectionCard(
          title: 'Buffer Settings',
          children: [
            Text('Video Buffer Size: ${_videoBufferSize.round()}%'),
            Focus(
              onKeyEvent: (node, event) {
                if (event is! KeyDownEvent) return KeyEventResult.ignored;
                if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                  if (_videoBufferSize > 0) {
                    setState(() => _videoBufferSize = (_videoBufferSize - 5).clamp(0, 100));
                    return KeyEventResult.handled;
                  }
                  requestFirstSidebarFocus();
                  return KeyEventResult.handled;
                }
                if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                  if (_videoBufferSize < 100) {
                    setState(() => _videoBufferSize = (_videoBufferSize + 5).clamp(0, 100));
                    return KeyEventResult.handled;
                  }
                }
                return KeyEventResult.ignored;
              },
              child: Builder(
                builder: (context) {
                  final isFocused = Focus.of(context).hasFocus;
                  return Container(
                    decoration: isFocused
                        ? BoxDecoration(
                            border: Border.all(color: AppTheme.primaryBlue, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          )
                        : null,
                    child: Slider(
                      value: _videoBufferSize,
                      min: 0,
                      max: 100,
                      divisions: 20,
                      label: '${_videoBufferSize.round()}%',
                      onChanged: (value) {
                        setState(() {
                          _videoBufferSize = value;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            Text(
              'Higher buffer reduces stuttering but increases memory usage',
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: AppTheme.textTertiary),
            ),
          ],
        ),

        // Saved Playlists Section
        _buildSavedPlaylistsSection(),

        // EPG Source Section
        _buildEPGSourceSection(),
      ],
    );
  }

  Widget _buildAISettings() {
    return _buildSettingsSection(
      title: 'AI Features',
      children: [
        // OpenSubtitles Integration
        Consumer<OpenSubtitlesService>(
          builder: (context, subtitleService, child) {
            return _buildSectionCard(
              title: 'OpenSubtitles Integration',
              subtitle: 'FREE API - Automatic subtitle downloading',
              children: [
                Focus(
                  onKeyEvent: (node, event) {
                    if (event is! KeyDownEvent) return KeyEventResult.ignored;
                    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                      requestFirstSidebarFocus();
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: Builder(
                    builder: (context) {
                      final isFocused = Focus.of(context).hasFocus;
                      return Container(
                        decoration: isFocused
                            ? BoxDecoration(
                                border: Border.all(color: AppTheme.primaryBlue, width: 2),
                                borderRadius: BorderRadius.circular(8),
                              )
                            : null,
                        child: SwitchListTile(
                          title: const Text('Enable OpenSubtitles'),
                          subtitle: const Text('Automatically download subtitles'),
                          value: _openSubtitlesEnabled,
                          onChanged: (value) {
                            setState(() {
                              _openSubtitlesEnabled = value;
                            });
                            subtitleService.setEnabled(value);
                          },
                        ),
                      );
                    },
                  ),
                ),
                if (_openSubtitlesEnabled) ...[
                  const SizedBox(height: 16),
                  _buildTVTextField(
                    controller: _openSubtitlesUsernameController,
                    focusNode: _openSubtitlesUsernameFocusNode,
                    isEditable: _openSubtitlesUsernameEditable,
                    onEditableChanged: (value) {
                      setState(() => _openSubtitlesUsernameEditable = value);
                      if (!value) {
                        subtitleService.setCredentials(
                          _openSubtitlesUsernameController.text,
                          _openSubtitlesPasswordController.text,
                        );
                      }
                    },
                    labelText: 'Username',
                    helperText: 'Create free account at opensubtitles.com',
                    prefixIcon: Icons.person,
                    onLeftArrow: requestFirstSidebarFocus,
                    onUpArrow: () => FocusScope.of(context).previousFocus(),
                    onDownArrow: () => _openSubtitlesPasswordFocusNode.requestFocus(),
                    enableDirectionalNavigation: true,
                  ),
                  const SizedBox(height: 16),
                  _buildTVTextField(
                    controller: _openSubtitlesPasswordController,
                    focusNode: _openSubtitlesPasswordFocusNode,
                    isEditable: _openSubtitlesPasswordEditable,
                    onEditableChanged: (value) {
                      setState(() => _openSubtitlesPasswordEditable = value);
                      if (!value) {
                        subtitleService.setCredentials(
                          _openSubtitlesUsernameController.text,
                          _openSubtitlesPasswordController.text,
                        );
                      }
                    },
                    labelText: 'Password',
                    prefixIcon: Icons.lock,
                    obscureText: true,
                    onLeftArrow: requestFirstSidebarFocus,
                    onUpArrow: () => _openSubtitlesUsernameFocusNode.requestFocus(),
                    onDownArrow: () => FocusScope.of(context).nextFocus(),
                    enableDirectionalNavigation: true,
                  ),
                  const SizedBox(height: 16),
                  Focus(
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return Container(
                          decoration: isFocused
                              ? BoxDecoration(
                                  border: Border.all(color: AppTheme.primaryBlue, width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                )
                              : null,
                          child: SwitchListTile(
                            title: const Text('Auto-download subtitles'),
                            subtitle: const Text(
                              'Download subtitles automatically when playing',
                            ),
                            value: _autoDownloadSubtitles,
                            onChanged: (value) {
                              setState(() {
                                _autoDownloadSubtitles = value;
                              });
                              subtitleService.setAutoDownload(value);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  Focus(
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 2)
                                : null,
                          ),
                          onPressed: () async {
                            final localContext = context;
                            final success = await subtitleService.authenticate();
                            if (!localContext.mounted) return;
                            showAppSnackBar(
                              localContext,
                              SnackBar(
                                content: Text(
                                  success
                                      ? 'Connected successfully!'
                                      : 'Connection failed',
                                ),
                                backgroundColor: success
                                    ? Colors.green
                                    : AppTheme.accentRed,
                              ),
                            );
                          },
                          icon: const Icon(Icons.check_circle),
                          label: const Text('Test Connection'),
                        );
                      },
                    ),
                  ),
                ],
              ],
            );
          },
        ),

        // Real-Debrid Integration
        Consumer<RealDebridService>(
          builder: (context, rdService, child) {
            return _buildSectionCard(
              title: 'Real-Debrid Integration',
              subtitle: 'FREE API - Enhanced streaming for VOD and Catch-up',
              children: [
                Focus(
                  onKeyEvent: (node, event) {
                    if (event is! KeyDownEvent) return KeyEventResult.ignored;
                    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                      requestFirstSidebarFocus();
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: Builder(
                    builder: (context) {
                      final isFocused = Focus.of(context).hasFocus;
                      return Container(
                        decoration: isFocused
                            ? BoxDecoration(
                                border: Border.all(color: AppTheme.primaryBlue, width: 2),
                                borderRadius: BorderRadius.circular(8),
                              )
                            : null,
                        child: SwitchListTile(
                          title: const Text('Enable Real-Debrid'),
                          subtitle: const Text(
                            'Use your Real-Debrid account for premium links',
                          ),
                          value: _realDebridEnabled,
                          onChanged: (value) {
                            setState(() {
                              _realDebridEnabled = value;
                            });
                            rdService.setEnabled(value);
                          },
                        ),
                      );
                    },
                  ),
                ),
                if (_realDebridEnabled) ...[
                  const SizedBox(height: 16),
                  _buildTVTextField(
                    controller: _realDebridApiKeyController,
                    focusNode: _realDebridApiKeyFocusNode,
                    isEditable: _realDebridApiKeyEditable,
                    onEditableChanged: (value) {
                      setState(() => _realDebridApiKeyEditable = value);
                      if (!value) {
                        rdService.setApiKey(_realDebridApiKeyController.text);
                      }
                    },
                    labelText: 'API Key',
                    hintText: 'Enter your Real-Debrid API key',
                    helperText: 'Get API key from real-debrid.com/apitoken',
                    prefixIcon: Icons.vpn_key,
                    onLeftArrow: requestFirstSidebarFocus,
                    onUpArrow: () => FocusScope.of(context).previousFocus(),
                    onDownArrow: () => FocusScope.of(context).nextFocus(),
                    enableDirectionalNavigation: true,
                  ),
                  const SizedBox(height: 16),
                  Focus(
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return Container(
                          decoration: isFocused
                              ? BoxDecoration(
                                  border: Border.all(color: AppTheme.primaryBlue, width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                )
                              : null,
                          child: CheckboxListTile(
                            title: const Text('Use for Catch-up TV'),
                            value: _realDebridForCatchup,
                            onChanged: (value) {
                              setState(() {
                                _realDebridForCatchup = value ?? true;
                              });
                              rdService.setEnableForCatchup(value ?? true);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Focus(
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return Container(
                          decoration: isFocused
                              ? BoxDecoration(
                                  border: Border.all(color: AppTheme.primaryBlue, width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                )
                              : null,
                          child: CheckboxListTile(
                            title: const Text('Use for VOD/Movies'),
                            value: _realDebridForVOD,
                            onChanged: (value) {
                              setState(() {
                                _realDebridForVOD = value ?? true;
                              });
                              rdService.setEnableForVOD(value ?? true);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  Focus(
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            side: isFocused
                                ? const BorderSide(color: AppTheme.primaryBlue, width: 2)
                                : null,
                          ),
                          onPressed: () async {
                            final localContext = context;
                            final success = await rdService.testConnection();
                            if (!localContext.mounted) return;
                            showAppSnackBar(
                              localContext,
                              SnackBar(
                                content: Text(
                                  success
                                      ? 'Connected! Premium until ${rdService.premiumExpiryDate}'
                                      : 'Connection failed',
                                ),
                                backgroundColor: success
                                    ? Colors.green
                                    : AppTheme.accentRed,
                              ),
                            );
                          },
                          icon: const Icon(Icons.check_circle),
                          label: const Text('Test Connection'),
                        );
                      },
                    ),
                  ),
                  if (rdService.isAuthenticated) ...[
                    const SizedBox(height: 16),
                    ListTile(
                      leading: const Icon(
                        Icons.account_circle,
                        color: AppTheme.primaryBlue,
                      ),
                      title: Text(rdService.username ?? 'Premium Account'),
                      subtitle: Text(
                        'Premium until: ${rdService.premiumExpiryDate}',
                      ),
                    ),
                  ],
                ],
              ],
            );
          },
        ),

        // AI Upscaling
        Consumer<AIUpscalingService>(
          builder: (context, aiService, child) {
            try {
              return _buildSectionCard(
                title: 'AI Video Upscaling',
                subtitle: 'FREE - On-device AI upscaling',
                children: [
                  Focus(
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                        requestFirstSidebarFocus();
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return Container(
                          decoration: isFocused
                              ? BoxDecoration(
                                  border: Border.all(color: AppTheme.primaryBlue, width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                )
                              : null,
                          child: SwitchListTile(
                            title: const Text('Enable AI Upscaling'),
                            subtitle: const Text(
                              'Enhance video quality with AI (2x upscaling)',
                            ),
                            value: _aiUpscalingEnabled,
                            onChanged: aiService.isModelLoaded
                                ? (value) {
                                    setState(() {
                                      _aiUpscalingEnabled = value;
                                    });
                                    aiService.setEnabled(value);
                                  }
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                  if (!aiService.isModelLoaded) ...[
                    _buildAIModelDownloadCard(aiService),
                  ],
                  if (_aiUpscalingEnabled) ...[
                    const SizedBox(height: 16),
                    const Text(
                      'Quality Preset',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 8),
                    SegmentedButton<String>(
                      segments: const [
                        ButtonSegment(value: 'Fast', label: Text('Fast')),
                        ButtonSegment(
                          value: 'Balanced',
                          label: Text('Balanced'),
                        ),
                        ButtonSegment(value: 'Quality', label: Text('Quality')),
                      ],
                      selected: {_aiQuality},
                      onSelectionChanged: (Set<String> selection) {
                        setState(() {
                          _aiQuality = selection.first;
                        });
                        aiService.setQuality(selection.first);
                      },
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      leading: const Icon(
                        Icons.info_outline,
                        color: AppTheme.primaryBlue,
                      ),
                      title: Text(
                        'GPU Available: ${aiService.gpuAvailable ? "Yes" : "No"}',
                      ),
                      subtitle: const Text(
                        'GPU acceleration provides better performance',
                      ),
                    ),
                  ],
                ],
              );
            } catch (e, st) {
              debugPrint(
                'Settings: AIUpscaling (secondary) builder error: $e\n$st',
              );
              return _buildSectionCard(
                title: 'AI Video Upscaling',
                children: [
                  const Text(
                    'Unavailable on this device',
                    style: TextStyle(color: AppTheme.textSecondary),
                  ),
                ],
              );
            }
          },
        ),

        // Whisper Speech Models
        Consumer2<WhisperSpeechService, AIModelManager>(
          builder: (context, whisperService, modelManager, _) {
            try {
              final speechModels = whisperService.speechModels;
              if (speechModels.isEmpty) {
                return _buildSectionCard(
                  title: '🎙️ Speech Recognition (Whisper GGML)',
                  children: const [
                    Text(
                      'No Whisper GGML models configured. Please check AI model settings.',
                      style: TextStyle(color: AppTheme.textSecondary),
                    ),
                  ],
                );
              }

              return _buildSectionCard(
                title: '🎙️ Speech Recognition (Whisper GGML)',
                subtitle:
                  'Choose a Whisper GGML model (tiny, base, small) for voice search and live transcription. Everything runs 100% on-device.',
                children: [
                  _buildSpeechModelSummary(whisperService, modelManager),
                  const SizedBox(height: 16),
                  ...speechModels.map(
                    (model) => _buildSpeechModelTile(
                      whisperService: whisperService,
                      modelManager: modelManager,
                      model: model,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'All speech features share the active Whisper GGML download. Downloads stay on your device for privacy and offline reliability.',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              );
            } catch (e, st) {
              debugPrint('Settings: Whisper builder error: $e\n$st');
              return _buildSectionCard(
                title: 'On-Device Transcription (Whisper)',
                children: [
                  const Text(
                    'Unavailable on this device',
                    style: TextStyle(color: AppTheme.textSecondary),
                  ),
                ],
              );
            }
          },
        ),

        // AI Model Downloads
        Consumer<AIModelManager>(
          builder: (context, modelManager, _) {
            return _buildSectionCard(
              title: 'AI Model Downloads',
              subtitle: 'Download and manage on-device AI models',
              children: [
                FutureBuilder<List<AIModel>>(
                  future: Future.value(modelManager.getDownloadedModels()),
                  builder: (context, snapshot) {
                    final downloadedCount = snapshot.data?.length ?? 0;
                    final totalCount = AIModel.allModels.length;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.download,
                              color: AppTheme.primaryBlue,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '$downloadedCount of $totalCount models downloaded',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  FutureBuilder<int>(
                                    future: modelManager
                                        .getTotalDownloadedSize(),
                                    builder: (context, sizeSnapshot) {
                                      if (sizeSnapshot.hasData &&
                                          sizeSnapshot.data != null &&
                                          sizeSnapshot.data! > 0) {
                                        final sizeMB =
                                            (sizeSnapshot.data! / (1024 * 1024))
                                                .toStringAsFixed(1);
                                        return Text(
                                          'Total size: $sizeMB MB',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: AppTheme.textSecondary,
                                          ),
                                        );
                                      }
                                      return const SizedBox.shrink();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Download AI models for:\n'
                          '• Video upscaling (ESRGAN, FSRCNN, SRCNN)\n'
                          '• Speech recognition (Whisper GGML)\n'
                          '• All models work offline after download',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppTheme.textSecondary,
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              context.go('/ai-models');
                            },
                            icon: const Icon(Icons.download_for_offline),
                            label: const Text('Manage AI Models'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.primaryBlue,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildRecordingsSettings() {
    // Recordings-only tab
    return FutureBuilder<String?>(
      future: SharedPreferences.getInstance().then(
        (prefs) => prefs.getString('recording_storage_path'),
      ),
      builder: (context, snapshot) {
        final recordingPath = snapshot.data ?? '';

        return _buildSettingsSection(
          title: 'Recordings',
          children: [
            _buildSectionCard(
              title: 'Recording Storage',
              subtitle: 'Configure where recordings are saved',
              children: [
                // Warning message about storage
                Container(
                  padding: const EdgeInsets.all(AppSizes.md),
                  decoration: BoxDecoration(
                    color: AppTheme.accentOrange.withAlpha((0.1 * 255).round()),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppTheme.accentOrange.withAlpha(
                        (0.3 * 255).round(),
                      ),
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.warning_amber,
                        color: AppTheme.accentOrange,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Android TV devices have limited internal storage. We strongly recommend using an external USB drive or network storage for recordings.',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppTheme.textSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSizes.md),
                Text(
                  'Storage Location',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: AppSizes.sm),
                Row(
                  children: [
                    Expanded(
                      child: Focus(
                        onKeyEvent: (node, event) {
                          if (event is! KeyDownEvent) return KeyEventResult.ignored;
                          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                            requestFirstSidebarFocus();
                            return KeyEventResult.handled;
                          }
                          return KeyEventResult.ignored;
                        },
                        child: Builder(
                          builder: (context) {
                            final isFocused = Focus.of(context).hasFocus;
                            return Container(
                              decoration: isFocused
                                  ? BoxDecoration(
                                      border: Border.all(color: AppTheme.primaryBlue, width: 2),
                                      borderRadius: BorderRadius.circular(8),
                                    )
                                  : null,
                              child: TextField(
                                controller: TextEditingController(text: recordingPath),
                                autofocus: false,
                                readOnly: true,
                                decoration: const InputDecoration(
                                  hintText: 'No storage location selected',
                                  prefixIcon: Icon(Icons.folder_outlined),
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: AppTheme.cardBackground,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSizes.sm),
                    Focus(
                      onKeyEvent: (node, event) {
                        if (event is! KeyDownEvent) return KeyEventResult.ignored;
                        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                          requestFirstSidebarFocus();
                          return KeyEventResult.handled;
                        }
                        return KeyEventResult.ignored;
                      },
                      child: Builder(
                        builder: (context) {
                          final isFocused = Focus.of(context).hasFocus;
                          return ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              side: isFocused
                                  ? const BorderSide(color: AppTheme.primaryBlue, width: 2)
                                  : null,
                            ),
                            onPressed: () async {
                              final localContext = context;
                              try {
                                final result = await FilePicker.platform
                                    .getDirectoryPath();
                                if (result != null) {
                                  final prefs = await SharedPreferences.getInstance();
                                  await prefs.setString(
                                    'recording_storage_path',
                                    result,
                                  );
                                  setState(() {});
                                  if (!localContext.mounted) return;
                                  showAppSnackBar(
                                    localContext,
                                    const SnackBar(
                                      content: Text('Recording location updated'),
                                      backgroundColor: AppTheme.accentGreen,
                                    ),
                                  );
                                }
                              } catch (e) {
                                if (!localContext.mounted) return;
                                showAppSnackBar(
                                  localContext,
                                  SnackBar(
                                    content: Text('Failed to select folder: $e'),
                                    backgroundColor: AppTheme.accentRed,
                                  ),
                                );
                              }
                            },
                            icon: const Icon(Icons.create_new_folder),
                            label: const Text('Browse'),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.sm),
                const Text(
                  'Suggested locations:',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                const Text(
                  '• /storage/[USB-ID]/ (External USB drive)\n'
                  '• /mnt/media_rw/[USB-ID]/ (Some Android TV)\n'
                  '• /sdcard/Recordings/ (Internal - not recommended)\n'
                  '• smb://your-nas/recordings/ (Network storage)',
                  style: TextStyle(fontSize: 11, color: AppTheme.textSecondary),
                ),
                if (recordingPath.isNotEmpty) ...[
                  const SizedBox(height: AppSizes.md),
                  FutureBuilder<String>(
                    future: _getStorageInfo(recordingPath),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data ?? '',
                          style: const TextStyle(
                            fontSize: 11,
                            color: AppTheme.primaryBlue,
                          ),
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ],
              ],
            ),
            _buildSectionCard(
              title: 'Display Options',
              children: [
                _buildDropdown('Time Zone', 'UTC-5 (EST)', [
                  'UTC-8 (PST)',
                  'UTC-5 (EST)',
                  'UTC+0 (GMT)',
                  'UTC+1 (CET)',
                ], (value) {}),
                _buildSwitchTile('Show Channel Logos', _showChannelLogos),
                _buildSwitchTile('Show Program Images', _showProgramImages),
              ],
            ),
            _buildSectionCard(
              title: 'Actions',
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    final localContext = context;
                    if (localContext.mounted) {
                      showAppSnackBar(
                        localContext,
                        const SnackBar(content: Text('Updating EPG data...')),
                      );
                    }
                    // TODO: Implement EPG update functionality
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Update EPG Now'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildSettingsSection({
    required String title,
    required List<Widget> children,
  }) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSizes.lg), // Reduced from xl
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ), // Changed from headlineMedium
          ),
          const SizedBox(height: AppSizes.md), // Reduced from lg
          ...children,
        ],
      ),
    );
  }

  Widget _buildSavedPlaylistsSection() {
    return FutureBuilder<Map<String, String?>>(
      future: () async {
        final prefs = await SharedPreferences.getInstance();
        return {
          'type': prefs.getString('playlist_type'),
          'name': prefs.getString('playlist_name'),
          'm3u_url': prefs.getString('m3u_url'),
          'xtream_server': prefs.getString('xtream_server'),
          'xtream_username': prefs.getString('xtream_username'),
        };
      }(),
      builder: (context, snapshot) {
        if (!snapshot.hasData || snapshot.data == null) {
          return const Card(
            margin: EdgeInsets.only(bottom: AppSizes.lg),
            child: Padding(
              padding: EdgeInsets.all(AppSizes.lg),
              child: Text('Loading saved playlists...'),
            ),
          );
        }

        final data = snapshot.data!;
        final hasPlaylist = data['type'] != null;
        final playlistName = data['name'] ?? 'My Playlist';

        return Card(
          margin: const EdgeInsets.only(bottom: AppSizes.lg),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.playlist_play, color: AppTheme.primaryBlue),
                    const SizedBox(width: AppSizes.sm),
                    Text(
                      'Saved Playlists',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.sm),
                Text(
                  'Manage your saved playlist credentials',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(height: AppSizes.lg),

                if (!hasPlaylist)
                  Container(
                    padding: const EdgeInsets.all(AppSizes.md),
                    decoration: BoxDecoration(
                      color: AppTheme.cardBackground,
                      borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                      border: Border.all(color: AppTheme.divider),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.info_outline, color: AppTheme.textSecondary),
                        SizedBox(width: AppSizes.md),
                        Expanded(
                          child: Text(
                            'No saved playlist found. Use the fields above to add a playlist.',
                            style: TextStyle(color: AppTheme.textSecondary),
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  Focus(
                    onKeyEvent: (node, event) {
                      if (event is! KeyDownEvent) return KeyEventResult.ignored;
                      if (event.logicalKey == LogicalKeyboardKey.select ||
                          event.logicalKey == LogicalKeyboardKey.enter) {
                        context.go('/playlist-editor');
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: GestureDetector(
                      onTap: () => context.go('/playlist-editor'),
                      child: Container(
                        padding: const EdgeInsets.all(AppSizes.md),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryBlue.withAlpha(
                            (0.1 * 255).round(),
                          ),
                          borderRadius: BorderRadius.circular(
                            AppSizes.radiusMd,
                          ),
                          border: Border.all(
                            color: AppTheme.primaryBlue.withAlpha(
                              (0.3 * 255).round(),
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.playlist_play,
                                  color: AppTheme.primaryBlue,
                                  size: 24,
                                ),
                                const SizedBox(width: AppSizes.sm),
                                Expanded(
                                  child: Text(
                                    playlistName,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppTheme.primaryBlue,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    data['type'] == 'm3u' ? 'M3U' : 'Xtream',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: AppSizes.sm),
                                const Icon(
                                  Icons.chevron_right,
                                  color: AppTheme.textSecondary,
                                ),
                              ],
                            ),
                            const SizedBox(height: AppSizes.md),
                            if (data['type'] == 'm3u') ...[
                              _buildInfoRow('URL', data['m3u_url'] ?? 'N/A'),
                            ] else if (data['type'] == 'xtream') ...[
                              _buildInfoRow(
                                'Server',
                                data['xtream_server'] ?? 'N/A',
                              ),
                              const SizedBox(height: AppSizes.xs),
                              _buildInfoRow(
                                'Username',
                                data['xtream_username'] ?? 'N/A',
                              ),
                            ],
                            const SizedBox(height: AppSizes.md),
                            Container(
                              padding: const EdgeInsets.all(AppSizes.sm),
                              decoration: BoxDecoration(
                                color: AppTheme.cardBackground,
                                borderRadius: BorderRadius.circular(
                                  AppSizes.radiusSm,
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 14,
                                    color: AppTheme.textSecondary,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    'Tap to edit playlist settings',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: AppTheme.textSecondary,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          child: Text(
            label,
            style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              color: AppTheme.textPrimary,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionCard({
    required String title,
    String? subtitle,
    required List<Widget> children,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppSizes.md), // Reduced from lg
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.md), // Reduced from lg
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                // Changed from titleLarge
                fontWeight: FontWeight.bold,
              ),
            ),
            if (subtitle != null) ...[
              const SizedBox(height: 3), // Reduced spacing
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppTheme.textSecondary,
                  fontSize: 11, // Smaller subtitle
                ),
              ),
            ],
            const SizedBox(height: AppSizes.sm), // Reduced from md
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile(String title, bool value, {String? subtitle}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.sm),
      child: Focus(
        onKeyEvent: (node, event) {
          if (event is! KeyDownEvent) return KeyEventResult.ignored;
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            requestFirstSidebarFocus();
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            if (isFocused) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Scrollable.ensureVisible(
                  context,
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeOut,
                  alignment: 0.6,
                );
              });
            }
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: isFocused
                    ? Border.all(color: AppTheme.primaryBlue, width: 3)
                    : null,
              ),
              child: TVFocusable(
                borderRadius: BorderRadius.circular(12),
                child: SwitchListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(title),
                  subtitle: subtitle != null
                      ? Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppTheme.textSecondary,
                          ),
                        )
                      : null,
                  value: value,
                  onChanged: (newValue) {
                    _handleSwitchTileChange(title, newValue);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _handleSwitchTileChange(String title, bool newValue) async {
    bool handled = true;

    setState(() {
      switch (title) {
        case 'Hardware Acceleration':
          _hardwareAcceleration = newValue;
          break;
        case 'Hardware Decoding':
          _hardwareDecoding = newValue;
          break;
        case 'Hardware Post-Processing':
          _hardwarePostProcessing = newValue;
          break;
        case 'Auto Frame Rate Matching':
          _autoFrameRate = newValue;
          break;
        case 'Auto-play Next Episode':
          _autoPlayNextEpisode = newValue;
          break;
        case 'Remember Playback Position':
          _rememberPlaybackPosition = newValue;
          break;
        case 'Skip Intro (if available)':
          _skipIntro = newValue;
          break;
        case 'Show Channel Logos':
          _showChannelLogos = newValue;
          break;
        case 'Show Program Images':
          _showProgramImages = newValue;
          break;
        default:
          handled = false;
          break;
      }
    });

    if (!handled) return;

    final prefs = await SharedPreferences.getInstance();
    switch (title) {
      case 'Hardware Acceleration':
        await prefs.setBool('hardware_acceleration', newValue);
        break;
      case 'Hardware Decoding':
        await prefs.setBool('hardware_decoding', newValue);
        break;
      case 'Hardware Post-Processing':
        await prefs.setBool('hardware_postprocessing', newValue);
        break;
      case 'Auto Frame Rate Matching':
        await prefs.setBool('auto_frame_rate', newValue);
        break;
      case 'Auto-play Next Episode':
        await prefs.setBool('auto_play_next', newValue);
        break;
      case 'Remember Playback Position':
        await prefs.setBool('remember_playback_position', newValue);
        break;
      case 'Skip Intro (if available)':
        await prefs.setBool('skip_intro_available', newValue);
        break;
      case 'Show Channel Logos':
        await prefs.setBool('show_channel_logos', newValue);
        break;
      case 'Show Program Images':
        await prefs.setBool('show_program_images', newValue);
        break;
      default:
        break;
    }
  }

  Widget _buildAudioSwitchTile(String title, bool value, {String? subtitle}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.sm),
      child: Focus(
        onKeyEvent: (node, event) {
          if (event is! KeyDownEvent) return KeyEventResult.ignored;
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            requestFirstSidebarFocus();
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            if (isFocused) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Scrollable.ensureVisible(
                  context,
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeOut,
                  alignment: 0.6,
                );
              });
            }
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: isFocused
                    ? Border.all(color: AppTheme.primaryBlue, width: 3)
                    : null,
              ),
              child: TVFocusable(
                borderRadius: BorderRadius.circular(12),
                child: SwitchListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(title),
                  subtitle: subtitle != null
                      ? Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppTheme.textSecondary,
                          ),
                        )
                      : null,
                  value: value,
                  onChanged: (newValue) async {
                    setState(() {
                      if (title == 'Audio Passthrough') {
                        _audioPassthrough = newValue;
                      } else if (title == 'Audio Boost') {
                        _audioBoost = newValue;
                      } else if (title == 'Normalize Audio') {
                        _normalizeAudio = newValue;
                      }
                    });

                    final prefs = await SharedPreferences.getInstance();
                    if (title == 'Audio Passthrough') {
                      await prefs.setBool('audio_passthrough', newValue);
                    } else if (title == 'Audio Boost') {
                      await prefs.setBool('audio_boost', newValue);
                    } else if (title == 'Normalize Audio') {
                      await prefs.setBool('normalize_audio', newValue);
                    }
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildDropdown(
    String label,
    String value,
    List<String> items,
    Function(String?) onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.md),
      child: Focus(
        onKeyEvent: (node, event) {
          if (event is! KeyDownEvent) return KeyEventResult.ignored;
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            requestFirstSidebarFocus();
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            if (isFocused) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Scrollable.ensureVisible(
                  context,
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeOut,
                  alignment: 0.6,
                );
              });
            }
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: isFocused
                    ? Border.all(color: AppTheme.primaryBlue, width: 3)
                    : null,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label, style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: AppSizes.sm),
                  TVFocusable(
                    borderRadius: BorderRadius.circular(10),
                    enableScale: false,
                    child: DropdownButtonFormField<String>(
                      initialValue: value,
                      dropdownColor: AppTheme.darkBackgroundOpacity(0.95),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppTheme.highlight,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                          borderSide: const BorderSide(
                            color: AppTheme.primaryBlue,
                            width: 2,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      items: items.map((item) {
                        return DropdownMenuItem(value: item, child: Text(item));
                      }).toList(),
                      onChanged: onChanged,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // TV-friendly TextField widget with consistent blue focus border and keyboard support
  Widget _buildTVTextField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required bool isEditable,
    required Function(bool) onEditableChanged,
    String? hintText,
    String? helperText,
    String? labelText,
    IconData? prefixIcon,
    TextInputType? keyboardType,
    bool obscureText = false,
    int? maxLines = 1,
    VoidCallback? onLeftArrow,
    VoidCallback? onDownArrow,
    VoidCallback? onUpArrow,
    VoidCallback? onRightArrow,
    bool enableDirectionalNavigation = false,
  }) {
    final bool isDirectionalNavigation = enableDirectionalNavigation ||
        MediaQuery.of(context).navigationMode == NavigationMode.directional;

    if (!isDirectionalNavigation) {
      if (!isEditable) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            onEditableChanged(true);
          }
        });
      }

      return TextField(
        controller: controller,
        focusNode: focusNode,
        autofocus: false,
        readOnly: false,
        obscureText: obscureText,
        keyboardType: keyboardType,
        maxLines: obscureText ? 1 : maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          helperText: helperText,
          labelText: labelText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          filled: true,
          fillColor: AppTheme.highlight,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppTheme.primaryBlue, width: 3),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
      );
    }

    void listener() {
      if (!focusNode.hasFocus) {
        onEditableChanged(false);
      }
    }

    final previousListener = _focusNodeListeners[focusNode];
    if (previousListener != null) {
      focusNode.removeListener(previousListener);
    }
    focusNode.addListener(listener);
    _focusNodeListeners[focusNode] = listener;

    final shortcutMap = <ShortcutActivator, Intent>{
      LogicalKeySet(LogicalKeyboardKey.select): const _ToggleEditIntent(),
      LogicalKeySet(LogicalKeyboardKey.enter): const _ToggleEditIntent(),
      LogicalKeySet(LogicalKeyboardKey.escape): const _ExitEditIntent(),
      LogicalKeySet(LogicalKeyboardKey.goBack): const _ExitEditIntent(),
    };
    if (!isEditable && onLeftArrow != null) {
      shortcutMap[LogicalKeySet(LogicalKeyboardKey.arrowLeft)] =
          const _NavigateLeftIntent();
    }
    if (!isEditable && onRightArrow != null) {
      shortcutMap[LogicalKeySet(LogicalKeyboardKey.arrowRight)] =
          const _NavigateRightIntent();
    }
    if (onDownArrow != null) {
      shortcutMap[LogicalKeySet(LogicalKeyboardKey.arrowDown)] =
          const _NavigateDownIntent();
    }
    if (onUpArrow != null) {
      shortcutMap[LogicalKeySet(LogicalKeyboardKey.arrowUp)] =
          const _NavigateUpIntent();
    }

    return Shortcuts(
      shortcuts: shortcutMap,
      child: Actions(
        actions: <Type, Action<Intent>>{
          _ToggleEditIntent: CallbackAction<_ToggleEditIntent>(
            onInvoke: (intent) {
              if (!isEditable) {
                onEditableChanged(true);
                Future.delayed(const Duration(milliseconds: 50), () {
                  if (!focusNode.hasPrimaryFocus) {
                    focusNode.requestFocus();
                  }
                  SystemChannels.textInput.invokeMethod('TextInput.show');
                });
              }
              return null;
            },
          ),
          _ExitEditIntent: CallbackAction<_ExitEditIntent>(
            onInvoke: (intent) {
              if (isEditable) {
                onEditableChanged(false);
                focusNode.requestFocus();
                SystemChannels.textInput.invokeMethod('TextInput.hide');
              }
              return null;
            },
          ),
          _NavigateLeftIntent: CallbackAction<_NavigateLeftIntent>(
            onInvoke: (intent) {
              if (!isEditable && onLeftArrow != null) {
                onLeftArrow();
              }
              return null;
            },
          ),
          _NavigateRightIntent: CallbackAction<_NavigateRightIntent>(
            onInvoke: (intent) {
              if (!isEditable && onRightArrow != null) {
                onRightArrow();
              }
              return null;
            },
          ),
          _NavigateDownIntent: CallbackAction<_NavigateDownIntent>(
            onInvoke: (intent) {
              if (onDownArrow == null) return null;
              if (isEditable) {
                onEditableChanged(false);
                SystemChannels.textInput.invokeMethod('TextInput.hide');
              }
              onDownArrow();
              return null;
            },
          ),
          _NavigateUpIntent: CallbackAction<_NavigateUpIntent>(
            onInvoke: (intent) {
              if (onUpArrow == null) return null;
              if (isEditable) {
                onEditableChanged(false);
                SystemChannels.textInput.invokeMethod('TextInput.hide');
              }
              onUpArrow();
              return null;
            },
          ),
        },
        child: Focus(
          skipTraversal: true,
          onKeyEvent: (node, event) {
            // Intercept up/down arrows even in edit mode
            if (event is! KeyDownEvent) return KeyEventResult.ignored;
            if (event.logicalKey == LogicalKeyboardKey.arrowUp && onUpArrow != null) {
              if (isEditable) {
                onEditableChanged(false);
                SystemChannels.textInput.invokeMethod('TextInput.hide');
              }
              onUpArrow();
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowDown && onDownArrow != null) {
              if (isEditable) {
                onEditableChanged(false);
                SystemChannels.textInput.invokeMethod('TextInput.hide');
              }
              onDownArrow();
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          },
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            autofocus: false,
            readOnly: !isEditable,
            obscureText: obscureText,
            keyboardType: keyboardType,
            maxLines: obscureText ? 1 : maxLines,
            onTap: () {
              if (!isEditable) {
                onEditableChanged(true);
                Future.delayed(const Duration(milliseconds: 50), () {
                  focusNode.requestFocus();
                  SystemChannels.textInput.invokeMethod('TextInput.show');
                });
              }
            },
            decoration: InputDecoration(
              hintText: hintText,
              helperText: helperText,
              labelText: labelText,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              filled: true,
              fillColor: AppTheme.highlight,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppTheme.primaryBlue, width: 3),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWhisperModelReminder() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.accentOrange.withAlpha((0.12 * 255).round()),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppTheme.accentOrange.withAlpha(160)),
      ),
      child: const Text(
        'Whisper captions need a downloaded GGML speech model. Scroll down to the Speech Recognition (Whisper GGML) section and pick a model to enable this feature.',
        style: TextStyle(fontSize: 12, color: AppTheme.accentOrange),
      ),
    );
  }

  String _formatTranslateLanguage(TranslateLanguage language) {
    final parts = language.name.split('_');
    return parts
        .map(
          (segment) => segment.isEmpty
              ? segment
              : segment[0].toUpperCase() + segment.substring(1),
        )
        .join(' ');
  }

  void _showWhisperLanguageSelector(
    BuildContext context,
    WhisperTranscriptionService service, {
    required bool isTarget,
  }) {
    final languages = TranslateLanguage.values.toList()
      ..sort(
        (a, b) => _formatTranslateLanguage(a)
            .compareTo(_formatTranslateLanguage(b)),
      );
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: Text(isTarget ? 'Select Target Language' : 'Select Source Language'),
        content: SizedBox(
          width: double.maxFinite,
          height: 420,
          child: ListView.builder(
            itemCount: languages.length,
            itemBuilder: (context, index) {
              final lang = languages[index];
              final isSelected = isTarget
                  ? lang == service.targetLanguage
                  : lang == service.sourceLanguage;
              return ListTile(
                leading: Icon(
                  isSelected ? Icons.check_circle : Icons.circle_outlined,
                  color: isSelected ? AppTheme.primaryBlue : null,
                ),
                title: Text(_formatTranslateLanguage(lang)),
                subtitle: Text(lang.bcpCode),
                selected: isSelected,
                onTap: () async {
                  Navigator.pop(context);
                  if (isTarget) {
                    await service.setTargetLanguage(lang);
                  } else {
                    await service.setSourceLanguage(lang);
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }

  void _exportWhisperTranscriptions(
    BuildContext context,
    WhisperTranscriptionService service,
  ) {
    final srtContent = service.exportAsSRT();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Export Transcriptions'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Transcriptions exported as SRT format:'),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppTheme.highlight,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                srtContent.substring(
                  0,
                  srtContent.length > 500 ? 500 : srtContent.length,
                ),
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              ),
            ),
            if (srtContent.length > 500)
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text('... (truncated)', style: TextStyle(fontSize: 12)),
              ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  Widget _buildSpeechModelSummary(
    WhisperSpeechService whisperService,
    AIModelManager modelManager,
  ) {
    final activeModel = whisperService.selectedModel;
    final status = modelManager.getModelStatus(activeModel.id);
    final isReady = status == ModelDownloadStatus.downloaded ||
        status == ModelDownloadStatus.bundled;
    final color = isReady ? AppTheme.accentGreen : AppTheme.primaryBlue;
    final icon = isReady
        ? Icons.offline_bolt
        : Icons.download_for_offline_outlined;
    final subtitle = isReady
      ? 'Ready for offline GGML speech features.'
      : 'Download the ${activeModel.sizeFormatted} GGML binary to unlock voice features.';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withAlpha((0.12 * 255).round()),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 26),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Active GGML model: ${activeModel.name}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(subtitle),
                const SizedBox(height: 6),
                Text(
                  'Used by: ${activeModel.usedBy.join(", ")}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpeechModelTile({
    required WhisperSpeechService whisperService,
    required AIModelManager modelManager,
    required AIModel model,
  }) {
    final status = modelManager.getModelStatus(model.id);
    final progress = modelManager.getDownloadProgress(model.id);
    final isSelected = whisperService.selectedModelId == model.id;
    final isReady = status == ModelDownloadStatus.downloaded ||
        status == ModelDownloadStatus.bundled;
    final needsDownload = status == ModelDownloadStatus.notDownloaded;
    final needsRetry = status == ModelDownloadStatus.error ||
        status == ModelDownloadStatus.corrupted;

    final background = isSelected
        ? AppTheme.primaryBlue.withAlpha((0.12 * 255).round())
        : Colors.white.withAlpha((0.05 * 255).round());

    final actionWidgets = <Widget>[];

    if (isSelected) {
      actionWidgets.add(_buildActiveSpeechModelChip());
    } else {
      actionWidgets.add(
        OutlinedButton.icon(
          onPressed: () {
            whisperService.setSelectedModel(model.id);
          },
          icon: const Icon(Icons.radio_button_unchecked, size: 18),
          label: const Text('Set Active'),
        ),
      );
    }

    if (status == ModelDownloadStatus.downloading) {
      // Progress UI handled below.
    } else if (isReady) {
      actionWidgets.add(
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            color: AppTheme.accentGreen.withAlpha((0.2 * 255).round()),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: AppTheme.accentGreen, size: 18),
              SizedBox(width: 6),
              Text(
                'Ready',
                style: TextStyle(
                  color: AppTheme.accentGreen,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      );
      if (status != ModelDownloadStatus.bundled) {
        actionWidgets.add(
          OutlinedButton.icon(
            onPressed: () {
              _deleteSpeechModel(whisperService, model);
            },
            icon: const Icon(Icons.delete_outline, size: 18),
            label: const Text('Delete'),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppTheme.accentRed,
            ),
          ),
        );
      }
    } else if (needsDownload || needsRetry) {
      actionWidgets.add(
        ElevatedButton.icon(
          onPressed: () {
            _downloadSpeechModel(whisperService, model);
          },
          icon: Icon(needsRetry ? Icons.refresh : Icons.download),
          label: Text(
            needsRetry
                ? 'Re-download ${model.sizeFormatted}'
                : 'Download ${model.sizeFormatted}',
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.primaryBlue,
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        whisperService.setSelectedModel(model.id);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color:
                isSelected ? AppTheme.primaryBlue : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  isSelected
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked,
                  color: AppTheme.primaryBlue,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        model.description,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                _buildSpeechModelStatusChip(status),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Size: ${model.sizeFormatted} • Used by: ${model.usedBy.join(", ")}',
              style: const TextStyle(
                fontSize: 12,
                color: AppTheme.textSecondary,
              ),
            ),
            if (status == ModelDownloadStatus.downloading) ...[
              const SizedBox(height: 12),
              LinearProgressIndicator(
                value: progress > 0 ? progress : null,
                backgroundColor: AppTheme.highlight,
                color: AppTheme.primaryBlue,
              ),
              const SizedBox(height: 6),
              Text(
                progress > 0
                    ? 'Downloading ${(progress * 100).toStringAsFixed(0)}%'
                    : 'Downloading...',
                style: const TextStyle(
                  fontSize: 12,
                  color: AppTheme.textSecondary,
                ),
              ),
            ],
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 8,
              children: actionWidgets,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActiveSpeechModelChip() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.mic, size: 16, color: AppTheme.primaryBlue),
          SizedBox(width: 6),
          Text(
            'Active model',
            style: TextStyle(
              color: AppTheme.primaryBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpeechModelStatusChip(ModelDownloadStatus status) {
    Color color;
    IconData icon;
    String label;

    switch (status) {
      case ModelDownloadStatus.downloaded:
        color = AppTheme.accentGreen;
        icon = Icons.check_circle;
        label = 'Ready';
        break;
      case ModelDownloadStatus.downloading:
        color = AppTheme.primaryBlue;
        icon = Icons.downloading;
        label = 'Downloading';
        break;
      case ModelDownloadStatus.corrupted:
        color = AppTheme.accentOrange;
        icon = Icons.warning;
        label = 'Corrupted';
        break;
      case ModelDownloadStatus.error:
        color = AppTheme.accentRed;
        icon = Icons.error;
        label = 'Error';
        break;
      case ModelDownloadStatus.notDownloaded:
        color = AppTheme.textSecondary;
        icon = Icons.cloud_download;
        label = 'Not downloaded';
        break;
      case ModelDownloadStatus.bundled:
        color = AppTheme.accentGreen;
        icon = Icons.offline_pin;
        label = 'Built-in';
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha((0.15 * 255).round()),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _downloadSpeechModel(
    WhisperSpeechService whisperService,
    AIModel model,
  ) async {
    final success = await whisperService.downloadModel(model.id);
    if (!mounted) return;
    showAppSnackBar(
      context,
      SnackBar(
        content: Text(
          success
              ? '${model.name} downloaded successfully'
              : 'Failed to download ${model.name}',
        ),
        backgroundColor:
            success ? AppTheme.accentGreen : AppTheme.accentRed,
      ),
    );
  }

  Future<void> _deleteSpeechModel(
    WhisperSpeechService whisperService,
    AIModel model,
  ) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Delete model?'),
        content: Text(
          'Delete ${model.name}? This frees up ${model.sizeFormatted}. '
          'You can re-download it later.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentRed,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    final success = await whisperService.deleteModel(model.id);
    if (!mounted) return;
    showAppSnackBar(
      context,
      SnackBar(
        content: Text(
          success
              ? '${model.name} deleted'
              : 'Could not delete ${model.name}',
        ),
        backgroundColor:
            success ? AppTheme.accentGreen : AppTheme.accentRed,
      ),
    );
  }

  Widget _buildAIModelDownloadCard(AIUpscalingService aiService) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.science, color: AppTheme.primaryBlue),
              SizedBox(width: 8),
              Text(
                'AI Upscaling Model Missing',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Download ESRGAN (esrgan_x2.tflite) for true on-device video enhancement. This is a one-time download hosted on Hugging Face.',
            style: TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 12),
          if (aiService.isDownloading) ...[
            LinearProgressIndicator(
              value: aiService.downloadProgress,
              backgroundColor: AppTheme.highlight,
              color: AppTheme.primaryBlue,
            ),
            const SizedBox(height: 6),
            Text(
              'Downloading... ${(aiService.downloadProgress * 100).toStringAsFixed(0)}%',
              style: const TextStyle(fontSize: 12),
            ),
          ] else ...[
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      final success = await aiService.downloadModel();
                      if (!mounted) return;
                      showAppSnackBar(
                        context,
                        SnackBar(
                          content: Text(
                            success
                                ? 'ESRGAN model downloaded and ready!'
                                : 'Download failed. Check connection and retry.',
                          ),
                          backgroundColor: success
                              ? AppTheme.accentGreen
                              : AppTheme.accentRed,
                        ),
                      );
                    },
                    icon: const Icon(Icons.download),
                    label: const Text('Download ESRGAN Model'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () async {
                    final success = await aiService.initialize();
                    if (!mounted) return;
                    showAppSnackBar(
                      context,
                      SnackBar(
                        content: Text(
                          success
                              ? 'Model detected successfully.'
                              : 'Model still not found. Place esrgan_x2.tflite in assets/models/',
                        ),
                        backgroundColor: success
                            ? AppTheme.accentGreen
                            : AppTheme.accentRed,
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppTheme.primaryBlue,
                    side: BorderSide(
                      color: AppTheme.primaryBlue.withAlpha(
                        (0.7 * 255).round(),
                      ),
                    ),
                  ),
                  child: const Text('Already Have Model'),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  void _confirmClearWhisperTranscriptions(
    BuildContext context,
    WhisperTranscriptionService service,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Clear Transcriptions?'),
        content: Text(
          'This will delete all ${service.transcriptions.length} saved transcription entries.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              service.clearTranscriptions();
              Navigator.pop(context);
              final localContext = context;
              if (localContext.mounted) {
                showAppSnackBar(
                  localContext,
                  const SnackBar(content: Text('Transcriptions cleared')),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentRed,
            ),
            child: const Text('Clear All'),
          ),
        ],
      ),
    );
  }

  // ignore: unused_element
  String _getLanguageCode(String languageName) {
    switch (languageName) {
      case 'English':
        return 'en';
      case 'Spanish':
        return 'es';
      case 'French':
        return 'fr';
      case 'German':
        return 'de';
      case 'Italian':
        return 'it';
      case 'Portuguese':
        return 'pt';
      default:
        return 'en';
    }
  }

  String _getAIPerformanceText(String quality, bool hasGPU) {
    if (hasGPU) {
      switch (quality) {
        case 'Fast':
          return '80-120 FPS';
        case 'Balanced':
          return '50-80 FPS';
        case 'Quality':
          return '30-60 FPS';
        default:
          return 'Unknown';
      }
    } else {
      switch (quality) {
        case 'Fast':
          return '20-40 FPS';
        case 'Balanced':
          return '10-25 FPS';
        case 'Quality':
          return '5-15 FPS';
        default:
          return 'Unknown';
      }
    }
  }

  // ignore: unused_element
  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  // ignore: unused_element
  String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }

  Future<String> _getStorageInfo(String path) async {
    try {
      final dir = Directory(path);
      if (!await dir.exists()) {
        return '⚠ Path does not exist or is not accessible';
      }

      // Try to get storage space info (this is platform-specific)
      // On Android, this may not work for all paths
      await dir.stat();
      return '✓ Location accessible';
    } catch (e) {
      return '⚠ Unable to access: ${e.toString()}';
    }
  }
}

class _ToggleEditIntent extends Intent {
  const _ToggleEditIntent();
}

class _ExitEditIntent extends Intent {
  const _ExitEditIntent();
}

class _NavigateLeftIntent extends Intent {
  const _NavigateLeftIntent();
}

class _NavigateDownIntent extends Intent {
  const _NavigateDownIntent();
}

class _NavigateUpIntent extends Intent {
  const _NavigateUpIntent();
}

class _NavigateRightIntent extends Intent {
  const _NavigateRightIntent();
}
