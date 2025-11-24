// ignore_for_file: todo
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';

/// Live subtitle overlay widget
/// Displays real-time transcription and translation on video
class LiveSubtitleOverlay extends StatelessWidget {
  final bool showSubtitles;
  final double fontSize;
  final Color backgroundColor;
  final Color textColor;

  const LiveSubtitleOverlay({
    super.key,
    this.showSubtitles = true,
    this.fontSize = 20,
    this.backgroundColor = Colors.black87,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    if (!showSubtitles) return const SizedBox.shrink();

    return Consumer<IntegratedTranscriptionService>(
      builder: (context, service, child) {
        final subtitles = service.latestSubtitles;

        if (subtitles.isEmpty) {
          return const SizedBox.shrink();
        }

        return Positioned(
          bottom: 80,
          left: 20,
          right: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.md,
              vertical: AppSizes.sm,
            ),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(AppSizes.radiusMd),
            ),
            child: Text(
              subtitles,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                height: 1.4,
                shadows: const [
                  Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 2,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Control panel for transcription/translation
class TranscriptionControlPanel extends StatelessWidget {
  const TranscriptionControlPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<IntegratedTranscriptionService>(
      builder: (context, service, child) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Live Transcription & Translation',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: AppSizes.md),

                // Transcription toggle
                SwitchListTile(
                  title: const Text('Live Transcription'),
                  subtitle: Text(
                    service.isTranscribing
                        ? 'Listening...'
                        : 'Start to generate subtitles',
                  ),
                  value: service.isTranscribing,
                  onChanged: (value) async {
                    if (value) {
                      await service.startTranscription();
                    } else {
                      await service.stopTranscription();
                    }
                  },
                ),

                // Translation toggle
                SwitchListTile(
                  title: const Text('Enable Translation'),
                  subtitle: const Text('Translate subtitles on-device'),
                  value: service.isTranslating,
                  onChanged: service.setTranslationEnabled,
                ),

                if (service.isTranslating) ...[
                  const SizedBox(height: AppSizes.md),

                  // Source language
                  _buildLanguageDropdown(
                    context,
                    'Source Language',
                    service.sourceLanguage,
                    service.getAvailableLanguages(),
                    (lang) async => await service.setSourceLanguage(lang),
                  ),

                  const SizedBox(height: AppSizes.sm),

                  // Target language
                  _buildLanguageDropdown(
                    context,
                    'Target Language',
                    service.targetLanguage,
                    service.getAvailableLanguages(),
                    (lang) async => await service.setTargetLanguage(lang),
                  ),

                  const SizedBox(height: AppSizes.md),

                  // Download models button
                  if (service.isDownloadingModels)
                    Column(
                      children: [
                        LinearProgressIndicator(
                          value: service.downloadProgress,
                        ),
                        const SizedBox(height: AppSizes.sm),
                        Text(
                          'Downloading language models... ${(service.downloadProgress * 100).toInt()}%',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    )
                  else
                    ElevatedButton.icon(
                      onPressed: () async {
                        await service.downloadTranslationModels();
                      },
                      icon: const Icon(Icons.download),
                      label: const Text('Download Language Models'),
                    ),
                ],

                // TTS toggle
                SwitchListTile(
                  title: const Text('Text-to-Speech'),
                  subtitle: const Text('Speak translated text'),
                  value: service.isTTSEnabled,
                  onChanged: service.setTTSEnabled,
                ),

                const SizedBox(height: AppSizes.md),

                // Actions
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: service.subtitles.isEmpty
                          ? null
                          : () {
                              service.clearSubtitles();
                              showAppSnackBar(
                                context,
                                const SnackBar(
                                  content: Text('Subtitles cleared'),
                                ),
                              );
                            },
                      icon: const Icon(Icons.clear),
                      label: const Text('Clear'),
                    ),
                    const SizedBox(width: AppSizes.sm),
                    ElevatedButton.icon(
                      onPressed: service.subtitles.isEmpty
                          ? null
                          : () {
                              final srt = service.exportAsSRT();
                              debugPrint('Exported SRT:\n$srt');
                              // TODO: Save to file or share
                              showAppSnackBar(
                                context,
                                SnackBar(
                                  content: Text(
                                    'Exported ${service.subtitles.length} subtitles',
                                  ),
                                ),
                              );
                            },
                      icon: const Icon(Icons.save),
                      label: const Text('Export SRT'),
                    ),
                  ],
                ),

                // Subtitle count
                const SizedBox(height: AppSizes.sm),
                Text(
                  '${service.subtitles.length} subtitle entries',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLanguageDropdown(
    BuildContext context,
    String label,
    dynamic currentLanguage,
    List<LanguageOption> options,
    Function(dynamic) onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 4),
        DropdownButtonFormField<dynamic>(
          initialValue: currentLanguage,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            isDense: true,
          ),
          items: options.map((option) {
            return DropdownMenuItem(
              value: option.language,
              child: Text(option.name),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) {
              onChanged(value);
            }
          },
        ),
      ],
    );
  }
}
