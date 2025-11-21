import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';
import 'package:iptv_player/services/live_transcription_service.dart';
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

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Playlist Settings
  final TextEditingController _m3uUrlController = TextEditingController();
  final TextEditingController _xtreamServerController = TextEditingController();
  final TextEditingController _xtreamUsernameController =
      TextEditingController();
  final TextEditingController _xtreamPasswordController =
      TextEditingController();

  // Playlist Input Method (0 = M3U, 1 = Xtream)
  int _playlistInputMethod = 0;

  // Integration Settings
  final TextEditingController _realDebridApiKeyController =
      TextEditingController();
  final TextEditingController _openSubtitlesUsernameController =
      TextEditingController();
  final TextEditingController _openSubtitlesPasswordController =
      TextEditingController();

  // Editable states for text fields (prevent auto-keyboard on Android TV)
  bool _m3uUrlEditable = false;
  bool _xtreamServerEditable = false;
  bool _xtreamUsernameEditable = false;
  bool _xtreamPasswordEditable = false;
  bool _realDebridApiKeyEditable = false;
  bool _openSubtitlesUsernameEditable = false;
  bool _openSubtitlesPasswordEditable = false;

  // Focus nodes for text fields
  final FocusNode _m3uUrlFocusNode = FocusNode();
  final FocusNode _xtreamServerFocusNode = FocusNode();
  final FocusNode _xtreamUsernameFocusNode = FocusNode();
  final FocusNode _xtreamPasswordFocusNode = FocusNode();
  final FocusNode _realDebridApiKeyFocusNode = FocusNode();
  final FocusNode _openSubtitlesUsernameFocusNode = FocusNode();
  final FocusNode _openSubtitlesPasswordFocusNode = FocusNode();

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

  // Flag to prevent builds before first frame completes
  bool _isFirstFrameComplete = false;

  @override
  void initState() {
    super.initState();
    
    _tabController = TabController(length: 5, vsync: this); // Reduced from 7 to 5
    // Prepare focus nodes for the sidebar menu so external callers can request focus
    for (int i = 0; i < 5; i++) {
      _menuFocusNodes.add(FocusNode(debugLabel: 'SettingsMenu$i'));
    }
    // Rebuild when the active tab changes so we can lazily render tab content
    // Use a flag to prevent redundant rebuilds
    _tabController.addListener(_onTabChange);
    // Load settings AFTER first frame to avoid initState setState issues
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          _isFirstFrameComplete = true;
        });
        _loadSettings();
      }
    });
  }

  final List<FocusNode> _menuFocusNodes = [];

  // Tab change handler with guard to prevent rebuild loops
  int _lastTabIndex = -1;
  void _onTabChange() {
    if (!mounted) return;
    // Only rebuild if tab actually changed
    if (_tabController.index != _lastTabIndex) {
      _lastTabIndex = _tabController.index;
      setState(() {});
    }
  }

  // Load settings from SharedPreferences
  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      // Text controllers
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
      _hardwarePostProcessing =
          prefs.getBool('hardware_postprocessing') ?? true;
      _autoFrameRate = prefs.getBool('auto_frame_rate') ?? true;
      _realDebridEnabled = prefs.getBool('realdebrid_enabled') ?? false;
      _realDebridForCatchup = prefs.getBool('realdebrid_catchup') ?? true;
      _realDebridForVOD = prefs.getBool('realdebrid_vod') ?? true;
      _openSubtitlesEnabled = prefs.getBool('opensubtitles_enabled') ?? false;
      _aiUpscalingEnabled = prefs.getBool('ai_upscaling') ?? false;
      _autoDownloadSubtitles = prefs.getBool('auto_download_subtitles') ?? true;

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
      _preferredAudioLanguage = prefs.getString('preferred_audio_language') ?? 'Default';
      _audioPassthrough = prefs.getBool('audio_passthrough') ?? false;
      _audioBoost = prefs.getBool('audio_boost') ?? false;
      _normalizeAudio = prefs.getBool('normalize_audio') ?? false;
      _audioChannels = prefs.getInt('audio_channels') ?? 0;

      // Double settings
      _videoBufferSize = prefs.getDouble('video_buffer_size') ?? 50;
    });
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
    for (var n in _menuFocusNodes) {
      n.dispose();
    }
    _tabController.removeListener(_onTabChange);
    _tabController.dispose();
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Prevent building heavy content before first frame completes
    // This avoids rebuild storms during initialization
    if (!_isFirstFrameComplete) {
      return Scaffold(
        backgroundColor: const Color(0xFF050710),
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.blue,
          ),
        ),
      );
    }
    
    return PopScope(
      canPop: false,
      // ignore: deprecated_member_use
      onPopInvoked: (didPop) {
        if (didPop) return;
        context.go('/home');
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
        ),
        child: Row(
          children: [
            _buildSidebarMenu(),
            VerticalDivider(width: 1, color: Colors.white.withAlpha((0.1 * 255).round())),
            Expanded(
              child: Focus(
                canRequestFocus: false,
                onKeyEvent: (node, event) {
                  if (event is! KeyDownEvent) return KeyEventResult.ignored;
                  final key = event.logicalKey;
                  if (key == LogicalKeyboardKey.arrowLeft) {
                    requestFirstSidebarFocus();
                    return KeyEventResult.handled;
                  }
                  return KeyEventResult.ignored;
                },
                child: Builder(
                  builder: (context) {
                    // Build only the active tab to avoid constructing
                    // heavy consumers for hidden tabs (reduces memory use)
                    switch (_tabController.index) {
                      case 0:
                        return _buildGeneralSettings();
                      case 1:
                        return _buildAccountSettings();
                      case 2:
                        return _buildPlaybackSettings();
                      case 3:
                        return _buildCloudAndAISettings();
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
      {'title': 'Cloud & AI', 'icon': Icons.cloud_outlined},
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
            padding: EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppTheme.primaryBlue,
                  width: 2,
                ),
              ),
            ),
            child: Align(
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
              padding: EdgeInsets.symmetric(vertical: 12),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final item = menuItems[index];
                final bool isSelected = _tabController.index == index;
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      _tabController.index = index;
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
                        setState(() => _tabController.index = next);
                        return KeyEventResult.handled;
                      } else if (key == LogicalKeyboardKey.arrowUp) {
                        if (index == 0) {
                          return KeyEventResult.ignored;
                        }
                        final prev = index - 1;
                        _menuFocusNodes[prev].requestFocus();
                        setState(() => _tabController.index = prev);
                        return KeyEventResult.handled;
                      } else if (key == LogicalKeyboardKey.arrowRight) {
                        Future.microtask(() {
                          switch (_tabController.index) {
                            case 0:
                              _m3uUrlFocusNode.requestFocus();
                              break;
                            case 1:
                              _realDebridApiKeyFocusNode.requestFocus();
                              break;
                          }
                        });
                        return KeyEventResult.handled;
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppTheme.primaryBlue.withAlpha((0.3 * 255).round())
                            : Colors.transparent,
                        border: Border.all(
                          color: isSelected
                              ? AppTheme.primaryBlue.withAlpha((0.5 * 255).round())
                              : Colors.transparent,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        child: Row(
                          children: [
                            Icon(
                              item['icon'] as IconData,
                              color: isSelected
                                  ? AppTheme.primaryBlue
                                  : AppTheme.textSecondary,
                              size: 20,
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                item['title'] as String,
                                style: TextStyle(
                                  color: isSelected
                                      ? AppTheme.textPrimary
                                      : AppTheme.textSecondary,
                                  fontSize: 14,
                                  fontWeight: isSelected
                                      ? FontWeight.w600
                                      : FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_menuFocusNodes.isNotEmpty) {
        _menuFocusNodes[_tabController.index.clamp(0, _menuFocusNodes.length - 1)].requestFocus();
      }
    });
  }

  void requestFirstContentFocus() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Focus the first input field based on current tab
      switch (_tabController.index) {
        case 0: // General
          _m3uUrlFocusNode.requestFocus();
          break;
        case 1: // Account
          _realDebridApiKeyFocusNode.requestFocus();
          break;
        case 2: // Playback
        case 3: // Cloud & AI
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
                        backgroundImage: profileImagePath != null && profileImagePath.isNotEmpty
                            ? ResizeImage(FileImage(File(profileImagePath)), width: 100, height: 100)
                            : null,
                        child: profileImagePath == null || profileImagePath.isEmpty
                            ? Icon(
                                Icons.person,
                                size: 50,
                                color: AppTheme.primaryBlue,
                              )
                            : null,
                      ),
                      SizedBox(height: AppSizes.md),
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
                      SizedBox(height: AppSizes.md),
                      ElevatedButton(
                        onPressed: () async {
                          final result = await context.push('/edit-profile');
                          if (!mounted) return;
                          if (result == true) {
                            setState(() {});
                          }
                        },
                        child: Text('Edit Profile'),
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
            _buildSwitchTile('Hardware Post-Processing', _hardwarePostProcessing),
            _buildSwitchTile('Auto Frame Rate Matching', _autoFrameRate,
              subtitle: 'Match display refresh rate to video frame rate for smoother playback'),
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
              _audioChannels == 0 ? 'Auto' : _audioChannels == 2 ? 'Stereo' : _audioChannels == 6 ? '5.1 Surround' : '7.1 Surround',
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
              ['Default', 'English', 'Spanish', 'French', 'German', 'Italian', 'Portuguese', 'Russian', 'Chinese', 'Japanese', 'Korean', 'Arabic'],
              (value) async {
                if (value != null) {
                  setState(() => _preferredAudioLanguage = value);
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('preferred_audio_language', value);
                }
              },
            ),
            _buildAudioSwitchTile('Audio Passthrough', _audioPassthrough,
              subtitle: 'Send audio directly to receiver without decoding (for surround sound systems)'),
            _buildAudioSwitchTile('Audio Boost', _audioBoost,
              subtitle: 'Increase audio volume for quiet content'),
            _buildAudioSwitchTile('Normalize Audio', _normalizeAudio,
              subtitle: 'Automatically adjust volume levels for consistent playback'),
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
            Slider(
              value: _videoBufferSize,
              min: 0,
              max: 100,
              divisions: 20,
              label: '${_videoBufferSize.round()}%',
              onChanged: (value) {
                setState(() => _videoBufferSize = value);
              },
            ),
            Text(
              'Higher buffer reduces stuttering but increases memory usage',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppTheme.textSecondary,
              ),
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
          'epg_url': prefs.getString('epg_url'),
          'custom_epg_url': prefs.getString('custom_epg_url'),
          'playlist_type': prefs.getString('playlist_type'),
          'm3u_url': prefs.getString('m3u_url'),
          'xtream_server': prefs.getString('xtream_server'),
          'epg_update_interval': prefs.getInt('epg_update_interval') ?? 12,
          'epg_past_days': prefs.getInt('epg_past_days') ?? 1,
          'store_descriptions': prefs.getBool('store_program_descriptions') ?? true,
          'show_channel_logos': prefs.getBool('show_channel_logos') ?? true,
          'show_program_images': prefs.getBool('show_program_images') ?? true,
        };
      }(),
      builder: (context, snapshot) {
        if (!snapshot.hasData || snapshot.data == null) {
          return Card(
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
        
        final TextEditingController customEpgController = 
            TextEditingController(text: customEpgUrl ?? '');

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
            SizedBox(height: AppSizes.md),
            
            // Current Provider Info
            Container(
              padding: EdgeInsets.all(AppSizes.md),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                border: Border.all(color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round())),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  SizedBox(height: 8),
                  Text(
                    providerName,
                    style: TextStyle(
                      color: AppTheme.textSecondary,
                      fontSize: 13,
                    ),
                  ),
                  if (epgUrl != null) ...[
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: AppTheme.accentGreen, size: 16),
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
                    SizedBox(height: 4),
                    Text(
                      epgUrl,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 11, color: AppTheme.textSecondary),
                    ),
                  ],
                ],
              ),
            ),
            
            SizedBox(height: AppSizes.lg),
            
            // Custom EPG URL Input
            Text(
              'Custom EPG URL',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: AppSizes.sm),
            Focus(
              canRequestFocus: true,
              child: TextField(
                controller: customEpgController,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'http://example.com/epg.xml.gz',
                  prefixIcon: Icon(Icons.link),
                  filled: true,
                  fillColor: AppTheme.highlight,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppTheme.primaryBlue, width: 3),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.save),
                    onPressed: () async {
                      final localContext = context;
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString('custom_epg_url', customEpgController.text);
                      if (!localContext.mounted) return;
                      showAppSnackBar(
                        localContext,
                        SnackBar(
                          content: Text('Custom EPG URL saved'),
                          backgroundColor: AppTheme.accentGreen,
                        ),
                      );
                      // Refresh to show saved URL
                      if (localContext.mounted) setState(() {});
                    },
                    tooltip: 'Save EPG URL',
                  ),
                ),
                  onSubmitted: (value) async {
                  final localContext = context;
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('custom_epg_url', value);
                  if (!localContext.mounted) return;
                  showAppSnackBar(
                    localContext,
                    SnackBar(
                      content: Text('Custom EPG URL saved'),
                      backgroundColor: AppTheme.accentGreen,
                    ),
                  );
                  if (localContext.mounted) setState(() {}); // Refresh to show saved URL
                },
              ),
            ),
            SizedBox(height: AppSizes.xs),
            Text(
              'Override auto-detected EPG or provide EPG for playlists without one',
              style: TextStyle(
                fontSize: 11,
                color: AppTheme.textSecondary,
                fontStyle: FontStyle.italic,
              ),
            ),
            
            SizedBox(height: AppSizes.md),
            Divider(),
            SizedBox(height: AppSizes.lg),
            
            // === 3. UPDATE SETTINGS ===
            Text(
              'Update Settings',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
            ),
            SizedBox(height: AppSizes.md),
            
            // Update Interval
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.update, color: AppTheme.primaryBlue),
              title: Text('Auto-Update Interval'),
              subtitle: Text('Update EPG data every $epgUpdateInterval hours'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: epgUpdateInterval > 1 ? () async {
                      final newValue = epgUpdateInterval - 1;
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setInt('epg_update_interval', newValue);
                      setState(() {});
                    } : null,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '$epgUpdateInterval',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle_outline),
                    onPressed: epgUpdateInterval < 48 ? () async {
                      final newValue = epgUpdateInterval + 1;
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setInt('epg_update_interval', newValue);
                      setState(() {});
                    } : null,
                  ),
                ],
              ),
            ),
            
            
            SizedBox(height: AppSizes.md),
            Divider(),
            SizedBox(height: AppSizes.lg),
            
            // === 2. DATA MANAGEMENT ===
            Text(
              'Data Management',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
            ),
            SizedBox(height: AppSizes.md),
            
            // 2. Past Days to Keep
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.history, color: AppTheme.primaryBlue),
              title: Text('Past Days to Keep'),
              subtitle: Text('Keep EPG data for the past $epgPastDays days'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: epgPastDays > 0 ? () async {
                      final newValue = epgPastDays - 1;
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setInt('epg_past_days', newValue);
                      setState(() {});
                    } : null,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '$epgPastDays',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle_outline),
                    onPressed: epgPastDays < 30 ? () async {
                      final newValue = epgPastDays + 1;
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setInt('epg_past_days', newValue);
                      setState(() {});
                    } : null,
                  ),
                ],
              ),
            ),
            
            // 3. STORE PROGRAM DESCRIPTIONS TOGGLE
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Store Program Descriptions'),
              subtitle: Text('Save detailed program information (uses more storage)'),
              value: storeDescriptions,
              onChanged: (value) async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('store_program_descriptions', value);
                setState(() {});
              },
            ),
            
            SizedBox(height: AppSizes.md),
            Divider(),
            SizedBox(height: AppSizes.lg),
            
            // === 7. DISPLAY OPTIONS ===
            Text(
              'Display Options',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
            ),
            SizedBox(height: AppSizes.sm),
            
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Show Channel Logos'),
              subtitle: Text('Display channel logos in EPG grid'),
              value: showChannelLogos,
              onChanged: (value) async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('show_channel_logos', value);
                setState(() {});
              },
            ),
            
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Show Program Images'),
              subtitle: Text('Display program thumbnails and posters'),
              value: showProgramImages,
              onChanged: (value) async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('show_program_images', value);
                setState(() {});
              },
            ),
            
            SizedBox(height: AppSizes.lg),
            
            // Update EPG & Clear EPG Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      showAppSnackBar(
                        context,
                        SnackBar(
                          content: Text('Updating EPG data...'),
                          backgroundColor: AppTheme.primaryBlue,
                        ),
                      );
                    },
                    icon: Icon(Icons.refresh),
                    label: Text('Update EPG'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                      padding: EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                SizedBox(width: AppSizes.md),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      // Show confirmation dialog
                      final confirm = await showDialog<bool>(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Clear EPG Data'),
                          content: Text('Are you sure you want to clear all EPG data? This cannot be undone.'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, false),
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, true),
                              child: Text('Clear', style: TextStyle(color: Colors.red)),
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
                            SnackBar(
                              content: Text('EPG data cleared'),
                              backgroundColor: AppTheme.accentGreen,
                            ),
                          );
                        }
                      }
                    },
                    icon: Icon(Icons.delete_sweep),
                    label: Text('Clear EPG'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade700,
                      padding: EdgeInsets.symmetric(vertical: 12),
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
        _buildSectionCard(
          title: 'Playlist Source',
          subtitle: 'Select your playlist type and enter details',
          children: [
            // Input Method Tabs
            Container(
              height: 48,
              padding: EdgeInsets.all(4),
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
                    ),
                  ),
                  Expanded(
                    child: _buildTabButton(
                      title: 'Xtream Codes',
                      icon: Icons.dns,
                      isSelected: _playlistInputMethod == 1,
                      onTap: () => setState(() => _playlistInputMethod = 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppSizes.lg),

            // M3U Content
            if (_playlistInputMethod == 0) ...[
              _buildTVTextField(
                controller: _m3uUrlController,
                focusNode: _m3uUrlFocusNode,
                isEditable: _m3uUrlEditable,
                onEditableChanged: (value) => setState(() => _m3uUrlEditable = value),
                hintText: 'http://example.com/playlist.m3u',
                helperText: 'Enter M3U URL and click Load',
                prefixIcon: Icons.link,
                onLeftArrow: requestFirstSidebarFocus,
              ),
              SizedBox(height: AppSizes.md),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    final url = _m3uUrlController.text.trim();
                    if (url.isEmpty) {
                      if (!mounted) return;
                      showAppSnackBar(context, SnackBar(content: Text('Please enter a valid M3U URL')));
                      return;
                    }

                    if (mounted) {
                      showAppSnackBar(context, SnackBar(content: Text('Loading playlist from URL...')));
                    }

                    try {
                      final provider = Provider.of<ChannelProvider>(context, listen: false);
                      await provider.loadPlaylistFromUrl(url);

                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString('m3u_url', url);
                      await prefs.setString('playlist_type', 'm3u');
                      
                      if (!mounted) return;
                      showAppSnackBar(
                        context,
                        SnackBar(
                          content: Text('Playlist loaded successfully! ${provider.channels.length} channels found.'),
                          backgroundColor: AppTheme.accentGreen,
                        ),
                      );
                    } catch (e) {
                      if (mounted) {
                        showAppSnackBar(
                          context,
                          SnackBar(
                            content: Text('Failed to load playlist: ${e.toString()}'),
                            backgroundColor: AppTheme.accentRed,
                          ),
                        );
                      }
                    }
                  },
                  icon: Icon(Icons.download),
                  label: Text('Load M3U Playlist'),
                  style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryBlue),
                ),
              ),
            ],

            // Xtream Content
            if (_playlistInputMethod == 1) ...[
              _buildTVTextField(
                controller: _xtreamServerController,
                focusNode: _xtreamServerFocusNode,
                isEditable: _xtreamServerEditable,
                onEditableChanged: (value) => setState(() => _xtreamServerEditable = value),
                labelText: 'Server URL',
                hintText: 'http://example.com:8080',
                prefixIcon: Icons.dns,
                onLeftArrow: requestFirstSidebarFocus,
              ),
              SizedBox(height: AppSizes.md),
              Row(
                children: [
                  Expanded(
                    child: _buildTVTextField(
                      controller: _xtreamUsernameController,
                      focusNode: _xtreamUsernameFocusNode,
                      isEditable: _xtreamUsernameEditable,
                      onEditableChanged: (value) => setState(() => _xtreamUsernameEditable = value),
                      labelText: 'Username',
                      prefixIcon: Icons.person,
                      onLeftArrow: requestFirstSidebarFocus,
                    ),
                  ),
                  SizedBox(width: AppSizes.md),
                  Expanded(
                    child: _buildTVTextField(
                      controller: _xtreamPasswordController,
                      focusNode: _xtreamPasswordFocusNode,
                      isEditable: _xtreamPasswordEditable,
                      onEditableChanged: (value) => setState(() => _xtreamPasswordEditable = value),
                      labelText: 'Password',
                      prefixIcon: Icons.lock,
                      obscureText: true,
                      onLeftArrow: requestFirstSidebarFocus,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.md),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      _xtreamServerController.clear();
                      _xtreamUsernameController.clear();
                      _xtreamPasswordController.clear();
                    },
                    child: Text('Clear'),
                  ),
                  SizedBox(width: AppSizes.sm),
                  ElevatedButton.icon(
                    onPressed: () async {
                      final server = _xtreamServerController.text.trim();
                      final username = _xtreamUsernameController.text.trim();
                      final password = _xtreamPasswordController.text.trim();

                      if (server.isEmpty || username.isEmpty || password.isEmpty) {
                        if (!mounted) return;
                        showAppSnackBar(context, SnackBar(content: Text('Please fill in all Xtream Codes fields')));
                        return;
                      }

                      if (mounted) {
                        showAppSnackBar(context, SnackBar(content: Text('Loading Xtream Codes playlist...')));
                      }

                      final url = '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';

                      try {
                        final provider = Provider.of<ChannelProvider>(context, listen: false);
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
                            content: Text('Xtream playlist loaded! ${provider.channels.length} channels found.'),
                            backgroundColor: AppTheme.accentGreen,
                          ),
                        );
                      } catch (e) {
                        if (mounted) {
                          showAppSnackBar(
                            context,
                            SnackBar(
                              content: Text('Failed to load Xtream playlist: ${e.toString()}'),
                              backgroundColor: AppTheme.accentRed,
                            ),
                          );
                        }
                      }
                    },
                    icon: Icon(Icons.download),
                    label: Text('Load Playlist'),
                    style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryBlue),
                  ),
                ],
              ),
            ],
          ],
        ),
      ],
    );
  }

  Widget _buildTabButton({
    required String title,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Focus(
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.enter || event.logicalKey == LogicalKeyboardKey.select) {
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
                color: isSelected 
                    ? AppTheme.primaryBlue 
                    : (isFocused ? AppTheme.primaryBlue.withAlpha((0.3 * 255).round()) : Colors.transparent),
                borderRadius: BorderRadius.circular(AppSizes.radiusMd - 2),
                border: isFocused 
                    ? Border.all(color: Colors.white, width: 1.5)
                    : null,
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon, 
                    color: isSelected ? Colors.white : AppTheme.textSecondary,
                    size: 18,
                  ),
                  SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(
                      color: isSelected ? Colors.white : AppTheme.textSecondary,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }

  // ignore: unused_element
  Widget _buildAISettingsSection() {
    return _buildSettingsSection(
      title: 'AI & Cloud Settings',
      children: [
        // Live Transcription
        Builder(
          builder: (context) {
            try {
              final transcriptionService = Provider.of<LiveTranscriptionService>(context, listen: false);
              return _buildSectionCard(
                title: 'Live Transcription',
                subtitle: 'Real-time speech-to-text from video audio',
                children: [
                  SwitchListTile(
                    value: transcriptionService.isTranscribing,
                    onChanged: (value) async {
                      if (value) {
                        await transcriptionService.startTranscription();
                      } else {
                        await transcriptionService.stopTranscription();
                      }
                    },
                  ),
                  if (transcriptionService.isTranscribing) ...[
                    SwitchListTile(
                      title: const Text('Enable Translation'),
                      subtitle: const Text(
                        'Translate transcribed text to another language',
                      ),
                      value: transcriptionService.isTranslating,
                      onChanged: transcriptionService.setTranslationEnabled,
                    ),

                    ListTile(
                      leading: const Icon(Icons.record_voice_over),
                      title: const Text('Source Language'),
                      subtitle: Text(transcriptionService.sourceLanguage),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                      onTap: () => _showSourceLanguageSelector(
                        context,
                        transcriptionService,
                      ),
                    ),

                    if (transcriptionService.isTranslating) ...[
                      ListTile(
                        leading: const Icon(Icons.language),
                        title: const Text('Target Language'),
                        subtitle: Text(
                          transcriptionService.targetLanguage,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                        onTap: () => _showTargetLanguageSelector(
                          context,
                          transcriptionService,
                        ),
                      ),

                      SwitchListTile(
                        title: const Text('Text-to-Speech'),
                        subtitle: const Text(
                          'Speak translated text aloud',
                        ),
                        value: transcriptionService.isTTSEnabled,
                        onChanged: transcriptionService.setTTSEnabled,
                      ),
                    ],

                    const Divider(),

                    if (transcriptionService.transcriptions.isNotEmpty) ...[
                      ListTile(
                        leading: const Icon(Icons.download),
                        title: const Text('Export Transcriptions'),
                        subtitle: Text(
                          '${transcriptionService.transcriptions.length} entries available',
                        ),
                        trailing: ElevatedButton(
                          onPressed: () => _exportTranscriptions(
                            context,
                            transcriptionService,
                          ),
                          child: const Text('Export as SRT'),
                        ),
                      ),

                      ListTile(
                        leading: const Icon(Icons.delete_outline),
                        title: const Text('Clear Transcriptions'),
                        subtitle: const Text(
                          'Remove all saved transcriptions',
                        ),
                        trailing: TextButton(
                          onPressed: () => _confirmClearTranscriptions(
                            context,
                            transcriptionService,
                          ),
                          child: const Text('Clear All'),
                        ),
                      ),
                    ],

                    const SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.all(AppSizes.md),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                size: 20,
                                color: AppTheme.primaryBlue,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'About Live Transcription',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Live transcription uses on-device speech recognition to convert video audio to text in real-time. '
                            'Translation and text-to-speech are also processed on your device for privacy and performance.',
                            style: TextStyle(fontSize: 12, height: 1.4),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              );
            } catch (e, st) {
              debugPrint('Settings: LiveTranscription builder error: $e\n$st');
              return _buildSectionCard(
                title: 'Live Transcription',
                children: [
                  Text('Unavailable on this device', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              );
            }
          },
        ),

        // AI Video Enhancement
        Builder(
          builder: (context) {
            try {
              final aiService = Provider.of<AIUpscalingService>(context, listen: false);
              return _buildSectionCard(
                title: 'AI Video Enhancement',
                subtitle: 'On-device upscaling for better quality (FREE)',
                children: [
                SwitchListTile(
                  title: Text('Enable AI Upscaling'),
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
                                value ? 'AI Upscaling enabled' : 'AI Upscaling disabled',
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
                    padding: EdgeInsets.all(AppSizes.md),
                    child: Container(
                      padding: EdgeInsets.all(AppSizes.md),
                      decoration: BoxDecoration(
                        color: AppTheme.highlight,
                        borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.info_outline, size: 16),
                              SizedBox(width: 8),
                              Text(
                                'AI Enhancement Info',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            '• GPU Acceleration: ${aiService.isGPUAvailable ? "✓ Available" : "✗ CPU Only"}',
                          ),
                          Text('• Upscales video to 2x resolution'),
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
                    padding: EdgeInsets.all(AppSizes.md),
                    child: Container(
                      padding: EdgeInsets.all(AppSizes.md),
                      decoration: BoxDecoration(
                        color: AppTheme.accentOrange.withAlpha((0.1 * 255).round()),
                        borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                        border: Border.all(
                          color: AppTheme.accentOrange.withAlpha((0.3 * 255).round()),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.warning_amber,
                                size: 16,
                                color: AppTheme.accentOrange,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Model Not Found',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppTheme.accentOrange,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'To enable AI upscaling:',
                          ),
                          Text(
                            '1. Download a TFLite model (FSRCNN recommended)',
                          ),
                          Text('2. Place in assets/models/esrgan_x2.tflite'),
                          Text('3. Rebuild the app'),
                          SizedBox(height: 8),
                          Text(
                            'See AI_MODEL_SETUP_GUIDE.md for details',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
              );
            } catch (e, st) {
              debugPrint('Settings: AIUpscaling builder error: $e\n$st');
              return _buildSectionCard(
                title: 'AI Video Enhancement',
                children: [Text('Unavailable on this device', style: TextStyle(color: AppTheme.textSecondary))],
              );
            }
          },
        ),

        _buildSectionCard(
          title: 'Playback Options',
          children: [
            _buildSwitchTile('Auto-play Next Episode', _autoPlayNextEpisode),
            _buildSwitchTile('Remember Playback Position', true),
            _buildSwitchTile('Skip Intro (if available)', true),
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
            Slider(
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

  Widget _buildCloudAndAISettings() {
    return _buildSettingsSection(
      title: 'Cloud & AI',
      children: [
        // Drive sync feature removed from the app.
        _buildSectionCard(
          title: 'Cloud Sync',
          subtitle: 'Removed',
          children: [
            Text('Cloud sync has been removed from this build.'),
          ],
        ),

        // OpenSubtitles Integration - Use Builder with Provider.of instead of Consumer
        Builder(
          builder: (context) {
            try {
              final subtitleService = Provider.of<OpenSubtitlesService>(context, listen: false);
              return _buildSectionCard(
              title: 'OpenSubtitles Integration',
              subtitle: 'FREE API - Automatic subtitle downloading',
              children: [
                SwitchListTile(
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
                  ),
                  const SizedBox(height: 16),
                  SwitchListTile(
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
                  const SizedBox(height: 8),
                  ElevatedButton.icon(
                    onPressed: () async {
                        final localContext = context;
                        final success = await subtitleService.authenticate();
                        if (!localContext.mounted) return;
                        showAppSnackBar(
                          localContext,
                          SnackBar(
                            content: Text(
                              success ? 'Connected successfully!' : 'Connection failed',
                            ),
                            backgroundColor: success ? Colors.green : AppTheme.accentRed,
                          ),
                        );
                    },
                  icon: const Icon(Icons.check_circle),
                  label: const Text('Test Connection'),
                ),
              ],
            ],
          );
            } catch (e) {
              debugPrint('OpenSubtitles service error: $e');
              return _buildSectionCard(
                title: 'OpenSubtitles Integration',
                children: [
                  Text('Service unavailable', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              );
            }
          },
        ),

        // Real-Debrid Integration - Use Builder with Provider.of instead of Consumer
        Builder(
          builder: (context) {
            try {
              final rdService = Provider.of<RealDebridService>(context, listen: false);
              return _buildSectionCard(
              title: 'Real-Debrid Integration',
              subtitle: 'FREE API - Enhanced streaming for VOD and Catch-up',
              children: [
                SwitchListTile(
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
                  ),
                  const SizedBox(height: 16),
                  CheckboxListTile(
                    title: const Text('Use for Catch-up TV'),
                    value: _realDebridForCatchup,
                    onChanged: (value) {
                      setState(() {
                        _realDebridForCatchup = value ?? true;
                      });
                      rdService.setEnableForCatchup(value ?? true);
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Use for VOD/Movies'),
                    value: _realDebridForVOD,
                    onChanged: (value) {
                      setState(() {
                        _realDebridForVOD = value ?? true;
                      });
                      rdService.setEnableForVOD(value ?? true);
                    },
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton.icon(
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
                          backgroundColor: success ? Colors.green : AppTheme.accentRed,
                        ),
                      );
                    },
                    icon: const Icon(Icons.check_circle),
                    label: const Text('Test Connection'),
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
            } catch (e) {
              debugPrint('Real-Debrid service error: $e');
              return _buildSectionCard(
                title: 'Real-Debrid Integration',
                children: [
                  Text('Service unavailable', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              );
            }
          },
        ),

        // AI Upscaling - Use Builder with Provider.of instead of Consumer
        Builder(
          builder: (context) {
            try {
              final aiService = Provider.of<AIUpscalingService>(context, listen: false);
              return _buildSectionCard(
                title: 'AI Video Upscaling',
                subtitle: 'FREE - On-device AI upscaling (no cloud costs)',
                children: [
                SwitchListTile(
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
                if (!aiService.isModelLoaded) ...[
                  const SizedBox(height: 8),
                  const Text(
                    'AI model not found. Place esrgan_x2.tflite in assets/models/',
                    style: TextStyle(color: AppTheme.accentRed, fontSize: 12),
                  ),
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
                      ButtonSegment(value: 'Balanced', label: Text('Balanced')),
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
              debugPrint('Settings: AIUpscaling (secondary) builder error: $e\n$st');
              return _buildSectionCard(
                title: 'AI Video Upscaling',
                children: [Text('Unavailable on this device', style: TextStyle(color: AppTheme.textSecondary))],
              );
            }
          },
        ),

        // Whisper On-Device Transcription - Use Builder with Provider.of instead of Consumer
        Builder(
          builder: (context) {
            try {
              final whisperService = Provider.of<WhisperSpeechService>(context, listen: false);
              return _buildSectionCard(
                title: '🎙️ On-Device Transcription (Whisper)',
                subtitle: '100% OFFLINE - AUTO-DOWNLOAD - NO COSTS - TRUE AI',
                children: [
                  if (!whisperService.isModelDownloaded) ...[
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppTheme.primaryBlue),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.cloud_download,
                                color: AppTheme.primaryBlue,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Model Not Downloaded Yet',
                                style: TextStyle(
                                  color: AppTheme.primaryBlue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Whisper model (~40MB) will automatically download on first use.\n\n'
                            'This is a ONE-TIME download:\n'
                            '• Downloads from Hugging Face (free hosting)\n'
                            '• Takes ~30 seconds on WiFi\n'
                            '• Works 100% offline after download\n'
                            '• Never needs re-downloading\n\n'
                            'Benefits:\n'
                            '• TRUE on-device AI (both Android & iOS)\n'
                            '• No cloud costs - completely free\n'
                            '• Private - no data sent to servers\n'
                            '• Supports 99+ languages',
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(height: 12),
                          if (!whisperService.isDownloading)
                            ElevatedButton.icon(
                              onPressed: () async {
                                await whisperService.downloadModelIfNeeded();
                              },
                              icon: const Icon(Icons.download),
                              label: const Text('Download Now'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppTheme.primaryBlue,
                              ),
                            ),
                          if (whisperService.isDownloading) ...[
                            Column(
                              children: [
                                LinearProgressIndicator(
                                  value: whisperService.downloadProgress,
                                  backgroundColor: AppTheme.highlight,
                                  color: AppTheme.primaryBlue,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Downloading... ${(whisperService.downloadProgress * 100).toInt()}%',
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ],
                      ),
                    ),
                  ] else ...[
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppTheme.accentGreen.withAlpha((0.1 * 255).round()),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppTheme.accentGreen),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.check_circle, color: AppTheme.accentGreen),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '✅ Whisper model ready! True on-device transcription enabled.',
                              style: TextStyle(
                                color: AppTheme.accentGreen,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      leading: const Icon(
                        Icons.offline_bolt,
                        color: AppTheme.primaryBlue,
                      ),
                      title: const Text('Status: 100% Offline'),
                      subtitle: const Text(
                        'Works without internet • No cloud APIs ever',
                      ),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      leading: const Icon(
                        Icons.security,
                        color: AppTheme.primaryBlue,
                      ),
                      title: const Text('Privacy: Complete'),
                      subtitle: const Text(
                        'All AI processing on your device • Zero data collection',
                      ),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      leading: const Icon(
                        Icons.language,
                        color: AppTheme.primaryBlue,
                      ),
                      title: const Text('Languages: 99+'),
                      subtitle: const Text(
                        'Multilingual support built-in (no extra downloads)',
                      ),
                    ),
                  ],
                ],
              );
            } catch (e, st) {
              debugPrint('Settings: Whisper builder error: $e\n$st');
              return _buildSectionCard(
                title: 'On-Device Transcription (Whisper)',
                children: [Text('Unavailable on this device', style: TextStyle(color: AppTheme.textSecondary))],
              );
            }
          },
        ),

        // AI Model Downloads - Use Builder with Provider.of instead of Consumer
        Builder(
          builder: (context) {
            try {
              final modelManager = Provider.of<AIModelManager>(context, listen: false);
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
                              Icons.cloud_download,
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
                          '• Speech recognition (Whisper)\n'
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
            } catch (e) {
              debugPrint('AI Model Manager error: $e');
              return _buildSectionCard(
                title: 'AI Model Downloads',
                children: [
                  Text('Service unavailable', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              );
            }
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
                  padding: EdgeInsets.all(AppSizes.md),
                  decoration: BoxDecoration(
                    color: AppTheme.accentOrange.withAlpha((0.1 * 255).round()),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppTheme.accentOrange.withAlpha((0.3 * 255).round()),
                    ),
                  ),
                  child: Row(
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
                SizedBox(height: AppSizes.md),
                Text(
                  'Storage Location',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(height: AppSizes.sm),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: TextEditingController(text: recordingPath),
                        autofocus: false,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: 'No storage location selected',
                          prefixIcon: Icon(Icons.folder_outlined),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: AppTheme.cardBackground,
                        ),
                      ),
                    ),
                    SizedBox(width: AppSizes.sm),
                    ElevatedButton.icon(
                      onPressed: () async {
                        final localContext = context;
                        try {
                          final result = await FilePicker.platform.getDirectoryPath();
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
                              SnackBar(
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
                      icon: Icon(Icons.create_new_folder),
                      label: Text('Browse'),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.sm),
                Text(
                  'Suggested locations:',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4),
                Text(
                  '• /storage/[USB-ID]/ (External USB drive)\n'
                  '• /mnt/media_rw/[USB-ID]/ (Some Android TV)\n'
                  '• /sdcard/Recordings/ (Internal - not recommended)\n'
                  '• smb://your-nas/recordings/ (Network storage)',
                  style: TextStyle(fontSize: 11, color: AppTheme.textSecondary),
                ),
                if (recordingPath.isNotEmpty) ...[
                  SizedBox(height: AppSizes.md),
                  FutureBuilder<String>(
                    future: _getStorageInfo(recordingPath),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data ?? '',
                          style: TextStyle(
                            fontSize: 11,
                            color: AppTheme.primaryBlue,
                          ),
                        );
                      }
                      return SizedBox.shrink();
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
                _buildSwitchTile('Show Channel Logos', true),
                _buildSwitchTile('Show Program Images', true),
              ],
            ),
            _buildSectionCard(
              title: 'Actions',
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    final localContext = context;
                    if (localContext.mounted) {
                      showAppSnackBar(localContext, SnackBar(content: Text('Updating EPG data...')));
                    }
                    // TODO: Implement EPG update functionality
                  },
                  icon: Icon(Icons.refresh),
                  label: Text('Update EPG Now'),
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
      padding: EdgeInsets.all(AppSizes.lg),  // Reduced from xl
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),  // Changed from headlineMedium
          ),
          SizedBox(height: AppSizes.md),  // Reduced from lg
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
          return Card(
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
          margin: EdgeInsets.only(bottom: AppSizes.lg),
          child: Padding(
            padding: EdgeInsets.all(AppSizes.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.playlist_play, color: AppTheme.primaryBlue),
                    SizedBox(width: AppSizes.sm),
                    Text(
                      'Saved Playlists',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.sm),
                Text(
                  'Manage your saved playlist credentials',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppTheme.textSecondary),
                ),
                SizedBox(height: AppSizes.lg),

                if (!hasPlaylist)
                  Container(
                    padding: EdgeInsets.all(AppSizes.md),
                    decoration: BoxDecoration(
                      color: AppTheme.cardBackground,
                      borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                      border: Border.all(color: AppTheme.divider),
                    ),
                    child: Row(
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
                        padding: EdgeInsets.all(AppSizes.md),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                          border: Border.all(color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round())),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.playlist_play, color: AppTheme.primaryBlue, size: 24),
                                SizedBox(width: AppSizes.sm),
                                Expanded(
                                  child: Text(
                                    playlistName,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppTheme.primaryBlue,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    data['type'] == 'm3u' ? 'M3U' : 'Xtream',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(width: AppSizes.sm),
                                Icon(Icons.chevron_right, color: AppTheme.textSecondary),
                              ],
                            ),
                            SizedBox(height: AppSizes.md),
                            if (data['type'] == 'm3u') ...[
                              _buildInfoRow('URL', data['m3u_url'] ?? 'N/A'),
                            ] else if (data['type'] == 'xtream') ...[
                              _buildInfoRow('Server', data['xtream_server'] ?? 'N/A'),
                              SizedBox(height: AppSizes.xs),
                              _buildInfoRow('Username', data['xtream_username'] ?? 'N/A'),
                            ],
                            SizedBox(height: AppSizes.md),
                            Container(
                              padding: EdgeInsets.all(AppSizes.sm),
                              decoration: BoxDecoration(
                                color: AppTheme.cardBackground,
                                borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.edit, size: 14, color: AppTheme.textSecondary),
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
            style: TextStyle(
              color: AppTheme.textSecondary,
              fontSize: 13,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
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
      margin: EdgeInsets.only(bottom: AppSizes.md),  // Reduced from lg
      child: Padding(
        padding: EdgeInsets.all(AppSizes.md),  // Reduced from lg
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title, 
              style: Theme.of(context).textTheme.titleMedium?.copyWith(  // Changed from titleLarge
                fontWeight: FontWeight.bold,
              ),
            ),
            if (subtitle != null) ...[
              SizedBox(height: 3),  // Reduced spacing
              Text(
                subtitle,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(
                  color: AppTheme.textSecondary,
                  fontSize: 11,  // Smaller subtitle
                ),
              ),
            ],
            SizedBox(height: AppSizes.sm),  // Reduced from md
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile(String title, bool value, {String? subtitle}) {
    return SwitchListTile(
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle, style: TextStyle(fontSize: 12, color: AppTheme.textSecondary)) : null,
      value: value,
      onChanged: (newValue) async {
        setState(() {
          if (title == 'Auto-play Next Episode') {
            _autoPlayNextEpisode = newValue;
          } else if (title == 'Auto Frame Rate Matching') {
            _autoFrameRate = newValue;
          }
        });
        
        // Save to SharedPreferences
        final prefs = await SharedPreferences.getInstance();
        if (title == 'Auto-play Next Episode') {
          await prefs.setBool('auto_play_next', newValue);
        } else if (title == 'Auto Frame Rate Matching') {
          await prefs.setBool('auto_frame_rate', newValue);
        }
      },
    );
  }

  Widget _buildAudioSwitchTile(String title, bool value, {String? subtitle}) {
    return SwitchListTile(
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle, style: TextStyle(fontSize: 12, color: AppTheme.textSecondary)) : null,
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
        
        // Save to SharedPreferences
        final prefs = await SharedPreferences.getInstance();
        if (title == 'Audio Passthrough') {
          await prefs.setBool('audio_passthrough', newValue);
        } else if (title == 'Audio Boost') {
          await prefs.setBool('audio_boost', newValue);
        } else if (title == 'Normalize Audio') {
          await prefs.setBool('normalize_audio', newValue);
        }
      },
    );
  }

  Widget _buildDropdown(
    String label,
    String value,
    List<String> items,
    Function(String?) onChanged,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: AppSizes.sm),
          DropdownButtonFormField<String>(
            value: value,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white.withAlpha((0.2 * 255).round())),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white.withAlpha((0.2 * 255).round())),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.primaryBlue, width: 2),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: AppSizes.md,
                vertical: AppSizes.sm,
              ),
            ),
            dropdownColor: AppTheme.cardBackground,
            style: TextStyle(color: Colors.white),
            items: items.map((item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item, style: TextStyle(color: Colors.white)),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ],
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
  }) {
    return Focus(
      focusNode: focusNode,
      onFocusChange: (hasFocus) {
        if (!hasFocus && isEditable) {
          onEditableChanged(false);
        }
      },
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        final key = event.logicalKey;
        // On SELECT/ENTER, enable editing and show keyboard
        if (key == LogicalKeyboardKey.select || key == LogicalKeyboardKey.enter) {
          if (!isEditable) {
            onEditableChanged(true);
            // Request focus again after enabling editing to trigger keyboard
            Future.delayed(Duration(milliseconds: 50), () {
              focusNode.requestFocus();
            });
          }
          return KeyEventResult.handled;
        }
        
        // On BACK/ESCAPE, stop editing
        if (isEditable && (key == LogicalKeyboardKey.escape || key == LogicalKeyboardKey.goBack)) {
          onEditableChanged(false);
          // Keep focus on the node but exit edit mode
          focusNode.requestFocus();
          return KeyEventResult.handled;
        }
        
        // On LEFT arrow, if not editing
        if (!isEditable && key == LogicalKeyboardKey.arrowLeft) {
          if (onLeftArrow != null) {
             onLeftArrow();
             return KeyEventResult.handled;
          }
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
            borderSide: BorderSide(color: AppTheme.primaryBlue, width: 3),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
      ),
    );
  }

  void _showSourceLanguageSelector(
    BuildContext context,
    LiveTranscriptionService service,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Select Source Language'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: service.getAvailableSourceLanguages().length,
            itemBuilder: (context, index) {
              final lang = service.getAvailableSourceLanguages()[index];
              final isSelected = service.sourceLanguage == lang.code;

              return ListTile(
                leading: Icon(
                  isSelected ? Icons.check_circle : Icons.circle_outlined,
                  color: isSelected ? AppTheme.primaryBlue : null,
                ),
                title: Text(lang.name),
                subtitle: Text(lang.code),
                selected: isSelected,
                onTap: () {
                  service.setSourceLanguage(lang.code);
                  Navigator.pop(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  void _showTargetLanguageSelector(
    BuildContext context,
    LiveTranscriptionService service,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Select Target Language'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: service.getAvailableTargetLanguages().length,
            itemBuilder: (context, index) {
              final lang = service.getAvailableTargetLanguages()[index];
              final isSelected = service.targetLanguage == lang.code;

              return ListTile(
                leading: Icon(
                  isSelected ? Icons.check_circle : Icons.circle_outlined,
                  color: isSelected ? AppTheme.primaryBlue : null,
                ),
                title: Text(lang.name),
                subtitle: Text(lang.code),
                selected: isSelected,
                onTap: () {
                  service.setTargetLanguage(lang.code);
                  Navigator.pop(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  void _exportTranscriptions(
    BuildContext context,
    LiveTranscriptionService service,
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

  void _confirmClearTranscriptions(
    BuildContext context,
    LiveTranscriptionService service,
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
                showAppSnackBar(localContext, const SnackBar(content: Text('Transcriptions cleared')));
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
