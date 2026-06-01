part of '../playlist_editor_screen.dart';

extension PlaylistEditorContent on _PlaylistEditorScreenState {
Widget _buildContent() {
  if (_isLoading) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          color: AppTheme.darkBackground,
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
        color: AppTheme.darkBackground,
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
                  onEditableChange: (value) =>
                      _updateEditorState(() => _playlistNameEditable = value),
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
              subtitle: _playlistType == 'm3u'
                  ? 'M3U URL Configuration'
                  : 'Xtream Codes Configuration',
              children: [
                if (_playlistType == 'm3u') ...[
                  _buildTVFriendlyTextField(
                    controller: _m3uUrlController,
                    focusNode: _m3uUrlFocusNode,
                    isEditable: _m3uUrlEditable,
                    onEditableChange: (value) =>
                        _updateEditorState(() => _m3uUrlEditable = value),
                    label: 'M3U Playlist URL',
                    hint: 'http://example.com/playlist.m3u',
                    icon: Icons.link,
                  ),
                ] else ...[
                  _buildTVFriendlyTextField(
                    controller: _xtreamServerController,
                    focusNode: _xtreamServerFocusNode,
                    isEditable: _xtreamServerEditable,
                    onEditableChange: (value) =>
                        _updateEditorState(() => _xtreamServerEditable = value),
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
                          onEditableChange: (value) =>
                              _updateEditorState(() => _xtreamUsernameEditable = value),
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
                          onEditableChange: (value) =>
                              _updateEditorState(() => _xtreamPasswordEditable = value),
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
                      _updateEditorState(() {
                        if (_updateFrequencyHours > 1) {
                          _updateFrequencyHours--;
                        }
                      });
                      return KeyEventResult.handled;
                    } else if (event.logicalKey ==
                        LogicalKeyboardKey.arrowRight) {
                      _updateEditorState(() {
                        if (_updateFrequencyHours < 168) {
                          _updateFrequencyHours++;
                        }
                      });
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: ListTile(
                    leading: const Icon(Icons.refresh,
                        color: AppTheme.primaryBlue),
                    title: const Text('Update every'),
                    subtitle: Text('$_updateFrequencyHours hours'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            if (_updateFrequencyHours > 1) {
                              _updateEditorState(() => _updateFrequencyHours--);
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
                              _updateEditorState(() => _updateFrequencyHours++);
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
                    color:
                        AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                    borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.info_outline,
                          size: 16, color: AppTheme.primaryBlue),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Playlist will automatically refresh every $_updateFrequencyHours ${_updateFrequencyHours == 1 ? "hour" : "hours"}',
                          style: const TextStyle(
                              fontSize: 12, color: AppTheme.textSecondary),
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
                      style: TextStyle(
                          color: AppTheme.textSecondary, fontSize: 12),
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
