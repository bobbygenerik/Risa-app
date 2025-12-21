import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/brand_button.dart';

class ExitScreen extends StatefulWidget {
  const ExitScreen({super.key});

  @override
  State<ExitScreen> createState() => _ExitScreenState();
}

class _ExitScreenState extends State<ExitScreen> {
  final FocusNode _backButtonFocus = FocusNode();
  final FocusNode _exitButtonFocus = FocusNode();

  final List<String> _exitMessages = [
    "Peace out, cubscout...",
    "Bye Felicia!",
    "Hasta Luego!",
    "Até logo!",
    "You'll be back...",
    "Thanks for using Risa IPTV Player!",
    "See you next time!",
    "Hope you enjoyed your viewing experience.",
    "Until next time, happy streaming!",
    "Goodbye! May your streams be buffer-free.",
    "We'll miss you or not...",
    "Live long and prosper!",
    "Stay safe and stream on!",
    "Farewell, and may your streams be smooth!",
    "Catch you on the flip side!",
    "Bon voyage, fellow streamer!",
    "Exit stage left!",
    "So long, and thanks for all the fish!",
    "Adios, amigo!",
    "Ciao for now!",
    "Toodle-oo!",
    "Sayonara!",
    "Auf Wiedersehen!",
    "Au revoir!",
    "Arrivederci!",
    "Goodbye, and happy watching!",
    "May the streams be ever in your favor!",
    "See you later, alligator!",
    "Catch you on the other side!",
    "Stay classy, streamer!",
    "Until we meet again!",
    "Take care, and keep streaming!",
    "Goodnight, and sweet streams!",
    "Later, skater!",
    "Fare thee well!",
    "Peace, love, and streaming!",
    "Keep calm and stream on!",
    "May your streams be glitch-free!",
    "See you in the next stream!",
    "I'll be here when you get back!",
    "It's not goodbye, just see you later!",
    "Happy streaming, my friend!",
    "May your buffer be low and your quality high!",
    "Go forth and stream!",
    "http status code 200: OK to exit!",
    "If you stream it, they will come!",
    "Just keep streaming, just keep streaming!",
    "Live, laugh, stream!",
    "No more buffering, I promise!",
    "Stream safe!",
    "Stream on, and stay safe!",
    "And... cut!",
    "Exit like a pro!",
    "Signing off, streamer!",
    "Logging out of the streaming world!",
    "Shutting down the stream machine!",
    "Powering down the streaming device!",
    "Closing the streaming curtains!",
    "Keeping it real, one exit at a time!",
    "Yeet!",
  ];

  late String _selectedMessage;

  @override
  void initState() {
    super.initState();
    _selectedMessage = _exitMessages[Random().nextInt(_exitMessages.length)];

    // Auto-focus back button
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _backButtonFocus.requestFocus();
    });
  }

  @override
  void dispose() {
    _backButtonFocus.dispose();
    _exitButtonFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: Container(
        decoration: const BoxDecoration(
          color: AppTheme.darkBackground,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App logo or icon
              Image.asset(
                'assets/images/croppedlogo2.png',
                height: 80,
              ),
              const SizedBox(height: 32),

              // Exit message
              Text(
                _selectedMessage,
                style: const TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Focus(
                    focusNode: _backButtonFocus,
                    onKeyEvent: (node, event) {
                      if (event is KeyDownEvent) {
                        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                          _exitButtonFocus.requestFocus();
                          return KeyEventResult.handled;
                        }
                        if (event.logicalKey == LogicalKeyboardKey.select ||
                            event.logicalKey == LogicalKeyboardKey.enter) {
                          context.go('/home');
                          return KeyEventResult.handled;
                        }
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 120),
                          curve: Curves.easeOut,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: isFocused
                                ? Border.all(
                                    color: AppTheme.primaryBlue, width: 2)
                                : null,
                            boxShadow: isFocused
                                ? [
                                    BoxShadow(
                                      color: AppTheme.primaryBlue
                                          .withValues(alpha: 0.4),
                                      blurRadius: 12,
                                      offset: const Offset(0, 2),
                                    ),
                                  ]
                                : null,
                          ),
                          child: BrandSecondaryButton(
                            onPressed: () => context.go('/home'),
                            label: 'Go Back',
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 24),
                  Focus(
                    focusNode: _exitButtonFocus,
                    onKeyEvent: (node, event) {
                      if (event is KeyDownEvent) {
                        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                          _backButtonFocus.requestFocus();
                          return KeyEventResult.handled;
                        }
                        if (event.logicalKey == LogicalKeyboardKey.select ||
                            event.logicalKey == LogicalKeyboardKey.enter) {
                          SystemNavigator.pop();
                          return KeyEventResult.handled;
                        }
                      }
                      return KeyEventResult.ignored;
                    },
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 120),
                          curve: Curves.easeOut,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: isFocused
                                ? Border.all(
                                    color: AppTheme.primaryBlue, width: 2)
                                : null,
                            boxShadow: isFocused
                                ? [
                                    BoxShadow(
                                      color: AppTheme.primaryBlue
                                          .withValues(alpha: 0.4),
                                      blurRadius: 12,
                                      offset: const Offset(0, 2),
                                    ),
                                  ]
                                : null,
                          ),
                          child: BrandPrimaryButton(
                            onPressed: () => SystemNavigator.pop(),
                            label: 'Exit App',
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
