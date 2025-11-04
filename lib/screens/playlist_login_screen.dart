import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:go_router/go_router.dart';

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
    _loadSavedCredentials();
  }

  Future<void> _loadSavedCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _m3uUrlController.text = prefs.getString('m3u_url') ?? '';
      _xtreamServerController.text = prefs.getString('xtream_server') ?? '';
      _xtreamUsernameController.text =
          prefs.getString('xtream_username') ?? '';
      _xtreamPasswordController.text =
          prefs.getString('xtream_password') ?? '';
    });
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

      // Save credentials
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('m3u_url', url);
      await prefs.setString('playlist_type', 'm3u');

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Playlist loaded! ${channelProvider.channels.length} channels found.',
            ),
            backgroundColor: AppTheme.accentGreen,
          ),
        );

        // Navigate to home
        context.go('/');
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
              'Xtream playlist loaded! ${channelProvider.channels.length} channels found.',
            ),
            backgroundColor: AppTheme.accentGreen,
          ),
        );

        // Navigate to home
        context.go('/');
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
        ),
      );
    }
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
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(AppSizes.xl),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 600),
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
                  padding: EdgeInsets.all(AppSizes.xl),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Logo/Title
                      Icon(
                        Icons.live_tv,
                        size: 80,
                        color: AppTheme.primaryBlue,
                      ),
                      SizedBox(height: AppSizes.md),
                      Text(
                        'RISA IPTV Player',
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppTheme.primaryBlue,
                        ),
                      ),
                      SizedBox(height: AppSizes.sm),
                      Text(
                        'Load your playlist to get started',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                      ),
                      SizedBox(height: AppSizes.xl),

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

                      SizedBox(height: AppSizes.xl),

                      // Tab content
                      SizedBox(
                        height: 350,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            _buildM3UForm(),
                            _buildXtreamForm(),
                          ],
                        ),
                      ),

                      if (_isLoading) ...[
                        SizedBox(height: AppSizes.lg),
                        const CircularProgressIndicator(),
                        SizedBox(height: AppSizes.md),
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
