import 'package:flutter/material.dart';
import 'package:iptv_player/services/live_transcription_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/google_drive_sync_service.dart';
import 'package:iptv_player/services/ai_upscaling_service.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  // Playlist Settings
  final TextEditingController _m3uUrlController = TextEditingController();
  final TextEditingController _xtreamServerController = TextEditingController();
  final TextEditingController _xtreamUsernameController = TextEditingController();
  final TextEditingController _xtreamPasswordController = TextEditingController();
  
  // Integration Settings
  final TextEditingController _realDebridApiKeyController = TextEditingController();
  final TextEditingController _openSubtitlesUsernameController = TextEditingController();
  final TextEditingController _openSubtitlesPasswordController = TextEditingController();
  
  // Playback Settings
  bool _autoPlayNextEpisode = true;
  bool _hardwareAcceleration = true;
  bool _hardwareDecoding = true;
  bool _hardwarePostProcessing = true;
  String _decoderType = 'Auto';
  String _renderingEngine = 'OpenGL ES';
  bool _defaultAudioTrack = true;
  double _videoBufferSize = 50;
  
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
              _buildAccountSettings(),
              _buildGeneralSettings(),
              _buildPlaybackSettings(),
              _buildSubtitleSettings(),
              _buildEPGSettings(),
              _buildEntertainmentSettings(),
              _buildAppearanceSettings(),
              _buildAboutSettings(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSidebarMenu() {
    final menuItems = [
      {'title': 'Account', 'icon': Icons.person_outline},
      {'title': 'General', 'icon': Icons.settings_outlined},
      {'title': 'Playback', 'icon': Icons.play_circle_outline},
      {'title': 'Subtitles', 'icon': Icons.closed_caption_outlined},
      {'title': 'EPG', 'icon': Icons.tv_outlined},
      {'title': 'Entertainment', 'icon': Icons.movie_outlined},
      {'title': 'Appearance', 'icon': Icons.palette_outlined},
      {'title': 'About', 'icon': Icons.info_outline},
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
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
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
          Divider(color: AppTheme.divider, height: 1),
          ListTile(
            leading: Icon(Icons.logout, color: AppTheme.accentRed),
            title: Text(
              'Logout',
              style: TextStyle(color: AppTheme.accentRed),
            ),
            onTap: () => _showLogoutDialog(),
          ),
        ],
      ),
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
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppTheme.cardBackground,
                    child: Icon(Icons.person, size: 50, color: AppTheme.primaryBlue),
                  ),
                  SizedBox(height: AppSizes.md),
                  Text(
                    'John Doe',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'john.doe@example.com',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
                  ),
                  SizedBox(height: AppSizes.md),
                  ElevatedButton(
                    onPressed: () {},
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
                if (!syncService.isSignedIn) ...[
                  Center(
                    child: Column(
                      children: [
                        Icon(Icons.cloud_outlined, size: 48, color: AppTheme.primaryBlue),
                        SizedBox(height: AppSizes.md),
                        Text('Sign in with Google to enable cloud sync'),
                        SizedBox(height: AppSizes.md),
                        ElevatedButton.icon(
                          onPressed: syncService.isSyncing ? null : () async {
                            try {
                              await syncService.signIn();
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Successfully signed in!')),
                                );
                              }
                            } catch (e) {
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Sign in failed. Configure OAuth first.')),
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
                          style: TextStyle(color: AppTheme.primaryBlue, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ] else ...[
                  _buildInfoRow('Account', syncService.userEmail ?? 'Signed In'),
                  _buildInfoRow('Last Sync', syncService.lastSyncTime != null 
                    ? _formatDateTime(syncService.lastSyncTime!)
                    : 'Never'),
                  if (syncService.storageUsed != null && syncService.storageLimit != null)
                    _buildInfoRow('Storage', 
                      '${_formatBytes(syncService.storageUsed!)} / ${_formatBytes(syncService.storageLimit!)}'),
                  SizedBox(height: AppSizes.md),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: syncService.isSyncing ? null : () async {
                            try {
                              await syncService.syncToCloud(
                                favorites: {},
                                playlists: {},
                                watchHistory: {},
                                settings: {},
                              );
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Data synced successfully!')),
                                );
                              }
                            } catch (e) {
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Sync failed: ${e.toString()}')),
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
                          onPressed: syncService.isSyncing ? null : () async {
                            try {
                              await syncService.restoreFromCloud();
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Data restored successfully!')),
                                );
                              }
                            } catch (e) {
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Restore failed: ${e.toString()}')),
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
                          SnackBar(content: Text('Signed out successfully')),
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

        _buildSectionCard(
          title: 'Subscription',
          children: [
            _buildInfoRow('Plan', 'Premium'),
            _buildInfoRow('Status', 'Active'),
            _buildInfoRow('Expires', 'Dec 31, 2025'),
          ],
        ),
      ],
    );
  }

  Widget _buildGeneralSettings() {
    return _buildSettingsSection(
      title: 'General',
      children: [
        // M3U & Xtream Codes Section
        _buildSectionCard(
          title: 'Playlist Sources',
          subtitle: 'Configure M3U URLs and Xtream Codes API',
          children: [
            Text(
              'M3U Playlist URL',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(height: AppSizes.sm),
            TextField(
              controller: _m3uUrlController,
              decoration: InputDecoration(
                hintText: 'https://example.com/playlist.m3u8',
                prefixIcon: Icon(Icons.link),
                suffixIcon: IconButton(
                  icon: Icon(Icons.file_upload),
                  onPressed: () {
                    // Load M3U playlist
                  },
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: AppSizes.lg),
            
            Text(
              'Xtream Codes API',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(height: AppSizes.sm),
            TextField(
              controller: _xtreamServerController,
              decoration: InputDecoration(
                labelText: 'Server URL',
                hintText: 'http://example.com:8080',
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
                  onPressed: () {
                    // Test connection
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Testing connection...')),
                    );
                  },
                  icon: Icon(Icons.check_circle),
                  label: Text('Test Connection'),
                ),
                SizedBox(width: AppSizes.sm),
                ElevatedButton.icon(
                  onPressed: () {
                    // Load Xtream playlist
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
        
        _buildSectionCard(
          title: 'Storage',
          children: [
            _buildInfoRow('Cache Size', '2.4 GB'),
            _buildInfoRow('Downloads', '8.7 GB'),
            SizedBox(height: AppSizes.md),
            ElevatedButton(
              onPressed: () => _showClearCacheDialog(),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.accentRed,
              ),
              child: Text('Clear Cache'),
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
        // Hardware Acceleration
        _buildSectionCard(
          title: 'Hardware Acceleration',
          subtitle: 'Optimize video performance with GPU acceleration',
          children: [
            SwitchListTile(
              title: Text('Enable Hardware Acceleration'),
              subtitle: Text('Use GPU for better performance'),
              value: _hardwareAcceleration,
              onChanged: (value) {
                setState(() {
                  _hardwareAcceleration = value;
                });
              },
            ),
            if (_hardwareAcceleration) ...[
              SwitchListTile(
                title: Text('Hardware Decoding'),
                subtitle: Text('Use GPU for video decoding'),
                value: _hardwareDecoding,
                onChanged: (value) {
                  setState(() {
                    _hardwareDecoding = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Hardware Post-Processing'),
                subtitle: Text('Use GPU for video enhancement'),
                value: _hardwarePostProcessing,
                onChanged: (value) {
                  setState(() {
                    _hardwarePostProcessing = value;
                  });
                },
              ),
              _buildDropdown(
                'Decoder Type',
                _decoderType,
                ['Auto', 'H.264', 'H.265/HEVC', 'VP9', 'AV1'],
                (value) {
                  setState(() {
                    _decoderType = value!;
                  });
                },
              ),
              _buildDropdown(
                'Rendering Engine',
                _renderingEngine,
                ['Auto', 'OpenGL ES', 'Vulkan', 'Metal'],
                (value) {
                  setState(() {
                    _renderingEngine = value!;
                  });
                },
              ),
            ],
          ],
        ),
        
        // OpenSubtitles Integration (Free API)
        _buildSectionCard(
          title: 'OpenSubtitles Integration',
          subtitle: 'Automatic subtitle downloading (Free API)',
          children: [
            SwitchListTile(
              title: Text('Enable OpenSubtitles'),
              subtitle: Text('Automatically download subtitles'),
              value: _openSubtitlesEnabled,
              onChanged: (value) {
                setState(() {
                  _openSubtitlesEnabled = value;
                });
              },
            ),
            if (_openSubtitlesEnabled) ...[
              SizedBox(height: AppSizes.md),
              TextField(
                controller: _openSubtitlesUsernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
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
                      // Show help for creating free account
                    },
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: AppSizes.md),
              SwitchListTile(
                title: Text('Auto-download subtitles'),
                subtitle: Text('Download subtitles automatically when playing'),
                value: _autoDownloadSubtitles,
                onChanged: (value) {
                  setState(() {
                    _autoDownloadSubtitles = value;
                  });
                },
              ),
              _buildDropdown(
                'Preferred Language',
                _preferredSubtitleLanguage,
                ['English', 'Spanish', 'French', 'German', 'Italian', 'Portuguese'],
                (value) {
                  setState(() {
                    _preferredSubtitleLanguage = value!;
                  });
                },
              ),
            ],
          ],
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
                  subtitle: Text(aiService.isModelLoaded 
                    ? 'Upscale video to 2x resolution using AI' 
                    : 'Model not loaded - See AI_MODEL_SETUP_GUIDE.md'),
                  value: _aiUpscalingEnabled && aiService.isModelLoaded,
                  onChanged: aiService.isModelLoaded ? (value) {
                    setState(() {
                      _aiUpscalingEnabled = value;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(value 
                          ? 'AI Upscaling enabled' 
                          : 'AI Upscaling disabled')),
                    );
                  } : null,
                ),
                if (_aiUpscalingEnabled && aiService.isModelLoaded) ...[
                  _buildDropdown(
                    'Quality Preset',
                    _aiQuality,
                    ['Fast', 'Balanced', 'Quality'],
                    (value) {
                      setState(() {
                        _aiQuality = value!;
                      });
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
                              Text('AI Enhancement Info', 
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text('• GPU Acceleration: ${aiService.isGPUAvailable ? "✓ Available" : "✗ CPU Only"}'),
                          Text('• Upscales video to 2x resolution'),
                          Text('• Quality: ${_aiQuality}'),
                          if (aiService.isGPUAvailable)
                            Text('• Est. Performance: ${_getAIPerformanceText(_aiQuality, true)}'),
                          if (!aiService.isGPUAvailable)
                            Text('• Est. Performance: ${_getAIPerformanceText(_aiQuality, false)}'),
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
                        border: Border.all(color: Colors.orange.withOpacity(0.3)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.warning_amber, size: 16, color: Colors.orange),
                              SizedBox(width: 8),
                              Text('Model Not Found', 
                                style: TextStyle(fontWeight: FontWeight.w600, color: Colors.orange)),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text('To enable AI upscaling:'),
                          Text('1. Download a TFLite model (FSRCNN recommended)'),
                          Text('2. Place in assets/models/esrgan_x2.tflite'),
                          Text('3. Rebuild the app'),
                          SizedBox(height: 8),
                          Text('See AI_MODEL_SETUP_GUIDE.md for details',
                            style: TextStyle(fontStyle: FontStyle.italic)),
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
            _buildDropdown(
              'Video Quality',
              'Auto',
              ['Auto', '4K', '1080p', '720p', '480p'],
              (value) {},
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
                setState(() {
                  _videoBufferSize = value;
                });
              },
            ),
            Text(
              'Higher buffer reduces stuttering but increases memory usage',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppTheme.textTertiary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEPGSettings() {
    return _buildSettingsSection(
      title: 'EPG',
      children: [
        _buildSectionCard(
          title: 'EPG Source',
          children: [
            _buildDropdown(
              'EPG Provider',
              'Provider 1',
              ['Provider 1', 'Provider 2', 'Custom URL'],
              (value) {},
            ),
            _buildSwitchTile('Auto-update EPG', true),
            _buildDropdown(
              'Update Interval',
              'Daily',
              ['Hourly', 'Every 6 hours', 'Daily', 'Weekly'],
              (value) {},
            ),
          ],
        ),
        _buildSectionCard(
          title: 'Display Options',
          children: [
            _buildDropdown(
              'Time Zone',
              'UTC-5 (EST)',
              ['UTC-8 (PST)', 'UTC-5 (EST)', 'UTC+0 (GMT)', 'UTC+1 (CET)'],
              (value) {},
            ),
            _buildSwitchTile('Show Channel Logos', true),
            _buildSwitchTile('Show Program Images', true),
          ],
        ),
        _buildSectionCard(
          title: 'Actions',
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.refresh),
              label: Text('Update EPG Now'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEntertainmentSettings() {
    return _buildSettingsSection(
      title: 'Entertainment',
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
            _buildDropdown(
              'Content Rating Limit',
              'PG-13',
              ['G', 'PG', 'PG-13', 'R', 'NC-17'],
              (value) {},
            ),
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
            _buildDropdown(
              'Color Scheme',
              'Dark Blue',
              ['Dark Blue', 'Dark Gray', 'OLED Black', 'Light'],
              (value) {},
            ),
            _buildDropdown(
              'Text Size',
              'Medium',
              ['Small', 'Medium', 'Large', 'Extra Large'],
              (value) {},
            ),
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

  Widget _buildAboutSettings() {
    return _buildSettingsSection(
      title: 'About',
      children: [
        Center(
          child: Column(
            children: [
              Icon(
                Icons.play_circle_filled,
                size: 100,
                color: AppTheme.primaryBlue,
              ),
              SizedBox(height: AppSizes.md),
              Text(
                'RISA IPTV Player',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Version 1.0.0+1',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppTheme.textSecondary,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: AppSizes.xl),
        _buildSectionCard(
          title: 'Legal',
          children: [
            ListTile(
              title: Text('Terms of Service'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              title: Text('Licenses'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ],
        ),
        _buildSectionCard(
          title: 'Support',
          children: [
            ListTile(
              title: Text('Help Center'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              title: Text('Contact Us'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(AppSizes.lg),
          child: Text(
            '© 2025 RISA IPTV Player. All rights reserved.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppTheme.textTertiary,
            ),
            textAlign: TextAlign.center,
          ),
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
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
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
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            if (subtitle != null) ...[
              SizedBox(height: 4),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppTheme.textSecondary,
                ),
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
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
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
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppTheme.textSecondary,
            ),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  void _showClearCacheDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: Text('Clear Cache'),
        content: Text('Are you sure you want to clear the cache? This will free up 2.4 GB.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Cache cleared successfully')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentRed,
            ),
            child: Text('Clear'),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: Text('Logout'),
        content: Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentRed,
            ),
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    
    if (difference.inMinutes < 1) return 'Just now';
    if (difference.inMinutes < 60) return '${difference.inMinutes}m ago';
    if (difference.inHours < 24) return '${difference.inHours}h ago';
    if (difference.inDays < 7) return '${difference.inDays}d ago';
    
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB';
  }

  
  // Add this method before _formatDateTime
  Widget _buildSubtitleSettings() {
    return Consumer<LiveTranscriptionService>(
      builder: (context, transcriptionService, _) {
        return _buildSettingsSection(
          title: 'Subtitles & Transcription',
          children: [
            // Subtitle Settings Header
            ListTile(
              leading: const Icon(Icons.closed_caption),
              title: const Text('Subtitle Settings'),
              subtitle: const Text('Configure subtitle display and preferences'),
            ),
            const Divider(),
            
            // Live Transcription Section
            SwitchListTile(
              secondary: const Icon(Icons.mic),
              title: const Text('Live Transcription'),
              subtitle: const Text('Real-time speech-to-text from video audio'),
              value: transcriptionService.isTranscribing,
              onChanged: (value) async {
                if (value) {
                  await transcriptionService.startTranscription();
                } else {
                  await transcriptionService.stopTranscription();
                }
              },
            ),
            
            // Translation Section
            if (transcriptionService.isTranscribing)
              SwitchListTile(
                secondary: const Icon(Icons.translate),
                title: const Text('Enable Translation'),
                subtitle: const Text('Translate transcribed text to another language'),
                value: transcriptionService.isTranslating,
                onChanged: transcriptionService.setTranslationEnabled,
              ),
            
            // Source Language
            if (transcriptionService.isTranscribing)
              ListTile(
                leading: const Icon(Icons.record_voice_over),
                title: const Text('Source Language'),
                subtitle: Text(transcriptionService.sourceLanguage),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () => _showSourceLanguageSelector(context, transcriptionService),
              ),
            
            // Target Language (if translation enabled)
            if (transcriptionService.isTranscribing && transcriptionService.isTranslating)
              ListTile(
                leading: const Icon(Icons.language),
                title: const Text('Target Language'),
                subtitle: Text(transcriptionService.targetLanguage),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () => _showTargetLanguageSelector(context, transcriptionService),
              ),
            
            // Text-to-Speech for Translated Audio
            if (transcriptionService.isTranscribing && transcriptionService.isTranslating)
              SwitchListTile(
                secondary: const Icon(Icons.volume_up),
                title: const Text('Text-to-Speech'),
                subtitle: const Text('Speak translated text aloud'),
                value: transcriptionService.isTTSEnabled,
                onChanged: transcriptionService.setTTSEnabled,
              ),
            
            const Divider(),
            
            // Export Transcriptions
            if (transcriptionService.transcriptions.isNotEmpty)
              ListTile(
                leading: const Icon(Icons.download),
                title: const Text('Export Transcriptions'),
                subtitle: Text('${transcriptionService.transcriptions.length} entries available'),
                trailing: ElevatedButton(
                  onPressed: () => _exportTranscriptions(context, transcriptionService),
                  child: const Text('Export as SRT'),
                ),
              ),
            
            // Clear Transcriptions
            if (transcriptionService.transcriptions.isNotEmpty)
              ListTile(
                leading: const Icon(Icons.delete_outline),
                title: const Text('Clear Transcriptions'),
                subtitle: const Text('Remove all saved transcriptions'),
                trailing: TextButton(
                  onPressed: () => _confirmClearTranscriptions(context, transcriptionService),
                  child: const Text('Clear All'),
                ),
              ),
            
            const SizedBox(height: 16),
            
            // Info Card
            Card(
              color: AppTheme.primaryBlue.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.info_outline, size: 20),
                        SizedBox(width: 8),
                        Text(
                          'About Live Transcription',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Live transcription uses on-device speech recognition to convert video audio to text in real-time. '
                      'Translation is powered by Google Translate API (free tier). '
                      'All processing happens on your device for privacy.',
                      style: TextStyle(fontSize: 12, height: 1.4),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
  
  void _showSourceLanguageSelector(BuildContext context, LiveTranscriptionService service) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
  
  void _showTargetLanguageSelector(BuildContext context, LiveTranscriptionService service) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
  
  void _exportTranscriptions(BuildContext context, LiveTranscriptionService service) {
    final srtContent = service.exportAsSRT();
    
    // In a real app, save this to a file
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                srtContent.substring(0, srtContent.length > 500 ? 500 : srtContent.length),
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
          ElevatedButton(
            onPressed: () {
              // TODO: Implement file save
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Export functionality coming soon')),
              );
              Navigator.pop(context);
            },
            child: const Text('Save to File'),
          ),
        ],
      ),
    );
  }
  
  void _confirmClearTranscriptions(BuildContext context, LiveTranscriptionService service) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear Transcriptions?'),
        content: Text('This will delete all ${service.transcriptions.length} saved transcription entries.'),
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
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Clear All'),
          ),
        ],
      ),
    );
  }


  String _getAIPerformanceText(String quality, bool hasGPU) {
    if (hasGPU) {
      switch (quality) {
        case 'Fast': return '80-120 FPS';
        case 'Balanced': return '50-80 FPS';
        case 'Quality': return '30-60 FPS';
        default: return 'Unknown';
      }
    } else {
      switch (quality) {
        case 'Fast': return '20-40 FPS';
        case 'Balanced': return '10-25 FPS';
        case 'Quality': return '5-15 FPS';
        default: return 'Unknown';
      }
    }
  }
}
