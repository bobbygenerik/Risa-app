import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:path/path.dart' as path;
import 'package:shared_preferences/shared_preferences.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({super.key});

  @override
  State<DownloadsScreen> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  String? _storagePath;
  List<FileSystemEntity> _files = [];
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loadFiles();
  }

  Future<void> _loadFiles() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      _storagePath = prefs.getString('recording_storage_path');

      if (_storagePath == null || _storagePath!.isEmpty) {
        setState(() {
          _isLoading = false;
          _errorMessage = 'No storage location configured. Set one in Settings.';
        });
        return;
      }

      final dir = Directory(_storagePath!);
      if (!await dir.exists()) {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Storage location does not exist';
        });
        return;
      }

      final files = await dir
          .list()
          .where((entity) => entity is File)
          .where((file) {
        final ext = path.extension(file.path).toLowerCase();
        return ['.mp4', '.mkv', '.ts', '.m2ts', '.avi', '.mov', '.flv', '.webm']
            .contains(ext);
      }).toList();

      files.sort((a, b) {
        final aStat = a.statSync();
        final bStat = b.statSync();
        return bStat.modified.compareTo(aStat.modified);
      });

      setState(() {
        _files = files;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Error loading files: $e';
      });
    }
  }

  Future<void> _deleteFile(FileSystemEntity file) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.dialogBackground,
        title: const Text('Delete File?'),
        content: Text(
          'Are you sure you want to delete "${path.basename(file.path)}"?\n\nThis action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            autofocus: true,
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.accentRed,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        await file.delete();
        unawaited(_loadFiles());
        if (mounted) {
          showAppSnackBar(
            context,
            const SnackBar(
              content: Text('File deleted'),
              backgroundColor: AppTheme.accentGreen,
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          showAppSnackBar(
            context,
            SnackBar(
              content: Text('Failed to delete: $e'),
              backgroundColor: AppTheme.accentRed,
            ),
          );
        }
      }
    }
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB';
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      // ignore: deprecated_member_use
      onPopInvoked: (didPop) {
        if (didPop) return;
        context.go('/home');
      },
      child: Scaffold(
        backgroundColor: AppTheme.darkBackground,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: AppSpacing.sidebarCollapsedWidth + AppSizes.md,
              right: AppSizes.lg,
              top: AppSizes.md,
              bottom: AppSizes.lg,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.md, vertical: AppSizes.sm),
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      const Icon(Icons.download_rounded,
                          color: AppTheme.primaryBlue, size: 24),
                      const SizedBox(width: AppSizes.sm),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Downloads & Recordings',
                            style: TextStyle(
                              color: AppTheme.textPrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${_files.length} items',
                            style: const TextStyle(
                              color: AppTheme.textSecondary,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Expanded(
                  child: _isLoading
                      ? const Center(
                          child:
                              CircularProgressIndicator(color: AppTheme.primaryBlue),
                        )
                      : _errorMessage != null
                          ? Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.error_outline,
                                      size: 80,
                                      color: AppTheme.textSecondary
                                          .withAlpha((0.3 * 255).round()),
                                    ),
                                    const SizedBox(height: 24),
                                    Text(
                                      _errorMessage!,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: AppTheme.textSecondary,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : _files.isEmpty
                              ? Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.download_rounded,
                                        size: 80,
                                        color: AppTheme.textSecondary
                                            .withAlpha((0.3 * 255).round()),
                                      ),
                                      const SizedBox(height: 24),
                                      const Text(
                                        'No Downloads Yet',
                                        style: TextStyle(
                                          color: AppTheme.textPrimary,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Recorded programs will appear here',
                                        style: TextStyle(
                                          color: AppTheme.textSecondary,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : FocusTraversalGroup(
                                  policy: WidgetOrderTraversalPolicy(),
                                  child: ListView.builder(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: AppSizes.sm),
                                    itemCount: _files.length,
                                    itemBuilder: (context, index) {
                                      final file = _files[index];
                                      final fileName =
                                          path.basename(file.path);
                                      final fileStat = file.statSync();
                                      final fileSize =
                                          _formatFileSize(fileStat.size);
                                      final modDate =
                                          '${fileStat.modified.month}/${fileStat.modified.day}/${fileStat.modified.year} ${fileStat.modified.hour.toString().padLeft(2, '0')}:${fileStat.modified.minute.toString().padLeft(2, '0')}';

                                      return _buildFocusableDownloadTile(
                                        file: file,
                                        fileName: fileName,
                                        subtitle: '$fileSize • $modDate',
                                      );
                                    },
                                  ),
                                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFocusableDownloadTile({
    required FileSystemEntity file,
    required String fileName,
    required String subtitle,
  }) {
    return FocusableActionDetector(
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            GoRouter.of(context).push('/offline-player', extra: file);
            return null;
          },
        ),
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: AppTheme.cardBackground,
              borderRadius: BorderRadius.circular(AppSizes.radiusMd),
              border: isFocused
                  ? Border.all(color: AppTheme.primaryBlue, width: 2)
                  : null,
            ),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              leading: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
                  borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                ),
                child: const Icon(Icons.play_arrow, color: Colors.white),
              ),
              title: Text(
                fileName,
                style: const TextStyle(
                  color: AppTheme.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                subtitle,
                style: const TextStyle(
                  color: AppTheme.textSecondary,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildTrailingIconButton(
                    icon: Icons.play_arrow,
                    label: 'Play',
                    color: AppTheme.primaryBlue,
                    onPressed: () {
                      GoRouter.of(context)
                          .push('/offline-player', extra: file);
                    },
                  ),
                  const SizedBox(width: 8),
                  _buildTrailingIconButton(
                    icon: Icons.delete_outline,
                    label: 'Delete',
                    color: AppTheme.accentRed,
                    onPressed: () => _deleteFile(file),
                  ),
                ],
              ),
              onTap: () {
                GoRouter.of(context).push('/offline-player', extra: file);
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildTrailingIconButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return FocusableActionDetector(
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            onPressed();
            return null;
          },
        ),
      },
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOutCubic,
            decoration: BoxDecoration(
              color: isFocused ? color.withAlpha((0.2 * 255).round()) : null,
              borderRadius: BorderRadius.circular(AppSizes.radiusSm),
              border: isFocused
                  ? Border.all(color: color, width: 2)
                  : null,
            ),
            child: IconButton(
              tooltip: label,
              onPressed: onPressed,
              icon: Icon(icon, color: color),
            ),
          );
        },
      ),
    );
  }
}
