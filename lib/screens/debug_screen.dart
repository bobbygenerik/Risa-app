import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/performance_monitor.dart';
import 'package:iptv_player/utils/app_theme.dart';

class DebugScreen extends StatefulWidget {
  const DebugScreen({super.key});

  @override
  State<DebugScreen> createState() => _DebugScreenState();
}

class _DebugScreenState extends State<DebugScreen> {
  @override
  Widget build(BuildContext context) {
    final logs = PerformanceMonitor.getLogs();
    
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('Debug Performance'),
        backgroundColor: AppTheme.darkBackground,
        actions: [
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              PerformanceMonitor.clear();
              setState(() {});
            },
          ),
          IconButton(
            icon: const Icon(Icons.copy),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: logs.join('\n')));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Logs copied to clipboard')),
              );
            },
          ),
        ],
      ),
      body: logs.isEmpty
          ? const Center(
              child: Text(
                'No performance logs yet.\nLoad a playlist or EPG to see timing data.',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppTheme.textSecondary),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: logs.length,
              itemBuilder: (context, index) {
                final log = logs[index];
                Color textColor = AppTheme.textPrimary;
                
                if (log.contains('WARNING')) {
                  textColor = Colors.orange;
                } else if (log.contains('CRITICAL')) {
                  textColor = Colors.red;
                } else if (log.contains('START')) {
                  textColor = Colors.blue;
                } else if (log.contains('END')) {
                  textColor = Colors.green;
                }
                
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    log,
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'monospace',
                      fontSize: 12,
                    ),
                  ),
                );
              },
            ),
    );
  }
}