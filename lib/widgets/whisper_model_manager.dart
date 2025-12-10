import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/whisper_transcription_service.dart';
import 'package:iptv_player/services/whisper_platform_service.dart';
import 'package:iptv_player/widgets/app_dialog.dart';
import 'package:iptv_player/utils/app_theme.dart';

class WhisperModelManager extends StatefulWidget {
  const WhisperModelManager({super.key});

  @override
  State<WhisperModelManager> createState() => _WhisperModelManagerState();
}

class _WhisperModelManagerState extends State<WhisperModelManager> {
  List<WhisperModelStatus> _modelStatuses = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadModelStatuses();
  }

  Future<void> _loadModelStatuses() async {
    try {
      final statuses = await WhisperPlatformService.getModelStatuses();
      if (mounted) {
        setState(() {
          _modelStatuses = statuses;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppTheme.primaryBlue),
      );
    }

    return Consumer<WhisperTranscriptionService>(
      builder: (context, service, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Whisper Models',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Manage speech recognition models for live transcription',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 16),
            ..._modelStatuses.map((status) => _buildModelTile(context, status, service)),
          ],
        );
      },
    );
  }

  Widget _buildModelTile(BuildContext context, WhisperModelStatus status, WhisperTranscriptionService service) {
    final isSelected = service.selectedModel == status.model.name;
    
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
        border: isSelected ? Border.all(color: AppTheme.primaryBlue, width: 1) : null,
      ),
      child: ListTile(
        dense: true,
        leading: Icon(
          status.model.bundled ? Icons.phone_android : Icons.cloud_download,
          color: status.isAvailable ? AppTheme.primaryBlue : Colors.white60,
          size: 20,
        ),
        title: Row(
          children: [
            Text(
              status.model.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: status.model.bundled ? Colors.green.withValues(alpha: 0.2) : Colors.blue.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                status.model.bundled ? 'BUNDLED' : status.model.size,
                style: TextStyle(
                  color: status.model.bundled ? Colors.green : Colors.blue,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        subtitle: Text(
          status.model.description,
          style: const TextStyle(
            color: Colors.white60,
            fontSize: 12,
          ),
        ),
        trailing: _buildModelAction(context, status, service),
        onTap: status.isAvailable ? () => _selectModel(status.model.name, service) : null,
      ),
    );
  }

  Widget _buildModelAction(BuildContext context, WhisperModelStatus status, WhisperTranscriptionService service) {
    if (status.model.bundled) {
      return const Icon(Icons.check, color: Colors.green, size: 20);
    }

    if (status.isAvailable) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.check, color: Colors.green, size: 20),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => _selectModel(status.model.name, service),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text(
                'USE',
                style: TextStyle(
                  color: AppTheme.primaryBlue,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return GestureDetector(
      onTap: () => _downloadModel(context, status.model.name),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Text(
          'DOWNLOAD',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  void _selectModel(String modelName, WhisperTranscriptionService service) {
    service.setSelectedModel(modelName);
    service.loadWhisperModel(modelName);
  }

  Future<void> _downloadModel(BuildContext context, String modelName) async {
    final dialogContext = context; // Capture context before async gap
    
    showDialog(
      context: dialogContext,
      barrierDismissible: false,
      builder: (context) => AppDialog(
        title: 'Downloading Model',
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(color: AppTheme.primaryBlue),
            const SizedBox(height: 16),
            Text(
              'Downloading $modelName...',
              style: const TextStyle(color: Colors.white70, fontSize: 13),
            ),
          ],
        ),
      ),
    );

    try {
      final navigator = Navigator.of(dialogContext);
      final success = await WhisperPlatformService.downloadModel(modelName);
      if (mounted) {
        navigator.pop(); // Close progress dialog
        
        if (success) {
          await _loadModelStatuses(); // Refresh status
        } else {
          if (mounted) {
            // ignore: use_build_context_synchronously
            _showErrorDialog(dialogContext, 'Failed to download model');
          }
        }
      }
    } catch (e) {
      if (mounted) {
        // ignore: use_build_context_synchronously
        Navigator.of(dialogContext).pop();
        if (mounted) {
          // ignore: use_build_context_synchronously
          _showErrorDialog(dialogContext, 'Download error: $e');
        }
      }
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AppDialog(
        title: 'Error',
        content: Text(
          message,
          style: const TextStyle(color: Colors.white70, fontSize: 13),
        ),
        actions: [
          AppDialogButton(
            text: 'OK',
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}