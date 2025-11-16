import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/ai_model_manager.dart';
import 'package:iptv_player/utils/app_theme.dart';

class AIModelsScreen extends StatefulWidget {
  const AIModelsScreen({super.key});

  @override
  State<AIModelsScreen> createState() => _AIModelsScreenState();
}

class _AIModelsScreenState extends State<AIModelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AIModelManager>(
      builder: (context, modelManager, _) {
        return Scaffold(
          backgroundColor: AppTheme.darkBackground,
          appBar: AppBar(
            title: const Text('AI Models'),
            backgroundColor: AppTheme.darkBackground,
          ),
          body: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: AIModel.allModels.length,
            itemBuilder: (context, index) {
              final model = AIModel.allModels[index];
              final isDownloaded = modelManager.isModelDownloaded(model.id);
              final isDownloading = modelManager.isDownloading(model.id);
              final progress = modelManager.getDownloadProgress(model.id);

              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            _getModelIcon(model.category),
                            color: AppTheme.primaryBlue,
                            size: 24,
                          ),
                          const SizedBox(width: 12),
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
                                Text(
                                  model.description,
                                  style: const TextStyle(
                                    color: AppTheme.textSecondary,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: _getTypeColor(model.category).withAlpha((0.2 * 255).round()),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              model.category.displayName.toUpperCase(),
                              style: TextStyle(
                                color: _getTypeColor(model.category),
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      
                      Row(
                        children: [
                          Text('Size: ${_formatSize(model.sizeBytes)}'),
                          const SizedBox(width: 16),
                          Text('Category: ${model.category.displayName}'),
                        ],
                      ),
                      
                      if (isDownloading) ...[
                        const SizedBox(height: 12),
                        LinearProgressIndicator(
                          value: progress,
                          backgroundColor: AppTheme.cardBackground,
                          color: AppTheme.primaryBlue,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Downloading... ${(progress * 100).toInt()}%',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                      
                      const SizedBox(height: 12),
                      
                      Row(
                        children: [
                          if (isDownloaded) ...[
                            const Icon(Icons.check_circle, color: AppTheme.accentGreen, size: 16),
                            const SizedBox(width: 4),
                            const Text('Downloaded', style: TextStyle(color: AppTheme.accentGreen)),
                            const Spacer(),
                            TextButton(
                              onPressed: () async {
                                await modelManager.deleteModel(model.id);
                                setState(() {});
                              },
                              child: const Text('Delete'),
                            ),
                          ] else if (isDownloading) ...[
                            const CircularProgressIndicator(strokeWidth: 2),
                            const SizedBox(width: 8),
                            const Text('Downloading...'),
                            const Spacer(),
                            TextButton(
                              onPressed: () => modelManager.cancelDownload(model.id),
                              child: const Text('Cancel'),
                            ),
                          ] else ...[
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () async {
                                await modelManager.downloadModel(model.id);
                                setState(() {});
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppTheme.primaryBlue,
                              ),
                              child: const Text('Download'),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  IconData _getModelIcon(ModelCategory category) {
    switch (category) {
      case ModelCategory.videoUpscaling:
        return Icons.high_quality;
      case ModelCategory.speechRecognition:
        return Icons.record_voice_over;
      case ModelCategory.translation:
        return Icons.translate;
    }
  }

  Color _getTypeColor(ModelCategory category) {
    switch (category) {
      case ModelCategory.videoUpscaling:
        return AppTheme.primaryBlue;
      case ModelCategory.speechRecognition:
        return AppTheme.accentGreen;
      case ModelCategory.translation:
        return AppTheme.accentOrange;
    }
  }

  String _formatSize(int bytes) {
    if (bytes < 1024 * 1024) {
      return '${(bytes / 1024).toStringAsFixed(1)} KB';
    } else if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    } else {
      return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
    }
  }
}