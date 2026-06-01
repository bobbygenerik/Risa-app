part of '../recordings_screen.dart';

extension RecordingsUi on _RecordingsScreenState {
Widget _buildGlassAppBar() {
  return Container(
    height: context.tvSpacing(64), // AppSizes.appBarHeight assumed 64
    padding: EdgeInsets.symmetric(
        horizontal: context.tvSpacing(32),
        vertical: context.tvSpacing(20)), // AppSizes.lg=32, md=20
    decoration: BoxDecoration(
      color: Colors.white.withAlpha((0.08 * 255).round()),
      border: Border(
        bottom:
            BorderSide(color: AppTheme.darkBackgroundOpacity(0.12), width: 2),
      ),
    ),
    child: Row(
      children: [
        Icon(Icons.fiber_manual_record,
            color: AppTheme.accentRed, size: context.tvIconSize(24)),
        SizedBox(width: context.tvSpacing(20)), // AppSizes.md assumed 20
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recordings',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            if (_storagePath != null)
              Text(
                path.basename(_storagePath!),
                style: TextStyle(
                  fontSize: context.tvTextSize(11),
                  color: AppTheme.textSecondary,
                ),
              ),
          ],
        ),
        const Spacer(),
        IconButton(
          icon: Icon(Icons.refresh,
              color: AppTheme.primaryBlue, size: context.tvIconSize(24)),
          onPressed: _loadRecordings,
        ),
      ],
    ),
  );
}

Widget _buildContent() {
  if (_isLoading) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: context.tvSpacing(16)),
          Text('Loading recordings...'),
        ],
      ),
    );
  }

  if (_errorMessage != null) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            _storagePath == null
                ? Icons.settings_outlined
                : Icons.folder_off_outlined,
            size: context.tvIconSize(80),
            color: AppTheme.textSecondary,
          ),
          SizedBox(height: context.tvSpacing(16)),
          Text(
            _errorMessage!,
            style: TextStyle(
              fontSize: context.tvTextSize(16),
              color: AppTheme.textSecondary,
            ),
          ),
          SizedBox(height: context.tvSpacing(24)),
          Focus(
            child: Builder(
              builder: (context) {
                final hasFocus = Focus.of(context).hasFocus;
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(context.tvSpacing(8)),
                    border: hasFocus
                        ? Border.all(
                            color: AppTheme.primaryBlue,
                            width: context.tvSpacing(3))
                        : null,
                    boxShadow: hasFocus
                        ? [
                            BoxShadow(
                              color: AppTheme.primaryBlue
                                  .withAlpha((0.5 * 255).round()),
                              blurRadius: context.tvSpacing(12),
                              spreadRadius: context.tvSpacing(2),
                            ),
                          ]
                        : null,
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      context.go('/settings');
                    },
                    icon: Icon(Icons.settings, size: context.tvIconSize(24)),
                    label: Text('Go to Settings',
                        style: TextStyle(fontSize: context.tvTextSize(16))),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryBlue,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: context.tvSpacing(16)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.tvSpacing(48)),
            child: Text(
              'Configure your recording storage location in Settings > EPG & Recordings',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: context.tvTextSize(12),
                  color: AppTheme.textTertiary),
            ),
          ),
        ],
      ),
    );
  }

  if (_recordings.isEmpty) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.movie_outlined,
            size: context.tvIconSize(80),
            color: AppTheme.textSecondary,
          ),
          SizedBox(height: context.tvSpacing(16)),
          Text(
            'No recordings found',
            style: TextStyle(
                fontSize: context.tvTextSize(16),
                color: AppTheme.textSecondary),
          ),
          SizedBox(height: context.tvSpacing(8)),
          Text(
            'Recordings will appear here once you record from the EPG',
            style: TextStyle(
                fontSize: context.tvTextSize(12),
                color: AppTheme.textTertiary),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  return FocusTraversalGroup(
    policy: WidgetOrderTraversalPolicy(),
    child: ListView.builder(
      padding: EdgeInsets.all(context.tvSpacing(16)),
      itemCount: _recordings.length,
      itemBuilder: (context, index) {
        final file = _recordings[index];
        final fileName = path.basename(file.path);
        final stat = file.statSync();
        final fileSize = _formatFileSize(stat.size);
        final modifiedDate = stat.modified;

        return _buildFocusableRecordingTile(
          file: file,
          fileName: fileName,
          subtitle:
              '${modifiedDate.day}/${modifiedDate.month}/${modifiedDate.year} ${modifiedDate.hour}:${modifiedDate.minute.toString().padLeft(2, '0')} • $fileSize',
        );
      },
    ),
  );
}

Widget _buildFocusableRecordingTile({
  required FileSystemEntity file,
  required String fileName,
  required String subtitle,
}) {
  return FocusableActionDetector(
    actions: <Type, Action<Intent>>{
      ActivateIntent: CallbackAction<ActivateIntent>(
        onInvoke: (intent) {
          _playRecording(file, fileName);
          return null;
        },
      ),
    },
    child: Builder(
      builder: (context) {
        final isFocused = Focus.of(context).hasFocus;
        return Card(
          margin: EdgeInsets.only(bottom: context.tvSpacing(12)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(context.tvSpacing(8)),
            side: isFocused
                ? BorderSide(
                    color: AppTheme.primaryBlue,
                    width: context.tvSpacing(2),
                  )
                : BorderSide.none,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.all(context.tvSpacing(16)),
            leading: Container(
              width: context.tvSpacing(80),
              height: context.tvSpacing(60),
              decoration: BoxDecoration(
                color: AppTheme.sidebarBackground,
                borderRadius: BorderRadius.circular(context.tvSpacing(8)),
              ),
              child: Icon(
                Icons.movie,
                color: AppTheme.primaryBlue,
                size: context.tvIconSize(32),
              ),
            ),
            title: Text(
              fileName,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: context.tvTextSize(16)),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                fontSize: context.tvTextSize(12),
                color: AppTheme.textSecondary,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildFocusableIconButton(
                  icon: Icons.play_arrow,
                  color: AppTheme.primaryBlue,
                  tooltip: 'Play',
                  onPressed: () => _playRecording(file, fileName),
                ),
                _buildFocusableIconButton(
                  icon: Icons.delete_outline,
                  color: AppTheme.accentRed,
                  tooltip: 'Delete',
                  onPressed: () => _deleteRecording(file),
                ),
              ],
            ),
            onTap: () => _playRecording(file, fileName),
          ),
        );
      },
    ),
  );
}

Widget _buildFocusableIconButton({
  required IconData icon,
  required Color color,
  required String tooltip,
  required VoidCallback onPressed,
}) {
  return FocusableActionDetector(
    actions: <Type, Action<Intent>>{
      ActivateIntent: CallbackAction<ActivateIntent>(
        onInvoke: (intent) {
          onPressed();
          return null;
        },
      ),
    },
    child: Builder(
      builder: (context) {
        final isFocused = Focus.of(context).hasFocus;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeOutCubic,
          decoration: BoxDecoration(
            color: isFocused ? color.withAlpha((0.2 * 255).round()) : null,
            borderRadius: BorderRadius.circular(context.tvSpacing(8)),
            border: isFocused
                ? Border.all(color: color, width: context.tvSpacing(2))
                : null,
          ),
          child: IconButton(
            tooltip: tooltip,
            icon: Icon(
              icon,
              color: color,
              size: context.tvIconSize(24),
            ),
            onPressed: onPressed,
          ),
        );
      },
    ),
  );
}

}
