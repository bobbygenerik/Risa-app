// ignore_for_file: todo
import 'package:flutter/material.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:go_router/go_router.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';

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
    Future.delayed(const Duration(seconds: 1), _updateTime);
    _loadRecordings();
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {
      _currentTime = DateTime.now();
    });
    Future.delayed(const Duration(seconds: 1), _updateTime);
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
        backgroundColor: AppTheme.dialogBackground,
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
          showAppSnackBar(
            context,
            const SnackBar(
              content: Text('Recording deleted'),
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
    // final screenWidth = MediaQuery.of(context).size.width;

    return CompatPopScope(
      onWillPop: () async {
        context.go('/home');
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
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
            Divider(height: context.tvSpacing(1), color: AppTheme.darkBackgroundOpacity(0.12), thickness: context.tvSpacing(2)),
            Expanded(child: _buildContent()),
          ],
        ),
      ),
    ),
    );
  }

  Widget _buildGlassAppBar() {
    return Container(
      height: context.tvSpacing(64), // AppSizes.appBarHeight assumed 64
      padding: EdgeInsets.symmetric(horizontal: context.tvSpacing(32), vertical: context.tvSpacing(20)), // AppSizes.lg=32, md=20
      decoration: BoxDecoration(
        color: Colors.white.withAlpha((0.08 * 255).round()),
        border: Border(
          bottom: BorderSide(color: AppTheme.darkBackgroundOpacity(0.12), width: 2),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.fiber_manual_record, color: AppTheme.accentRed, size: context.tvIconSize(24)),
          SizedBox(width: context.tvSpacing(20)), // AppSizes.md assumed 20
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
                    fontSize: context.tvTextSize(11),
                    color: AppTheme.textSecondary,
                  ),
                ),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: Icon(Icons.refresh, color: AppTheme.primaryBlue, size: context.tvIconSize(24)),
            onPressed: _loadRecordings,
          ),
          SizedBox(width: context.tvSpacing(8)), // AppSizes.sm assumed 8
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
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: context.tvSpacing(16)),
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
              size: context.tvIconSize(80),
              color: AppTheme.textSecondary,
            ),
            SizedBox(height: context.tvSpacing(16)),
            Text(
              _errorMessage!,
              style: TextStyle(
                fontSize: context.tvTextSize(16),
                color: AppTheme.textSecondary,
              ),
            ),
            SizedBox(height: context.tvSpacing(24)),
            Focus(
              child: Builder(
                builder: (context) {
                  final hasFocus = Focus.of(context).hasFocus;
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(context.tvSpacing(8)),
                      border: hasFocus
                          ? Border.all(color: AppTheme.primaryBlue, width: context.tvSpacing(3))
                          : null,
                      boxShadow: hasFocus
                          ? [
                              BoxShadow(
                                color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
                                blurRadius: context.tvSpacing(12),
                                spreadRadius: context.tvSpacing(2),
                              ),
                            ]
                          : null,
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        context.go('/settings');
                      },
                      icon: Icon(Icons.settings, size: context.tvIconSize(24)),
                      label: Text('Go to Settings', style: TextStyle(fontSize: context.tvTextSize(16))),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryBlue,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: context.tvSpacing(16)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.tvSpacing(48)),
              child: Text(
                'Configure your recording storage location in Settings > EPG & Recordings',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: context.tvTextSize(12), color: AppTheme.textTertiary),
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
            Icon(
              Icons.movie_outlined,
              size: context.tvIconSize(80),
              color: AppTheme.textSecondary,
            ),
            SizedBox(height: context.tvSpacing(16)),
            Text(
              'No recordings found',
              style: TextStyle(fontSize: context.tvTextSize(16), color: AppTheme.textSecondary),
            ),
            SizedBox(height: context.tvSpacing(8)),
            Text(
              'Recordings will appear here once you record from the EPG',
              style: TextStyle(fontSize: context.tvTextSize(12), color: AppTheme.textTertiary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(context.tvSpacing(16)),
      itemCount: _recordings.length,
      itemBuilder: (context, index) {
        final file = _recordings[index];
        final fileName = path.basename(file.path);
        final stat = file.statSync();
        final fileSize = _formatFileSize(stat.size);
        final modifiedDate = stat.modified;

        return Card(
          margin: EdgeInsets.only(bottom: context.tvSpacing(12)),
          child: ListTile(
            contentPadding: EdgeInsets.all(context.tvSpacing(16)),
            leading: Container(
              width: context.tvSpacing(80),
              height: context.tvSpacing(60),
              decoration: BoxDecoration(
                color: AppTheme.sidebarBackground,
                borderRadius: BorderRadius.circular(context.tvSpacing(8)),
              ),
              child: Icon(
                Icons.movie,
                color: AppTheme.primaryBlue,
                size: context.tvIconSize(32),
              ),
            ),
            title: Text(
              fileName,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: context.tvTextSize(16)),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.tvSpacing(8)),
                Row(
                  children: [
                    Icon(
                      Icons.storage,
                      size: context.tvIconSize(14),
                      color: AppTheme.textTertiary,
                    ),
                    SizedBox(width: context.tvSpacing(4)),
                    Text(
                      fileSize,
                      style: TextStyle(
                        fontSize: context.tvTextSize(12),
                        color: AppTheme.textSecondary,
                      ),
                    ),
                    SizedBox(width: context.tvSpacing(16)),
                    Icon(
                      Icons.access_time,
                      size: context.tvIconSize(14),
                      color: AppTheme.textTertiary,
                    ),
                    SizedBox(width: context.tvSpacing(4)),
                    Text(
                      '${modifiedDate.day}/${modifiedDate.month}/${modifiedDate.year} ${modifiedDate.hour}:${modifiedDate.minute.toString().padLeft(2, '0')}',
                      style: TextStyle(
                        fontSize: context.tvTextSize(12),
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
                  icon: Icon(
                    Icons.play_arrow,
                    color: AppTheme.primaryBlue,
                    size: context.tvIconSize(24),
                  ),
                  onPressed: () {
                    // TODO: Play recording
                    showAppSnackBar(
                      context,
                      SnackBar(content: Text('Playing recording...')),
                    );
                  },
                  tooltip: 'Play',
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete_outline,
                    color: AppTheme.accentRed,
                    size: context.tvIconSize(24),
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
