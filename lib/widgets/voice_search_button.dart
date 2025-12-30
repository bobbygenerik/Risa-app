import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/voice_search_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/app_dialog.dart';
import 'package:iptv_player/widgets/brand_button.dart';

class VoiceSearchButton extends StatefulWidget {
  final Function(String)? onSearchResult;
  final bool usePillStyle;
  final String? label;
  final FocusNode? focusNode;
  final VoidCallback? onLeftArrow;

  const VoiceSearchButton({
    super.key,
    this.onSearchResult,
    this.usePillStyle = false,
    this.label,
    this.focusNode,
    this.onLeftArrow,
  });

  @override
  State<VoiceSearchButton> createState() => _VoiceSearchButtonState();
}

class _VoiceSearchButtonState extends State<VoiceSearchButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleListening(VoiceSearchService voiceService) async {
    if (voiceService.isListening) {
      await voiceService.stopListening();
    } else {
      await voiceService.startListening(
        onResult: (result) {
          widget.onSearchResult?.call(result);
          if (widget.onSearchResult == null) {
            _showSearchDialog(result);
          }
        },
        onPartialResult: (partial) {
          // Optionally show partial results
        },
      );
    }
  }

  void _showSearchDialog(String query) {
    if (!mounted) return;

    showDialog(
      context: context,
      builder: (context) => AppDialog(
        title: 'Search Results',
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Searching for:',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: AppSizes.sm),
            Text(
              '"$query"',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: AppTheme.primaryBlue),
            ),
          ],
        ),
        actions: [
          AppDialogButton(
            text: 'Close',
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<VoiceSearchService>(
      builder: (context, voiceService, child) {
        if (!voiceService.isAvailable && voiceService.lastError.isNotEmpty) {
          return Tooltip(
            message: 'Voice search unavailable: ${voiceService.lastError}',
            child: const IconButton(
              icon: Icon(Icons.mic_off, color: AppTheme.textTertiary),
              onPressed: null,
            ),
          );
        }
        if (widget.usePillStyle) {
          return _buildPillButton(voiceService);
        }

        return _buildIconButton(voiceService);
      },
    );
  }

  Widget _buildIconButton(VoiceSearchService voiceService) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (voiceService.isListening)
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppTheme.accentRed.withAlpha((0.5 * 255).round()),
                  width: 2,
                ),
              ),
            ),
          ),
        IconButton(
          icon: Icon(
            voiceService.isListening ? Icons.mic : Icons.mic_none,
            color: voiceService.isListening
                ? AppTheme.accentRed
                : AppTheme.textPrimary,
          ),
          onPressed: () => _toggleListening(voiceService),
          tooltip: voiceService.isListening ? 'Stop listening' : 'Voice search',
        ),
      ],
    );
  }

  Widget _buildPillButton(VoiceSearchService voiceService) {
    final isListening = voiceService.isListening;
    final labelText = widget.label ?? 'Voice';

    final Color borderColor = isListening
        ? AppTheme.accentRed
        : AppTheme.primaryBlue.withAlpha((0.4 * 255).round());
    final Color backgroundColor = isListening
        ? AppTheme.accentRed.withAlpha((0.15 * 255).round())
        : Colors.white.withAlpha((0.05 * 255).round());
    final Color iconColor = isListening ? AppTheme.accentRed : Colors.white;

    final buttonWidget = GestureDetector(
      onTap: () => _toggleListening(voiceService),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          border: Border.all(color: borderColor, width: 1.5),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isListening ? Icons.mic : Icons.mic_none,
              color: iconColor,
              size: 18,
            ),
            const SizedBox(width: 8),
            Text(
              isListening ? 'Listening' : labelText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );

    if (widget.focusNode != null) {
      return Focus(
        focusNode: widget.focusNode,
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter) {
              _toggleListening(voiceService);
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
              widget.onLeftArrow?.call();
              return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        child: Builder(
          builder: (context) {
            final isFocused = Focus.of(context).hasFocus;
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                border: isFocused
                    ? Border.all(color: AppTheme.focusBorder, width: 3)
                    : null,
              ),
              child: buttonWidget,
            );
          },
        ),
      );
    }

    return buttonWidget;
  }
}

class VoiceSearchOverlay extends StatelessWidget {
  final VoidCallback onClose;

  const VoiceSearchOverlay({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Consumer<VoiceSearchService>(
      builder: (context, voiceService, child) {
        return Container(
          color: Colors.black.withAlpha((0.8 * 255).round()),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Animated microphone icon
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
                  ),
                  child: const Icon(
                    Icons.mic,
                    size: 60,
                    color: AppTheme.primaryBlue,
                  ),
                ),

                const SizedBox(height: AppSizes.xl),

                Text(
                  voiceService.isListening ? 'Listening...' : 'Tap to speak',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

                const SizedBox(height: AppSizes.md),

                if (voiceService.lastWords.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.all(AppSizes.md),
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppSizes.xxl,
                    ),
                    decoration: BoxDecoration(
                      color: AppTheme.cardBackground,
                      borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                    ),
                    child: Text(
                      voiceService.lastWords,
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),

                const SizedBox(height: AppSizes.xl),

                if (voiceService.lastError.isNotEmpty)
                  Text(
                    voiceService.lastError,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: AppTheme.accentRed),
                  ),

                const SizedBox(height: AppSizes.xxl),

                BrandSecondaryButton(onPressed: onClose, label: 'Close'),
              ],
            ),
          ),
        );
      },
    );
  }
}
