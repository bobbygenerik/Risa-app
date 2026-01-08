import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_colors.dart';

/// Minimal Live TV screen to test if the original screen causes OOM crashes
class LiveTVScreen extends StatelessWidget {
  const LiveTVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.live_tv,
              size: 80,
              color: AppColors.primary,
            ),
            const SizedBox(height: 24),
            Text(
              'Live TV',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Minimal version for memory testing',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Force garbage collection
                final tmp = List<int>.generate(1000, (i) => i);
                tmp.clear();
              },
              child: const Text('Force GC'),
            ),
          ],
        ),
      ),
    );
  }
}