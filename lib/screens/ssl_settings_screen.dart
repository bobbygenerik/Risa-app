import 'package:flutter/material.dart';
import 'package:iptv_player/services/ssl_handler.dart';
import 'package:iptv_player/utils/app_theme.dart';

class SSLSettingsScreen extends StatefulWidget {
  const SSLSettingsScreen({super.key});

  @override
  State<SSLSettingsScreen> createState() => _SSLSettingsScreenState();
}

class _SSLSettingsScreenState extends State<SSLSettingsScreen> {
  bool _allowAll = true;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    await SSLHandler.init();
    setState(() {
      _allowAll = SSLHandler.allowAllCertificates;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double scale(double value) => value * (screenWidth / 1920);
    double vScale(double value) => value * (screenHeight / 1080);

    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('SSL Certificate Settings'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(scale(16)),
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(scale(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.security, color: AppTheme.accentOrange, size: scale(24)),
                      SizedBox(width: scale(12)),
                      Text(
                        'Security Warning',
                        style: TextStyle(
                          fontSize: scale(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: vScale(12)),
                  Text(
                    'Many IPTV providers use self-signed or misconfigured SSL certificates. '
                    'Allowing all certificates enables compatibility but reduces security.',
                    style: TextStyle(color: AppTheme.textSecondary, fontSize: scale(16)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: vScale(16)),
          SwitchListTile(
            title: Text('Allow All SSL Certificates', style: TextStyle(fontSize: scale(16))),
            subtitle: Text(
              'Enable for IPTV compatibility (recommended for most users)',
              style: TextStyle(fontSize: scale(14)),
            ),
            value: _allowAll,
            onChanged: (value) async {
              await SSLHandler.setAllowAllCertificates(value);
              setState(() => _allowAll = value);
            },
          ),
        ],
      ),
    );
  }
}
