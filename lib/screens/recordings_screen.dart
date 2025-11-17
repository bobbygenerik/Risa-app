// ignore_for_file: todo
import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:go_router/go_router.dart';

class RecordingsScreen extends StatefulWidget {
  const RecordingsScreen({super.key});

  @override
  State<RecordingsScreen> createState() => _RecordingsScreenState();
}

class _RecordingsScreenState extends State<RecordingsScreen> {
  String? _storagePath;
  List<FileSystemEntity> _recordings = [];
  bool _isLoading = true;
  String? _errorMessage;
  late DateTime _currentTime;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    Future.delayed(Duration(seconds: 1), _updateTime);
    _loadRecordings();
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {
      _currentTime = DateTime.now();
    });
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  Future<void> _loadRecordings() async {
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
          _errorMessage = 'No storage location configured';
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
        _recordings = files;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Error loading recordings: $e';
      });
    }
  }

  Future<void> _deleteRecording(FileSystemEntity file) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Delete Recording?'),
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
        _loadRecordings(); // Reload list
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Recording deleted'),
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
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB';
  }

  // ignore: unused_element
  String _formatDuration(int seconds) {
    final hours = seconds ~/ 3600;
    final minutes = (seconds % 3600) ~/ 60;
    final secs = seconds % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else if (minutes > 0) {
      return '${minutes}m ${secs}s';
    } else {
      return '${secs}s';
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.go('/home');
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
          ),
          child: Column(
          children: [
            _buildGlassAppBar(),
            Divider(height: 1, color: AppTheme.accentPink, thickness: 2),
            Expanded(child: _buildContent()),
          ],
        ),
      ),
    ),
    );
  }

  Widget _buildGlassAppBar() {
    return Container(
      height: AppSizes.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.lg, vertical: AppSizes.md),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        border: Border(
          bottom: BorderSide(color: AppTheme.accentPink, width: 2),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.fiber_manual_record, color: AppTheme.accentRed, size: 24),
          SizedBox(width: AppSizes.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Recordings',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (_storagePath != null)
                Text(
                  path.basename(_storagePath!),
                  style: TextStyle(
                    fontSize: 11,
                    color: AppTheme.textSecondary,
                  ),
                ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.refresh, color: AppTheme.primaryBlue),
            onPressed: _loadRecordings,
          ),
          SizedBox(width: AppSizes.sm),
          Text(
            _formatTime(_currentTime),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    if (_isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Loading recordings...'),
          ],
        ),
      );
    }

    if (_errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _storagePath == null
                  ? Icons.settings_outlined
                  : Icons.folder_off_outlined,
              size: 80,
              color: AppTheme.textSecondary,
            ),
            const SizedBox(height: 16),
            Text(
              _errorMessage!,
              style: const TextStyle(
                fontSize: 16,
                color: AppTheme.textSecondary,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                context.go('/settings');
              },
              icon: const Icon(Icons.settings),
              label: const Text('Go to Settings'),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                'Configure your recording storage location in Settings > EPG & Recordings',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: AppTheme.textTertiary),
              ),
            ),
          ],
        ),
      );
    }

    if (_recordings.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.movie_outlined,
              size: 80,
              color: AppTheme.textSecondary,
            ),
            const SizedBox(height: 16),
            const Text(
              'No recordings found',
              style: TextStyle(fontSize: 16, color: AppTheme.textSecondary),
            ),
            const SizedBox(height: 8),
            Text(
              'Recordings will appear here once you record from the EPG',
              style: TextStyle(fontSize: 12, color: AppTheme.textTertiary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _recordings.length,
      itemBuilder: (context, index) {
        final file = _recordings[index];
        final fileName = path.basename(file.path);
        final stat = file.statSync();
        final fileSize = _formatFileSize(stat.size);
        final modifiedDate = stat.modified;

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: AppTheme.sidebarBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.movie,
                color: AppTheme.primaryBlue,
                size: 32,
              ),
            ),
            title: Text(
              fileName,
              style: const TextStyle(fontWeight: FontWeight.w600),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.storage,
                      size: 14,
                      color: AppTheme.textTertiary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      fileSize,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppTheme.textSecondary,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Icon(
                      Icons.access_time,
                      size: 14,
                      color: AppTheme.textTertiary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${modifiedDate.day}/${modifiedDate.month}/${modifiedDate.year} ${modifiedDate.hour}:${modifiedDate.minute.toString().padLeft(2, '0')}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.play_arrow,
                    color: AppTheme.primaryBlue,
                  ),
                  onPressed: () {
                    // TODO: Play recording
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Playing recording...')),
                    );
                  },
                  tooltip: 'Play',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.delete_outline,
                    color: AppTheme.accentRed,
                  ),
                  onPressed: () => _deleteRecording(file),
                  tooltip: 'Delete',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
