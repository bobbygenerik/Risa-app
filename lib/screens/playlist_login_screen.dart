import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/providers/channel_provider.dart';
// import 'package:iptv_player/models/saved_playlist.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:go_router/go_router.dart';
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

  Future<void> _loadM3UPlaylist() async {
    final url = _m3uUrlController.text.trim();
    if (url.isEmpty) {
      _showError('Please enter a valid M3U URL');
      return;
    }

    setState(() => _isLoading = true);

    try {
      final channelProvider = Provider.of<ChannelProvider>(
        context,
        listen: false,
      );
      await channelProvider.loadPlaylistFromUrl(url);

      final channelCount = channelProvider.channels.length;
      final movieCount = channelProvider.movies.length;
      final seriesCount = channelProvider.series.length;

      // Save credentials for auto-load on next startup
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('m3u_url', url);
      await prefs.setString('playlist_type', 'm3u');

      if (mounted) {
        if (channelCount == 0 && movieCount == 0 && seriesCount == 0) {
          // No content found - show detailed error with option to view content
          final hasContent = channelProvider.lastM3UContent != null;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                hasContent
                    ? '⚠️ 0 channels found!\n\nThe URL responded but contained no valid channels.\nTap below to see what was received.'
                    : '⚠️ 0 channels found!\n\nThe URL responded but no content was captured.\nCheck your M3U URL format.',
              ),
              backgroundColor: AppTheme.accentRed,
              duration: Duration(seconds: 10),
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

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('✓ Loaded: ${parts.join(", ")}'),
              backgroundColor: AppTheme.accentGreen,
              duration: Duration(seconds: 4),
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
      _showError('Failed to load playlist: ${e.toString()}');
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _loadXtreamPlaylist() async {
    final server = _xtreamServerController.text.trim();
    final username = _xtreamUsernameController.text.trim();
    final password = _xtreamPasswordController.text.trim();

    if (server.isEmpty || username.isEmpty || password.isEmpty) {
      _showError('Please fill in all Xtream Codes fields');
      return;
    }

    setState(() => _isLoading = true);

    try {
      // Build Xtream API URL for getting live streams
      // Format: http://server:port/get.php?username=xxx&password=xxx&type=m3u_plus&output=ts
      final url =
          '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';

      final channelProvider = Provider.of<ChannelProvider>(
        context,
        listen: false,
      );
      await channelProvider.loadPlaylistFromUrl(url);

      final channelCount = channelProvider.channels.length;
      final movieCount = channelProvider.movies.length;
      final seriesCount = channelProvider.series.length;

      // Save credentials for auto-load on next startup
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('xtream_server', server);
      await prefs.setString('xtream_username', username);
      await prefs.setString('xtream_password', password);
      await prefs.setString('playlist_type', 'xtream');

      if (mounted) {
        if (channelCount == 0 && movieCount == 0 && seriesCount == 0) {
          // No content found - show detailed error with option to view content
          final hasContent =
              channelProvider.lastM3UContent != null &&
              channelProvider.lastM3UContent!.isNotEmpty;

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                hasContent
                    ? '⚠️ 0 channels found!\n\nCheck your Xtream credentials.\nTap below to view server response.'
                    : '⚠️ 0 channels found!\n\nCheck your Xtream credentials.\nNo response data available.',
              ),
              backgroundColor: AppTheme.accentRed,
              duration: Duration(seconds: 8),
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

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('✓ Loaded: ${parts.join(", ")}'),
              backgroundColor: AppTheme.accentGreen,
              duration: Duration(seconds: 4),
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
      _showError('Failed to load Xtream playlist: ${e.toString()}');
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  void _showError(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: AppTheme.accentRed,
          duration: Duration(seconds: 6),
        ),
      );
    }
  }

  void _showM3UPreview(String content) {
    // Analyze the content
    final lines = content.split('\n');
    final firstLine = lines.isNotEmpty ? lines[0].trim() : '';
    final hasM3UHeader = firstLine.toUpperCase().contains('#EXTM3U');
    final extinfCount = lines
        .where((l) => l.trim().startsWith('#EXTINF:'))
        .length;
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
        backgroundColor: AppTheme.cardBackground,
        title: Text('M3U Content Analysis'),
        content: Container(
          width: double.maxFinite,
          constraints: BoxConstraints(maxHeight: 500),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Diagnostics
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: hasM3UHeader
                        ? AppTheme.accentGreen.withAlpha((0.2 * 255).round())
                        : AppTheme.accentRed.withAlpha((0.2 * 255).round()),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '📊 Diagnostics:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primaryBlue,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('✓ Total lines: ${lines.length}'),
                      Text(
                        hasM3UHeader
                            ? '✓ Valid M3U header found'
                            : '✗ Missing #EXTM3U header',
                      ),
                      Text('✓ Found $extinfCount #EXTINF entries'),
                      Text('✓ Found $urlCount stream URLs'),
                      SizedBox(height: 8),
                      if (extinfCount == 0)
                        Text(
                          '⚠ No #EXTINF entries found! This may not be a valid M3U format.',
                          style: TextStyle(color: AppTheme.accentOrange),
                        ),
                      if (urlCount == 0)
                        Text(
                          '⚠ No URLs found! Channels need stream URLs.',
                          style: TextStyle(color: AppTheme.accentOrange),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Divider(),
                SizedBox(height: 8),
                Text(
                  'First 25 lines:',
                  style: TextStyle(
                    color: AppTheme.primaryBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                SelectableText(
                  preview,
                  style: TextStyle(
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
            child: Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppTheme.darkBackground,
              AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
            ],
          ),
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
                        horizontal: isTV ? AppSizes.lg : AppSizes.xl,
                        vertical: AppSizes.lg,
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: isTV ? 580 : 500, // Reduced width
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.cardBackground,
                          borderRadius: BorderRadius.circular(
                            AppSizes.radiusXl,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha((0.25 * 255).round()),
                              blurRadius: 16,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                            AppSizes.sm,
                          ), // Reduced padding
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Logo - Use new app logo
                              SizedBox(height: AppSizes.xs),
                              Image.asset(
                                'assets/images/croppedlogo2.png',
                                height: isTV ? 48.0 : 56.0, // Reduced height
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) {
                                  // Fallback to icon if logo not found
                                  return Icon(
                                    Icons.live_tv,
                                    size: isTV ? 40.0 : 44.0,
                                    color: AppTheme.primaryBlue,
                                  );
                                },
                              ),
                              SizedBox(height: AppSizes.xs),
                              Text(
                                'Load your playlist to get started',
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(color: AppTheme.textSecondary),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: AppSizes.sm),

                              // Tab selector
                              Container(
                                decoration: BoxDecoration(
                                  color: AppTheme.highlight,
                                  borderRadius: BorderRadius.circular(
                                    AppSizes.radiusLg,
                                  ),
                                ),
                                child: TabBar(
                                  controller: _tabController,
                                  indicator: BoxDecoration(
                                    color: AppTheme.primaryBlue,
                                    borderRadius: BorderRadius.circular(
                                      AppSizes.radiusLg,
                                    ),
                                  ),
                                  labelColor: AppTheme.textPrimary,
                                  unselectedLabelColor: AppTheme.textSecondary,
                                  tabs: const [
                                    Tab(text: 'M3U URL'),
                                    Tab(text: 'Xtream Codes'),
                                  ],
                                ),
                              ),

                              SizedBox(height: AppSizes.sm),

                              // Tab content - Reduced constraints for better visibility
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: 220, // Reduced height
                                  maxHeight: 280, // Reduced height
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
                                SizedBox(height: AppSizes.sm),
                                const CircularProgressIndicator(),
                                SizedBox(height: AppSizes.xs),
                                Text(
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
        SizedBox(height: AppSizes.sm),
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
                            color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
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
        SizedBox(height: AppSizes.sm),
        Container(
          padding: EdgeInsets.all(AppSizes.sm),
          decoration: BoxDecoration(
            color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
            borderRadius: BorderRadius.circular(AppSizes.radiusMd),
            border: Border.all(color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round())),
          ),
          child: Row(
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
          padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
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
        SizedBox(height: AppSizes.sm),
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
                                  color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
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
        SizedBox(height: AppSizes.sm),
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
                                  color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
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
            SizedBox(width: AppSizes.sm),
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
                                  color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
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
          padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
        ),
      ],
    );
  }
}
