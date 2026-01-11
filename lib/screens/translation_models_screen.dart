import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';

class TranslationModelsScreen extends StatelessWidget {
  const TranslationModelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              colors: [AppTheme.darkBackground, Color(0xFF0d1140)],
            ),
          ),
          child: ListView(
            padding: EdgeInsets.fromLTRB(
              context.tvSpacing(24),
              context.tvSpacing(24),
              context.tvSpacing(24),
              context.tvSpacing(48),
            ),
            children: const [
              _TranslationModelsHeader(),
              SizedBox(height: 24),
              _TranslationModelsInfo(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TranslationModelsHeader extends StatelessWidget {
  const _TranslationModelsHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha((0.25 * 255).round()),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withAlpha((0.08 * 255).round())),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.4 * 255).round()),
            blurRadius: 30,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TranslationHeaderIcon(),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Translation Models',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'ML Kit downloads translation models automatically when needed.',
                      style: TextStyle(
                        color: AppTheme.textSecondary,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TranslationHeaderIcon extends StatelessWidget {
  const _TranslationHeaderIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Icon(
        Icons.translate,
        color: AppTheme.primaryBlue,
        size: 26,
      ),
    );
  }
}

class _TranslationModelsInfo extends StatelessWidget {
  const _TranslationModelsInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.highlight,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'How it works',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            'When you enable Live Translation, ML Kit detects the spoken language '
            'and downloads the required language pair to translate into English.',
            style: TextStyle(fontSize: 13, height: 1.4),
          ),
          SizedBox(height: 12),
          Text(
            '• 59 languages supported\n'
            '• Typically 20–50 MB per language\n'
            '• Auto-downloads the first time a language is detected\n'
            '• No manual download needed',
            style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
          ),
        ],
      ),
    );
  }
}
