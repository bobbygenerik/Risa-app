import 'package:flutter/material.dart';

/// Media Kit video player - DISABLED
/// This screen requires media_kit package which is not currently installed.
/// To enable, add media_kit and media_kit_video to pubspec.yaml
class MediaKitPlayerScreen extends StatefulWidget {
  final String videoUrl;
  final String title;
  final String? subtitle;
  final bool isLive;

  const MediaKitPlayerScreen({
    super.key,
    required this.videoUrl,
    required this.title,
    this.subtitle,
    this.isLive = false,
  });

  @override
  State<MediaKitPlayerScreen> createState() => _MediaKitPlayerScreenState();
}

class _MediaKitPlayerScreenState extends State<MediaKitPlayerScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double scale(double value) => value * (screenWidth / 1920);
    double vScale(double value) => value * (screenHeight / 1080);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: scale(64), color: Colors.red),
            SizedBox(height: vScale(16)),
            Text(
              'MediaKit Player Disabled',
              style: TextStyle(fontSize: scale(18), fontWeight: FontWeight.bold),
            ),
            SizedBox(height: vScale(8)),
            Text(
              'Missing dependencies: media_kit',
              style: TextStyle(fontSize: scale(14), color: Colors.grey),
            ),
            SizedBox(height: vScale(16)),
            Text(
              'To enable this player, add the following to pubspec.yaml:',
              style: TextStyle(fontSize: scale(12)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: vScale(8)),
            Container(
              padding: EdgeInsets.all(scale(12)),
              color: Colors.grey[900],
              child: Text(
                'media_kit: ^x.x.x\nmedia_kit_video: ^x.x.x',
                style: TextStyle(fontFamily: 'monospace', fontSize: scale(12)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
