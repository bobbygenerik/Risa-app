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
    return Scaffold(
      appBar: AppBar(title: const Text('SSL Certificate Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.security, color: AppTheme.accentOrange),
                      SizedBox(width: 12),
                      Text(
                        'Security Warning',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Many IPTV providers use self-signed or misconfigured SSL certificates. '
                    'Allowing all certificates enables compatibility but reduces security.',
                    style: TextStyle(color: AppTheme.textSecondary),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          SwitchListTile(
            title: const Text('Allow All SSL Certificates'),
            subtitle: const Text(
              'Enable for IPTV compatibility (recommended for most users)',
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
