import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/brand_button.dart';

class AIModelsScreen extends StatefulWidget {
  const AIModelsScreen({super.key});

  @override
  State<AIModelsScreen> createState() => _AIModelsScreenState();
}

class _AIModelsScreenState extends State<AIModelsScreen> {
  late DateTime _currentTime;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {
      _currentTime = DateTime.now();
    });
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: _buildGlassAppBar(),
      body: Consumer<AIModelManager>(
        builder: (context, modelManager, _) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Header info
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppTheme.primaryBlue.withAlpha((0.1 * 255).round()),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: AppTheme.primaryBlue,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'About AI Models',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'All models are processed on-device for privacy and work offline after download. '
                      'Models are shared between services to avoid duplicates.',
                      style: TextStyle(fontSize: 13, height: 1.4),
                    ),
                    const SizedBox(height: 12),
                    FutureBuilder<int>(
                      future: modelManager.getTotalDownloadedSize(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final sizeMB = (snapshot.data! / (1024 * 1024))
                              .toStringAsFixed(1);
                          return Text(
                            'Total downloaded: $sizeMB MB',
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppTheme.primaryBlue,
                            ),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Video Upscaling Models
              _buildCategorySection(
                context,
                modelManager,
                ModelCategory.videoUpscaling,
                'Choose ONE model for AI video upscaling',
              ),

              const SizedBox(height: 24),

              // Speech Recognition Models
              _buildCategorySection(
                context,
                modelManager,
                ModelCategory.speechRecognition,
                'Choose ONE model for speech-to-text (shared by all transcription features)',
              ),

              const SizedBox(height: 24),

              // Translation info
              _buildTranslationInfo(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCategorySection(
    BuildContext context,
    AIModelManager modelManager,
    ModelCategory category,
    String hint,
  ) {
    final models = AIModel.byCategory(category);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category.displayName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          category.description,
          style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: AppTheme.accentOrange.withAlpha((0.1 * 255).round()),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.lightbulb_outline,
                size: 16,
                color: AppTheme.accentOrange,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  hint,
                  style: const TextStyle(fontSize: 12, color: AppTheme.accentOrange),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        ...models.map((model) => _buildModelCard(context, modelManager, model)),
      ],
    );
  }

  Widget _buildModelCard(
    BuildContext context,
    AIModelManager modelManager,
    AIModel model,
  ) {
    final status = modelManager.getModelStatus(model.id);
    final progress = modelManager.getDownloadProgress(model.id);

    return Card(
      color: AppTheme.cardBackground,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        model.description,
                        style: const TextStyle(
                          fontSize: 13,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                _buildStatusBadge(status),
              ],
            ),

            const SizedBox(height: 12),

            // Model info
            Row(
              children: [
                const Icon(
                  Icons.storage,
                  size: 14,
                  color: AppTheme.textSecondary,
                ),
                const SizedBox(width: 4),
                Text(
                  'Size: ${model.sizeFormatted}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(width: 16),
                const Icon(
                  Icons.devices,
                  size: 14,
                  color: AppTheme.textSecondary,
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    'Used by: ${model.usedBy.join(", ")}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppTheme.textSecondary,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            if (status == ModelDownloadStatus.downloading) ...[
              const SizedBox(height: 12),
              LinearProgressIndicator(
                value: progress,
                backgroundColor: AppTheme.highlight,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  AppTheme.primaryBlue,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '${(progress * 100).toStringAsFixed(0)}% downloaded',
                style: const TextStyle(
                  fontSize: 12,
                  color: AppTheme.textSecondary,
                ),
              ),
            ],

            const SizedBox(height: 12),

            // Action buttons
            Row(
              children: [
                if (status == ModelDownloadStatus.notDownloaded ||
                    status == ModelDownloadStatus.error)
                  Expanded(
                    child: BrandPrimaryButton(
                      expand: true,
                      icon: Icons.download,
                      label: 'Download',
                      onPressed: () => modelManager.downloadModel(model),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),

                if (status == ModelDownloadStatus.downloaded) ...[
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: null,
                      icon: const Icon(Icons.check_circle, size: 18),
                      label: const Text('Downloaded'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.accentGreen.withAlpha((0.2 * 255).round()),
                        foregroundColor: AppTheme.accentGreen,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton.icon(
                    onPressed: () =>
                        _confirmDelete(context, modelManager, model),
                    icon: const Icon(Icons.delete_outline, size: 18),
                    label: const Text('Delete'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppTheme.accentRed,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                    ),
                  ),
                ],

                if (status == ModelDownloadStatus.downloading)
                  const Expanded(
                    child: ElevatedButton(
                      onPressed: null,
                      child: Text('Downloading...'),
                    ),
                  ),

                if (status == ModelDownloadStatus.corrupted)
                  Expanded(
                    child: BrandPrimaryButton(
                      expand: true,
                      icon: Icons.refresh,
                      label: 'Re-download',
                      onPressed: () => modelManager.downloadModel(model),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.translate, color: AppTheme.primaryBlue, size: 20),
              SizedBox(width: 8),
              Text(
                'Translation Models',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Translation models are managed by Google ML Kit and download automatically when you use a language pair.',
            style: TextStyle(fontSize: 13, height: 1.4),
          ),
          const SizedBox(height: 8),
          const Text(
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
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Delete Model?'),
        content: Text(
          'Are you sure you want to delete ${model.name}?\n\n'
          'This will free up ${model.sizeFormatted} of storage. '
          'You can re-download it anytime.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              modelManager.deleteModel(model);
              Navigator.pop(context);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('${model.name} deleted')));
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

  AppBar _buildGlassAppBar() {
    return AppBar(
      title: Text('AI Models'),
      backgroundColor: AppTheme.darkBackground,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(2),
        child: Container(
          color: AppTheme.accentPink,
          height: 2,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.lg),
          child: Center(
            child: Text(
              _formatTime(_currentTime),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppTheme.textSecondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
