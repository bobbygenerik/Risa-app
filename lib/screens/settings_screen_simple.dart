import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Lightweight Settings Screen that actually works in release builds
class SettingsScreenSimple extends StatefulWidget {
  const SettingsScreenSimple({super.key});

  @override
  State<SettingsScreenSimple> createState() => _SettingsScreenSimpleState();
}

class _SettingsScreenSimpleState extends State<SettingsScreenSimple> {
  final _m3uUrlController = TextEditingController();
  bool _hardwareAcceleration = true;
  bool _autoPlayNext = true;
  
  @override
  void initState() {
    super.initState();
    _loadSettings();
  }
  
  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    if (mounted) {
      setState(() {
        _m3uUrlController.text = prefs.getString('m3u_url') ?? '';
        _hardwareAcceleration = prefs.getBool('hardware_acceleration') ?? true;
        _autoPlayNext = prefs.getBool('auto_play_next') ?? true;
      });
    }
  }
  
  Future<void> _saveM3uUrl() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('m3u_url', _m3uUrlController.text);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('M3U URL saved')),
      );
    }
  }
  
  Future<void> _saveBool(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }
  
  @override
  void dispose() {
    _m3uUrlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050710),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0d1140),
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/home'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Playlist',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _m3uUrlController,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'M3U URL',
              labelStyle: const TextStyle(color: Colors.white70),
              hintText: 'http://example.com/playlist.m3u',
              hintStyle: const TextStyle(color: Colors.white30),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: _saveM3uUrl,
            child: const Text('Save M3U URL'),
          ),
          const SizedBox(height: 32),
          const Text(
            'Playback',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 16),
          SwitchListTile(
            title: const Text('Hardware Acceleration', style: TextStyle(color: Colors.white)),
            value: _hardwareAcceleration,
            onChanged: (value) {
              setState(() => _hardwareAcceleration = value);
              _saveBool('hardware_acceleration', value);
            },
          ),
          SwitchListTile(
            title: const Text('Auto Play Next Episode', style: TextStyle(color: Colors.white)),
            value: _autoPlayNext,
            onChanged: (value) {
              setState(() => _autoPlayNext = value);
              _saveBool('auto_play_next', value);
            },
          ),
          const SizedBox(height: 32),
          const Text(
            'Note: This is a simplified settings screen.',
            style: TextStyle(color: Colors.white54, fontSize: 12),
            textAlign: TextAlign.center,
          ),
          const Text(
            'Full settings will be restored once stability issues are resolved.',
            style: TextStyle(color: Colors.white54, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
