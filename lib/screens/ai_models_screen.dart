import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';

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
    Future.delayed(const Duration(seconds: 1), _updateTime);
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {
      _currentTime = DateTime.now();
    });
    Future.delayed(const Duration(seconds: 1), _updateTime);
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF050710), Color(0xFF0d1140)],
          ),
        ),
        child: Consumer<AIModelManager>(
          builder: (context, modelManager, _) {
            return ListView(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 48),
              children: [
                _buildPageHeader(context, modelManager),

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
                      onPressed: () => modelManager.downloadModel(model.id),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),

                if (status == ModelDownloadStatus.downloaded || status == ModelDownloadStatus.bundled) ...[
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: null,
                      icon: Icon(
                        status == ModelDownloadStatus.bundled ? Icons.check_circle_outline : Icons.check_circle,
                        size: 18,
                      ),
                      label: Text(status == ModelDownloadStatus.bundled ? 'Built-in' : 'Downloaded'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.accentGreen.withAlpha((0.2 * 255).round()),
                        foregroundColor: AppTheme.accentGreen,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  if (status != ModelDownloadStatus.bundled)
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
                      onPressed: () => modelManager.downloadModel(model.id),
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
              modelManager.deleteModel(model.id);
              Navigator.pop(context);
              final localContext = context;
              if (localContext.mounted) {
                showAppSnackBar(localContext, SnackBar(content: Text('${model.name} deleted')));
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
                      'Manage on-device AI downloads for video upscaling and speech features.',
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
                  Text(
                    _formatTime(_currentTime),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
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
                  _buildHeaderChip(Icons.shield_moon,
                      'On-device · Zero cloud cost'),
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
