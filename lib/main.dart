import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/voice_search_service.dart';
import 'package:iptv_player/widgets/app_shell.dart';
import 'package:iptv_player/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChannelProvider()),
        ChangeNotifierProvider(create: (_) => VoiceSearchService()..initialize()),
      ],
      child: MaterialApp(
        title: 'Stream Hub',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        home: const AppShell(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
