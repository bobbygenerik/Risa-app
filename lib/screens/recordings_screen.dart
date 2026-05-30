// ignore_for_file: todo
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:go_router/go_router.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';

part 'recordings/recordings_ui.dart';
part 'recordings/recordings_actions.dart';

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

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), _updateTime);
    _loadRecordings();
  }

  void _updateTime() {
    if (!mounted) return;
    _updateRecordingsState(() {});
    Future.delayed(const Duration(seconds: 1), _updateTime);
  }

  Future<void> _loadRecordings() async {
    _updateRecordingsState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      _storagePath = prefs.getString('recording_storage_path');

      if (_storagePath == null || _storagePath!.isEmpty) {
        _updateRecordingsState(() {
          _isLoading = false;
          _errorMessage = 'No storage location configured';
        });
        return;
      }

      final dir = Directory(_storagePath!);
      if (!await dir.exists()) {
        _updateRecordingsState(() {
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

      _updateRecordingsState(() {
        _recordings = files;
        _isLoading = false;
      });
    } catch (e) {
      _updateRecordingsState(() {
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
        unawaited(_loadRecordings()); // Reload list
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
            color: AppTheme.darkBackground,
          ),
          child: Column(
            children: [
              _buildGlassAppBar(),
              Divider(
                  height: context.tvSpacing(1),
                  color: AppTheme.darkBackgroundOpacity(0.12),
                  thickness: context.tvSpacing(2)),
              Expanded(child: _buildContent()),
            ],
          ),
        ),
      ),
    );
  }

  void _updateRecordingsState(VoidCallback fn) {
    if (!mounted) return;
    _updateRecordingsState(fn);
  }
}

