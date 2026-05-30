part of '../ai_models_screen.dart';

extension AIModelsWidgets on _AIModelsScreenState {
Widget _buildStatusBadge(ModelDownloadStatus status) {
  Color color;
  IconData icon;
  String label;

  switch (status) {
    case ModelDownloadStatus.downloaded:
      color = AppTheme.accentGreen;
      icon = Icons.check_circle;
      label = 'Ready';
      break;
    case ModelDownloadStatus.downloading:
      color = AppTheme.primaryBlue;
      icon = Icons.downloading;
      label = 'Downloading';
      break;
    case ModelDownloadStatus.corrupted:
      color = AppTheme.accentOrange;
      icon = Icons.warning;
      label = 'Corrupted';
      break;
    case ModelDownloadStatus.error:
      color = AppTheme.accentRed;
      icon = Icons.error;
      label = 'Error';
      break;
    case ModelDownloadStatus.notDownloaded:
      color = AppTheme.textSecondary;
      icon = Icons.cloud_download;
      label = 'Not Downloaded';
      break;
    case ModelDownloadStatus.bundled:
      color = AppTheme.accentGreen;
      icon = Icons.check_circle_outline;
      label = 'Bundled';
      break;
  }

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: color.withAlpha((0.2 * 255).round()),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: color),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    ),
  );
}

Widget _buildTranslationInfo() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: AppTheme.highlight,
      borderRadius: BorderRadius.circular(8),
    ),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.translate, color: AppTheme.primaryBlue, size: 20),
            SizedBox(width: 8),
            Text(
              'Translation Models',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          'Translation models are managed by Google ML Kit and download automatically when you use a language pair.',
          style: TextStyle(fontSize: 13, height: 1.4),
        ),
        SizedBox(height: 8),
        Text(
          '• 59 languages supported\n'
          '• ~50 MB per language pair\n'
          '• Auto-downloads on first use\n'
          '• Managed in ML Kit settings',
          style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
        ),
      ],
    ),
  );
}

void _confirmDelete(
  BuildContext context,
  AIModelManager modelManager,
  AIModel model,
) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppTheme.dialogBackground,
      title: const Text('Delete Model?'),
      content: Text(
        'Are you sure you want to delete ${model.name}?\n\n'
        'This will free up ${model.sizeFormatted} of storage. '
        'You can re-download it anytime.',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          autofocus: true,
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            modelManager.deleteModel(model.id);
            Navigator.pop(context);
            final localContext = context;
            if (localContext.mounted) {
              showAppSnackBar(localContext,
                  SnackBar(content: Text('${model.name} deleted')));
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.accentRed,
          ),
          child: const Text('Delete'),
        ),
      ],
    ),
  );
}

Widget _buildPageHeader(BuildContext context, AIModelManager modelManager) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
    decoration: BoxDecoration(
      color: Colors.black.withAlpha((0.25 * 255).round()),
      borderRadius: BorderRadius.circular(24),
      border: Border.all(color: Colors.white.withAlpha((0.08 * 255).round())),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withAlpha((0.4 * 255).round()),
          blurRadius: 30,
          offset: const Offset(0, 12),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.auto_awesome,
                color: AppTheme.primaryBlue,
                size: 26,
              ),
            ),
            const SizedBox(width: 16),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'AI Models',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Manage on-device AI downloads for speech features.',
                    style: TextStyle(
                      color: AppTheme.textSecondary,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Local time',
                  style: TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'All downloads stay on your device for privacy and offline reliability.',
          style: TextStyle(fontSize: 13, color: Colors.white70),
        ),
        const SizedBox(height: 16),
        FutureBuilder<int>(
          future: modelManager.getTotalDownloadedSize(),
          builder: (context, snapshot) {
            final totalSize = snapshot.hasData
                ? '${(snapshot.data! / (1024 * 1024)).toStringAsFixed(1)} MB downloaded'
                : 'Calculating storage…';
            return Wrap(
              spacing: 12,
              runSpacing: 8,
              children: [
                _buildHeaderChip(Icons.storage, totalSize),
                _buildHeaderChip(
                    Icons.shield_moon, 'On-device · Zero cloud cost'),
                _buildHeaderChip(
                  Icons.sync_alt,
                  'Shared across services',
                ),
              ],
            );
          },
        ),
      ],
    ),
  );
}

Widget _buildHeaderChip(IconData icon, String label) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.white.withAlpha((0.08 * 255).round()),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.white.withAlpha((0.1 * 255).round())),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Colors.white70),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}
}
