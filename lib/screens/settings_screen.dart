import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/services/opensubtitles_service.dart';
import 'package:iptv_player/services/real_debrid_service.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/services/backup_service.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/profile_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

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

  // Boolean settings
  bool _hardwareAcceleration = true;
  bool _hardwareDecoding = true;

  bool _autoPlayNextEpisode = true;
  bool _rememberPlaybackPosition = true;

  bool _realDebridEnabled = false;

  bool _openSubtitlesEnabled = false;
  bool _autoDownloadSubtitles = true;
  bool _transcriptionEnabled = false;
  bool _translationEnabled = false;


  // EPG Settings
  int _epgCacheDuration = 6; // hours
  int _epgRetentionDays = 7; // days
  bool _storeDescriptions = true;
  bool _showLogos = true;
  bool _showImages = true;



  // Focus nodes for TV navigation
  final FocusNode _m3uUrlFocusNode = FocusNode();
  final FocusNode _xtreamServerFocusNode = FocusNode();
  final FocusNode _xtreamUsernameFocusNode = FocusNode();
  final FocusNode _xtreamPasswordFocusNode = FocusNode();
  final FocusNode _customEpgUrlFocusNode = FocusNode();
  final FocusNode _secondaryEpgUrlFocusNode = FocusNode();
  final FocusNode _realDebridApiKeyFocusNode = FocusNode();
  final FocusNode _openSubtitlesUsernameFocusNode = FocusNode();
  final FocusNode _openSubtitlesPasswordFocusNode = FocusNode();
  final FocusNode _loadM3uButtonFocusNode = FocusNode();
  final FocusNode _loadXtreamButtonFocusNode = FocusNode();
  final FocusNode _clearPlaylistCacheButtonFocusNode = FocusNode();
  final FocusNode _savedPlaylistFocusNode = FocusNode();
  final FocusNode _updateEpgButtonFocusNode = FocusNode();
  final FocusNode _clearEpgButtonFocusNode = FocusNode();
  final FocusNode _m3uTabFocusNode = FocusNode();
  final FocusNode _xtreamTabFocusNode = FocusNode();
  final FocusNode _clearM3uButtonFocusNode = FocusNode();
  final FocusNode _clearXtreamButtonFocusNode = FocusNode();
  final FocusNode _viewUnmatchedChannelsFocusNode = FocusNode();
  final FocusNode _epgIntervalMinusFocusNode = FocusNode();
  final FocusNode _epgIntervalPlusFocusNode = FocusNode();
  final FocusNode _epgPastDaysMinusFocusNode = FocusNode();
  final FocusNode _epgPastDaysPlusFocusNode = FocusNode();
  final FocusNode _storeDescriptionsSwitchFocusNode = FocusNode();
  final FocusNode _showLogosSwitchFocusNode = FocusNode();
  final FocusNode _showImagesSwitchFocusNode = FocusNode();
  final FocusNode _editProfileButtonFocusNode = FocusNode();
  final FocusNode _browseStorageButtonFocusNode = FocusNode();
  final FocusNode _playbackFirstFocusNode = FocusNode();
  final FocusNode _aiFirstFocusNode = FocusNode();

  // Editable state for text fields
  bool _m3uUrlEditable = false;
  bool _xtreamServerEditable = false;
  bool _xtreamUsernameEditable = false;
  bool _xtreamPasswordEditable = false;
  bool _customEpgUrlEditable = false;

  bool _realDebridApiKeyEditable = false;
  bool _openSubtitlesUsernameEditable = false;
  bool _openSubtitlesPasswordEditable = false;

  // Focus node listeners map
  final Map<FocusNode, VoidCallback> _focusNodeListeners = {};

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
    _tabController.addListener(() {
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

    _realDebridEnabled = prefs.getBool('realdebrid_enabled') ?? false;

    _openSubtitlesEnabled = prefs.getBool('opensubtitles_enabled') ?? false;

    _autoDownloadSubtitles = prefs.getBool('auto_download_subtitles') ?? true;
    _transcriptionEnabled = prefs.getBool('transcription_enabled') ?? false;
    _translationEnabled = prefs.getBool('translation_enabled') ?? false;

    _rememberPlaybackPosition =
        prefs.getBool('remember_playback_position') ?? true;

    // EPG Settings
    _epgCacheDuration = prefs.getInt('epg_cache_duration') ?? 6;
    _epgRetentionDays = prefs.getInt('epg_retention_days') ?? 7;
    _storeDescriptions = prefs.getBool('epg_store_descriptions') ?? true;
    _showLogos = prefs.getBool('epg_show_logos') ?? true;
    _showImages = prefs.getBool('epg_show_images') ?? true;
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
    _tabController.removeListener(() {});
    _tabController.dispose();
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
      if (_tabController.index == 0) {
        // General tab - focus M3U tab button
        _m3uTabFocusNode.requestFocus();
      } else if (_tabController.index == 1) {
        // Account tab
        _editProfileButtonFocusNode.requestFocus();
      } else if (_tabController.index == 2) {
        // Playback tab - focus first switch
        _playbackFirstFocusNode.requestFocus();
      } else if (_tabController.index == 3) {
        // AI Features tab - focus first switch
        _aiFirstFocusNode.requestFocus();
      } else if (_tabController.index == 4) {
        // Recordings tab
        _browseStorageButtonFocusNode.requestFocus();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(width: 48), // Space for collapsed main sidebar
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
                    switch (_tabController.index) {
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
      decoration: const BoxDecoration(
        color: Color(0xFF050710),
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
                            border: isSelected
                                ? Border.all(
                                    color: AppTheme.primaryBlue.withValues(alpha: 0.5),
                                    width: 2.0,
                                  )
                                : null,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                item['icon'] as IconData,
                                color: isSelected
                                    ? AppTheme.primaryBlue
                                    : (isFocused ? AppTheme.textPrimary : AppTheme.textSecondary),
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  item['title'] as String,
                                  style: TextStyle(
                                    color: isSelected
                                        ? AppTheme.textPrimary
                                        : (isFocused ? AppTheme.textPrimary : AppTheme.textSecondary),
                                    fontSize: 16,
                                    fontWeight: isSelected
                                        ? FontWeight.w600
                                        : (isFocused ? FontWeight.w600 : FontWeight.w500),
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
      final idx = _tabController.index.clamp(0, _menuFocusNodes.length - 1);
      _menuFocusNodes[idx].requestFocus();
    }
  }

  Widget _buildGeneralSettings() {
    return _buildSettingsSection(
      title: 'General',
      children: [
        _buildPlaylistStatusCard(),
        _buildSectionCard(
          title: 'Playlist Management',
          children: [
            Row(
              children: [
                Expanded(
                  child: _buildFocusButton(
                    focusNode: FocusNode(),
                    onPressed: () => context.push('/epg-manager'),
                    child: const Text('EPG Manager'),
                    isPrimary: true,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildFocusButton(
                    focusNode: FocusNode(),
                    onPressed: _reloadPlaylist,
                    child: const Text('Reload'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildFocusButton(
                    focusNode: _clearPlaylistCacheButtonFocusNode,
                    onPressed: _clearPlaylistCache,
                    child: const Text('Clear Cache'),
                  ),
                ),
              ],
            ),
          ],
        ),
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
              hintText: 'Primary EPG URL (optional)',
              prefixIcon: Icons.tv_outlined,
            ),
            const SizedBox(height: 12),
            _buildTVTextField(
              controller: _secondaryEpgUrlController,
              focusNode: _secondaryEpgUrlFocusNode,
              isEditable: false,
              onEditableChanged: (value) {},
              hintText: 'Secondary EPG URL (optional)',
              prefixIcon: Icons.tv_outlined,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Cache Duration (hours)', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          _buildCounterButton(
                            focusNode: _epgIntervalMinusFocusNode,
                            icon: Icons.remove,
                            onPressed: () => _adjustEpgCacheDuration(-1),
                          ),
                          const SizedBox(width: 12),
                          Text('$_epgCacheDuration', style: const TextStyle(color: AppTheme.textPrimary, fontSize: 16, fontWeight: FontWeight.bold)),
                          const SizedBox(width: 12),
                          _buildCounterButton(
                            focusNode: _epgIntervalPlusFocusNode,
                            icon: Icons.add,
                            onPressed: () => _adjustEpgCacheDuration(1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Retention Days', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          _buildCounterButton(
                            focusNode: _epgPastDaysMinusFocusNode,
                            icon: Icons.remove,
                            onPressed: () => _adjustEpgRetentionDays(-1),
                          ),
                          const SizedBox(width: 12),
                          Text('$_epgRetentionDays', style: const TextStyle(color: AppTheme.textPrimary, fontSize: 16, fontWeight: FontWeight.bold)),
                          const SizedBox(width: 12),
                          _buildCounterButton(
                            focusNode: _epgPastDaysPlusFocusNode,
                            icon: Icons.add,
                            onPressed: () => _adjustEpgRetentionDays(1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildSwitchTile('Store Program Descriptions', _storeDescriptions, focusNode: _storeDescriptionsSwitchFocusNode),
            _buildSwitchTile('Show Channel Logos', _showLogos, focusNode: _showLogosSwitchFocusNode),
            _buildSwitchTile('Show Program Images', _showImages, focusNode: _showImagesSwitchFocusNode),
            const SizedBox(height: 16),
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
            const SizedBox(height: 8),
            _buildFocusButton(
              focusNode: _viewUnmatchedChannelsFocusNode,
              onPressed: () => context.push('/epg-diagnostic'),
              child: const Text('View EPG Diagnostic'),
            ),
          ],
        ),
        _buildSectionCard(
          title: 'Backup & Restore',
          children: [
            Row(
              children: [
                Expanded(
                  child: _buildFocusButton(
                    focusNode: FocusNode(),
                    onPressed: _exportBackup,
                    child: const Text('Export Backup'),
                    isPrimary: true,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildFocusButton(
                    focusNode: FocusNode(),
                    onPressed: _importBackup,
                    child: const Text('Import Backup'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Backup includes preferences, playlists, and settings',
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 12),
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
              child: Consumer<ProfileProvider>(
                builder: (context, profileProvider, _) {
                  final profile = profileProvider.activeProfile;
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: AppTheme.highlight,
                        backgroundImage: profile?.avatarUrl.isNotEmpty == true
                            ? NetworkImage(profile!.avatarUrl)
                            : null,
                        child: profile?.avatarUrl.isEmpty != false
                            ? const Icon(Icons.person, size: 40, color: AppTheme.primaryBlue)
                            : null,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        profile?.name ?? 'User Profile',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      _buildFocusButton(
                        focusNode: _editProfileButtonFocusNode,
                        onPressed: () => context.push('/edit-profile'),
                        child: const Text('Edit Profile'),
                        isPrimary: true,
                      ),
                    ],
                  );
                },
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
          title: 'Hardware Acceleration',
          children: [
            _buildSwitchTile('Hardware Acceleration', _hardwareAcceleration, focusNode: _playbackFirstFocusNode),
            _buildSwitchTile('Hardware Decoding', _hardwareDecoding),
          ],
        ),
        _buildSectionCard(
          title: 'Playback Options',
          children: [
            _buildSwitchTile('Auto-play Next Episode', _autoPlayNextEpisode),
            _buildSwitchTile('Remember Position VOD', _rememberPlaybackPosition),
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
            _buildSwitchTile('Auto-download Subtitles', _autoDownloadSubtitles),
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
              const SizedBox(height: 12),
              _buildFocusButton(
                focusNode: FocusNode(),
                onPressed: _testOpenSubtitlesConnection,
                child: const Text('Test Connection'),
                isPrimary: true,
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
              const SizedBox(height: 12),
              _buildFocusButton(
                focusNode: FocusNode(),
                onPressed: _testRealDebridConnection,
                child: const Text('Test API Key'),
                isPrimary: true,
              ),
            ],
          ],
        ),
        _buildSectionCard(
          title: 'Live Transcription & Translation',
          children: [
            _buildSwitchTile('Enable Live Transcription', _transcriptionEnabled),
            _buildSwitchTile('Enable Translation', _translationEnabled),
          ],
        ),
        _buildSectionCard(
          title: 'Language Models',
          children: [
            _buildFocusButton(
              focusNode: FocusNode(),
              onPressed: _showLanguageModelsDialog,
              child: const Text('Manage Translation Models'),
              isPrimary: true,
            ),
            const SizedBox(height: 8),
            _buildFocusButton(
              focusNode: FocusNode(),
              onPressed: _showSpeechModelsDialog,
              child: const Text('Speech Recognition Models'),
            ),
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
                Expanded(
                  child: FutureBuilder<String>(
                    future: _getStoragePath(),
                    builder: (context, snapshot) {
                      return Text(
                        snapshot.data ?? '/storage/recordings',
                        style: const TextStyle(color: AppTheme.textSecondary),
                      );
                    },
                  ),
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
        _buildSectionCard(
          title: 'AI Models',
          children: [
            _buildFocusButton(
              focusNode: FocusNode(),
              onPressed: () => context.push('/ai-models'),
              child: const Text('Manage AI Models'),
              isPrimary: true,
            ),
          ],
        ),
      ],
    );
  }

  Future<String> _getStoragePath() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('recording_storage_path') ?? '/storage/recordings';
  }

  Widget _buildSettingsSection({required String title, required List<Widget> children}) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF050710)),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 68, top: 20, right: 20, bottom: 20),
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
                    ? AppTheme.primaryBlue.withValues(alpha: 0.8)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: isSelected ? Colors.white : (isFocused ? AppTheme.textPrimary : AppTheme.textSecondary),
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(
                      color: isSelected ? Colors.white : (isFocused ? AppTheme.textPrimary : AppTheme.textSecondary),
                      fontSize: 13,
                      fontWeight: isSelected ? FontWeight.w600 : (isFocused ? FontWeight.w600 : FontWeight.normal),
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
              fillColor: Colors.white.withValues(alpha: 0.05),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
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
          return ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: isPrimary 
                  ? AppTheme.primaryBlue 
                  : Colors.white.withValues(alpha: 0.1),
              foregroundColor: isPrimary ? Colors.white : AppTheme.textPrimary,
              side: BorderSide(color: Colors.white.withValues(alpha: 0.2)),
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
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.1),
                width: 1,
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
                  activeThumbColor: AppTheme.primaryBlue,
                  inactiveThumbColor: AppTheme.textSecondary,
                  inactiveTrackColor: Colors.white.withValues(alpha: 0.2),
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
      await provider.loadPlaylistFromUrl(url);
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
      // Use the existing loadPlaylistFromUrl method with constructed URL
      final playlistUrl = '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';
      await provider.loadPlaylistFromUrl(playlistUrl);
    }
  }

  void _clearXtreamFields() {
    _xtreamServerController.clear();
    _xtreamUsernameController.clear();
    _xtreamPasswordController.clear();
  }

  Future<void> _handleUpdateEpg() async {
    try {
      final service = Provider.of<EpgService>(context, listen: false);
      await service.loadEpg();
      _showMessage('EPG updated successfully!');
    } catch (e) {
      _showMessage('EPG update failed: $e');
    }
  }

  Future<void> _handleClearEpg() async {
    try {
      final service = Provider.of<EpgService>(context, listen: false);
      await service.clearCache();
      _showMessage('EPG cleared successfully!');
    } catch (e) {
      _showMessage('EPG clear failed: $e');
    }
  }

  void _browseStorage() async {
    try {
      final result = await FilePicker.platform.getDirectoryPath();
      if (result != null) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('recording_storage_path', result);
        _showMessage('Storage path updated: $result');
        setState(() {}); // Refresh UI
      }
    } catch (e) {
      _showMessage('Failed to select directory: $e');
    }
  }

  Future<void> _handleSwitchTileChange(String title, bool newValue) async {
    setState(() {
      switch (title) {
        case 'Hardware Acceleration': _hardwareAcceleration = newValue; break;
        case 'Hardware Decoding': _hardwareDecoding = newValue; break;
        case 'Auto-play Next Episode': _autoPlayNextEpisode = newValue; break;
        case 'Remember Position VOD': _rememberPlaybackPosition = newValue; break;
        case 'Enable OpenSubtitles': _openSubtitlesEnabled = newValue; break;
        case 'Auto-download Subtitles': _autoDownloadSubtitles = newValue; break;
        case 'Enable Real-Debrid': _realDebridEnabled = newValue; break;
        case 'Enable Live Transcription': _transcriptionEnabled = newValue; break;
        case 'Enable Translation': _translationEnabled = newValue; break;
        case 'Store Program Descriptions': _storeDescriptions = newValue; break;
        case 'Show Channel Logos': _showLogos = newValue; break;
        case 'Show Program Images': _showImages = newValue; break;
      }
    });
    
    final prefs = await SharedPreferences.getInstance();
    switch (title) {
      case 'Hardware Acceleration': await prefs.setBool('hardware_acceleration', newValue); break;
      case 'Hardware Decoding': await prefs.setBool('hardware_decoding', newValue); break;
      case 'Auto-play Next Episode': await prefs.setBool('auto_play_next', newValue); break;
      case 'Remember Position VOD': await prefs.setBool('remember_playback_position', newValue); break;
      case 'Enable OpenSubtitles': 
        await prefs.setBool('opensubtitles_enabled', newValue);
        if (newValue && mounted) {
          final service = Provider.of<OpenSubtitlesService>(context, listen: false);
          await service.initialize();
        }
        break;
      case 'Auto-download Subtitles': await prefs.setBool('auto_download_subtitles', newValue); break;
      case 'Enable Real-Debrid': 
        await prefs.setBool('realdebrid_enabled', newValue);
        if (newValue && mounted) {
          final service = Provider.of<RealDebridService>(context, listen: false);
          await service.initialize();
        }
        break;
      case 'Enable Live Transcription': 
        await prefs.setBool('transcription_enabled', newValue);
        if (newValue && mounted) {
          final service = Provider.of<IntegratedTranscriptionService>(context, listen: false);
          await service.initialize();
        }
        break;
      case 'Enable Translation': 
        await prefs.setBool('translation_enabled', newValue);
        if (newValue && mounted) {
          final service = Provider.of<IntegratedTranscriptionService>(context, listen: false);
          service.setTranslationEnabled(newValue);
        }
        break;
      case 'Store Program Descriptions': await prefs.setBool('epg_store_descriptions', newValue); break;
      case 'Show Channel Logos': await prefs.setBool('epg_show_logos', newValue); break;
      case 'Show Program Images': await prefs.setBool('epg_show_images', newValue); break;
    }
  }

  Future<void> _testOpenSubtitlesConnection() async {
    final username = _openSubtitlesUsernameController.text.trim();
    final password = _openSubtitlesPasswordController.text.trim();
    
    if (username.isEmpty || password.isEmpty) {
      _showMessage('Please enter username and password');
      return;
    }
    
    try {
      final service = Provider.of<OpenSubtitlesService>(context, listen: false);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('opensubtitles_username', username);
      await prefs.setString('opensubtitles_password', password);
      
      await service.initialize();
      _showMessage('OpenSubtitles connection successful!');
    } catch (e) {
      _showMessage('Connection failed: $e');
    }
  }

  Future<void> _testRealDebridConnection() async {
    final apiKey = _realDebridApiKeyController.text.trim();
    
    if (apiKey.isEmpty) {
      _showMessage('Please enter API key');
      return;
    }
    
    try {
      final service = Provider.of<RealDebridService>(context, listen: false);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('realdebrid_api_key', apiKey);
      
      await service.initialize();
      _showMessage('Real-Debrid API key valid!');
    } catch (e) {
      _showMessage('API key validation failed: $e');
    }
  }

  void _showMessage(String message) {
    if (mounted) {
      showAppSnackBar(
        context,
        SnackBar(content: Text(message)),
      );
    }
  }



  Widget _buildCounterButton({
    required FocusNode focusNode,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Focus(
      focusNode: focusNode,
      child: Builder(
        builder: (context) {
          return Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(icon, size: 16, color: AppTheme.textPrimary),
              padding: EdgeInsets.zero,
            ),
          );
        },
      ),
    );
  }

  void _adjustEpgCacheDuration(int delta) async {
    final newValue = (_epgCacheDuration + delta).clamp(1, 24);
    if (newValue != _epgCacheDuration) {
      setState(() => _epgCacheDuration = newValue);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('epg_cache_duration', newValue);
    }
  }

  void _adjustEpgRetentionDays(int delta) async {
    final newValue = (_epgRetentionDays + delta).clamp(1, 14);
    if (newValue != _epgRetentionDays) {
      setState(() => _epgRetentionDays = newValue);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('epg_retention_days', newValue);
    }
  }

  Future<void> _clearPlaylistCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('cached_playlist');
      await prefs.remove('cache_timestamp');
      
      _showMessage('Playlist cache cleared successfully!');
    } catch (e) {
      _showMessage('Failed to clear cache: $e');
    }
  }

  Future<void> _reloadPlaylist() async {
    try {
      if (mounted) {
        final provider = Provider.of<ChannelProvider>(context, listen: false);
        await provider.autoLoadPlaylist();
        _showMessage('Playlist reloaded successfully!');
      }
    } catch (e) {
      _showMessage('Failed to reload playlist: $e');
    }
  }

  Future<void> _exportBackup() async {
    try {
      final filePath = await BackupService.exportBackup();
      if (filePath != null) {
        _showMessage('Backup exported to: $filePath');
      } else {
        _showMessage('Failed to export backup');
      }
    } catch (e) {
      _showMessage('Export failed: $e');
    }
  }

  Future<void> _importBackup() async {
    try {
      final success = await BackupService.importBackup();
      if (success) {
        _showMessage('Backup imported successfully! Restart app to apply changes.');
        // Reload settings after import
        _loadSettingsSync();
        setState(() {});
      } else {
        _showMessage('Import cancelled or failed');
      }
    } catch (e) {
      _showMessage('Import failed: $e');
    }
  }

  void _showLanguageModelsDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1A1A2E),
        title: const Text('Translation Models', style: TextStyle(color: AppTheme.textPrimary)),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildModelTile('English ↔ Spanish', true, 'Downloaded'),
              _buildModelTile('English ↔ French', false, 'Not downloaded'),
              _buildModelTile('English ↔ German', false, 'Not downloaded'),
              _buildModelTile('English ↔ Japanese', true, 'Downloaded'),
              _buildModelTile('English ↔ Chinese', false, 'Not downloaded'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close', style: TextStyle(color: AppTheme.primaryBlue)),
          ),
        ],
      ),
    );
  }

  void _showSpeechModelsDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1A1A2E),
        title: const Text('Speech Recognition Models', style: TextStyle(color: AppTheme.textPrimary)),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildModelTile('English (US)', true, 'Active'),
              _buildModelTile('Spanish', false, 'Available'),
              _buildModelTile('French', false, 'Available'),
              _buildModelTile('German', false, 'Available'),
              _buildModelTile('Japanese', true, 'Downloaded'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close', style: TextStyle(color: AppTheme.primaryBlue)),
          ),
        ],
      ),
    );
  }

  void _deleteModel(String language) {
    _showMessage('Deleted $language model');
    Navigator.of(context).pop();
  }

  void _downloadModel(String language) {
    _showMessage('Downloading $language model...');
    Navigator.of(context).pop();
  }

  Widget _buildModelTile(String language, bool isDownloaded, String status) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        isDownloaded ? Icons.check_circle : Icons.download,
        color: isDownloaded ? AppTheme.accentGreen : AppTheme.textSecondary,
      ),
      title: Text(
        language,
        style: const TextStyle(color: AppTheme.textPrimary, fontSize: 14),
      ),
      subtitle: Text(
        status,
        style: TextStyle(
          color: isDownloaded ? AppTheme.accentGreen : AppTheme.textSecondary,
          fontSize: 12,
        ),
      ),
      trailing: isDownloaded
          ? IconButton(
              icon: const Icon(Icons.delete, color: AppTheme.textSecondary, size: 20),
              onPressed: () => _deleteModel(language),
            )
          : IconButton(
              icon: const Icon(Icons.download, color: AppTheme.primaryBlue, size: 20),
              onPressed: () => _downloadModel(language),
            ),
    );
  }
}