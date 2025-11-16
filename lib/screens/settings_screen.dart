// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';
import 'package:iptv_player/services/live_transcription_service.dart';
import 'package:iptv_player/services/local_backup_service.dart';
import 'package:iptv_player/services/opensubtitles_service.dart';
import 'package:iptv_player/services/real_debrid_service.dart';
import 'package:iptv_player/services/whisper_speech_service.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/models/content.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

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
  final TextEditingController _xtreamPasswordController = TextEditingController();
  final TextEditingController _realDebridApiKeyController = TextEditingController();
  final TextEditingController _openSubtitlesUsernameController = TextEditingController();
  final TextEditingController _openSubtitlesPasswordController = TextEditingController();

  // Focus nodes and menu focus list
  late final List<FocusNode> _menuFocusNodes = List.generate(5, (_) => FocusNode());
  final FocusNode _m3uUrlFocusNode = FocusNode();
  final FocusNode _xtreamServerFocusNode = FocusNode();
  final FocusNode _xtreamUsernameFocusNode = FocusNode();
  final FocusNode _xtreamPasswordFocusNode = FocusNode();
  final FocusNode _realDebridApiKeyFocusNode = FocusNode();
  final FocusNode _openSubtitlesUsernameFocusNode = FocusNode();
  final FocusNode _openSubtitlesPasswordFocusNode = FocusNode();

  // State flags and settings defaults
  bool _openSubtitlesEnabled = false;
  bool _openSubtitlesUsernameEditable = false;
  bool _openSubtitlesPasswordEditable = false;
  bool _autoDownloadSubtitles = false;

  bool _realDebridEnabled = false;
  bool _realDebridApiKeyEditable = false;
  bool _realDebridForCatchup = true;
  bool _realDebridForVOD = true;

  // Playback + UI state defaults
  final bool _hardwareAcceleration = false;
  final bool _hardwareDecoding = false;
  final bool _hardwarePostProcessing = false;
  bool _autoFrameRate = false;
  String _decoderType = 'Auto';
  String _renderingEngine = 'Auto';
  String _audioDecoderType = 'Auto';
  int _audioChannels = 0;
  String _preferredAudioLanguage = 'Default';
  bool _audioPassthrough = false;
  bool _audioBoost = false;
  bool _normalizeAudio = false;
  bool _autoPlayNextEpisode = true;
  String _videoQuality = 'Auto';
  double _videoBufferSize = 50.0;

  // AI settings
  bool _aiUpscalingEnabled = false;
  String _aiQuality = 'Balanced';
  
  // Editable flags for input fields
  bool _m3uUrlEditable = true;
  bool _xtreamServerEditable = true;
  bool _xtreamUsernameEditable = true;
  bool _xtreamPasswordEditable = true;


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
    // Dispose all focus nodes
    for (var n in _menuFocusNodes) {
      n.dispose();
    }
    _tabController.dispose();
    
    // Dispose text controllers
    _m3uUrlController.dispose();
    _xtreamServerController.dispose();
    _xtreamUsernameController.dispose();
    _xtreamPasswordController.dispose();
    _realDebridApiKeyController.dispose();
    _openSubtitlesUsernameController.dispose();
    _openSubtitlesPasswordController.dispose();
    
    // Dispose focus nodes
    _m3uUrlFocusNode.dispose();
    _xtreamServerFocusNode.dispose();
    _xtreamUsernameFocusNode.dispose();
    _xtreamPasswordFocusNode.dispose();
    _realDebridApiKeyFocusNode.dispose();
    _openSubtitlesUsernameFocusNode.dispose();
    _openSubtitlesPasswordFocusNode.dispose();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          context.go('/home');
        }
      },
      child: Scaffold(
        backgroundColor: AppTheme.darkBackground,
        body: Row(
          children: [
            _buildSidebarMenu(),
            const VerticalDivider(width: 1, color: AppTheme.divider),
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
                child: IndexedStack(
                  index: _tabController.index,
                  children: [
                    _buildGeneralSettings(),
                    _buildAccountSettings(),
                    _buildPlaybackSettings(),
                    _buildCloudAndAISettings(),
                    _buildRecordingsSettings(),
                  ],
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
      decoration: const BoxDecoration(
        color: AppTheme.sidebarBackground,
        border: Border(
          right: BorderSide(
            color: AppTheme.divider,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          // Settings header
          Container(
            height: 80,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppTheme.primaryBlue,
                  width: 2,
                ),
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
                      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: isSelected
                          ? AppTheme.primaryBlue.withAlpha((0.3 * 255).round())
                          : AppTheme.darkBackground,
                        border: Border.all(
                            color: isSelected
                              ? AppTheme.primaryBlue.withAlpha((0.5 * 255).round())
                              : AppTheme.darkBackground,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        child: Row(
                          children: [
                            Icon(
                              item['icon'] as IconData,
                              color: isSelected
                                  ? AppTheme.primaryBlue
                                  : AppTheme.textSecondary,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
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

  // Allow AppShell to request focus into this screen's sidebar
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
                            profileImagePath != null && profileImagePath.isNotEmpty
                                ? FileImage(File(profileImagePath))
                                : null,
                        child: profileImagePath == null || profileImagePath.isEmpty
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
                      ElevatedButton(
                        onPressed: () async {
                          final result = await context.push('/edit-profile');
                          if (result == true) {
                            setState(() {});
                          }
                        },
                        child: const Text('Edit Profile'),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            _buildSectionCard(
              title: 'Local Backup',
              subtitle: 'Export and import your settings, playlists, and history locally',
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSizes.sm),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            size: 18,
                            color: AppTheme.primaryBlue,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'What gets backed up:',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppTheme.primaryBlue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        '✓ Profile, settings, playlists, watch history & favorites.',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '⚠ Recordings are NOT backed up.',
                        style: TextStyle(
                          fontSize: 11,
                          color: AppTheme.accentOrange,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSizes.sm),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () async {
                          final messenger = ScaffoldMessenger.of(context);
                          try {
                            final prefs = await SharedPreferences.getInstance();
                            // Collect prefs
                            final Map<String, dynamic> prefsMap = {};
                            for (final k in prefs.getKeys()) {
                              prefsMap[k] = prefs.get(k);
                            }

                            final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
                            final contentProvider = Provider.of<ContentProvider>(context, listen: false);

                            final combined = <String, dynamic>{
                              'prefs': prefsMap,
                              'favorites': channelProvider.favoriteChannels.map((c) => c.toMap()).toList(),
                              'channels': channelProvider.channels.map((c) => c.toMap()).toList(),
                              'movies': contentProvider.movies.map((m) => m.toMap()).toList(),
                              'series': contentProvider.series.map((s) => s.toMap()).toList(),
                              'cached_playlist': prefs.getString('cached_playlist'),
                            };

                            final path = await LocalBackupService.exportBackup(combined);
                            if (!mounted) return;
                            messenger.showSnackBar(
                              SnackBar(content: Text('Backup exported: $path')),
                            );
                          } catch (e) {
                            if (!mounted) return;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Export failed: $e')),
                            );
                          }
                        },
                        icon: const Icon(Icons.download),
                        label: const Text('Export Backup'),
                      ),
                    ),
                    const SizedBox(width: AppSizes.sm),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () async {
                          final messenger = ScaffoldMessenger.of(context);
                          try {
                            // Ask for confirmation and whether the user wants a pre-backup
                            final choice = await showDialog<String>(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                title: const Text('Import Backup'),
                                content: const Text('Importing a backup will overwrite local settings and data. Would you like to create a pre-backup first?'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.of(ctx).pop('cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.of(ctx).pop('backup'),
                                    child: const Text('Backup & Continue'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.of(ctx).pop('continue'),
                                    child: const Text('Continue'),
                                  ),
                                ],
                              ),
                            );

                            if (choice == null || choice == 'cancel') {
                              if (!mounted) return;
                              messenger.showSnackBar(const SnackBar(content: Text('Import cancelled')));
                              return;
                            }

                            if (choice == 'backup') {
                              // create a pre-backup of current state
                              final prefs = await SharedPreferences.getInstance();
                              final Map<String, dynamic> prefsMap = {};
                              for (final k in prefs.getKeys()) {
                                prefsMap[k] = prefs.get(k);
                              }

                              final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
                              final contentProvider = Provider.of<ContentProvider>(context, listen: false);

                              final combined = <String, dynamic>{
                                'prefs': prefsMap,
                                'favorites': channelProvider.favoriteChannels.map((c) => c.toMap()).toList(),
                                'channels': channelProvider.channels.map((c) => c.toMap()).toList(),
                                'movies': contentProvider.movies.map((m) => m.toMap()).toList(),
                                'series': contentProvider.series.map((s) => s.toMap()).toList(),
                                'cached_playlist': prefs.getString('cached_playlist'),
                              };

                              final backupPath = await LocalBackupService.exportBackup(combined);
                              if (!mounted) return;
                              messenger.showSnackBar(SnackBar(content: Text('Pre-backup created: $backupPath')));
                            }

                            // Now prompt user to select the backup to import
                            final data = await LocalBackupService.importBackup();
                            if (data == null) {
                              if (!mounted) return;
                              messenger.showSnackBar(const SnackBar(content: Text('Import cancelled')));
                              return;
                            }

                            final prefs = await SharedPreferences.getInstance();
                            final prefsMap = data['prefs'] as Map<String, dynamic>?;
                            if (prefsMap != null) {
                              for (final entry in prefsMap.entries) {
                                final key = entry.key;
                                final val = entry.value;
                                if (val is String) {
                                  await prefs.setString(key, val);
                                } else if (val is bool) {
                                  await prefs.setBool(key, val);
                                } else if (val is int) {
                                  await prefs.setInt(key, val);
                                } else if (val is double) {
                                  await prefs.setDouble(key, val);
                                } else if (val is List) {
                                  await prefs.setStringList(key, List<String>.from(val.map((e) => e.toString())));
                                }
                              }
                            }

                            // Restore movies/series if present
                            final contentProvider = Provider.of<ContentProvider>(context, listen: false);
                            final movies = data['movies'] as List<dynamic>?;
                            final series = data['series'] as List<dynamic>?;
                            if (movies != null) {
                              contentProvider.loadMovies(movies.map((m) => Content.fromMap(m as Map<String, dynamic>)).toList());
                            }
                            if (series != null) {
                              contentProvider.loadSeries(series.map((s) => Content.fromMap(s as Map<String, dynamic>)).toList());
                            }

                            // Restore cached playlist if present
                            final cached = data['cached_playlist'] as String?;
                            final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
                            if (cached != null && cached.isNotEmpty) {
                              await prefs.setString('cached_playlist', cached);
                              try {
                                channelProvider.loadPlaylistFromString(cached);
                              } catch (_) {
                                // ignore errors; the cache may be incompatible
                              }
                            }

                            // Restore favorites by matching channel ids
                            final favorites = data['favorites'] as List<dynamic>?;
                            if (favorites != null) {
                              final favIds = favorites.map((f) => (f as Map<String, dynamic>)['id']?.toString()).whereType<String>().toSet();
                              for (final ch in channelProvider.channels) {
                                if (favIds.contains(ch.id)) {
                                  channelProvider.addToFavorites(ch);
                                }
                              }
                            }

                            if (!mounted) return;
                            messenger.showSnackBar(const SnackBar(content: Text('Import completed.')));
                          } catch (e) {
                            if (!mounted) return;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Import failed: $e')),
                            );
                          }
                        },
                        icon: const Icon(Icons.upload_file),
                        label: const Text('Import Backup'),
                      ),
                    ),
                  ],
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
              (value) async {
                if (value != null) {
                  setState(() => _decoderType = value);
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('decoder_type', value);
                }
              },
            ),
            _buildDropdown(
              'Rendering Engine',
              _renderingEngine,
              ['Auto', 'SurfaceView', 'TextureView'],
              (value) async {
                if (value != null) {
                  setState(() => _renderingEngine = value);
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('rendering_engine', value);
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
              (value) async {
                if (value != null) {
                  setState(() => _videoQuality = value);
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('video_quality', value);
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
              onChangeEnd: (value) async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setDouble('video_buffer_size', value);
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
        if (!snapshot.hasData) {
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
            const SizedBox(height: AppSizes.md),
            
            // Current Provider Info
            Container(
              padding: const EdgeInsets.all(AppSizes.md),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                border: Border.all(color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round())),
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
                    const SizedBox(height: 4),
                    Text(
                      epgUrl,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 11, color: AppTheme.textSecondary),
                    ),
                  ],
                ],
              ),
            ),
            
            const SizedBox(height: AppSizes.lg),
            
            // Custom EPG URL Input
            Text(
              'Custom EPG URL',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppSizes.sm),
            Focus(
              canRequestFocus: true,
              child: TextField(
                controller: customEpgController,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'http://example.com/epg.xml.gz',
                  prefixIcon: const Icon(Icons.link),
                  filled: true,
                  fillColor: AppTheme.highlight,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: AppTheme.primaryBlue, width: 3),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.save),
                    onPressed: () async {
                      final messenger = ScaffoldMessenger.of(context);
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString('custom_epg_url', customEpgController.text);
                      if (!mounted) return;
                      messenger.showSnackBar(
                        const SnackBar(
                          content: Text('Custom EPG URL saved'),
                          backgroundColor: AppTheme.accentGreen,
                        ),
                      );
                      setState(() {}); // Refresh to show saved URL
                    },
                    tooltip: 'Save EPG URL',
                  ),
                ),
                onSubmitted: (value) async {
                  final messenger = ScaffoldMessenger.of(context);
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('custom_epg_url', value);
                  if (!mounted) return;
                  messenger.showSnackBar(
                    const SnackBar(
                      content: Text('Custom EPG URL saved'),
                      backgroundColor: AppTheme.accentGreen,
                    ),
                  );
                  setState(() {}); // Refresh to show saved URL
                },
              ),
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
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: epgUpdateInterval > 1 ? () async {
                      final newValue = epgUpdateInterval - 1;
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setInt('epg_update_interval', newValue);
                      setState(() {});
                    } : null,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
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
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
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
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: epgPastDays > 0 ? () async {
                      final newValue = epgPastDays - 1;
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setInt('epg_past_days', newValue);
                      setState(() {});
                    } : null,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
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
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
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
              title: const Text('Store Program Descriptions'),
              subtitle: const Text('Save detailed program information (uses more storage)'),
              value: storeDescriptions,
              onChanged: (value) async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('store_program_descriptions', value);
                setState(() {});
              },
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
            
            SwitchListTile(
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
            
            SwitchListTile(
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
            
            const SizedBox(height: AppSizes.lg),
            
            // Update EPG & Clear EPG Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      final messenger = ScaffoldMessenger.of(context);
                      final prefs = await SharedPreferences.getInstance();
                      final customEpgUrl = prefs.getString('custom_epg_url');
                      final playlistEpgUrl = prefs.getString('epg_url'); // From playlist

                      final urlToUse = customEpgUrl?.isNotEmpty == true ? customEpgUrl! : playlistEpgUrl;

                      if (urlToUse == null || urlToUse.isEmpty) {
                        if (!mounted) return;
                        messenger.showSnackBar(
                          const SnackBar(
                            content: Text('No EPG URL configured'),
                            backgroundColor: AppTheme.accentRed,
                          ),
                        );
                        return;
                      }

                      if (!mounted) return;
                      messenger.showSnackBar(
                        const SnackBar(
                          content: Text('Updating EPG data...'),
                          backgroundColor: AppTheme.primaryBlue,
                        ),
                      );

                      try {
                        final epgService = Provider.of<EpgService>(context, listen: false);
                        await epgService.refresh(urlToUse);
                        if (!mounted) return;
                        messenger.showSnackBar(
                          const SnackBar(
                            content: Text('EPG updated successfully'),
                            backgroundColor: AppTheme.accentGreen,
                          ),
                        );
                      } catch (e) {
                        if (!mounted) return;
                        messenger.showSnackBar(
                          SnackBar(
                            content: Text('EPG update failed: ${e.toString()}'),
                            backgroundColor: AppTheme.accentRed,
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Update EPG'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                const SizedBox(width: AppSizes.md),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      final messenger = ScaffoldMessenger.of(context);
                      // Show confirmation dialog
                      final confirm = await showDialog<bool>(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Clear EPG Data'),
                          content: const Text('Are you sure you want to clear all EPG data? This cannot be undone.'),
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
                        try {
                          final epgService = Provider.of<EpgService>(context, listen: false);
                          await epgService.clearCache();
                          if (!mounted) return;
                          messenger.showSnackBar(
                            const SnackBar(
                              content: Text('EPG data cleared'),
                              backgroundColor: AppTheme.accentGreen,
                            ),
                          );
                        } catch (e) {
                          if (!mounted) return;
                          messenger.showSnackBar(
                            SnackBar(
                              content: Text('Failed to clear EPG: ${e.toString()}'),
                              backgroundColor: AppTheme.accentRed,
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
        // M3U & Xtream Codes Section
        _buildSectionCard(
          title: 'Playlist Sources',
          subtitle: 'Use M3U URL OR Xtream Codes (choose one)',
          children: [
            Text(
              'Option 1: M3U Playlist URL',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: AppSizes.sm),
            _buildTVTextField(
              controller: _m3uUrlController,
              focusNode: _m3uUrlFocusNode,
              isEditable: _m3uUrlEditable,
              onEditableChanged: (value) => setState(() => _m3uUrlEditable = value),
              hintText: 'http://example.com/playlist.m3u',
              helperText: 'Enter M3U URL and click Load',
              prefixIcon: Icons.link,
            ),
            const SizedBox(height: AppSizes.sm),
            ElevatedButton.icon(
              onPressed: () async {
                // Load M3U playlist from URL
                final url = _m3uUrlController.text.trim();
                if (url.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please enter a valid M3U URL')),
                  );
                  return;
                }

                final messenger = ScaffoldMessenger.of(context);
                messenger.showSnackBar(
                  const SnackBar(content: Text('Loading playlist from URL...')),
                );

                try {
                  final provider = Provider.of<ChannelProvider>(
                    context,
                    listen: false,
                  );
                  await provider.loadPlaylistFromUrl(url);

                  // Save credentials
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('m3u_url', url);
                  await prefs.setString('playlist_type', 'm3u');

                  if (mounted) {
                    messenger.showSnackBar(
                      SnackBar(
                        content: Text(
                          'Playlist loaded successfully! ${provider.channels.length} channels found.',
                        ),
                        backgroundColor: AppTheme.accentGreen,
                      ),
                    );
                  }
                } catch (e) {
                  if (mounted) {
                    messenger.showSnackBar(
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
              label: const Text('Load M3U Playlist'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryBlue,
              ),
            ),
            const SizedBox(height: AppSizes.lg),

            const Divider(),
            const SizedBox(height: AppSizes.lg),

            Text(
              'Option 2: Xtream Codes API',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: AppSizes.sm),
            _buildTVTextField(
              controller: _xtreamServerController,
              focusNode: _xtreamServerFocusNode,
              isEditable: _xtreamServerEditable,
              onEditableChanged: (value) => setState(() => _xtreamServerEditable = value),
              labelText: 'Server URL',
              hintText: 'http://example.com:8080',
              helperText: 'Enter server, username, password and click Load',
              prefixIcon: Icons.dns,
            ),
            const SizedBox(height: AppSizes.md),
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
                  ),
                ),
                const SizedBox(width: AppSizes.md),
                Expanded(
                  child: _buildTVTextField(
                    controller: _xtreamPasswordController,
                    focusNode: _xtreamPasswordFocusNode,
                    isEditable: _xtreamPasswordEditable,
                    onEditableChanged: (value) => setState(() => _xtreamPasswordEditable = value),
                    labelText: 'Password',
                    prefixIcon: Icons.lock,
                    obscureText: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.md),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    _xtreamServerController.clear();
                    _xtreamUsernameController.clear();
                    _xtreamPasswordController.clear();
                  },
                  child: const Text('Clear'),
                ),
                const SizedBox(width: AppSizes.sm),
                ElevatedButton.icon(
                  onPressed: () async {
                    final messenger = ScaffoldMessenger.of(context);
                    // Load Xtream playlist
                    final server = _xtreamServerController.text.trim();
                    final username = _xtreamUsernameController.text.trim();
                    final password = _xtreamPasswordController.text.trim();

                    if (server.isEmpty ||
                        username.isEmpty ||
                        password.isEmpty) {
                      messenger.showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Please fill in all Xtream Codes fields',
                          ),
                        ),
                      );
                      return;
                    }

                    messenger.showSnackBar(
                      const SnackBar(
                        content: Text('Loading Xtream Codes playlist...'),
                      ),
                    );

                    // Build Xtream API URL for getting live streams
                    // Format: http://server:port/get.php?username=xxx&password=xxx&type=m3u_plus&output=ts
                    final url =
                        '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';

                    try {
                      final provider = Provider.of<ChannelProvider>(
                        context,
                        listen: false,
                      );
                      await provider.loadPlaylistFromUrl(url);

                      // Save credentials
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString('xtream_server', server);
                      await prefs.setString('xtream_username', username);
                      await prefs.setString('xtream_password', password);
                      await prefs.setString('playlist_type', 'xtream');

                      if (mounted) {
                        messenger.showSnackBar(
                          SnackBar(
                            content: Text(
                              'Xtream playlist loaded! ${provider.channels.length} channels found.',
                            ),
                            backgroundColor: AppTheme.accentGreen,
                          ),
                        );
                      }
                    } catch (e) {
                      if (mounted) {
                        messenger.showSnackBar(
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryBlue,
                  ),
                ),
              ],
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

  // ignore: unused_element
  Widget _buildAISettingsSection() {
    return _buildSettingsSection(
      title: 'AI & Cloud Settings',
      children: [
        // Live Transcription
        _buildSafeConsumer<LiveTranscriptionService>(
          builder: (context, transcriptionService) {
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
                    onChanged:
                        transcriptionService.setTranslationEnabled,
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

                  if (transcriptionService
                      .transcriptions
                      .isNotEmpty) ...[
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
                    padding: const EdgeInsets.all(AppSizes.md),
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
          },
        ),

        // AI Video Enhancement
        _buildSafeConsumer<AIUpscalingService>(
          builder: (context, aiService) {
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
                          final messenger = ScaffoldMessenger.of(context);
                          final prefs = await SharedPreferences.getInstance();
                          await prefs.setBool('ai_upscaling', value);
                          aiService.setEnabled(value);
                          if (mounted) {
                            messenger.showSnackBar(
                              SnackBar(
                                content: Text(
                                  value
                                      ? 'AI Upscaling enabled'
                                      : 'AI Upscaling disabled',
                                ),
                              ),
                            );
                          }
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
                        borderRadius: BorderRadius.circular(AppSizes.radiusMd),
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
                    child: Container(
                      padding: const EdgeInsets.all(AppSizes.md),
                      decoration: BoxDecoration(
                        color: AppTheme.accentOrange.withAlpha((0.1 * 255).round()),
                        borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                        border: Border.all(
                          color: AppTheme.accentOrange.withAlpha((0.3 * 255).round()),
                        ),
                      ),
                      child: const Column(
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
        // Add error boundary for service consumers
        // Service Status Overview
        _buildSectionCard(
          title: 'Service Status',
          subtitle: 'External service configuration status',
          children: [
            _buildServiceStatusGrid(),
            const SizedBox(height: AppSizes.md),
            Container(
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  Icon(Icons.info_outline, color: AppTheme.primaryBlue, size: 16),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'See SETUP_GUIDE.md for API key configuration',
                      style: TextStyle(fontSize: 12, color: AppTheme.primaryBlue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        
        // Google Drive Sync removed: replaced by local backup controls
        _buildSectionCard(
          title: 'Cloud Sync (Removed)',
          subtitle: 'Google Drive integration has been removed',
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Google Drive syncing has been removed to simplify setup. Use the Local Backup section above to export and import your settings, playlists, and favorites as a local JSON file.',
                style: TextStyle(color: AppTheme.textSecondary),
              ),
            ),
          ],
        ),

        // OpenSubtitles Integration
        _buildSafeConsumer<OpenSubtitlesService>(
          builder: (context, subtitleService) {
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
                      final messenger = ScaffoldMessenger.of(context);
                      final success = await subtitleService.authenticate();
                      if (mounted) {
                        messenger.showSnackBar(
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
                      }
                    },
                    icon: const Icon(Icons.check_circle),
                    label: const Text('Test Connection'),
                  ),
                ],
              ],
            );
          },
        ),

        // Real-Debrid Integration
        _buildSafeConsumer<RealDebridService>(
          builder: (context, rdService) {
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
                      final messenger = ScaffoldMessenger.of(context);
                      final success = await rdService.testConnection();
                      if (mounted) {
                        messenger.showSnackBar(
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
                      }
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
          },
        ),

        // AI Upscaling
        _buildSafeConsumer<AIUpscalingService>(
          builder: (context, aiService) {
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
          },
        ),

        // Whisper On-Device Transcription
        _buildSafeConsumer<WhisperSpeechService>(
          builder: (context, whisperService) {
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
                        const Row(
                          children: [
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
                    child: const Row(
                      children: [
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
                  const ListTile(
                    leading: Icon(
                      Icons.offline_bolt,
                      color: AppTheme.primaryBlue,
                    ),
                    title: Text('Status: 100% Offline'),
                    subtitle: Text(
                      'Works without internet • No cloud APIs ever',
                    ),
                  ),
                  const SizedBox(height: 8),
                  const ListTile(
                    leading: Icon(
                      Icons.security,
                      color: AppTheme.primaryBlue,
                    ),
                    title: Text('Privacy: Complete'),
                    subtitle: Text(
                      'All AI processing on your device • Zero data collection',
                    ),
                  ),
                  const SizedBox(height: 8),
                  const ListTile(
                    leading: Icon(
                      Icons.language,
                      color: AppTheme.primaryBlue,
                    ),
                    title: Text('Languages: 99+'),
                    subtitle: Text(
                      'Multilingual support built-in (no extra downloads)',
                    ),
                  ),
                ],
              ],
            );
          },
        ),

        // AI Model Downloads
        _buildSafeConsumer<AIModelManager>(
          builder: (context, modelManager) {
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
                      color: AppTheme.accentOrange.withAlpha((0.3 * 255).round()),
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
                    ),
                    const SizedBox(width: AppSizes.sm),
                    ElevatedButton.icon(
                      onPressed: () async {
                        final messenger = ScaffoldMessenger.of(context);
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
                            if (mounted) {
                              messenger.showSnackBar(
                                const SnackBar(
                                  content: Text('Recording location updated'),
                                  backgroundColor: AppTheme.accentGreen,
                                ),
                              );
                            }
                          }
                        } catch (e) {
                          if (mounted) {
                            messenger.showSnackBar(
                              SnackBar(
                                content: Text('Failed to select folder: $e'),
                                backgroundColor: AppTheme.accentRed,
                              ),
                            );
                          }
                        }
                      },
                      icon: const Icon(Icons.create_new_folder),
                      label: const Text('Browse'),
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
                          snapshot.data!,
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
                FutureBuilder<String>(
                  future: SharedPreferences.getInstance().then((prefs) => prefs.getString('recording_timezone') ?? 'UTC-5 (EST)'),
                  builder: (context, snapshot) {
                    final timeZone = snapshot.data ?? 'UTC-5 (EST)';
                    return _buildDropdown('Time Zone', timeZone, [
                      'UTC-8 (PST)',
                      'UTC-5 (EST)',
                      'UTC+0 (GMT)',
                      'UTC+1 (CET)',
                    ], (value) async {
                      if (value != null) {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setString('recording_timezone', value);
                      }
                    });
                  },
                ),
                FutureBuilder<bool>(
                  future: SharedPreferences.getInstance().then((prefs) => prefs.getBool('recording_show_logos') ?? true),
                  builder: (context, snapshot) {
                    final showLogos = snapshot.data ?? true;
                    return SwitchListTile(
                      title: const Text('Show Channel Logos'),
                      value: showLogos,
                      onChanged: (value) async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('recording_show_logos', value);
                        setState(() {});
                      },
                    );
                  },
                ),
                FutureBuilder<bool>(
                  future: SharedPreferences.getInstance().then((prefs) => prefs.getBool('recording_show_images') ?? true),
                  builder: (context, snapshot) {
                    final showImages = snapshot.data ?? true;
                    return SwitchListTile(
                      title: const Text('Show Program Images'),
                      value: showImages,
                      onChanged: (value) async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('recording_show_images', value);
                        setState(() {});
                      },
                    );
                  },
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
      padding: const EdgeInsets.all(AppSizes.lg),  // Reduced from xl
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),  // Changed from headlineMedium
          ),
          const SizedBox(height: AppSizes.md),  // Reduced from lg
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
        if (!snapshot.hasData) {
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
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppTheme.textSecondary),
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
                          color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                          border: Border.all(color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round())),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.playlist_play, color: AppTheme.primaryBlue, size: 24),
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
                                const Icon(Icons.chevron_right, color: AppTheme.textSecondary),
                              ],
                            ),
                            const SizedBox(height: AppSizes.md),
                            if (data['type'] == 'm3u') ...[
                              _buildInfoRow('URL', data['m3u_url'] ?? 'N/A'),
                            ] else if (data['type'] == 'xtream') ...[
                              _buildInfoRow('Server', data['xtream_server'] ?? 'N/A'),
                              const SizedBox(height: AppSizes.xs),
                              _buildInfoRow('Username', data['xtream_username'] ?? 'N/A'),
                            ],
                            const SizedBox(height: AppSizes.md),
                            Container(
                              padding: const EdgeInsets.all(AppSizes.sm),
                              decoration: BoxDecoration(
                                color: AppTheme.cardBackground,
                                borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                              ),
                              child: const Row(
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
            style: const TextStyle(
              color: AppTheme.textSecondary,
              fontSize: 13,
            ),
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
      margin: const EdgeInsets.only(bottom: AppSizes.md),  // Reduced from lg
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.md),  // Reduced from lg
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
              const SizedBox(height: 3),  // Reduced spacing
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
            const SizedBox(height: AppSizes.sm),  // Reduced from md
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile(String title, bool value, {String? subtitle}) {
    return SwitchListTile(
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle, style: const TextStyle(fontSize: 12, color: AppTheme.textSecondary)) : null,
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
      subtitle: subtitle != null ? Text(subtitle, style: const TextStyle(fontSize: 12, color: AppTheme.textSecondary)) : null,
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
      padding: const EdgeInsets.only(bottom: AppSizes.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: AppSizes.sm),
          DropdownButtonFormField<String>(
            initialValue: value,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(
                horizontal: AppSizes.md,
                vertical: AppSizes.sm,
              ),
            ),
            items: items.map((item) {
              return DropdownMenuItem(value: item, child: Text(item));
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
            Future.delayed(const Duration(milliseconds: 50), () {
              focusNode.requestFocus();
            });
          }
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
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Transcriptions cleared')),
              );
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

  

  Widget _buildServiceStatusGrid() {
    final services = [
      {'name': 'OpenSubtitles', 'key': 'opensubtitles', 'icon': Icons.subtitles},
      {'name': 'TMDB', 'key': 'tmdb', 'icon': Icons.movie},
      {'name': 'AI Upscaling', 'key': 'ai_upscaling', 'icon': Icons.high_quality},
      {'name': 'Whisper AI', 'key': 'whisper', 'icon': Icons.record_voice_over},
    ];
    
    final status = ServiceValidator.getServiceStatus();
    
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 2.5,
      ),
      itemCount: services.length,
      itemBuilder: (context, index) {
        final service = services[index];
        final isAvailable = status[service['key']] ?? false;
        
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isAvailable 
                ? AppTheme.accentGreen.withAlpha((0.1 * 255).round())
                : AppTheme.textSecondary.withAlpha((0.1 * 255).round()),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isAvailable 
                  ? AppTheme.accentGreen.withAlpha((0.3 * 255).round())
                  : AppTheme.textSecondary.withAlpha((0.3 * 255).round()),
            ),
          ),
          child: Row(
            children: [
              Icon(
                service['icon'] as IconData,
                size: 16,
                color: isAvailable ? AppTheme.accentGreen : AppTheme.textSecondary,
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  service['name'] as String,
                  style: TextStyle(
                    fontSize: 11,
                    color: isAvailable ? AppTheme.accentGreen : AppTheme.textSecondary,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(
                isAvailable ? Icons.check_circle : Icons.circle_outlined,
                size: 12,
                color: isAvailable ? AppTheme.accentGreen : AppTheme.textSecondary,
              ),
            ],
          ),
        );
      },
    );
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

  /// Safe consumer wrapper that handles null services gracefully
  Widget _buildSafeConsumer<T extends ChangeNotifier>({required Widget Function(BuildContext, T) builder}) {
    return Consumer<T>(
      builder: (context, service, child) {
        try {
          return builder(context, service);
        } catch (e) {
          debugPrint('Error in consumer for ${T.toString()}: $e');
          return _buildSectionCard(
            title: 'Service Error',
            subtitle: 'Error loading ${T.toString()}',
            children: [Text('Error: ${e.toString()}')],
          );
        }
      },
    );
  }
}
