// ignore_for_file: todo
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/brand_button.dart';

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
        // Prefer VOD subtitles when loaded and matching current playback position
        final vodText = service.currentVodSubtitle;
        final liveText = service.latestSubtitles;
        final subtitles = vodText.isNotEmpty ? vodText : liveText;

        if (subtitles.isEmpty) return const SizedBox.shrink();
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.tvSpacing(AppSizes.md),
            vertical: context.tvSpacing(AppSizes.sm),
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius:
                BorderRadius.circular(context.tvSpacing(AppSizes.radiusMd)),
          ),
          child: Text(
            subtitles,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: context.tvTextSize(fontSize),
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
                    BrandPrimaryButton(
                      onPressed: () async {
                        await service.downloadTranslationModels();
                      },
                      icon: Icons.download,
                      label: 'Download Language Models',
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
                    service.subtitles.isEmpty
                        ? Opacity(
                            opacity: 0.5,
                            child: BrandSecondaryButton(
                              onPressed: () {}, // Disabled
                              icon: Icons.clear,
                              label: 'Clear',
                            ),
                          )
                        : BrandSecondaryButton(
                            onPressed: () {
                              service.clearSubtitles();
                              showAppSnackBar(
                                context,
                                const SnackBar(
                                  content: Text('Subtitles cleared'),
                                ),
                              );
                            },
                            icon: Icons.clear,
                            label: 'Clear',
                          ),
                    const SizedBox(width: AppSizes.sm),
                    service.subtitles.isEmpty
                        ? Opacity(
                            opacity: 0.5,
                            child: BrandSecondaryButton(
                              onPressed: () {}, // Disabled
                              icon: Icons.save,
                              label: 'Export SRT',
                            ),
                          )
                        : BrandSecondaryButton(
                            onPressed: () {
                              final srt = service.exportAsSRT();
                              // Copy to clipboard (simple cross-platform solution)
                              Clipboard.setData(ClipboardData(text: srt));
                              showAppSnackBar(
                                context,
                                SnackBar(
                                  content: Text(
                                    'Exported ${service.subtitles.length} subtitles to clipboard',
                                  ),
                                ),
                              );
                            },
                            icon: Icons.save,
                            label: 'Export SRT',
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
