part of '../ai_models_screen.dart';

extension AIModelsContent on _AIModelsScreenState {
Widget _buildContent() {
  return Scaffold(
    backgroundColor: Colors.transparent,
    body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppTheme.darkBackground, Color(0xFF0d1140)],
        ),
      ),
      child: Consumer<AIModelManager>(
        builder: (context, modelManager, _) {
          return ListView(
            padding: EdgeInsets.fromLTRB(
              context.tvSpacing(24),
              context.tvSpacing(24),
              context.tvSpacing(24),
              context.tvSpacing(48),
            ),
            children: [
              _buildPageHeader(context, modelManager),

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
                style: const TextStyle(
                    fontSize: 12, color: AppTheme.accentOrange),
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
              if (status == ModelDownloadStatus.downloaded ||
                  status == ModelDownloadStatus.bundled) ...[
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: null,
                    icon: Icon(
                      status == ModelDownloadStatus.bundled
                          ? Icons.check_circle_outline
                          : Icons.check_circle,
                      size: 18,
                    ),
                    label: Text(status == ModelDownloadStatus.bundled
                        ? 'Built-in'
                        : 'Downloaded'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          AppTheme.accentGreen.withAlpha((0.2 * 255).round()),
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

}
