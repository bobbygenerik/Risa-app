import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:iptv_player/widgets/whisper_model_manager.dart';

class WhisperModelsScreen extends StatelessWidget {
  const WhisperModelsScreen({super.key});

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
              _WhisperModelsHeader(),
              SizedBox(height: 24),
              WhisperModelManager(),
            ],
          ),
        ),
      ),
    );
  }
}

class _WhisperModelsHeader extends StatelessWidget {
  const _WhisperModelsHeader();

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
              _WhisperHeaderIcon(),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Whisper Models',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Download speech-to-text models for live captions.',
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

class _WhisperHeaderIcon extends StatelessWidget {
  const _WhisperHeaderIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue.withAlpha((0.2 * 255).round()),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Icon(
        Icons.mic,
        color: AppTheme.primaryBlue,
        size: 26,
      ),
    );
  }
}
