import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('SSL Certificate Settings'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/settings'),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.xxl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Warning card
            Card(
              color: AppTheme.cardBackground,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                side: BorderSide(color: AppTheme.accentOrange.withValues(alpha: 0.3)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.security, color: AppTheme.accentOrange, size: AppSizes.iconMd),
                        const SizedBox(width: AppSizes.md),
                        Text(
                          'Security Warning',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppTheme.accentOrange,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.md),
                    Text(
                      'Many IPTV providers use self-signed or misconfigured SSL certificates. '
                      'Allowing all certificates enables compatibility but reduces security.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSizes.xl),
            
            // Settings card
            Card(
              color: AppTheme.cardBackground,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                side: BorderSide(color: AppTheme.divider),
              ),
              child: SwitchListTile(
                contentPadding: const EdgeInsets.all(AppSizes.lg),
                title: Text(
                  'Allow All SSL Certificates',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: AppSizes.sm),
                  child: Text(
                    'Enable for IPTV compatibility (recommended for most users)',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ),
                value: _allowAll,
                activeColor: AppTheme.primaryBlue,
                onChanged: (value) async {
                  await SSLHandler.setAllowAllCertificates(value);
                  setState(() => _allowAll = value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
