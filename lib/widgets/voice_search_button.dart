import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/voice_search_service.dart';
import 'package:iptv_player/utils/app_theme.dart';

class VoiceSearchButton extends StatefulWidget {
  final Function(String)? onSearchResult;
  
  const VoiceSearchButton({
    super.key,
    this.onSearchResult,
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
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
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
          _showSearchDialog(result);
        },
        onPartialResult: (partial) {
          // Optionally show partial results
        },
      );
    }
  }

  void _showSearchDialog(String query) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: Row(
          children: [
            Icon(Icons.search, color: AppTheme.primaryBlue),
            SizedBox(width: AppSizes.sm),
            Text('Search Results'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Searching for:',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: AppSizes.sm),
            Text(
              '"$query"',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppTheme.primaryBlue,
              ),
            ),
            SizedBox(height: AppSizes.md),
            Text(
              'Implementation: Connect this to your search functionality',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
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
            child: IconButton(
              icon: Icon(Icons.mic_off, color: AppTheme.textTertiary),
              onPressed: null,
            ),
          );
        }

        return Stack(
          alignment: Alignment.center,
          children: [
            // Animated ring when listening
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
            
            // Microphone button
            IconButton(
              icon: Icon(
                voiceService.isListening ? Icons.mic : Icons.mic_none,
                color: voiceService.isListening 
                    ? AppTheme.accentRed 
                    : AppTheme.textPrimary,
              ),
              onPressed: () => _toggleListening(voiceService),
              tooltip: voiceService.isListening 
                  ? 'Stop listening' 
                  : 'Voice search',
            ),
          ],
        );
      },
    );
  }
}

class VoiceSearchOverlay extends StatelessWidget {
  final VoidCallback onClose;
  
  const VoiceSearchOverlay({
    super.key,
    required this.onClose,
  });

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
                  child: Icon(
                    Icons.mic,
                    size: 60,
                    color: AppTheme.primaryBlue,
                  ),
                ),
                
                SizedBox(height: AppSizes.xl),
                
                Text(
                  voiceService.isListening 
                      ? 'Listening...' 
                      : 'Tap to speak',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                
                SizedBox(height: AppSizes.md),
                
                if (voiceService.lastWords.isNotEmpty)
                  Container(
                    padding: EdgeInsets.all(AppSizes.md),
                    margin: EdgeInsets.symmetric(horizontal: AppSizes.xxl),
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
                
                SizedBox(height: AppSizes.xl),
                
                if (voiceService.lastError.isNotEmpty)
                  Text(
                    voiceService.lastError,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppTheme.accentRed,
                    ),
                  ),
                
                SizedBox(height: AppSizes.xxl),
                
                TextButton(
                  onPressed: onClose,
                  child: Text('Close'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
