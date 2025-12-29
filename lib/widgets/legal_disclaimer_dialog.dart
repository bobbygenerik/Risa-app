import 'package:iptv_player/utils/debug_helper.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/brand_button.dart';

class LegalDisclaimerDialog extends StatefulWidget {
  const LegalDisclaimerDialog({super.key});

  @override
  State<LegalDisclaimerDialog> createState() => _LegalDisclaimerDialogState();
}

class _LegalDisclaimerDialogState extends State<LegalDisclaimerDialog> {
  bool _accepted = false;
  final FocusNode _exitFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 520,
        padding: const EdgeInsets.all(AppSizes.xl),
        decoration: BoxDecoration(
          color: AppTheme.darkBackground,
          borderRadius: BorderRadius.circular(AppSizes.radiusXl),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.12),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.35),
              blurRadius: 40,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(AppSizes.lg),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  colors: [
                    AppTheme.primaryBlue,
                    AppTheme.accentPink,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.primaryBlue.withValues(alpha: 0.4),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: const Icon(
                Icons.info_outline,
                size: 42,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: AppSizes.xl),
            Text(
              'Important Notice',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.lg),
            Container(
              height: 280,
              padding: const EdgeInsets.all(AppSizes.md),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(AppSizes.radiusMd),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.1),
                  width: 1,
                ),
              ),
              child: SingleChildScrollView(
                child: Text(
                  '''This media player is designed for legal content only.

❌ PROHIBITED:
• Pirated or copyrighted content without authorization
• Illegal IPTV services or streams
• Content that violates local laws

✅ PERMITTED:
• Personal media libraries
• Legal IPTV subscriptions
• Public domain content
• Content you own or have rights to access

YOU ARE RESPONSIBLE for ensuring all content accessed through this app is legal in your jurisdiction.

Copyright infringement can result in heavy fines, prosecution, and imprisonment.

The developers do not provide, host, or endorse any content. We are not responsible for how you use this software.

By continuing, you confirm you will only use this app for legal purposes and comply with all applicable laws.''',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        height: 1.5,
                      ),
                ),
              ),
            ),
            SizedBox(height: context.tvSpacing(AppSizes.lg)),
            Row(
              children: [
                Checkbox(
                  value: _accepted,
                  onChanged: (value) {
                    setState(() {
                      _accepted = value ?? false;
                    });
                  },
                  activeColor: AppTheme.primaryBlue,
                ),
                const SizedBox(width: AppSizes.sm),
                Expanded(
                  child: Text(
                    'I understand and will only use this app for legal content',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.xl),
            Row(
              children: [
                Expanded(
                  child: BrandSecondaryButton(
                    focusNode: _exitFocusNode,
                    onPressed: () => Navigator.of(context).pop(false),
                    label: 'Exit App',
                    expand: true,
                  ),
                ),
                const SizedBox(width: AppSizes.md),
                Expanded(
                  child: _accepted
                      ? BrandPrimaryButton(
                          onPressed: () {
                            debugLog('Continue button pressed');
                            Navigator.of(context).pop(true);
                          },
                          label: 'Continue',
                          expand: true,
                        )
                      : Opacity(
                          opacity: 0.5,
                          child: BrandPrimaryButton(
                            onPressed: () {}, // Disabled
                            label: 'Continue',
                            expand: true,
                          ),
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_exitFocusNode.canRequestFocus) {
        _exitFocusNode.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    _exitFocusNode.dispose();
    super.dispose();
  }
}
