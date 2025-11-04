import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/models/saved_playlist.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'dart:convert';

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
    _xtreamServerController.dispose();
    _xtreamUsernameController.dispose();
    _xtreamPasswordController.dispose();
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
                      textColor: Colors.white,
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
          context.go('/');
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
          final hasContent = channelProvider.lastM3UContent != null && 
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
                      textColor: Colors.white,
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
          context.go('/');
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
    final extinfCount = lines.where((l) => l.trim().startsWith('#EXTINF:')).length;
    final urlCount = lines.where((l) => 
      !l.trim().startsWith('#') && 
      l.trim().isNotEmpty && 
      (l.contains('http') || l.contains('://'))).length;
    
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
                        ? AppTheme.accentGreen.withOpacity(0.2)
                        : AppTheme.accentRed.withOpacity(0.2),
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
                      Text(hasM3UHeader 
                          ? '✓ Valid M3U header found' 
                          : '✗ Missing #EXTM3U header'),
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppTheme.darkBackground,
              AppTheme.primaryBlue.withOpacity(0.1),
            ],
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Calculate sizes based on available height
              final availableHeight = constraints.maxHeight;
              final logoHeight = availableHeight * 0.25; // 25% of screen
              final formHeight = availableHeight * 0.45; // 45% for forms
              
              return Stack(
                children: [
                  Center(
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(), // Disable scrolling
                      padding: EdgeInsets.all(AppSizes.xl),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 600,
                          maxHeight: availableHeight - (AppSizes.xl * 2),
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.cardBackground,
                          borderRadius: BorderRadius.circular(AppSizes.radiusXl),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(AppSizes.lg),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Logo - Use actual logo image with reduced padding (2x bigger)
                              SizedBox(height: AppSizes.sm),
                              Image.asset(
                                'assets/images/RISA-logo.png',
                                height: logoHeight.clamp(240.0, 560.0), // 2x bigger: was 120-280, now 240-560
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) {
                                  // Fallback to icon if logo not found
                                  return Icon(
                                    Icons.live_tv,
                                    size: (logoHeight * 0.7).clamp(160.0, 400.0), // 2x bigger
                                    color: AppTheme.primaryBlue,
                                  );
                                },
                              ),
                              SizedBox(height: AppSizes.md),
                              SizedBox(height: AppSizes.md),
                              Text(
                                'Load your playlist to get started',
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: AppTheme.textSecondary,
                                ),
                              ),
                              SizedBox(height: AppSizes.lg),

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
                                  labelColor: Colors.white,
                                  unselectedLabelColor: AppTheme.textSecondary,
                                  tabs: const [
                                    Tab(text: 'M3U URL'),
                                    Tab(text: 'Xtream Codes'),
                                  ],
                                ),
                              ),

                              SizedBox(height: AppSizes.lg),

                              // Tab content
                              Flexible(
                                child: SizedBox(
                                  height: formHeight.clamp(250.0, 350.0),
                                  child: TabBarView(
                                    controller: _tabController,
                                    children: [
                                      _buildM3UForm(),
                                      _buildXtreamForm(),
                                    ],
                                  ),
                                ),
                              ),

                              if (_isLoading) ...[
                                SizedBox(height: AppSizes.md),
                                const CircularProgressIndicator(),
                                SizedBox(height: AppSizes.sm),
                                Text(
                                  'Loading playlist...',
                                  style: TextStyle(color: AppTheme.textSecondary),
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
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
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
        SizedBox(height: AppSizes.md),
        TextField(
          controller: _m3uUrlController,
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
        SizedBox(height: AppSizes.md),
        Container(
          padding: EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: AppTheme.primaryBlue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppSizes.radiusMd),
            border: Border.all(
              color: AppTheme.primaryBlue.withOpacity(0.3),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 20,
                color: AppTheme.primaryBlue,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Paste the URL to your M3U playlist file',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        ElevatedButton.icon(
          onPressed: _isLoading ? null : _loadM3UPlaylist,
          icon: const Icon(Icons.download),
          label: const Text('Load Playlist'),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.primaryBlue,
            padding: EdgeInsets.symmetric(vertical: AppSizes.md),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.radiusMd),
            ),
          ),
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
        SizedBox(height: AppSizes.md),
        TextField(
          controller: _xtreamServerController,
          decoration: InputDecoration(
            labelText: 'Server URL',
            hintText: 'http://example.com:8080',
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
        SizedBox(height: AppSizes.md),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _xtreamUsernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                  ),
                  filled: true,
                  fillColor: AppTheme.highlight,
                ),
                enabled: !_isLoading,
              ),
            ),
            SizedBox(width: AppSizes.md),
            Expanded(
              child: TextField(
                controller: _xtreamPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                  ),
                  filled: true,
                  fillColor: AppTheme.highlight,
                ),
                enabled: !_isLoading,
              ),
            ),
          ],
        ),
        const Spacer(),
        ElevatedButton.icon(
          onPressed: _isLoading ? null : _loadXtreamPlaylist,
          icon: const Icon(Icons.download),
          label: const Text('Load Playlist'),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.primaryBlue,
            padding: EdgeInsets.symmetric(vertical: AppSizes.md),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.radiusMd),
            ),
          ),
        ),
      ],
    );
  }
}
