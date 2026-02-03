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

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with ContentFocusRegistrant<SettingsScreen> {
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
  final SettingsLayoutController _layoutController =
      SettingsLayoutController();

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

    // Add listeners
    _customEpgUrlController.addListener(_saveCustomEpgUrl);
    _secondaryEpgUrlController.addListener(_saveSecondaryEpgUrl);

    _registerGeneralFocusNodes();
    _loadSettingsSync();
  }

  Future<void> _loadSettingsSync() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;

    setState(() {
      _m3uUrlController.text = prefs.getString('m3u_url') ?? '';
      _xtreamServerController.text = prefs.getString('xtream_server') ?? '';
      _xtreamUsernameController.text = prefs.getString('xtream_username') ?? '';
      _xtreamPasswordController.text = prefs.getString('xtream_password') ?? '';
      _customEpgUrlController.text = prefs.getString('custom_epg_url') ?? '';
      _secondaryEpgUrlController.text =
          prefs.getString('secondary_epg_url') ?? '';
      _detectedEpgUrl = prefs.getString('epg_url') ?? '';
      _autoPlayNextEpisode = prefs.getBool('auto_play_next') ?? true;
      _hardwareAcceleration = prefs.getBool('hardware_acceleration') ?? true;
      _hardwareDecoding = prefs.getBool('hardware_decoding') ?? true;
      _transcriptionEnabled = prefs.getBool('transcription_enabled') ?? false;
      _translationEnabled = prefs.getBool('translation_enabled') ?? false;
      _heroVideoPreview = prefs.getBool('hero_video_preview') ?? false;
      _rememberPlaybackPosition =
          prefs.getBool('remember_playback_position') ?? true;
      _epgCacheDuration = prefs.getInt('epg_cache_duration') ?? 6;
      _epgRetentionDays = prefs.getInt('epg_retention_days') ?? 7;
      final storedSurface = prefs.getString('exo_player_surface_type');
      if (storedSurface != null && storedSurface != 'surface') {
        unawaited(prefs.setString('exo_player_surface_type', 'surface'));
      }
      final storedBackend = prefs.getString('video_player_backend');
      if (storedBackend == null || storedBackend == 'Auto') {
        _videoPlayerBackend = 'VLC';
        if (storedBackend == 'Auto') {
          unawaited(prefs.setString('video_player_backend', 'VLC'));
        }
      } else {
        _videoPlayerBackend = 'VLC';
      }
    });
  }

  void _saveCustomEpgUrl() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('custom_epg_url', _customEpgUrlController.text);
  }

  void _saveSecondaryEpgUrl() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('secondary_epg_url', _secondaryEpgUrlController.text);
  }

  void _registerGeneralFocusNodes() {
    final nodes = [
      _m3uTabFocusNode,
      _xtreamTabFocusNode,
      _m3uUrlFocusNode,
      _xtreamServerFocusNode,
      _xtreamUsernameFocusNode,
      _xtreamPasswordFocusNode,
      _customEpgUrlFocusNode,
      _secondaryEpgUrlFocusNode,
      _loadM3uButtonFocusNode,
      _loadXtreamButtonFocusNode,
      _clearM3uButtonFocusNode,
      _clearXtreamButtonFocusNode,
      _updateEpgButtonFocusNode,
      _clearEpgButtonFocusNode,
      _browseStorageButtonFocusNode,
    ];

    for (final node in nodes) {
      node.addListener(() {
        if (node.hasFocus) {
          _lastGeneralFocusNode = node;
        }
      });
    }
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

  void _handleCategorySelected(int index) {
    if (_selectedIndex == index) return;
    setState(() => _selectedIndex = index);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_contentScrollController.hasClients) {
        _contentScrollController.jumpTo(0);
      }
    });
  }

  Future<void> _handleBackToHome() async {
    final router = GoRouter.of(context);
    final shouldLeave = await _confirmLeaveWhileLoading();
    if (!context.mounted) {
      return;
    }
    if (shouldLeave) {
      router.go('/home');
    }
  }

  Future<bool> _confirmLeaveWhileLoading() async {
    final channelProvider =
        Provider.of<ChannelProvider>(context, listen: false);
    if (!channelProvider.isLoading) {
      return true;
    }
    final result = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Playlist still saving'),
          content: const Text(
              'Saving is still in progress. Leaving now may interrupt it.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Stay'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Leave'),
            ),
          ],
        );
      },
    );
    return result ?? false;
  }

  void _requestContentFocus() {
    if (_contentScrollController.hasClients) {
      _contentScrollController.jumpTo(0);
    }
    FocusNode? target;
    switch (_selectedIndex) {
      case 0:
        target = _lastGeneralFocusNode ??
            (_playlistInputMethod == 0
                ? _m3uTabFocusNode
                : _xtreamTabFocusNode);
        break;
      case 1:
        target = _playbackFirstFocusNode;
        break;
      case 2:
        target = _aiFirstFocusNode;
        break;
      case 3:
        target = _browseStorageButtonFocusNode;
        break;
    }
    target?.requestFocus();
  }

  @override
  bool handleContentFocusRequest() {
    _layoutController.requestMenuFocus();
    return true;
  }

  Widget _buildActiveContent() {
    Widget content;
    switch (_selectedIndex) {
      case 0:
        content = _buildGeneralSettings();
        break;
      case 1:
        content = _buildPlaybackSettings();
        break;
      case 2:
        content = _buildAISettings();
        break;
      case 3:
        content = _buildRecordingsSettings();
        break;
      default:
        content = _buildGeneralSettings();
    }

    return Focus(
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          _layoutController.requestMenuFocus();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: content,
    );
  }

  Widget _buildInputMethodSelector() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
        ),
        child: Row(
          children: [
            for (final isM3u in [true, false])
              Expanded(
                child: Focus(
                  focusNode: isM3u ? _m3uTabFocusNode : _xtreamTabFocusNode,
                  onFocusChange: (v) {
                    if (v) {
                      Scrollable.ensureVisible(
                        context,
                        alignment: 0.2,
                        duration: const Duration(milliseconds: 150),
                      );
                    }
                    setState(() {});
                  },
                  onKeyEvent: (n, e) {
                    if (e is! KeyDownEvent) return KeyEventResult.ignored;
                    if ({
                      LogicalKeyboardKey.select,
                      LogicalKeyboardKey.enter,
                      LogicalKeyboardKey.space
                    }.contains(e.logicalKey)) {
                      setState(() => _playlistInputMethod = isM3u ? 0 : 1);
                      (isM3u ? _m3uTabFocusNode : _xtreamTabFocusNode)
                          .requestFocus();
                      return KeyEventResult.handled;
                    }
                    if (e.logicalKey ==
                        (isM3u
                            ? LogicalKeyboardKey.arrowRight
                            : LogicalKeyboardKey.arrowLeft)) {
                      (isM3u ? _xtreamTabFocusNode : _m3uTabFocusNode)
                          .requestFocus();
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: Builder(builder: (c) {
                    final isFocused = Focus.of(c).hasFocus;
                    final isSelected = _playlistInputMethod == (isM3u ? 0 : 1);
                    return GestureDetector(
                      onTap: () {
                        setState(() => _playlistInputMethod = isM3u ? 0 : 1);
                        (isM3u ? _m3uTabFocusNode : _xtreamTabFocusNode)
                            .requestFocus();
                      },
                      child: AnimatedContainer(
                        duration: TVFocusStyle.animationDuration,
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppTheme.primaryBlue
                              : (isFocused
                                  ? Colors.white.withValues(alpha: 0.1)
                                  : Colors.transparent),
                          borderRadius: BorderRadius.circular(8),
                          border: isFocused
                              ? Border.all(color: AppTheme.focusBorder, width: 2)
                              : null,
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(isM3u ? Icons.playlist_play : Icons.dns,
                                size: 18,
                                color: isSelected || isFocused
                                    ? Colors.white
                                    : AppTheme.textSecondary),
                            const SizedBox(width: 8),
                            Text(
                                isM3u
                                    ? AppLocalizations.of(context)!.inputMethodM3u
                                    : AppLocalizations.of(context)!
                                        .inputMethodXtream,
                                style: TextStyle(
                                    color: isSelected || isFocused
                                        ? Colors.white
                                        : AppTheme.textSecondary,
                                    fontWeight: isSelected
                                        ? FontWeight.w600
                                        : FontWeight.w500)),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildGeneralSettings() {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return ListView(
      controller: _contentScrollController,
      padding: EdgeInsets.fromLTRB(48, 24, 48, 24 + bottomInset),
      children: [
        SettingsSectionHeader(
          title: AppLocalizations.of(context)!.generalSettings,
          subtitle: AppLocalizations.of(context)!.generalSettingsSubtitle,
        ),

        // Playlist Status
        Consumer<ChannelProvider>(
          builder: (context, channelProvider, _) {
            return FutureBuilder<List<dynamic>>(
              future: Future.wait([
                channelProvider.getChannelCountAsync(),
                _fetchXtreamPanelCounts(),
              ]),
              builder: (context, snapshot) {
                final data = snapshot.data;
                final rawChannels = data != null
                    ? data[0] as int
                    : channelProvider.channelCount;
                final xtreamCounts =
                    data != null ? data[1] as Map<String, int>? : null;

                final channels = xtreamCounts?['channels'] ?? rawChannels;

                final hasChannels = channels > 0;
                final hasContent = hasChannels;
                final totalContent = channels;
                final errorMessage = channelProvider.errorMessage;
                final responsePreview = channelProvider.lastM3UContent;

                return Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 24),
                  decoration: BoxDecoration(
                    color: hasContent
                        ? AppTheme.accentGreen.withValues(alpha: 0.1)
                        : AppTheme.accentRed.withValues(alpha: 0.1),
                    border: Border.all(
                      color: hasContent
                          ? AppTheme.accentGreen.withValues(alpha: 0.3)
                          : AppTheme.accentRed.withValues(alpha: 0.3),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        hasContent ? Icons.check_circle : Icons.error_outline,
                        color: hasContent
                            ? AppTheme.accentGreen
                            : AppTheme.accentRed,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hasContent
                                  ? AppLocalizations.of(context)!.itemsLoaded(totalContent)
                                  : (errorMessage != null &&
                                          errorMessage.isNotEmpty
                                      ? AppLocalizations.of(context)!.playlistError
                                      : AppLocalizations.of(context)!.noPlaylistLoaded),
                              style: TextStyle(
                                color: hasContent
                                    ? AppTheme.accentGreen
                                    : AppTheme.accentRed,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (!hasContent &&
                                errorMessage != null &&
                                errorMessage.isNotEmpty) ...[
                              const SizedBox(height: 6),
                              Text(
                                errorMessage,
                                style: const TextStyle(
                                  color: AppTheme.textSecondary,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                            if (!hasContent &&
                                responsePreview != null &&
                                responsePreview.isNotEmpty) ...[
                              const SizedBox(height: 10),
                              BrandSecondaryButton(
                                label: AppLocalizations.of(context)!.viewResponse,
                                onPressed: () => _showPlaylistResponsePreview(
                                    responsePreview),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 10,
                                ),
                              ),
                            ],
                            if (hasContent) ...[
                              const SizedBox(height: 4),
                              Text(
                                AppLocalizations.of(context)!
                                    .channelsCount(channels),
                                style: TextStyle(
                                  color: hasContent
                                      ? AppTheme.accentGreen
                                      : AppTheme.accentRed,
                                  fontSize: 12,
                                ),
                              ),
                            ]
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),

        SettingsGroup(
          title: AppLocalizations.of(context)!.playlists,
          children: [
            _buildInputMethodSelector(),
            if (_playlistInputMethod == 0) ...[
              SettingsInputTile(
                label: AppLocalizations.of(context)!.m3uPlaylistUrl,
                hint: 'http://example.com/playlist.m3u',
                icon: Icons.link,
                controller: _m3uUrlController,
                focusNode: _m3uUrlFocusNode,
              ),
              Builder(builder: (context) {
                final cp = Provider.of<ChannelProvider>(context);
                final progressPercent =
                    (cp.loadingProgress * 100).clamp(0, 100).round();
                final statusText = cp.loadingStatus.isNotEmpty
                    ? cp.loadingStatus
                    : AppLocalizations.of(context)!.loading;
                return SettingsActionTile(
                  title: AppLocalizations.of(context)!.loadPlaylist,
                  icon: Icons.download,
                  iconColor: AppTheme.primaryBlue,
                  titleColor: AppTheme.primaryBlue,
                  focusNode: _loadM3uButtonFocusNode,
                  onTap: _loadM3uPlaylist,
                  subtitle:
                      cp.isLoading ? '$statusText ($progressPercent%)' : null,
                  trailing: cp.isLoading
                      ? IconButton(
                          icon: const Icon(Icons.cancel),
                          color: Colors.white70,
                          tooltip: AppLocalizations.of(context)!.cancelLoad,
                          onPressed: () {
                            cp.cancelPlaylistLoad();
                            _showMessage(AppLocalizations.of(context)!.playlistLoadCancelled);
                          },
                        )
                      : null,
                );
              }),
              SettingsActionTile(
                title: AppLocalizations.of(context)!.clearUrl,
                icon: Icons.clear,
                focusNode: _clearM3uButtonFocusNode,
                onTap: () => _m3uUrlController.clear(),
              ),
              SettingsActionTile(
                title: AppLocalizations.of(context)!.managePlaylists,
                icon: Icons.playlist_add_check,
                onTap: _showManagePlaylistsDialog,
              ),
            ] else ...[
              SettingsInputTile(
                label: AppLocalizations.of(context)!.serverUrl,
                hint: 'http://example.com:8080',
                icon: Icons.dns,
                controller: _xtreamServerController,
                focusNode: _xtreamServerFocusNode,
              ),
              SettingsInputTile(
                label: AppLocalizations.of(context)!.username,
                hint: AppLocalizations.of(context)!.username,
                icon: Icons.person,
                controller: _xtreamUsernameController,
                focusNode: _xtreamUsernameFocusNode,
              ),
              SettingsInputTile(
                label: AppLocalizations.of(context)!.password,
                hint: AppLocalizations.of(context)!.password,
                icon: Icons.lock,
                obscureText: true,
                controller: _xtreamPasswordController,
                focusNode: _xtreamPasswordFocusNode,
              ),
              Builder(builder: (context) {
                final cp = Provider.of<ChannelProvider>(context);
                final progressPercent =
                    (cp.loadingProgress * 100).clamp(0, 100).round();
                final statusText = cp.loadingStatus.isNotEmpty
                    ? cp.loadingStatus
                    : AppLocalizations.of(context)!.loading;
                return SettingsActionTile(
                  title: AppLocalizations.of(context)!.loadXtreamPlaylist,
                  icon: Icons.download,
                  iconColor: AppTheme.primaryBlue,
                  titleColor: AppTheme.primaryBlue,
                  focusNode: _loadXtreamButtonFocusNode,
                  onTap: _loadXtreamPlaylist,
                  subtitle:
                      cp.isLoading ? '$statusText ($progressPercent%)' : null,
                  trailing: cp.isLoading
                      ? IconButton(
                          icon: const Icon(Icons.cancel),
                          color: Colors.white70,
                          tooltip: AppLocalizations.of(context)!.cancelLoad,
                          onPressed: () {
                            cp.cancelPlaylistLoad();
                            _showMessage(AppLocalizations.of(context)!.playlistLoadCancelled);
                          },
                        )
                      : null,
                );
              }),
              SettingsActionTile(
                title: AppLocalizations.of(context)!.clearFields,
                icon: Icons.clear,
                focusNode: _clearXtreamButtonFocusNode,
                onTap: _clearXtreamFields,
              ),
              SettingsActionTile(
                title: AppLocalizations.of(context)!.managePlaylists,
                icon: Icons.playlist_add_check,
                onTap: _showManagePlaylistsDialog,
              ),
            ],
          ],
        ),

        SettingsGroup(
          title: AppLocalizations.of(context)!.epgPreferences,
          children: [
            Consumer<IncrementalEpgService>(
              builder: (context, epgService, _) {
                final detected = epgService.currentUrl ?? _detectedEpgUrl;
                return SettingsActionTile(
                  title: AppLocalizations.of(context)!.detectedEpgUrl,
                  subtitle: detected.isNotEmpty ? detected : AppLocalizations.of(context)!.noneDetected,
                  icon: Icons.link,
                  onTap: null,
                );
              },
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.updateEpgNow,
              icon: Icons.sync,
              iconColor: AppTheme.primaryBlue,
              titleColor: AppTheme.primaryBlue,
              focusNode: _updateEpgButtonFocusNode,
              onTap: _handleUpdateEpg,
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.clearEpgData,
              icon: Icons.delete_outline,
              focusNode: _clearEpgButtonFocusNode,
              onTap: _handleClearEpg,
            ),
            SettingsActionTile(
              title: 'Clear Artwork Cache',
              subtitle: 'Reset artwork negative cache and retry failed fetches',
              icon: Icons.image_not_supported,
              onTap: _handleClearArtworkCache,
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.autoRefreshInterval,
              subtitle: AppLocalizations.of(context)!.refreshEveryHours(_epgCacheDuration),
              icon: Icons.timer,
              trailing: Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.remove, color: Colors.white),
                      onPressed: () => _adjustEpgCacheDuration(-1)),
                  const SizedBox(width: 8),
                  IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () => _adjustEpgCacheDuration(1)),
                ],
              ),
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.dataRetention,
              subtitle: AppLocalizations.of(context)!.keepDataForDays(_epgRetentionDays),
              icon: Icons.calendar_today,
              trailing: Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.remove, color: Colors.white),
                      onPressed: () => _adjustEpgRetentionDays(-1)),
                  const SizedBox(width: 8),
                  IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () => _adjustEpgRetentionDays(1)),
                ],
              ),
            ),
          ],
        ),

        SettingsGroup(
          title: AppLocalizations.of(context)!.system,
          children: [
            SettingsActionTile(
              title: AppLocalizations.of(context)!.epgDiagnosticTool,
              icon: Icons.bug_report,
              onTap: () => context.push('/epg-diagnostic'),
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.exportBackup,
              icon: Icons.upload_file,
              onTap: _exportBackup,
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.importBackup,
              icon: Icons.file_download,
              onTap: _importBackup,
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.debugPerformance,
              icon: Icons.speed,
              onTap: () => context.push('/debug'),
            ),
          ],
        ),
      ],
    );
  }

  Future<Map<String, int>?> _fetchXtreamPanelCounts() async {
    final server = _xtreamServerController.text.trim();
    final username = _xtreamUsernameController.text.trim();
    final password = _xtreamPasswordController.text.trim();
    if (server.isEmpty || username.isEmpty || password.isEmpty) {
      return null;
    }

    if (_xtreamPanelCounts != null &&
        _xtreamPanelCountsFetchedAt != null &&
        DateTime.now().difference(_xtreamPanelCountsFetchedAt!) <
            const Duration(minutes: 5)) {
      return _xtreamPanelCounts;
    }

    if (_xtreamPanelCountsInFlight) return _xtreamPanelCounts;
    _xtreamPanelCountsInFlight = true;

    try {
      final service = XtreamCodesService(
        serverUrl: server,
        username: username,
        password: password,
      );
      final counts = await service.getPanelCounts();
      service.dispose();
      if (counts != null) {
        _xtreamPanelCounts = counts;
        _xtreamPanelCountsFetchedAt = DateTime.now();
      }
      return counts;
    } finally {
      _xtreamPanelCountsInFlight = false;
    }
  }

  Widget _buildPlaybackSettings() {
    return ListView(
      controller: _contentScrollController,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        SettingsSectionHeader(
            title: AppLocalizations.of(context)!.playback, subtitle: AppLocalizations.of(context)!.videoPlayerConfiguration),
        SettingsGroup(
          title: AppLocalizations.of(context)!.performance,
          children: [
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.hardwareAcceleration,
              subtitle: AppLocalizations.of(context)!.useGpuForBetterPerformance,
              value: _hardwareAcceleration,
              onChanged: (v) =>
                  _handleSwitchTileChange('Hardware Acceleration', v),
              focusNode: _playbackFirstFocusNode,
            ),
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.hardwareDecoding,
              value: _hardwareDecoding,
              onChanged: (v) => _handleSwitchTileChange('Hardware Decoding', v),
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.playerEngine,
              subtitle: AppLocalizations.of(context)!.selectPlayerBackend,
              trailing: Text(
                _videoPlayerBackend,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppTheme.primaryBlue,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              onTap: _cycleVideoPlayerBackend,
            ),
          ],
        ),
        SettingsGroup(
          title: AppLocalizations.of(context)!.behavior,
          children: [
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.autoPlayNextEpisode,
              value: _autoPlayNextEpisode,
              onChanged: (v) =>
                  _handleSwitchTileChange('Auto-play Next Episode', v),
            ),
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.heroVideoPreview,
              subtitle: AppLocalizations.of(context)!.showVideoPreviewInHero,
              value: _heroVideoPreview,
              onChanged: (v) =>
                  _handleSwitchTileChange('Hero Video Preview', v),
            ),
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.rememberPosition,
              value: _rememberPlaybackPosition,
              onChanged: (v) =>
                  _handleSwitchTileChange('Remember Position', v),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAISettings() {
    return ListView(
      controller: _contentScrollController,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        SettingsSectionHeader(
            title: AppLocalizations.of(context)!.aiFeatures,
            subtitle: AppLocalizations.of(context)!.transcriptionTranslationSubtitles),
        SettingsGroup(
          title: AppLocalizations.of(context)!.liveServices,
          children: [
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.liveTranscription,
              subtitle: AppLocalizations.of(context)!.generateSubtitlesRealTime,
              value: _transcriptionEnabled,
              onChanged: (v) =>
                  _handleSwitchTileChange('Enable Live Transcription', v),
              focusNode: _aiFirstFocusNode,
            ),
            SettingsSwitchTile(
              title: AppLocalizations.of(context)!.realTimeTranslation,
              subtitle: AppLocalizations.of(context)!.translateTranscription,
              value: _translationEnabled,
              onChanged: (v) =>
                  _handleSwitchTileChange('Enable Translation', v),
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.manageSpeechModels,
              icon: Icons.mic,
              onTap: _showSpeechModelsDialog,
            ),
            SettingsActionTile(
              title: AppLocalizations.of(context)!.manageTranslationModels,
              icon: Icons.translate,
              onTap: _showLanguageModelsDialog,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRecordingsSettings() {
    return ListView(
      controller: _contentScrollController,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      children: [
        SettingsSectionHeader(
            title: AppLocalizations.of(context)!.recordings, subtitle: AppLocalizations.of(context)!.manageDvrStorage),
        SettingsGroup(
          children: [
            FutureBuilder<String>(
              future: _getStoragePath(),
              builder: (context, snapshot) {
                return SettingsActionTile(
                  title: AppLocalizations.of(context)!.storagePath,
                  subtitle: snapshot.data ?? AppLocalizations.of(context)!.loading,
                  icon: Icons.folder,
                  trailing: const Icon(Icons.edit, color: Colors.white54),
                  focusNode: _browseStorageButtonFocusNode,
                  onTap: _browseStorage,
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  // LOGIC HELPERS REMAIN UNCHANGED
  Future<String> _getStoragePath() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('recording_storage_path') ?? '/storage/recordings';
  }

  void _showPlaylistResponsePreview(String content) {
    const maxPreviewChars = 20000;
    final preview = content.trim().isEmpty ? '<empty response>' : content;
    final truncatedPreview = preview.length > maxPreviewChars
        ? '${preview.substring(0, maxPreviewChars)}\n\n…(truncated)'
        : preview;
    final extinfCount =
        RegExp(r'EXTINF:', caseSensitive: false).allMatches(content).length;
    final extinfHashCount =
        RegExp(r'#EXTINF:', caseSensitive: false).allMatches(content).length;
    final urlCount =
        RegExp(r'https?://', caseSensitive: false).allMatches(content).length;
    final lfCount = RegExp('\n').allMatches(content).length;
    final crCount = RegExp('\r').allMatches(content).length;
    final hasM3uHeader = content.contains('#EXTM3U');
    final diagnostics = [
      'Diagnostics',
      'length: ${content.length}',
      'EXTINF: $extinfCount',
      '#EXTINF: $extinfHashCount',
      'http(s)://: $urlCount',
      '\\n: $lfCount',
      '\\r: $crCount',
      'has #EXTM3U: $hasM3uHeader',
    ].join('\n');
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => _PlaylistResponsePreviewScreen(
          diagnostics: diagnostics,
          preview: truncatedPreview,
        ),
      ),
    );
  }

  String _normalizeHttpUrl(String input) {
    final trimmed = input.trim();
    if (trimmed.isEmpty) return '';
    if (trimmed.startsWith('http://') || trimmed.startsWith('https://')) {
      return trimmed;
    }
    return 'http://$trimmed';
  }

  Future<void> _loadM3uPlaylist() async {
    final url = _normalizeHttpUrl(_m3uUrlController.text);
    if (url.isEmpty) {
      _showMessage(AppLocalizations.of(context)!.pleaseEnterPlaylistUrl);
      return;
    }
    _showMessage(AppLocalizations.of(context)!.loadingPlaylist);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('m3u_url', url);
    await prefs.setString('playlist_type', 'm3u');
    if (mounted) {
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      await provider.loadPlaylistFromUrl(url);
      final hasContent = provider.channelCount > 0;
      final error = provider.errorMessage;
      final responsePreview = provider.lastM3UContent;
      if (error != null && error.trim().isNotEmpty) {
        _showMessage(error);
        if (responsePreview != null && responsePreview.isNotEmpty) {
          _showPlaylistResponsePreview(responsePreview);
        }
      } else if (!hasContent) {
        _showMessage('No channels found in this playlist.');
        if (responsePreview != null && responsePreview.isNotEmpty) {
          _showPlaylistResponsePreview(responsePreview);
        }
      } else {
        _m3uUrlController.clear();
        _showMessage('Playlist loaded successfully!');
        await _savePlaylistToLibrary(
          SavedPlaylist(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            name: url,
            type: 'm3u',
            url: url,
            epgUrl: prefs.getString('epg_url'),
            epgUrlSecondary: prefs.getString('secondary_epg_url'),
            addedDate: DateTime.now(),
          ),
        );
        // Trigger EPG refresh with the detected URL
        if (mounted) {
          unawaited(Provider.of<IncrementalEpgService>(context, listen: false)
              .initialize(forceRefresh: true));
        }
      }
    }
  }

  Future<void> _loadXtreamPlaylist() async {
    final server = _normalizeHttpUrl(_xtreamServerController.text);
    final username = _xtreamUsernameController.text.trim();
    final password = _xtreamPasswordController.text.trim();
    if (server.isEmpty || username.isEmpty || password.isEmpty) {
      _showMessage('Please fill in all fields.');
      return;
    }
    _showMessage('Loading Xtream playlist...');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('xtream_server', server);
    await prefs.setString('xtream_username', username);
    await prefs.setString('xtream_password', password);
    await prefs.setString('playlist_type', 'xtream');
    String playlistUrlUsed = '';

    // Compute and save Xtream EPG URL at credential entry time.
    // Respect user-set `custom_epg_url`: if it's present, do not overwrite `epg_url`.
    try {
      try {
        final cleaned = server.trim();
        final epgBase = Uri.parse(cleaned);
        final base = (epgBase.scheme.isEmpty || epgBase.host.isEmpty)
            ? Uri.parse(
                'https://${cleaned.replaceAll(RegExp(r'^https?://'), '')}')
            : epgBase;
        final epgUri = base.replace(
          path: (base.path.trim().isEmpty)
              ? 'xmltv.php'
              : '${base.path.replaceAll(RegExp(r'^/'), '')}/xmltv.php',
          queryParameters: {
            'username': username.replaceAll(' ', ''),
            'password': password.replaceAll(' ', ''),
          },
        );
        final custom = prefs.getString('custom_epg_url') ?? '';
        if (custom.trim().isEmpty) {
          await prefs.setString('epg_url', epgUri.toString());
        }
      } catch (_) {
        // swallow to avoid leaking credentials
      }
    } catch (_) {
      // Swallow any unexpected errors silently to avoid leaking credentials or logs.
    }
    if (mounted) {
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      try {
        final cleaned = server.trim();
        Uri baseUri = Uri.parse(cleaned);
        if (baseUri.scheme.isEmpty || baseUri.host.isEmpty) {
          baseUri = Uri.parse(
              'https://${cleaned.replaceAll(RegExp(r'^https?://'), '')}');
        }
        final playlistUri = baseUri.replace(
          path: (baseUri.path.trim().isEmpty)
              ? 'get.php'
              : '${baseUri.path.replaceAll(RegExp(r'^/'), '')}/get.php',
          queryParameters: {
            'username': username.replaceAll(' ', ''),
            'password': password.replaceAll(' ', ''),
            'type': 'm3u_plus',
          },
        );
        playlistUrlUsed = playlistUri.toString();
        await provider.loadPlaylistFromUrl(playlistUrlUsed);
      } catch (e) {
        playlistUrlUsed =
            '${server.replaceAll(' ', '')}/get.php?username=${username.replaceAll(' ', '')}&password=${password.replaceAll(' ', '')}&type=m3u_plus';
        await provider.loadPlaylistFromUrl(playlistUrlUsed);
      }
      final hasContent = provider.channelCount > 0 ||
          provider.channelCount > 0;
      final error = provider.errorMessage;
      final responsePreview = provider.lastM3UContent;
      if (error != null && error.trim().isNotEmpty) {
        _showMessage(error);
        if (responsePreview != null && responsePreview.isNotEmpty) {
          _showPlaylistResponsePreview(responsePreview);
        }
      } else if (!hasContent) {
        _showMessage('No channels found in this playlist.');
        if (responsePreview != null && responsePreview.isNotEmpty) {
          _showPlaylistResponsePreview(responsePreview);
        }
      } else {
        _clearXtreamFields();
        _showMessage('Xtream playlist loaded successfully!');
        await _savePlaylistToLibrary(
          SavedPlaylist(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            name: server,
            type: 'xtream',
            url: playlistUrlUsed,
            server: server,
            username: username,
            password: password,
            epgUrl: prefs.getString('epg_url'),
            epgUrlSecondary: prefs.getString('secondary_epg_url'),
            addedDate: DateTime.now(),
          ),
        );
        // Trigger EPG refresh with the detected URL
        if (mounted) {
          unawaited(Provider.of<IncrementalEpgService>(context, listen: false)
              .initialize(forceRefresh: true));
        }
      }
    }
  }

  void _clearXtreamFields() {
    _xtreamServerController.clear();
    _xtreamUsernameController.clear();
    _xtreamPasswordController.clear();
  }

  Future<void> _handleUpdateEpg() async {
    _showMessage('Updating EPG...');
    final service = Provider.of<IncrementalEpgService>(context, listen: false);
    await service.initialize();
    if (!mounted) return;
    _showMessage('EPG update triggered.');
  }

  Future<void> _handleClearEpg() async {
    final epgService = Provider.of<IncrementalEpgService>(context, listen: false);
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('live_tv_program_artwork_title_cache_v1');
    await prefs.remove('live_tv_program_artwork_negative_cache_v1');
    await epgService.clearAllData(
      clearUrls: false,
      clearSavedPlaylists: false,
    );
    if (!mounted) return;
    setState(() {});
    _showMessage('EPG cleared.');
  }

  Future<void> _handleClearArtworkCache() async {
    // Access artwork service from LiveTV screen's state
    // For now, just clear SharedPreferences keys
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('live_tv_program_artwork_title_cache_v1');
    await prefs.remove('live_tv_program_artwork_negative_cache_v1');
    PaintingBinding.instance.imageCache.clear();
    PaintingBinding.instance.imageCache.clearLiveImages();
    if (!mounted) return;
    _showMessage('Artwork cache cleared. Restart app to refetch.');
  }

  void _browseStorage() async {
    try {
      final result = await FilePicker.platform.getDirectoryPath();
      if (!mounted) return;
      if (result != null) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('recording_storage_path', result);
        if (!mounted) return;
        _showMessage('Storage path updated: $result');
        setState(() {});
      }
    } catch (e) {
      if (!mounted) return;
      _showMessage('Failed to select directory: $e');
    }
  }

  Future<void> _handleSwitchTileChange(String title, bool newValue) async {
    setState(() {
      switch (title) {
        case 'Hardware Acceleration':
          _hardwareAcceleration = newValue;
          break;
        case 'Hardware Decoding':
          _hardwareDecoding = newValue;
          break;
        case 'Auto-play Next Episode':
          _autoPlayNextEpisode = newValue;
          break;
        case 'Remember Position':
          _rememberPlaybackPosition = newValue;
          break;
        case 'Enable Live Transcription':
          _transcriptionEnabled = newValue;
          break;
        case 'Enable Translation':
          _translationEnabled = newValue;
          break;
        case 'Hero Video Preview':
          _heroVideoPreview = newValue;
          break;
      }
    });

    final prefs = await SharedPreferences.getInstance();
    switch (title) {
      case 'Hardware Acceleration':
        await prefs.setBool('hardware_acceleration', newValue);
        break;
      case 'Hardware Decoding':
        await prefs.setBool('hardware_decoding', newValue);
        break;
      case 'Auto-play Next Episode':
        await prefs.setBool('auto_play_next', newValue);
        break;
      case 'Remember Position':
        await prefs.setBool('remember_playback_position', newValue);
        break;
      case 'Enable Live Transcription':
        await prefs.setBool('transcription_enabled', newValue);
        if (newValue && mounted) {
          unawaited(Provider.of<IntegratedTranscriptionService>(context,
                  listen: false)
              .initialize());
        }
        break;
      case 'Enable Translation':
        await prefs.setBool('translation_enabled', newValue);
        if (newValue && mounted) {
          Provider.of<IntegratedTranscriptionService>(context, listen: false)
              .setTranslationEnabled(newValue);
        }
        break;
      case 'Hero Video Preview':
        await prefs.setBool('hero_video_preview', newValue);
        if (mounted) {
          unawaited(Provider.of<SettingsProvider>(context, listen: false)
              .setHeroVideoPreview(newValue));
        }
        break;
    }
  }

  Future<void> _cycleVideoPlayerBackend() async {
    const nextValue = 'VLC';
    setState(() => _videoPlayerBackend = nextValue);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('video_player_backend', nextValue);
    if (mounted) {
      unawaited(Provider.of<SettingsProvider>(context, listen: false)
          .setVideoPlayerBackend(nextValue));
    }
    _showMessage('Video player engine set to $nextValue.');
  }

  Future<void> _savePlaylistToLibrary(SavedPlaylist playlist) async {
    final prefs = await SharedPreferences.getInstance();
    final existingJson = prefs.getString('saved_playlists');
    List<SavedPlaylist> list = [];
    if (existingJson != null && existingJson.trim().isNotEmpty) {
        try {
        final decoded = await compute(jsonDecode, existingJson) as List<dynamic>;
        list = decoded
            .map((j) => SavedPlaylist.fromJson(Map<String, dynamic>.from(j)))
            .toList();
      } catch (_) {}
    }

    int existingIndex = -1;
    if (playlist.type == 'm3u') {
      existingIndex = list.indexWhere(
          (p) => p.type == 'm3u' && p.url.trim() == playlist.url.trim());
    } else {
      existingIndex = list.indexWhere((p) =>
          p.type == 'xtream' &&
          (p.server ?? '').trim() == (playlist.server ?? '').trim() &&
          (p.username ?? '').trim() == (playlist.username ?? '').trim());
    }

    final normalized = SavedPlaylist(
      id: existingIndex >= 0 ? list[existingIndex].id : playlist.id,
      name: playlist.name,
      type: playlist.type,
      url: playlist.url,
      server: playlist.server,
      username: playlist.username,
      password: playlist.password,
      epgUrl: playlist.epgUrl,
      epgUrlSecondary: playlist.epgUrlSecondary,
      addedDate: existingIndex >= 0
          ? list[existingIndex].addedDate
          : playlist.addedDate,
    );

    if (existingIndex >= 0) {
      list[existingIndex] = normalized;
    } else {
      list.add(normalized);
    }

    await prefs.setString(
        'saved_playlists', jsonEncode(list.map((p) => p.toJson()).toList()));
    await prefs.setString('playlist_type', normalized.type);
    await prefs.setString('active_playlist_id', normalized.id);
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

  Future<void> _exportBackup() async {
    try {
      final filePath = await BackupService.exportBackup();
      if (filePath != null) _showMessage('Backup exported!');
    } catch (e) {
      _showMessage('Export failed: $e');
    }
  }

  Future<void> _importBackup() async {
    try {
      if (await BackupService.importBackup()) {
        _showMessage('Import successful! Restarting...');
        unawaited(_loadSettingsSync());
      }
    } catch (e) {
      _showMessage('Import failed: $e');
    }
  }

  void _showMessage(String message) {
    if (mounted) {
      SnackbarUtils.show(context, message);
    }
  }

  void _showLanguageModelsDialog() {
    context.push('/translation-models');
  }

  void _showSpeechModelsDialog() {
    context.push('/whisper-models');
  }

  void _showManagePlaylistsDialog() {
    // Use the unified playlist manager that reads the new saved_playlists store
    context.push('/playlist-manager');
  }
}

class _PlaylistResponsePreviewScreen extends StatelessWidget {
  final String diagnostics;
  final String preview;

  const _PlaylistResponsePreviewScreen({
    required this.diagnostics,
    required this.preview,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('Playlist Response Preview'),
        backgroundColor: Colors.white.withAlpha((0.08 * 255).round()),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: [
          const SettingsSectionHeader(
            title: 'Diagnostics',
            subtitle: 'Response summary and raw preview',
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha((0.25 * 255).round()),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white12),
            ),
            child: Text(
              diagnostics,
              style: const TextStyle(
                color: AppTheme.textSecondary,
                fontFamily: 'monospace',
                fontSize: 12,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SettingsSectionHeader(
            title: 'Preview',
            subtitle: 'First part of the response payload',
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha((0.2 * 255).round()),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white12),
            ),
            child: Text(
              preview,
              style: const TextStyle(
                color: AppTheme.textPrimary,
                fontFamily: 'monospace',
                fontSize: 12,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
