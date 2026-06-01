part of '../playlist_management_screen.dart';

class _PlaylistFieldEditScreen extends StatefulWidget {
  final String title;
  final String playlistName;
  final String label;
  final String hint;
  final IconData icon;
  final String initialValue;
  final String saveLabel;

  const _PlaylistFieldEditScreen({
    required this.title,
    required this.playlistName,
    required this.label,
    required this.hint,
    required this.icon,
    required this.initialValue,
    required this.saveLabel,
  });

  @override
  State<_PlaylistFieldEditScreen> createState() =>
      _PlaylistFieldEditScreenState();
}

class _PlaylistFieldEditScreenState extends State<_PlaylistFieldEditScreen> {
  late final TextEditingController _controller;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _handleSave() {
    Navigator.pop(context, _controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white.withAlpha((0.08 * 255).round()),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: [
          SettingsSectionHeader(
            title: widget.playlistName,
            subtitle: widget.label,
          ),
          SettingsGroup(
            title: widget.label,
            children: [
              SettingsInputTile(
                label: widget.label,
                hint: widget.hint,
                icon: widget.icon,
                controller: _controller,
                focusNode: _focusNode,
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
                title: widget.saveLabel,
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