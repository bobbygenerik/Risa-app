import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/top_navigation_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

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
  late String _currentTime;
  late Timer _timeTimer;

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timeTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() => _updateTime());
      }
    });
    _loadFiles();
  }

  @override
  void dispose() {
    _timeTimer.cancel();
    super.dispose();
  }

  void _updateTime() {
    final now = DateTime.now();
    final hour = now.hour == 0 ? 12 : (now.hour > 12 ? now.hour - 12 : now.hour);
    final period = now.hour < 12 ? 'AM' : 'PM';
    _currentTime = '${hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $period';
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

      // Get all video files
      final files = await dir.list().where((entity) => entity is File).where((
        file,
      ) {
        final ext = path.extension(file.path).toLowerCase();
        return [
          '.mp4',
          '.mkv',
          '.ts',
          '.m2ts',
          '.avi',
          '.mov',
          '.flv',
          '.webm',
        ].contains(ext);
      }).toList();

      // Sort by modified date (newest first)
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
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Delete File?'),
        content: Text(
          'Are you sure you want to delete "${path.basename(file.path)}"?\n\nThis action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
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
        _loadFiles(); // Reload list
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('File deleted'),
              backgroundColor: AppTheme.accentGreen,
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
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
    if (bytes < 1024 * 1024 * 1024) return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB';
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          context.go('/home');
        }
      },
      child: Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: Stack(
        children: [
          // Main content
          SingleChildScrollView(
            child: Column(
              children: [
                // Top padding for floating nav
                const SizedBox(height: 100),
                // Page title
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    children: [
                      const Icon(Icons.download_rounded, color: AppTheme.primaryBlue, size: 28),
                      const SizedBox(width: 12),
                      const Text(
                        'Downloads & Recordings',
                        style: TextStyle(
                          color: AppTheme.textPrimary,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      if (_files.isNotEmpty)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                              color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            '${_files.length} files',
                            style: const TextStyle(
                              color: AppTheme.primaryBlue,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                // Content
                _isLoading
                    ? const SizedBox(
                        height: 400,
                        child: Center(
                          child: CircularProgressIndicator(color: AppTheme.primaryBlue),
                        ),
                      )
                    : _errorMessage != null
                        ? SizedBox(
                            height: 400,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.error_outline,
                                    size: 80,
                                    color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
                                  ),
                                  const SizedBox(height: 24),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 32),
                                    child: Text(
                                      _errorMessage!,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: AppTheme.textSecondary,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 32),
                                  ElevatedButton.icon(
                                    icon: const Icon(Icons.settings),
                                    label: const Text('Go to Settings'),
                                    onPressed: () => context.go('/settings'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppTheme.primaryBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : _files.isEmpty
                            ? SizedBox(
                                height: 400,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.download_rounded,
                                        size: 80,
                                        color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
                                      ),
                                      const SizedBox(height: 24),
                                      const Text(
                                        'No Downloads Yet',
                                        style: TextStyle(
                                          color: AppTheme.textPrimary,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      const Text(
                                        'Recorded programs will appear here',
                                        style: TextStyle(
                                          color: AppTheme.textSecondary,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: Column(
                                  children: _files.map((file) {
                                    final fileName = path.basename(file.path);
                                    final fileStat = file.statSync();
                                    final fileSize = _formatFileSize(fileStat.size);
                                    final modDate = '${fileStat.modified.month}/${fileStat.modified.day}/${fileStat.modified.year}';

                                    return Container(
                                      margin: const EdgeInsets.only(bottom: 16),
                                      decoration: BoxDecoration(
                                        color: AppTheme.cardBackground,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: Colors.white.withAlpha((0.1 * 255).round()),
                                          width: 1,
                                        ),
                                      ),
                                      child: ListTile(
                                        contentPadding: const EdgeInsets.all(16),
                                        leading: Container(
                                          padding: const EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                            color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Icon(
                                            Icons.video_file,
                                            color: AppTheme.primaryBlue,
                                            size: 24,
                                          ),
                                        ),
                                        title: Text(
                                          fileName,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: AppTheme.textPrimary,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                        subtitle: Padding(
                                          padding: const EdgeInsets.only(top: 4),
                                          child: Text(
                                            '$fileSize • $modDate',
                                            style: const TextStyle(
                                              color: AppTheme.textSecondary,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        trailing: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            IconButton(
                                              icon: const Icon(Icons.play_arrow, color: AppTheme.primaryBlue),
                                              onPressed: () {
                                                context.push('/player', extra: {'url': file.path});
                                              },
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.delete, color: AppTheme.accentRed),
                                              onPressed: () => _deleteFile(file),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          // Floating Navigation Bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: TopNavigationBar(
              activeTab: 'downloads',
              tabs: [
                NavTab(id: 'home', label: 'LIVE TV', icon: Icons.live_tv, route: '/home'),
                NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
                NavTab(id: 'series', label: 'Series', icon: Icons.tv, route: '/series'),
              ],
              currentTime: _currentTime,
              showLogoAndTime: true,
              onSearchSubmit: (query) {
                context.go('/search?q=$query');
              },
            ),
          ),
        ],
      ),
    ),
    );
  }
}
