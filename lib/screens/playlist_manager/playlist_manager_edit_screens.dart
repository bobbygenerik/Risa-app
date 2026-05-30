part of '../playlist_manager_screen.dart';

class _EpgEditResult {
  final String primary;
  final String secondary;

  const _EpgEditResult({
    required this.primary,
    required this.secondary,
  });
}

class _PlaylistEpgEditScreen extends StatefulWidget {
  final String playlistName;
  final String primaryEpgUrl;
  final String secondaryEpgUrl;

  const _PlaylistEpgEditScreen({
    required this.playlistName,
    required this.primaryEpgUrl,
    required this.secondaryEpgUrl,
  });

  @override
  State<_PlaylistEpgEditScreen> createState() => _PlaylistEpgEditScreenState();
}

class _PlaylistNameEditScreen extends StatefulWidget {
  final String playlistName;
  final String initialName;

  const _PlaylistNameEditScreen({
    required this.playlistName,
    required this.initialName,
  });

  @override
  State<_PlaylistNameEditScreen> createState() =>
      _PlaylistNameEditScreenState();
}

class _PlaylistNameEditScreenState extends State<_PlaylistNameEditScreen> {
  late final TextEditingController _nameController;
  final FocusNode _nameFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nameFocus.dispose();
    super.dispose();
  }

  void _handleSave() {
    Navigator.pop(context, _nameController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('Rename Playlist'),
        backgroundColor: Colors.white.withValues(alpha: 0.08),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: [
          SettingsSectionHeader(
            title: widget.playlistName,
            subtitle: 'Update the display name for this playlist',
          ),
          SettingsGroup(
            title: 'Playlist Name',
            children: [
              SettingsInputTile(
                label: 'Name',
                hint: 'Enter playlist name',
                icon: Icons.edit,
                controller: _nameController,
                focusNode: _nameFocus,
              ),
            ],
          ),
          SettingsGroup(
            title: 'Actions',
            children: [
              SettingsActionTile(
                title: 'Cancel',
                icon: Icons.close,
                onTap: () => Navigator.pop(context),
              ),
              SettingsActionTile(
                title: 'Save Name',
                icon: Icons.save,
                iconColor: AppTheme.primaryBlue,
                titleColor: AppTheme.primaryBlue,
                onTap: _handleSave,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PlaylistEpgEditScreenState extends State<_PlaylistEpgEditScreen> {
  late final TextEditingController _primaryController;
  late final TextEditingController _secondaryController;
  final FocusNode _primaryFocus = FocusNode();
  final FocusNode _secondaryFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _primaryController = TextEditingController(text: widget.primaryEpgUrl);
    _secondaryController = TextEditingController(text: widget.secondaryEpgUrl);
  }

  @override
  void dispose() {
    _primaryController.dispose();
    _secondaryController.dispose();
    _primaryFocus.dispose();
    _secondaryFocus.dispose();
    super.dispose();
  }

  void _handleSave() {
    Navigator.pop(
      context,
      _EpgEditResult(
        primary: _primaryController.text,
        secondary: _secondaryController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('Edit EPG URLs'),
        backgroundColor: Colors.white.withValues(alpha: 0.08),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: [
          SettingsSectionHeader(
            title: widget.playlistName,
            subtitle: 'Update primary and secondary EPG sources',
          ),
          SettingsGroup(
            title: 'EPG URLs',
            children: [
              SettingsInputTile(
                label: 'Primary EPG URL',
                hint: 'http://example.com/epg.xml',
                icon: Icons.tv,
                controller: _primaryController,
                focusNode: _primaryFocus,
              ),
              SettingsInputTile(
                label: 'Secondary EPG URL',
                hint: 'Optional backup',
                icon: Icons.tv,
                controller: _secondaryController,
                focusNode: _secondaryFocus,
              ),
            ],
          ),
          SettingsGroup(
            title: 'Actions',
            children: [
              SettingsActionTile(
                title: 'Cancel',
                icon: Icons.close,
                onTap: () => Navigator.pop(context),
              ),
              SettingsActionTile(
                title: 'Save EPG URLs',
                icon: Icons.save,
                iconColor: AppTheme.primaryBlue,
                titleColor: AppTheme.primaryBlue,
                onTap: _handleSave,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
