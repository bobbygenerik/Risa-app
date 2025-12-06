import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../providers/channel_provider.dart';
import '../utils/app_theme.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

class PlaylistEditorScreen extends StatefulWidget {
  const PlaylistEditorScreen({super.key});

  @override
  State<PlaylistEditorScreen> createState() => _PlaylistEditorScreenState();
}

class _PlaylistEditorScreenState extends State<PlaylistEditorScreen> {
  final TextEditingController _playlistNameController = TextEditingController();
  final TextEditingController _m3uUrlController = TextEditingController();
  final TextEditingController _xtreamServerController = TextEditingController();
  final TextEditingController _xtreamUsernameController = TextEditingController();
  final TextEditingController _xtreamPasswordController = TextEditingController();
  
  final FocusNode _playlistNameFocusNode = FocusNode();
  final FocusNode _m3uUrlFocusNode = FocusNode();
  final FocusNode _xtreamServerFocusNode = FocusNode();
  final FocusNode _xtreamUsernameFocusNode = FocusNode();
  final FocusNode _xtreamPasswordFocusNode = FocusNode();
  final FocusNode _updateFrequencyFocusNode = FocusNode();
  
  bool _playlistNameEditable = false;
  bool _m3uUrlEditable = false;
  bool _xtreamServerEditable = false;
  bool _xtreamUsernameEditable = false;
  bool _xtreamPasswordEditable = false;
  
  String _playlistType = 'm3u';
  int _updateFrequencyHours = 24; // Default: update every 24 hours
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadPlaylistData();
  }

  @override
  void dispose() {
    _playlistNameController.dispose();
    _m3uUrlController.dispose();
    _xtreamServerController.dispose();
    _xtreamUsernameController.dispose();
    _xtreamPasswordController.dispose();
    _playlistNameFocusNode.dispose();
    _m3uUrlFocusNode.dispose();
    _xtreamServerFocusNode.dispose();
    _xtreamUsernameFocusNode.dispose();
    _xtreamPasswordFocusNode.dispose();
    _updateFrequencyFocusNode.dispose();
    super.dispose();
  }

  Future<void> _loadPlaylistData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _playlistType = prefs.getString('playlist_type') ?? 'm3u';
      _playlistNameController.text = prefs.getString('playlist_name') ?? 'My Playlist';
      _m3uUrlController.text = prefs.getString('m3u_url') ?? '';
      _xtreamServerController.text = prefs.getString('xtream_server') ?? '';
      _xtreamUsernameController.text = prefs.getString('xtream_username') ?? '';
      _xtreamPasswordController.text = prefs.getString('xtream_password') ?? '';
      _updateFrequencyHours = prefs.getInt('playlist_update_frequency') ?? 24;
      _isLoading = false;
    });
  }

  Future<void> _saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('playlist_name', _playlistNameController.text);
    await prefs.setInt('playlist_update_frequency', _updateFrequencyHours);
    
    if (_playlistType == 'm3u') {
      await prefs.setString('m3u_url', _m3uUrlController.text);
    } else {
      await prefs.setString('xtream_server', _xtreamServerController.text);
      await prefs.setString('xtream_username', _xtreamUsernameController.text);
      await prefs.setString('xtream_password', _xtreamPasswordController.text);
    }

    if (mounted) {
      showAppSnackBar(
        context,
        const SnackBar(
          content: Text('Settings saved successfully'),
          backgroundColor: AppTheme.accentGreen,
        ),
      );
    }
  }

  Future<void> _updatePlaylist() async {
    setState(() => _isLoading = true);
    
    try {
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      
      if (_playlistType == 'm3u') {
        final url = _m3uUrlController.text.trim();
        if (url.isEmpty) {
          throw Exception('M3U URL is empty');
        }
        await provider.loadPlaylistFromUrl(url);
      } else {
        final server = _xtreamServerController.text.trim();
        final username = _xtreamUsernameController.text.trim();
        final password = _xtreamPasswordController.text.trim();
        
        if (server.isEmpty || username.isEmpty) {
          throw Exception('Server URL and username are required');
        }
        
        final url = '$server/get.php?username=$username&password=$password&type=m3u_plus&output=ts';
        await provider.loadPlaylistFromUrl(url);
      }

      if (mounted) {
        setState(() => _isLoading = false);
        
        // Save settings after successful update
        await _saveSettings();
        
        showAppSnackBar(
          context,
          SnackBar(
            content: Text('Playlist updated! ${provider.channels.length} channels, ${provider.moviesCount} movies, ${provider.seriesCount} series found.'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
        
        final provider = Provider.of<ChannelProvider>(context, listen: false);
        final errorMessage = provider.errorMessage ?? e.toString();
        
        // Show detailed error in dialog instead of snackbar
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: AppTheme.dialogBackground,
            title: Row(
              children: [
                Icon(Icons.error_outline, color: AppTheme.accentRed, size: 28),
                const SizedBox(width: 12),
                const Text('Update Failed'),
              ],
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Failed to update playlist. Please check your connection and try again in a few moments.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const Text('Error details:', style: TextStyle(fontSize: 12, color: AppTheme.textSecondary)),
                  const SizedBox(height: 8),
                  SelectableText(
                    errorMessage,
                    style: const TextStyle(fontSize: 12, fontFamily: 'monospace'),
                  ),
                  if (errorMessage.contains('429'))
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        'ℹ️ HTTP 429 means the server is rate-limiting requests. Please wait a few minutes before trying again.',
                        style: TextStyle(fontSize: 12, color: AppTheme.accentOrange),
                      ),
                    ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  Future<void> _deletePlaylist() async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.dialogBackground,
        title: const Text('Delete Playlist?'),
        content: const Text(
          'This will remove all saved playlist data and credentials. This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentRed,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirm == true) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('playlist_type');
      await prefs.remove('playlist_name');
      await prefs.remove('m3u_url');
      await prefs.remove('xtream_server');
      await prefs.remove('xtream_username');
      await prefs.remove('xtream_password');
      await prefs.remove('playlist_update_frequency');

      if (mounted) {
        showAppSnackBar(
          context,
          const SnackBar(
            content: Text('Playlist deleted'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
        // Use go instead of pop to navigate safely
        if (GoRouter.of(context).canPop()) {
          context.pop();
        } else {
          context.go('/settings');
        }
      }
    }
  }

  Widget _buildTVFriendlyTextField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required bool isEditable,
    required Function(bool) onEditableChange,
    required String label,
    required String hint,
    required IconData icon,
    bool obscureText = false,
  }) {
    return Focus(
      focusNode: focusNode,
      onFocusChange: (hasFocus) {
        if (!hasFocus && isEditable) {
          onEditableChange(false);
        }
      },
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        final key = event.logicalKey;
        if ((key == LogicalKeyboardKey.select || key == LogicalKeyboardKey.enter) && !isEditable) {
          onEditableChange(true);
          WidgetsBinding.instance.addPostFrameCallback((_) {
            focusNode.requestFocus();
          });
          return KeyEventResult.handled;
        }
        if (key == LogicalKeyboardKey.escape && isEditable) {
          onEditableChange(false);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: () {
          onEditableChange(true);
          WidgetsBinding.instance.addPostFrameCallback((_) {
            focusNode.requestFocus();
          });
        },
            child: TextField(
          controller: controller,
          readOnly: !isEditable,
          obscureText: obscureText,
            decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            prefixIcon: Icon(icon),
      filled: true,
      fillColor: isEditable
        ? AppTheme.primaryBlue.withAlpha((0.1 * 255).round())
        : AppTheme.cardBackground,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(context.tvSpacing(8)),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(context.tvSpacing(8)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(context.tvSpacing(8)),
              borderSide: BorderSide(color: AppTheme.primaryBlue, width: context.tvSpacing(3)),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: context.tvSpacing(16), vertical: context.tvSpacing(16)),
          ),
        ),
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
    if (_isLoading) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
          ),
          child: const Center(
            child: CircularProgressIndicator(color: AppTheme.primaryBlue),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.white.withAlpha((0.08 * 255).round()),
        title: const Text('Edit Playlist'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: _saveSettings,
              icon: const Icon(Icons.save),
              label: const Text('Save'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryBlue,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(context.tvSpacing(32)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Playlist Name
              _buildSectionCard(
                title: 'Playlist Name',
                subtitle: 'Give your playlist a custom name',
                children: [
                  _buildTVFriendlyTextField(
                    controller: _playlistNameController,
                    focusNode: _playlistNameFocusNode,
                    isEditable: _playlistNameEditable,
                    onEditableChange: (value) => setState(() => _playlistNameEditable = value),
                    label: 'Playlist Name',
                    hint: 'e.g., My IPTV Channels',
                    icon: Icons.label,
                  ),
                ],
              ),

              const SizedBox(height: AppSizes.lg),

              // Playlist Source
              _buildSectionCard(
                title: 'Playlist Source',
                subtitle: _playlistType == 'm3u' ? 'M3U URL Configuration' : 'Xtream Codes Configuration',
                children: [
                if (_playlistType == 'm3u') ...[
                  _buildTVFriendlyTextField(
                    controller: _m3uUrlController,
                    focusNode: _m3uUrlFocusNode,
                    isEditable: _m3uUrlEditable,
                    onEditableChange: (value) => setState(() => _m3uUrlEditable = value),
                    label: 'M3U Playlist URL',
                    hint: 'http://example.com/playlist.m3u',
                    icon: Icons.link,
                  ),
                ] else ...[
                  _buildTVFriendlyTextField(
                    controller: _xtreamServerController,
                    focusNode: _xtreamServerFocusNode,
                    isEditable: _xtreamServerEditable,
                    onEditableChange: (value) => setState(() => _xtreamServerEditable = value),
                    label: 'Server URL',
                    hint: 'http://example.com:8080',
                    icon: Icons.dns,
                  ),
                  const SizedBox(height: AppSizes.md),
                  Row(
                    children: [
                      Expanded(
                        child: _buildTVFriendlyTextField(
                          controller: _xtreamUsernameController,
                          focusNode: _xtreamUsernameFocusNode,
                          isEditable: _xtreamUsernameEditable,
                          onEditableChange: (value) => setState(() => _xtreamUsernameEditable = value),
                          label: 'Username',
                          hint: 'Your username',
                          icon: Icons.person,
                        ),
                      ),
                      const SizedBox(width: AppSizes.md),
                      Expanded(
                        child: _buildTVFriendlyTextField(
                          controller: _xtreamPasswordController,
                          focusNode: _xtreamPasswordFocusNode,
                          isEditable: _xtreamPasswordEditable,
                          onEditableChange: (value) => setState(() => _xtreamPasswordEditable = value),
                          label: 'Password',
                          hint: 'Your password',
                          icon: Icons.lock,
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),

              const SizedBox(height: AppSizes.lg),

              // Update Frequency
              _buildSectionCard(
              title: 'Auto-Update Frequency',
              subtitle: 'How often to refresh the playlist automatically',
              children: [
                Focus(
                  focusNode: _updateFrequencyFocusNode,
                  onKeyEvent: (node, event) {
                    if (event is! KeyDownEvent) return KeyEventResult.ignored;
                    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                      setState(() {
                        if (_updateFrequencyHours > 1) _updateFrequencyHours--;
                      });
                      return KeyEventResult.handled;
                    } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                      setState(() {
                        if (_updateFrequencyHours < 168) _updateFrequencyHours++;
                      });
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: ListTile(
                    leading: const Icon(Icons.refresh, color: AppTheme.primaryBlue),
                    title: const Text('Update every'),
                    subtitle: Text('$_updateFrequencyHours hours'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            if (_updateFrequencyHours > 1) {
                              setState(() => _updateFrequencyHours--);
                            }
                          },
                        ),
                        Text(
                          '$_updateFrequencyHours',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            if (_updateFrequencyHours < 168) {
                              setState(() => _updateFrequencyHours++);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.sm),
                Container(
                  padding: const EdgeInsets.all(AppSizes.md),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                    borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.info_outline, size: 16, color: AppTheme.primaryBlue),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Playlist will automatically refresh every $_updateFrequencyHours ${_updateFrequencyHours == 1 ? "hour" : "hours"}',
                          style: const TextStyle(fontSize: 12, color: AppTheme.textSecondary),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

              const SizedBox(height: AppSizes.xl),

              // Action Buttons
              Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _deletePlaylist,
                    icon: const Icon(Icons.delete_outline),
                    label: const Text('Delete Playlist'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.accentRed,
                      padding: const EdgeInsets.all(AppSizes.md),
                    ),
                  ),
                ),
                const SizedBox(width: AppSizes.md),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _updatePlaylist,
                    icon: const Icon(Icons.refresh),
                    label: const Text('Update Playlist Now'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                      padding: const EdgeInsets.all(AppSizes.md),
                    ),
                  ),
                ),
              ],
            ),

              const SizedBox(height: AppSizes.md),

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
                        'Press ENTER on text fields to edit them. Press ESC to finish editing. Don\'t forget to save your changes!',
                        style: TextStyle(color: AppTheme.textSecondary, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    ),
    );
  }

  Widget _buildSectionCard({
    required String title,
    String? subtitle,
    required List<Widget> children,
  }) {
    return Card(
      margin: EdgeInsets.only(bottom: context.tvSpacing(20)),
      child: Padding(
        padding: EdgeInsets.all(context.tvSpacing(32)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: context.tvTextSize(18),
                fontWeight: FontWeight.bold,
              ),
            ),
            if (subtitle != null) ...[
              SizedBox(height: context.tvSpacing(4)),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: context.tvTextSize(13),
                  color: AppTheme.textSecondary,
                ),
              ),
            ],
            SizedBox(height: context.tvSpacing(20)),
            ...children,
          ],
        ),
      ),
    );
  }
}
