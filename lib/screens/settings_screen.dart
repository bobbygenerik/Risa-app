import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:file_picker/file_picker.dart';
import 'package:iptv_player/services/live_transcription_service.dart';
import 'package:iptv_player/services/google_drive_sync_service.dart';
import 'package:iptv_player/services/opensubtitles_service.dart';
import 'package:iptv_player/services/real_debrid_service.dart';
import 'package:iptv_player/services/whisper_speech_service.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
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
  final TextEditingController _xtreamPasswordController =
      TextEditingController();

  // Integration Settings
  final TextEditingController _realDebridApiKeyController =
      TextEditingController();
  final TextEditingController _openSubtitlesUsernameController =
      TextEditingController();
  final TextEditingController _openSubtitlesPasswordController =
      TextEditingController();

  // Playback Settings
  bool _autoPlayNextEpisode = true;
  bool _hardwareAcceleration = true;
  bool _hardwareDecoding = true;
  bool _hardwarePostProcessing = true;
  String _decoderType = 'Auto';
  String _renderingEngine = 'Auto';
  bool _defaultAudioTrack = true;
  double _videoBufferSize = 50;
  String _videoQuality = 'Auto';

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
  String _preferredSubtitleLanguage = 'English';

  // Other Settings
  String _selectedLanguage = 'English';
  String _chromecastDevice = 'Chromecast';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
    _loadSettings();
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

      // Double settings
      _videoBufferSize = prefs.getDouble('video_buffer_size') ?? 50;
    });
  }

  // Save individual setting
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
    _tabController.dispose();
    _m3uUrlController.dispose();
    _xtreamServerController.dispose();
    _xtreamUsernameController.dispose();
    _xtreamPasswordController.dispose();
    _realDebridApiKeyController.dispose();
    _openSubtitlesUsernameController.dispose();
    _openSubtitlesPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildSidebarMenu(),
        VerticalDivider(width: 1, color: AppTheme.divider),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildGeneralSettings(),
              _buildAccountSettings(),
              _buildPlaybackSettings(),
              _buildCloudAndAISettings(),
              _buildEPGSettings(),
              _buildParentalControlsSettings(),
              _buildAppearanceSettings(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSidebarMenu() {
    final menuItems = [
      {'title': 'General', 'icon': Icons.settings_outlined},
      {'title': 'Account', 'icon': Icons.person_outline},
      {'title': 'Playback', 'icon': Icons.play_circle_outline},
      {'title': 'Cloud & AI', 'icon': Icons.cloud_outlined},
      {'title': 'EPG & Recordings', 'icon': Icons.tv_outlined},
      {'title': 'Parental Controls', 'icon': Icons.shield_outlined},
      {'title': 'Appearance', 'icon': Icons.palette_outlined},
    ];

    return Container(
      width: 250,
      color: AppTheme.sidebarBackground,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(AppSizes.lg),
            child: Text(
              'Settings',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(color: AppTheme.divider, height: 1),
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final item = menuItems[index];
                return ListTile(
                  leading: Icon(
                    item['icon'] as IconData,
                    color: _tabController.index == index
                        ? AppTheme.primaryBlue
                        : AppTheme.textSecondary,
                  ),
                  title: Text(
                    item['title'] as String,
                    style: TextStyle(
                      color: _tabController.index == index
                          ? AppTheme.primaryBlue
                          : AppTheme.textPrimary,
                      fontWeight: _tabController.index == index
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                  selected: _tabController.index == index,
                  selectedTileColor: AppTheme.primaryBlue.withOpacity(0.1),
                  onTap: () {
                    setState(() {
                      _tabController.index = index;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
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
                            profileImagePath != null &&
                                profileImagePath.isNotEmpty
                            ? FileImage(File(profileImagePath))
                            : null,
                        child:
                            profileImagePath == null || profileImagePath.isEmpty
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
                          if (result == true) {
                            // Profile was updated, refresh the UI
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
            Consumer<GoogleDriveSyncService>(
              builder: (context, syncService, _) {
                return _buildSectionCard(
                  title: 'Google Drive Sync',
                  subtitle: 'Backup your data to Google Drive (FREE)',
                  children: [
                    // Info box about what gets synced
                    Container(
                      padding: EdgeInsets.all(AppSizes.md),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryBlue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppTheme.primaryBlue.withOpacity(0.3),
                        ),
                      ),
                      child: Column(
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
                                'What gets backed up:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppTheme.primaryBlue,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            '✓ Profile info (name, email)\n'
                            '✓ All app settings & preferences\n'
                            '✓ Playlist URLs & credentials\n'
                            '✓ Watch history & favorites\n'
                            '✓ Continue watching progress',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.textSecondary,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '⚠ Recordings are NOT backed up to avoid copyright issues.\n'
                            'Store recordings locally or on a personal NAS/drive.',
                            style: TextStyle(
                              fontSize: 11,
                              color: AppTheme.accentOrange,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.md),
                    if (!syncService.isSignedIn) ...[
                      Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.cloud_outlined,
                              size: 48,
                              color: AppTheme.primaryBlue,
                            ),
                            SizedBox(height: AppSizes.md),
                            Text('Sign in with Google to enable cloud sync'),
                            SizedBox(height: AppSizes.md),
                            ElevatedButton.icon(
                              onPressed: syncService.isSyncing
                                  ? null
                                  : () async {
                                      try {
                                        await syncService.signIn();
                                        if (mounted) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Successfully signed in!',
                                              ),
                                            ),
                                          );
                                        }
                                      } catch (e) {
                                        if (mounted) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Sign in failed. Configure OAuth first.',
                                              ),
                                            ),
                                          );
                                        }
                                      }
                                    },
                              icon: Icon(Icons.login),
                              label: Text('Sign In with Google'),
                            ),
                            SizedBox(height: AppSizes.sm),
                            Text(
                              'FREE - Uses your Google Drive storage',
                              style: TextStyle(
                                color: AppTheme.primaryBlue,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ] else ...[
                      _buildInfoRow(
                        'Account',
                        syncService.userEmail ?? 'Signed In',
                      ),
                      _buildInfoRow(
                        'Last Sync',
                        syncService.lastSyncTime != null
                            ? _formatDateTime(syncService.lastSyncTime!)
                            : 'Never',
                      ),
                      if (syncService.storageUsed != null &&
                          syncService.storageLimit != null)
                        _buildInfoRow(
                          'Storage',
                          '${_formatBytes(syncService.storageUsed!)} / ${_formatBytes(syncService.storageLimit!)}',
                        ),
                      SizedBox(height: AppSizes.md),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: syncService.isSyncing
                                  ? null
                                  : () async {
                                      try {
                                        // Collect all user data from SharedPreferences
                                        final prefs =
                                            await SharedPreferences.getInstance();

                                        // Profile data
                                        final profileData = {
                                          'user_name': prefs.getString(
                                            'user_name',
                                          ),
                                          'user_email': prefs.getString(
                                            'user_email',
                                          ),
                                          'profile_image_path': prefs.getString(
                                            'profile_image_path',
                                          ),
                                        };

                                        // App settings
                                        final settingsData = {
                                          // Playlist settings
                                          'm3u_url': prefs.getString('m3u_url'),
                                          'xtream_server': prefs.getString(
                                            'xtream_server',
                                          ),
                                          'xtream_username': prefs.getString(
                                            'xtream_username',
                                          ),
                                          'xtream_password': prefs.getString(
                                            'xtream_password',
                                          ),
                                          'epg_url': prefs.getString('epg_url'),

                                          // Playback settings
                                          'auto_play_next': prefs.getBool(
                                            'auto_play_next',
                                          ),
                                          'hardware_acceleration': prefs
                                              .getBool('hardware_acceleration'),
                                          'hardware_decoding': prefs.getBool(
                                            'hardware_decoding',
                                          ),
                                          'hardware_postprocessing': prefs
                                              .getBool(
                                                'hardware_postprocessing',
                                              ),
                                          'decoder_type': prefs.getString(
                                            'decoder_type',
                                          ),
                                          'rendering_engine': prefs.getString(
                                            'rendering_engine',
                                          ),
                                          'video_buffer_size': prefs.getDouble(
                                            'video_buffer_size',
                                          ),

                                          // Integration settings
                                          'realdebrid_enabled': prefs.getBool(
                                            'realdebrid_enabled',
                                          ),
                                          'realdebrid_catchup': prefs.getBool(
                                            'realdebrid_catchup',
                                          ),
                                          'realdebrid_vod': prefs.getBool(
                                            'realdebrid_vod',
                                          ),
                                          'realdebrid_api_key': prefs.getString(
                                            'realdebrid_api_key',
                                          ),
                                          'opensubtitles_enabled': prefs
                                              .getBool('opensubtitles_enabled'),
                                          'opensubtitles_username': prefs
                                              .getString(
                                                'opensubtitles_username',
                                              ),
                                          'opensubtitles_password': prefs
                                              .getString(
                                                'opensubtitles_password',
                                              ),

                                          // AI & Subtitle settings
                                          'ai_upscaling': prefs.getBool(
                                            'ai_upscaling',
                                          ),
                                          'ai_quality': prefs.getString(
                                            'ai_quality',
                                          ),
                                          'auto_download_subtitles': prefs
                                              .getBool(
                                                'auto_download_subtitles',
                                              ),
                                          'subtitle_language': prefs.getString(
                                            'subtitle_language',
                                          ),

                                          // Appearance
                                          'app_language': prefs.getString(
                                            'app_language',
                                          ),
                                        };

                                        // Watch history from ContentProvider
                                        final contentProvider =
                                            Provider.of<ContentProvider>(
                                              context,
                                              listen: false,
                                            );
                                        final watchHistory = {
                                          'continue_watching': contentProvider
                                              .continueWatching
                                              .map(
                                                (content) => {
                                                  'id': content.id,
                                                  'title': content.title,
                                                  'type': content.type
                                                      .toString(),
                                                  'watchProgress':
                                                      content.watchProgress,
                                                  'lastWatchedDate': content
                                                      .lastWatchedDate
                                                      ?.toIso8601String(),
                                                },
                                              )
                                              .toList(),
                                        };

                                        // Favorites
                                        final favorites = {
                                          'movies': contentProvider.movies
                                              .where(
                                                (m) => m.isFavorite == true,
                                              )
                                              .map((m) => m.id)
                                              .toList(),
                                          'series': contentProvider.series
                                              .where(
                                                (s) => s.isFavorite == true,
                                              )
                                              .map((s) => s.id)
                                              .toList(),
                                        };

                                        // Sync to cloud
                                        final success = await syncService
                                            .syncToCloud(
                                              favorites: favorites,
                                              playlists: profileData,
                                              watchHistory: watchHistory,
                                              settings: settingsData,
                                            );

                                        if (mounted) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                success
                                                    ? 'All data synced to Google Drive!'
                                                    : 'Sync failed. Please try again.',
                                              ),
                                              backgroundColor: success
                                                  ? AppTheme.accentGreen
                                                  : AppTheme.accentRed,
                                            ),
                                          );
                                        }
                                      } catch (e) {
                                        if (mounted) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Sync failed: ${e.toString()}',
                                              ),
                                              backgroundColor:
                                                  AppTheme.accentRed,
                                            ),
                                          );
                                        }
                                      }
                                    },
                              icon: Icon(Icons.cloud_upload),
                              label: Text('Sync Now'),
                            ),
                          ),
                          SizedBox(width: AppSizes.sm),
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: syncService.isSyncing
                                  ? null
                                  : () async {
                                      try {
                                        final data = await syncService
                                            .restoreFromCloud();
                                        if (data == null) {
                                          if (mounted) {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'No backup found',
                                                ),
                                                backgroundColor:
                                                    AppTheme.accentRed,
                                              ),
                                            );
                                          }
                                          return;
                                        }

                                        // Restore to SharedPreferences
                                        final prefs =
                                            await SharedPreferences.getInstance();

                                        // Restore profile data
                                        final profileData =
                                            data['playlists']
                                                as Map<String, dynamic>?;
                                        if (profileData != null) {
                                          if (profileData['user_name'] !=
                                              null) {
                                            await prefs.setString(
                                              'user_name',
                                              profileData['user_name'],
                                            );
                                          }
                                          if (profileData['user_email'] !=
                                              null) {
                                            await prefs.setString(
                                              'user_email',
                                              profileData['user_email'],
                                            );
                                          }
                                          if (profileData['profile_image_path'] !=
                                              null) {
                                            await prefs.setString(
                                              'profile_image_path',
                                              profileData['profile_image_path'],
                                            );
                                          }
                                        }

                                        // Restore settings
                                        final settingsData =
                                            data['settings']
                                                as Map<String, dynamic>?;
                                        if (settingsData != null) {
                                          settingsData.forEach((
                                            key,
                                            value,
                                          ) async {
                                            if (value != null) {
                                              if (value is bool) {
                                                await prefs.setBool(key, value);
                                              } else if (value is int) {
                                                await prefs.setInt(key, value);
                                              } else if (value is double) {
                                                await prefs.setDouble(
                                                  key,
                                                  value,
                                                );
                                              } else if (value is String) {
                                                await prefs.setString(
                                                  key,
                                                  value,
                                                );
                                              }
                                            }
                                          });
                                        }

                                        // Reload settings in UI
                                        _loadSettings();

                                        if (mounted) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Data restored successfully! Restart app to apply all changes.',
                                              ),
                                              backgroundColor:
                                                  AppTheme.accentGreen,
                                              duration: Duration(seconds: 4),
                                            ),
                                          );
                                        }
                                      } catch (e) {
                                        if (mounted) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Restore failed: ${e.toString()}',
                                              ),
                                              backgroundColor:
                                                  AppTheme.accentRed,
                                            ),
                                          );
                                        }
                                      }
                                    },
                              icon: Icon(Icons.cloud_download),
                              label: Text('Restore'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSizes.sm),
                      TextButton.icon(
                        onPressed: () async {
                          await syncService.signOut();
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Signed out successfully'),
                              ),
                            );
                          }
                        },
                        icon: Icon(Icons.logout),
                        label: Text('Sign Out'),
                      ),
                      if (syncService.isSyncing)
                        Padding(
                          padding: EdgeInsets.only(top: AppSizes.sm),
                          child: LinearProgressIndicator(),
                        ),
                    ],
                  ],
                );
              },
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
            SizedBox(height: AppSizes.sm),
            TextField(
              controller: _m3uUrlController,
              decoration: InputDecoration(
                hintText: 'http://example.com/playlist.m3u',
                helperText: 'Enter M3U URL and click Load',
                prefixIcon: Icon(Icons.link),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: AppSizes.sm),
            ElevatedButton.icon(
              onPressed: () async {
                // Load M3U playlist from URL
                final url = _m3uUrlController.text.trim();
                if (url.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter a valid M3U URL')),
                  );
                  return;
                }

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Loading playlist from URL...')),
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Playlist loaded successfully! ${provider.channels.length} channels found.',
                        ),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                } catch (e) {
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
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
              icon: Icon(Icons.download),
              label: Text('Load M3U Playlist'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryBlue,
              ),
            ),
            SizedBox(height: AppSizes.lg),

            Divider(),
            SizedBox(height: AppSizes.lg),

            Text(
              'Option 2: Xtream Codes API',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: AppSizes.sm),
            TextField(
              controller: _xtreamServerController,
              decoration: InputDecoration(
                labelText: 'Server URL',
                hintText: 'http://example.com:8080',
                helperText: 'Enter server, username, password and click Load',
                prefixIcon: Icon(Icons.dns),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: AppSizes.md),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _xtreamUsernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: AppSizes.md),
                Expanded(
                  child: TextField(
                    controller: _xtreamPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                    ),
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
                    // Load Xtream playlist
                    final server = _xtreamServerController.text.trim();
                    final username = _xtreamUsernameController.text.trim();
                    final password = _xtreamPasswordController.text.trim();

                    if (server.isEmpty ||
                        username.isEmpty ||
                        password.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Please fill in all Xtream Codes fields',
                          ),
                        ),
                      );
                      return;
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
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
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Xtream playlist loaded! ${provider.channels.length} channels found.',
                            ),
                            backgroundColor: Colors.green,
                          ),
                        );
                      }
                    } catch (e) {
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
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
                  icon: Icon(Icons.download),
                  label: Text('Load Playlist'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryBlue,
                  ),
                ),
              ],
            ),
          ],
        ),

        // Real-Debrid Integration (Free API)
        _buildSectionCard(
          title: 'Real-Debrid Integration',
          subtitle: 'Enhanced streaming for VOD and Catch-up (Free API)',
          children: [
            SwitchListTile(
              title: Text('Enable Real-Debrid'),
              subtitle: Text('Use your Real-Debrid account for premium links'),
              value: _realDebridEnabled,
              onChanged: (value) {
                setState(() {
                  _realDebridEnabled = value;
                });
              },
            ),
            if (_realDebridEnabled) ...[
              SizedBox(height: AppSizes.md),
              TextField(
                controller: _realDebridApiKeyController,
                decoration: InputDecoration(
                  labelText: 'API Key',
                  hintText: 'Enter your Real-Debrid API key',
                  prefixIcon: Icon(Icons.vpn_key),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.help_outline),
                    onPressed: () {
                      // Show help dialog
                    },
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: AppSizes.md),
              CheckboxListTile(
                title: Text('Use for Catch-up TV'),
                value: _realDebridForCatchup,
                onChanged: (value) {
                  setState(() {
                    _realDebridForCatchup = value ?? true;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Use for VOD/Movies'),
                value: _realDebridForVOD,
                onChanged: (value) {
                  setState(() {
                    _realDebridForVOD = value ?? true;
                  });
                },
              ),
            ],
          ],
        ),

        // Language & Notifications
        _buildSectionCard(
          title: 'Language & Notifications',
          children: [
            _buildDropdown(
              'Interface Language',
              _selectedLanguage,
              ['English', 'Spanish', 'French', 'German', 'Italian'],
              (value) {
                setState(() {
                  _selectedLanguage = value!;
                });
              },
            ),
            _buildSwitchTile('Push Notifications', true),
            _buildSwitchTile('Email Notifications', false),
          ],
        ),
      ],
    );
  }

  Widget _buildPlaybackSettings() {
    return _buildSettingsSection(
      title: 'Playback',
      children: [
        // Hardware Acceleration
        _buildSectionCard(
          title: 'Hardware Acceleration',
          subtitle: 'Optimize video performance with GPU acceleration',
          children: [
            SwitchListTile(
              title: Text('Enable Hardware Acceleration'),
              subtitle: Text('Use GPU for better performance'),
              value: _hardwareAcceleration,
              onChanged: (value) async {
                setState(() {
                  _hardwareAcceleration = value;
                });
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('hardware_acceleration', value);
              },
            ),
            if (_hardwareAcceleration) ...[
              SwitchListTile(
                title: Text('Hardware Decoding'),
                subtitle: Text('Use GPU for video decoding'),
                value: _hardwareDecoding,
                onChanged: (value) async {
                  setState(() {
                    _hardwareDecoding = value;
                  });
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('hardware_decoding', value);
                },
              ),
              SwitchListTile(
                title: Text('Hardware Post-Processing'),
                subtitle: Text('Use GPU for video enhancement'),
                value: _hardwarePostProcessing,
                onChanged: (value) async {
                  setState(() {
                    _hardwarePostProcessing = value;
                  });
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('hardware_postprocessing', value);
                },
              ),
              _buildDropdown(
                'Decoder Type',
                _decoderType,
                ['Auto', 'H.264', 'H.265/HEVC', 'VP9', 'AV1'],
                (value) async {
                  setState(() {
                    _decoderType = value!;
                  });
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('decoder_type', value!);
                },
              ),
              _buildDropdown(
                'Rendering Engine',
                _renderingEngine,
                ['Auto', 'OpenGL ES', 'Vulkan', 'Metal'],
                (value) async {
                  setState(() {
                    _renderingEngine = value!;
                  });
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('rendering_engine', value!);
                },
              ),
            ],
          ],
        ),

        // Playback Options
        _buildSectionCard(
          title: 'Playback Options',
          children: [
            SwitchListTile(
              title: Text('Auto-play Next Episode'),
              subtitle: Text('Automatically play the next episode in a series'),
              value: _autoPlayNextEpisode,
              onChanged: (value) async {
                setState(() {
                  _autoPlayNextEpisode = value;
                });
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool('auto_play_next', value);
              },
            ),
            _buildDropdown(
              'Video Quality',
              _videoQuality,
              ['Auto', '4K', '1080p', '720p', '480p'],
              (value) async {
                setState(() {
                  _videoQuality = value!;
                });
                final prefs = await SharedPreferences.getInstance();
                await prefs.setString('video_quality', value!);
              },
            ),
          ],
        ),

        // Buffer Settings
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
              onChangeEnd: (value) async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setDouble('video_buffer_size', value);
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

        // === SUBTITLES & CAPTIONS SECTION ===
        // OpenSubtitles Integration (Free API)
        Consumer<OpenSubtitlesService>(
          builder: (context, openSubtitlesService, _) {
            return _buildSectionCard(
              title: 'Subtitles & Captions',
              subtitle: 'Automatic subtitles, transcription, and translation',
              children: [
                // OpenSubtitles Section
                Text(
                  'OpenSubtitles',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: AppSizes.sm),
                SwitchListTile(
                  title: Text('Enable OpenSubtitles'),
                  subtitle: Text('Automatically download subtitles (Free API)'),
                  value: _openSubtitlesEnabled,
                  onChanged: (value) async {
                    setState(() {
                      _openSubtitlesEnabled = value;
                    });
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('opensubtitles_enabled', value);
                    openSubtitlesService.setEnabled(value);
                  },
                ),
                if (_openSubtitlesEnabled) ...[
                  SizedBox(height: AppSizes.md),
                  TextField(
                    controller: _openSubtitlesUsernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      helperText: 'Create free account at opensubtitles.com',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) async {
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString('opensubtitles_username', value);
                      openSubtitlesService.setCredentials(
                        value,
                        _openSubtitlesPasswordController.text,
                      );
                    },
                  ),
                  SizedBox(height: AppSizes.md),
                  TextField(
                    controller: _openSubtitlesPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.help_outline),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: AppTheme.cardBackground,
                              title: Text('OpenSubtitles Account'),
                              content: Text(
                                'Create a free account at opensubtitles.com to automatically download subtitles for your videos.\n\n'
                                'Free accounts have a daily download limit but no cost.',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Close'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) async {
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString('opensubtitles_password', value);
                      openSubtitlesService.setCredentials(
                        _openSubtitlesUsernameController.text,
                        value,
                      );
                    },
                  ),
                  SizedBox(height: AppSizes.md),
                  SwitchListTile(
                    title: Text('Auto-download subtitles'),
                    subtitle: Text(
                      'Download subtitles automatically when playing',
                    ),
                    value: _autoDownloadSubtitles,
                    onChanged: (value) async {
                      setState(() {
                        _autoDownloadSubtitles = value;
                      });
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('auto_download_subtitles', value);
                      openSubtitlesService.setAutoDownload(value);
                    },
                  ),
                  _buildDropdown(
                    'Preferred Language',
                    _preferredSubtitleLanguage,
                    [
                      'English',
                      'Spanish',
                      'French',
                      'German',
                      'Italian',
                      'Portuguese',
                    ],
                    (value) async {
                      setState(() {
                        _preferredSubtitleLanguage = value!;
                      });
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString('subtitle_language', value!);
                      openSubtitlesService.setPreferredLanguage(
                        _getLanguageCode(value!),
                      );
                    },
                  ),
                ],

                // Live Transcription Section
                Divider(height: 32),
                Text(
                  'Live Transcription & Translation',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: AppSizes.sm),
                Consumer<LiveTranscriptionService>(
                  builder: (context, transcriptionService, _) {
                    return Column(
                      children: [
                        SwitchListTile(
                          secondary: const Icon(Icons.mic),
                          title: const Text('Live Transcription'),
                          subtitle: const Text(
                            'Real-time speech-to-text from video audio',
                          ),
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
                            secondary: const Icon(Icons.translate),
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
                              secondary: const Icon(Icons.volume_up),
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
                            padding: EdgeInsets.all(AppSizes.md),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryBlue.withOpacity(0.1),
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
              ],
            );
          },
        ),

        // AI Video Enhancement
        Consumer<AIUpscalingService>(
          builder: (context, aiService, _) {
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
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
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
                      setState(() {
                        _aiQuality = value!;
                      });
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString('ai_quality', value!);
                      aiService.setQualityPreset(value!);
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
                          Text('• Quality: ${_aiQuality}'),
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
                        color: Colors.orange.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                        border: Border.all(
                          color: Colors.orange.withOpacity(0.3),
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
                                color: Colors.orange,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Model Not Found',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text('To enable AI upscaling:'),
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
      ],
    );
  }

  Widget _buildCloudAndAISettings() {
    return _buildSettingsSection(
      title: 'Cloud & AI',
      children: [
        // Google Drive Sync
        Consumer<GoogleDriveSyncService>(
          builder: (context, driveService, child) {
            return _buildSectionCard(
              title: 'Google Drive Sync',
              subtitle:
                  'FREE - Sync favorites, playlists, and settings to your Google Drive',
              children: [
                if (!driveService.isSignedIn) ...[
                  const Text(
                    'Sign in with your Google account to enable cloud sync.',
                    style: TextStyle(color: AppTheme.textSecondary),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () async {
                      final success = await driveService.signIn();
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              success
                                  ? 'Signed in successfully!'
                                  : 'Sign-in failed',
                            ),
                            backgroundColor: success
                                ? Colors.green
                                : AppTheme.accentRed,
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.login),
                    label: const Text('Sign in with Google'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                    ),
                  ),
                ] else ...[
                  ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                      color: AppTheme.primaryBlue,
                    ),
                    title: Text(driveService.userName ?? 'Signed In'),
                    subtitle: Text(driveService.userEmail ?? ''),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: driveService.isSyncing
                              ? null
                              : () async {
                                  final success = await driveService
                                      .syncToCloud(
                                        favorites: {},
                                        playlists: {},
                                        watchHistory: {},
                                        settings: {},
                                      );
                                  if (mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          success
                                              ? 'Synced successfully!'
                                              : 'Sync failed',
                                        ),
                                        backgroundColor: success
                                            ? Colors.green
                                            : AppTheme.accentRed,
                                      ),
                                    );
                                  }
                                },
                          icon: driveService.isSyncing
                              ? const SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Icon(Icons.cloud_upload),
                          label: Text(
                            driveService.isSyncing ? 'Syncing...' : 'Sync Now',
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: driveService.isSyncing
                              ? null
                              : () async {
                                  final data = await driveService
                                      .restoreFromCloud();
                                  if (mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          data != null
                                              ? 'Restored successfully!'
                                              : 'Restore failed',
                                        ),
                                        backgroundColor: data != null
                                            ? Colors.green
                                            : AppTheme.accentRed,
                                      ),
                                    );
                                  }
                                },
                          icon: const Icon(Icons.cloud_download),
                          label: const Text('Restore'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  if (driveService.lastSyncTime != null)
                    Text(
                      'Last synced: ${driveService.lastSyncTime}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  const SizedBox(height: 16),
                  TextButton.icon(
                    onPressed: () async {
                      await driveService.signOut();
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Signed out successfully'),
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.logout),
                    label: const Text('Sign Out'),
                  ),
                ],
              ],
            );
          },
        ),

        // OpenSubtitles Integration
        Consumer<OpenSubtitlesService>(
          builder: (context, subtitleService, child) {
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
                  TextField(
                    controller: _openSubtitlesUsernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      helperText: 'Create free account at opensubtitles.com',
                    ),
                    onChanged: (value) {
                      subtitleService.setCredentials(
                        value,
                        _openSubtitlesPasswordController.text,
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _openSubtitlesPasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      subtitleService.setCredentials(
                        _openSubtitlesUsernameController.text,
                        value,
                      );
                    },
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
                      final success = await subtitleService.authenticate();
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
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
        Consumer<RealDebridService>(
          builder: (context, rdService, child) {
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
                  TextField(
                    controller: _realDebridApiKeyController,
                    decoration: const InputDecoration(
                      labelText: 'API Key',
                      hintText: 'Enter your Real-Debrid API key',
                      prefixIcon: Icon(Icons.vpn_key),
                      border: OutlineInputBorder(),
                      helperText: 'Get API key from real-debrid.com/apitoken',
                    ),
                    onChanged: (value) {
                      rdService.setApiKey(value);
                    },
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
                      final success = await rdService.testConnection();
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
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
        Consumer<AIUpscalingService>(
          builder: (context, aiService, child) {
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
        Consumer<WhisperSpeechService>(
          builder: (context, whisperService, child) {
            return _buildSectionCard(
              title: '🎙️ On-Device Transcription (Whisper)',
              subtitle: '100% OFFLINE - AUTO-DOWNLOAD - NO COSTS - TRUE AI',
              children: [
                if (!whisperService.isModelDownloaded) ...[
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue.withOpacity(0.1),
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
                                backgroundColor: Colors.grey[300],
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
                      color: Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.check_circle, color: Colors.green),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            '✅ Whisper model ready! True on-device transcription enabled.',
                            style: TextStyle(
                              color: Colors.green,
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

  Widget _buildEPGSettings() {
    return FutureBuilder<String?>(
      future: SharedPreferences.getInstance().then(
        (prefs) => prefs.getString('recording_storage_path'),
      ),
      builder: (context, snapshot) {
        final recordingPath = snapshot.data ?? '';

        return _buildSettingsSection(
          title: 'EPG & Recordings',
          children: [
            _buildSectionCard(
              title: 'EPG Source',
              children: [
                _buildDropdown('EPG Provider', 'Provider 1', [
                  'Provider 1',
                  'Provider 2',
                  'Custom URL',
                ], (value) {}),
                _buildSwitchTile('Auto-update EPG', true),
                _buildDropdown('Update Interval', 'Daily', [
                  'Hourly',
                  'Every 6 hours',
                  'Daily',
                  'Weekly',
                ], (value) {}),
              ],
            ),
            _buildSectionCard(
              title: 'Recording Storage',
              subtitle: 'Configure where recordings are saved',
              children: [
                // Warning message about storage
                Container(
                  padding: EdgeInsets.all(AppSizes.md),
                  decoration: BoxDecoration(
                    color: AppTheme.accentOrange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppTheme.accentOrange.withOpacity(0.3),
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
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Recording location updated'),
                                  backgroundColor: AppTheme.accentGreen,
                                ),
                              );
                            }
                          }
                        } catch (e) {
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Failed to select folder: $e'),
                                backgroundColor: AppTheme.accentRed,
                              ),
                            );
                          }
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
                          snapshot.data!,
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Updating EPG data...')),
                    );
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

  Widget _buildParentalControlsSettings() {
    return _buildSettingsSection(
      title: 'Parental Controls',
      children: [
        _buildSectionCard(
          title: 'Parental Controls',
          children: [
            _buildSwitchTile('Enable Parental Controls', false),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'PIN Code',
                border: OutlineInputBorder(),
              ),
              maxLength: 4,
            ),
            _buildDropdown('Content Rating Limit', 'PG-13', [
              'G',
              'PG',
              'PG-13',
              'R',
              'NC-17',
            ], (value) {}),
          ],
        ),
        _buildSectionCard(
          title: 'Content Preferences',
          children: [
            _buildSwitchTile('Show Adult Content', false),
            _buildSwitchTile('Hide Spoilers', true),
          ],
        ),
      ],
    );
  }

  Widget _buildAppearanceSettings() {
    return _buildSettingsSection(
      title: 'Appearance',
      children: [
        _buildSectionCard(
          title: 'Theme',
          children: [
            _buildDropdown('Color Scheme', 'Dark Blue', [
              'Dark Blue',
              'Dark Gray',
              'OLED Black',
              'Light',
            ], (value) {}),
            _buildDropdown('Text Size', 'Medium', [
              'Small',
              'Medium',
              'Large',
              'Extra Large',
            ], (value) {}),
          ],
        ),
        _buildSectionCard(
          title: 'Accessibility',
          children: [
            _buildSwitchTile('High Contrast Mode', false),
            _buildSwitchTile('Reduce Motion', false),
          ],
        ),
      ],
    );
  }

  Widget _buildSettingsSection({
    required String title,
    required List<Widget> children,
  }) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(AppSizes.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: AppSizes.lg),
          ...children,
        ],
      ),
    );
  }

  Widget _buildSectionCard({
    required String title,
    String? subtitle,
    required List<Widget> children,
  }) {
    return Card(
      margin: EdgeInsets.only(bottom: AppSizes.lg),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            if (subtitle != null) ...[
              SizedBox(height: 4),
              Text(
                subtitle,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
              ),
            ],
            SizedBox(height: AppSizes.md),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile(String title, bool value) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      onChanged: (newValue) {
        setState(() {
          if (title == 'Auto-play Next Episode') {
            _autoPlayNextEpisode = newValue;
          }
        });
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

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
          ),
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024)
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
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
      final stat = await dir.stat();
      return '✓ Location accessible';
    } catch (e) {
      return '⚠ Unable to access: ${e.toString()}';
    }
  }
}
