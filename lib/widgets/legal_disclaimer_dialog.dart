import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';

class LegalDisclaimerDialog extends StatefulWidget {
  const LegalDisclaimerDialog({super.key});

  @override
  State<LegalDisclaimerDialog> createState() => _LegalDisclaimerDialogState();
}

class _LegalDisclaimerDialogState extends State<LegalDisclaimerDialog> {
  bool _accepted = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppTheme.cardBackground,
      child: Container(
        width: 600,
        padding: const EdgeInsets.all(AppSizes.xxl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.gavel,
              size: 64,
              color: AppTheme.accentRed,
            ),
            const SizedBox(height: AppSizes.lg),
            Text(
              'Legal Disclaimer',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.accentRed,
              ),
            ),
            const SizedBox(height: AppSizes.lg),
            Container(
              height: 300,
              padding: const EdgeInsets.all(AppSizes.md),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              ),
                borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                border: Border.all(color: AppTheme.divider),
              ),
              child: SingleChildScrollView(
                child: Text(
                  '''IMPORTANT LEGAL NOTICE

This application (Stream Hub) is a media player designed to play content from legitimate sources. Users are solely responsible for the content they access through this application.

⚠️ PROHIBITED USES:

• Do NOT use this application to access copyrighted content without proper authorization
• Do NOT use this application to stream or download pirated movies, TV shows, or live broadcasts
• Do NOT share or distribute illegal IPTV playlists or subscription services
• Do NOT use this application for any purpose that violates local, state, national, or international laws

✓ PERMITTED USES:

• Personal media libraries and home videos
• Legally obtained IPTV services with valid subscriptions
• Free-to-air broadcasts and public domain content
• Content you own or have explicit permission to access

📜 YOUR RESPONSIBILITIES:

By using this application, you acknowledge that:

1. You are responsible for ensuring all content you access is legal in your jurisdiction
2. You will only use legitimate, authorized sources for streaming content
3. You understand that piracy is illegal and can result in civil and criminal penalties
4. The developers of this application are not responsible for your use of the software
5. You will not use this application for any illegal purposes

🚨 COPYRIGHT INFRINGEMENT:

Copyright infringement is a serious crime. Penalties may include:
• Heavy fines (up to \$150,000 per work in the US)
• Criminal prosecution
• Imprisonment
• Civil lawsuits from copyright holders

The developers of Stream Hub do not condone, support, or facilitate piracy in any form. This application is provided "as-is" for legitimate use only.

If you do not agree with these terms or intend to use this application for illegal purposes, DO NOT proceed.

By accepting this disclaimer, you confirm that you understand and will comply with all applicable laws.''',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    height: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSizes.lg),
            CheckboxListTile(
              value: _accepted,
              onChanged: (value) {
                setState(() {
                  _accepted = value ?? false;
                });
              },
              title: Text(
                'I have read and understand this disclaimer. I will only use this application for legal purposes.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: AppTheme.primaryBlue,
            ),
            const SizedBox(height: AppSizes.lg),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Exit app
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('Decline & Exit'),
                ),
                const SizedBox(width: AppSizes.md),
                ElevatedButton(
                  onPressed: _accepted
                      ? () {
                          Navigator.of(context).pop(true);
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryBlue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.xl,
                      vertical: AppSizes.md,
                    ),
                  ),
                  child: const Text('Accept & Continue'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
