import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
// import 'package:iptv_player/models/saved_playlist.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
// import 'dart:convert';

/// Playlist login screen - allows users to choose between M3U URL or Xtream Codes
class PlaylistLoginScreen extends StatefulWidget {
  const PlaylistLoginScreen({super.key});

  @override
  State<PlaylistLoginScreen> createState() => _PlaylistLoginScreenState();
}

class _PlaylistLoginScreenState extends State<PlaylistLoginScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isLoading = false;

  // Editable state for text fields (prevent auto-keyboard on Android TV)
  bool _m3uUrlEditable = false;
  bool _xtreamServerEditable = false;
  bool _xtreamUsernameEditable = false;
  bool _xtreamPasswordEditable = false;

  // Focus nodes for text fields
  final FocusNode _m3uUrlFocusNode = FocusNode();
  final FocusNode _xtreamServerFocusNode = FocusNode();
  final FocusNode _xtreamUsernameFocusNode = FocusNode();
  final FocusNode _xtreamPasswordFocusNode = FocusNode();

  // M3U Controllers
  final TextEditingController _m3uUrlController = TextEditingController();

  // Xtream Controllers
  final TextEditingController _xtreamServerController = TextEditingController();
  final TextEditingController _xtreamUsernameController =
      TextEditingController();
  final TextEditingController _xtreamPasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    // Don't load saved credentials - fields should be empty when opening this screen
  }

  @override
  void dispose() {
    _tabController.dispose();
    _m3uUrlController.dispose();
    _m3uUrlFocusNode.dispose();
    _xtreamServerController.dispose();
    _xtreamServerFocusNode.dispose();
    _xtreamUsernameController.dispose();
    _xtreamUsernameFocusNode.dispose();
    _xtreamPasswordController.dispose();
    _xtreamPasswordFocusNode.dispose();
    super.dispose();
  }

  String _normalizeHttpUrl(String input) {
    final trimmed = input.trim();
    if (trimmed.isEmpty) return trimmed;
    if (trimmed.startsWith('http://') || trimmed.startsWith('https://')) {
      return trimmed;
    }
    return 'http://$trimmed';
  }

  String _normalizeServerBase(String input) {
    final normalized = _normalizeHttpUrl(input);
    if (normalized.endsWith('/')) {
      return normalized.substring(0, normalized.length - 1);
    }
    return normalized;
  }

  Future<void> _loadM3UPlaylist() async {
    final rawUrl = _m3uUrlController.text;
    final url = _normalizeHttpUrl(rawUrl);
    if (url.isEmpty) {
      _showError('Please enter a valid M3U URL');
      return;
    }

    setState(() => _isLoading = true);

    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );

    try {
      await channelProvider.loadPlaylistFromUrl(url);

      final channelCount = channelProvider.channelCount;
      final movieCount = channelProvider.moviesCount;
      final seriesCount = channelProvider.seriesCount;

      // Save credentials for auto-load on next startup
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('m3u_url', url);
      await prefs.setString('playlist_type', 'm3u');

      if (mounted) {
        if (channelCount == 0 && movieCount == 0 && seriesCount == 0) {
          // No content found - show detailed error with option to view content
          final hasContent = channelProvider.lastM3UContent != null;
          showAppSnackBar(
            context,
            SnackBar(
              content: Text(
                hasContent
                    ? '⚠️ 0 channels found!\n\nThe URL responded but contained no valid channels.\nTap below to see what was received.'
                    : '⚠️ 0 channels found!\n\nThe URL responded but no content was captured.\nCheck your M3U URL format.',
              ),
              backgroundColor: AppTheme.accentRed,
              duration: const Duration(seconds: 10),
              action: hasContent
                  ? SnackBarAction(
                      label: 'View Content',
                      textColor: AppTheme.textPrimary,
                      onPressed: () {
                        _showM3UPreview(channelProvider.lastM3UContent!);
                      },
                    )
                  : null,
            ),
          );
        } else {
          // Success - show what was found
          final parts = <String>[];
          if (channelCount > 0) parts.add('$channelCount channels');
          if (movieCount > 0) parts.add('$movieCount movies');
          if (seriesCount > 0) parts.add('$seriesCount series');

          showAppSnackBar(
            context,
            SnackBar(
              content: Text('✓ Loaded: ${parts.join(", ")}'),
              backgroundColor: AppTheme.accentGreen,
              duration: const Duration(seconds: 4),
            ),
          );

          // Clear the M3U URL field after successful login
          setState(() {
            _m3uUrlController.clear();
          });

          // Navigate to home only if we found content
          context.go('/home');
        }
      }
    } catch (e) {
      final friendly = channelProvider.errorMessage;
      _showError(
        (friendly != null && friendly.isNotEmpty)
            ? friendly
            : 'Failed to load playlist: ${e.toString()}',
      );
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _loadXtreamPlaylist() async {
    final server = _normalizeServerBase(_xtreamServerController.text);
    final username = _xtreamUsernameController.text.trim();
    final password = _xtreamPasswordController.text.trim();

    if (server.isEmpty || username.isEmpty || password.isEmpty) {
      _showError('Please fill in all Xtream Codes fields');
      return;
    }

    setState(() => _isLoading = true);

    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );

    try {
      // Build Xtream API URL for getting live streams
      // Format: http://server:port/get.php?username=xxx&password=xxx&type=m3u_plus&output=ts
      final url =
          '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';

      await channelProvider.loadPlaylistFromUrl(url);

      final channelCount = channelProvider.channelCount;
      final movieCount = channelProvider.moviesCount;
      final seriesCount = channelProvider.seriesCount;

      // Save credentials for auto-load on next startup
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('xtream_server', server);
      await prefs.setString('xtream_username', username);
      await prefs.setString('xtream_password', password);
      await prefs.setString('playlist_type', 'xtream');

      // Build and save EPG URL for Xtream codes
      final epgUrl = '$server/xmltv.php?username=$username&password=$password';
      await prefs.setString('epg_url', epgUrl);

      // Auto-load EPG data
      if (mounted) {
        try {
          final epgService = Provider.of<IncrementalEpgService>(context, listen: false);
          await epgService.initialize(); // Load in background, don't await
        } catch (e) {
          debugLog('Failed to start EPG load: $e');
        }
      }

      if (mounted) {
        if (channelCount == 0 && movieCount == 0 && seriesCount == 0) {
          // No content found - show detailed error with option to view content
          final hasContent = channelProvider.lastM3UContent != null &&
              channelProvider.lastM3UContent!.isNotEmpty;

          showAppSnackBar(
            context,
            SnackBar(
              content: Text(
                hasContent
                    ? '⚠️ 0 channels found!\n\nCheck your Xtream credentials.\nTap below to view server response.'
                    : '⚠️ 0 channels found!\n\nCheck your Xtream credentials.\nNo response data available.',
              ),
              backgroundColor: AppTheme.accentRed,
              duration: const Duration(seconds: 8),
              action: hasContent
                  ? SnackBarAction(
                      label: 'View Response',
                      textColor: AppTheme.textPrimary,
                      onPressed: () {
                        _showM3UPreview(channelProvider.lastM3UContent!);
                      },
                    )
                  : null,
            ),
          );
        } else {
          // Success - show what was found
          final parts = <String>[];
          if (channelCount > 0) parts.add('$channelCount channels');
          if (movieCount > 0) parts.add('$movieCount movies');
          if (seriesCount > 0) parts.add('$seriesCount series');

          showAppSnackBar(
            context,
            SnackBar(
              content: Text('✓ Loaded: ${parts.join(", ")}'),
              backgroundColor: AppTheme.accentGreen,
              duration: const Duration(seconds: 4),
            ),
          );

          // Clear the Xtream credential fields after successful login
          setState(() {
            _xtreamServerController.clear();
            _xtreamUsernameController.clear();
            _xtreamPasswordController.clear();
          });

          // Navigate to home only if we found content
          context.go('/home');
        }
      }
    } catch (e) {
      final friendly = channelProvider.errorMessage;
      _showError(
        (friendly != null && friendly.isNotEmpty)
            ? friendly
            : 'Failed to load Xtream playlist: ${e.toString()}',
      );
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  void _showError(String message) {
    if (mounted) {
      // Use dialog for detailed error messages (better for multi-line technical details)
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: AppTheme.dialogBackground,
          title: Row(
            children: [
              Icon(Icons.error_outline, color: AppTheme.accentRed, size: 28),
              const SizedBox(width: 12),
              const Text('Error',
                  style: TextStyle(color: AppTheme.textPrimary)),
            ],
          ),
          content: SingleChildScrollView(
            child: SelectableText(
              message,
              style: const TextStyle(
                color: AppTheme.textPrimary,
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK',
                  style: TextStyle(color: AppTheme.primaryBlue)),
            ),
          ],
        ),
      );
    }
  }

  void _showM3UPreview(String content) {
    // Analyze the content
    final lines = content.split('\n');
    final firstLine = lines.isNotEmpty ? lines[0].trim() : '';
    final hasM3UHeader = firstLine.toUpperCase().contains('#EXTM3U');
    final extinfCount =
        lines.where((l) => l.trim().startsWith('#EXTINF:')).length;
    final urlCount = lines
        .where(
          (l) =>
              !l.trim().startsWith('#') &&
              l.trim().isNotEmpty &&
              (l.contains('http') || l.contains('://')),
        )
        .length;

    // Show first 25 lines
    final preview = lines.take(25).join('\n');

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.dialogBackground,
        title: const Text('M3U Content Analysis'),
        content: Container(
          width: double.maxFinite,
          constraints: const BoxConstraints(maxHeight: 500),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Diagnostics
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: hasM3UHeader
                        ? AppTheme.accentGreen.withAlpha((0.2 * 255).round())
                        : AppTheme.accentRed.withAlpha((0.2 * 255).round()),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '📊 Diagnostics:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primaryBlue,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text('✓ Total lines: ${lines.length}'),
                      Text(
                        hasM3UHeader
                            ? '✓ Valid M3U header found'
                            : '✗ Missing #EXTM3U header',
                      ),
                      Text('✓ Found $extinfCount #EXTINF entries'),
                      Text('✓ Found $urlCount stream URLs'),
                      const SizedBox(height: 8),
                      if (extinfCount == 0)
                        const Text(
                          '⚠ No #EXTINF entries found! This may not be a valid M3U format.',
                          style: TextStyle(color: AppTheme.accentOrange),
                        ),
                      if (urlCount == 0)
                        const Text(
                          '⚠ No URLs found! Channels need stream URLs.',
                          style: TextStyle(color: AppTheme.accentOrange),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 8),
                const Text(
                  'First 25 lines:',
                  style: TextStyle(
                    color: AppTheme.primaryBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                SelectableText(
                  preview,
                  style: const TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 11,
                    color: AppTheme.textPrimary,
                  ),
                ),
              ],
            ),
          ),
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

  Widget _buildContent() {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppTheme.darkBackground,
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Android TV optimized layout
              final isTV = constraints.maxWidth > 800;

              return Stack(
                children: [
                  Center(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                        horizontal: isTV
                            ? context.tvSpacing(32)
                            : context.tvSpacing(40),
                        vertical: context.tvSpacing(32),
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: isTV
                              ? context.tvSpacing(580)
                              : context.tvSpacing(500),
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.cardBackground,
                          borderRadius:
                              BorderRadius.circular(context.tvSpacing(32)),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withAlpha((0.25 * 255).round()),
                              blurRadius: context.tvSpacing(16),
                              offset: Offset(0, context.tvSpacing(8)),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(context.tvSpacing(8)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Logo - Use new app logo
                              SizedBox(height: context.tvSpacing(4)),
                              Image.asset(
                                'assets/images/croppedlogo2.png',
                                height: isTV
                                    ? context.tvSpacing(48)
                                    : context.tvSpacing(56),
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) {
                                  return Icon(
                                    Icons.live_tv,
                                    size: isTV
                                        ? context.tvIconSize(40)
                                        : context.tvIconSize(44),
                                    color: AppTheme.primaryBlue,
                                  );
                                },
                              ),
                              SizedBox(height: context.tvSpacing(4)),
                              Text(
                                'Load your playlist to get started',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: AppTheme.textSecondary),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: context.tvSpacing(8)),

                              // Tab selector
                              Container(
                                decoration: BoxDecoration(
                                  color: AppTheme.highlight,
                                  borderRadius: BorderRadius.circular(
                                      context.tvSpacing(24)),
                                ),
                                child: TabBar(
                                  controller: _tabController,
                                  indicator: BoxDecoration(
                                    color: AppTheme.primaryBlue,
                                    borderRadius: BorderRadius.circular(
                                        context.tvSpacing(24)),
                                  ),
                                  labelColor: AppTheme.textPrimary,
                                  unselectedLabelColor: AppTheme.textSecondary,
                                  tabs: const [
                                    Tab(text: 'M3U URL'),
                                    Tab(text: 'Xtream Codes'),
                                  ],
                                ),
                              ),

                              SizedBox(height: context.tvSpacing(8)),

                              // Tab content - Reduced constraints for better visibility
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: context.tvSpacing(220),
                                  maxHeight: context.tvSpacing(280),
                                ),
                                child: TabBarView(
                                  controller: _tabController,
                                  children: [
                                    _buildM3UForm(),
                                    _buildXtreamForm(),
                                  ],
                                ),
                              ),

                              if (_isLoading) ...[
                                SizedBox(height: context.tvSpacing(8)),
                                CircularProgressIndicator(),
                                SizedBox(height: context.tvSpacing(4)),
                                const Text(
                                  'Loading playlist...',
                                  style: TextStyle(
                                    color: AppTheme.textSecondary,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Back button in top-left
                  Positioned(
                    top: AppSizes.md,
                    left: AppSizes.md,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppTheme.textPrimary,
                      ),
                      onPressed: () => context.pop(),
                      tooltip: 'Back',
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildM3UForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Enter M3U Playlist URL',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: AppSizes.sm),
        Focus(
          focusNode: _m3uUrlFocusNode,
          onFocusChange: (hasFocus) {
            if (!hasFocus && _m3uUrlEditable) {
              setState(() => _m3uUrlEditable = false);
            } else {
              setState(() {}); // Trigger rebuild for focus indicator
            }
          },
          onKeyEvent: (node, event) {
            if (event is! KeyDownEvent) return KeyEventResult.ignored;
            final key = event.logicalKey;
            if (key == LogicalKeyboardKey.select ||
                key == LogicalKeyboardKey.enter) {
              setState(() => _m3uUrlEditable = true);
              Future.microtask(() => _m3uUrlFocusNode.requestFocus());
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          },
          child: Builder(
            builder: (context) {
              final bool isFocused = Focus.of(context).hasFocus;
              return AnimatedContainer(
                duration: AppDurations.fast,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                  border: isFocused
                      ? Border.all(color: AppTheme.primaryBlue, width: 3)
                      : null,
                  boxShadow: isFocused
                      ? [
                          BoxShadow(
                            color: AppTheme.primaryBlue
                                .withAlpha((0.4 * 255).round()),
                            blurRadius: 12,
                            spreadRadius: 2,
                          ),
                        ]
                      : null,
                ),
                child: TextField(
                  controller: _m3uUrlController,
                  autofocus: false,
                  readOnly: !_m3uUrlEditable,
                  decoration: InputDecoration(
                    hintText: 'http://example.com/playlist.m3u',
                    prefixIcon: const Icon(Icons.link),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                    ),
                    filled: true,
                    fillColor: AppTheme.highlight,
                  ),
                  keyboardType: TextInputType.url,
                  enabled: !_isLoading,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: AppSizes.sm),
        Container(
          padding: const EdgeInsets.all(AppSizes.sm),
          decoration: BoxDecoration(
            color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
            borderRadius: BorderRadius.circular(AppSizes.radiusMd),
            border: Border.all(
                color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round())),
          ),
          child: const Row(
            children: [
              Icon(Icons.info_outline, size: 18, color: AppTheme.primaryBlue),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Paste the URL to your M3U playlist file',
                  style: TextStyle(fontSize: 11),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        BrandPrimaryButton(
          expand: true,
          icon: Icons.download,
          label: 'Load Playlist',
          onPressed: _isLoading ? () {} : _loadM3UPlaylist,
          padding: const EdgeInsets.symmetric(vertical: AppSizes.sm),
        ),
      ],
    );
  }

  Widget _buildXtreamForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Xtream Codes Login',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: AppSizes.sm),
        Focus(
          focusNode: _xtreamServerFocusNode,
          onFocusChange: (hasFocus) {
            if (!hasFocus && _xtreamServerEditable) {
              setState(() => _xtreamServerEditable = false);
            } else {
              setState(() {}); // Trigger rebuild for focus indicator
            }
          },
          onKeyEvent: (node, event) {
            if (event is! KeyDownEvent) return KeyEventResult.ignored;
            final key = event.logicalKey;
            if (key == LogicalKeyboardKey.select ||
                key == LogicalKeyboardKey.enter) {
              setState(() => _xtreamServerEditable = true);
              Future.microtask(() => _xtreamServerFocusNode.requestFocus());
              return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          },
          child: Builder(
            builder: (context) {
              final bool isFocused = Focus.of(context).hasFocus;
              return AnimatedContainer(
                duration: AppDurations.fast,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                  border: isFocused
                      ? Border.all(color: AppTheme.primaryBlue, width: 3)
                      : null,
                  boxShadow: isFocused
                      ? [
                          BoxShadow(
                            color: AppTheme.primaryBlue
                                .withAlpha((0.4 * 255).round()),
                            blurRadius: 12,
                            spreadRadius: 2,
                          ),
                        ]
                      : null,
                ),
                child: TextField(
                  controller: _xtreamServerController,
                  autofocus: false,
                  readOnly: !_xtreamServerEditable,
                  decoration: InputDecoration(
                    labelText: 'Server URL',
                    hintText: 'http://example.com:8080',
                    helperText:
                        'Enter server, username, password and click Load',
                    prefixIcon: const Icon(Icons.dns),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                    ),
                    filled: true,
                    fillColor: AppTheme.highlight,
                  ),
                  keyboardType: TextInputType.url,
                  enabled: !_isLoading,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: AppSizes.sm),
        Row(
          children: [
            Expanded(
              child: Focus(
                focusNode: _xtreamUsernameFocusNode,
                onFocusChange: (hasFocus) {
                  if (!hasFocus && _xtreamUsernameEditable) {
                    setState(() => _xtreamUsernameEditable = false);
                  } else {
                    setState(() {}); // Trigger rebuild for focus indicator
                  }
                },
                onKeyEvent: (node, event) {
                  if (event is! KeyDownEvent) return KeyEventResult.ignored;
                  final key = event.logicalKey;

                  // When editing, only allow regular text input
                  if (_xtreamUsernameEditable) {
                    return KeyEventResult.ignored;
                  }

                  // Right arrow: go to password field
                  if (key == LogicalKeyboardKey.arrowRight) {
                    _xtreamPasswordFocusNode.requestFocus();
                    return KeyEventResult.handled;
                  }

                  // Enter/Select: start editing
                  if (key == LogicalKeyboardKey.select ||
                      key == LogicalKeyboardKey.enter) {
                    setState(() => _xtreamUsernameEditable = true);
                    Future.microtask(
                      () => _xtreamUsernameFocusNode.requestFocus(),
                    );
                    return KeyEventResult.handled;
                  }
                  return KeyEventResult.ignored;
                },
                child: Builder(
                  builder: (context) {
                    final bool isFocused = Focus.of(context).hasFocus;
                    return AnimatedContainer(
                      duration: AppDurations.fast,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                        border: isFocused
                            ? Border.all(color: AppTheme.primaryBlue, width: 3)
                            : null,
                        boxShadow: isFocused
                            ? [
                                BoxShadow(
                                  color: AppTheme.primaryBlue
                                      .withAlpha((0.4 * 255).round()),
                                  blurRadius: 12,
                                  spreadRadius: 2,
                                ),
                              ]
                            : null,
                      ),
                      child: TextField(
                        controller: _xtreamUsernameController,
                        autofocus: false,
                        readOnly: !_xtreamUsernameEditable,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              AppSizes.radiusMd,
                            ),
                          ),
                          filled: true,
                          fillColor: AppTheme.highlight,
                        ),
                        enabled: !_isLoading,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: AppSizes.sm),
            Expanded(
              child: Focus(
                focusNode: _xtreamPasswordFocusNode,
                onFocusChange: (hasFocus) {
                  if (!hasFocus && _xtreamPasswordEditable) {
                    setState(() => _xtreamPasswordEditable = false);
                  } else {
                    setState(() {}); // Trigger rebuild for focus indicator
                  }
                },
                onKeyEvent: (node, event) {
                  if (event is! KeyDownEvent) return KeyEventResult.ignored;
                  final key = event.logicalKey;

                  // When editing, only allow regular text input
                  if (_xtreamPasswordEditable) {
                    return KeyEventResult.ignored;
                  }

                  // Left arrow: go back to username field
                  if (key == LogicalKeyboardKey.arrowLeft) {
                    _xtreamUsernameFocusNode.requestFocus();
                    return KeyEventResult.handled;
                  }

                  // Enter/Select: start editing
                  if (key == LogicalKeyboardKey.select ||
                      key == LogicalKeyboardKey.enter) {
                    setState(() => _xtreamPasswordEditable = true);
                    Future.microtask(
                      () => _xtreamPasswordFocusNode.requestFocus(),
                    );
                    return KeyEventResult.handled;
                  }
                  return KeyEventResult.ignored;
                },
                child: Builder(
                  builder: (context) {
                    final bool isFocused = Focus.of(context).hasFocus;
                    return AnimatedContainer(
                      duration: AppDurations.fast,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                        border: isFocused
                            ? Border.all(color: AppTheme.primaryBlue, width: 3)
                            : null,
                        boxShadow: isFocused
                            ? [
                                BoxShadow(
                                  color: AppTheme.primaryBlue
                                      .withAlpha((0.4 * 255).round()),
                                  blurRadius: 12,
                                  spreadRadius: 2,
                                ),
                              ]
                            : null,
                      ),
                      child: TextField(
                        controller: _xtreamPasswordController,
                        autofocus: false,
                        readOnly: !_xtreamPasswordEditable,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              AppSizes.radiusMd,
                            ),
                          ),
                          filled: true,
                          fillColor: AppTheme.highlight,
                        ),
                        enabled: !_isLoading,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        BrandPrimaryButton(
          expand: true,
          icon: Icons.download,
          label: 'Load Playlist',
          onPressed: _isLoading ? () {} : _loadXtreamPlaylist,
          padding: const EdgeInsets.symmetric(vertical: AppSizes.sm),
        ),
      ],
    );
  }
}
