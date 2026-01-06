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
    // Ensure the Exit button immediately receives focus when this screen appears
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _exitButtonFocus.requestFocus();
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
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          context.go('/home');
        }
      },
      child: Scaffold(
        backgroundColor: AppTheme.darkBackground,
        body: Container(
          decoration: const BoxDecoration(
            color: AppTheme.darkBackground,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                // Exit message
                Text(
                  _selectedMessage,
                  style: const TextStyle(
                    color: AppTheme.textPrimary,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 160,
                      child: BrandPrimaryButton(
                        focusNode: _backButtonFocus,
                        onPressed: () => context.go('/home'),
                        label: 'Go Back',
                        minHeight: 46,
                        expand: true,
                      ),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 160,
                      child: BrandPrimaryButton(
                        focusNode: _exitButtonFocus,
                        onPressed: () => SystemNavigator.pop(),
                        label: 'Exit App',
                        minHeight: 46,
                        expand: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
