import 'package:flutter/material.dart';
// 'package:flutter/services.dart' not needed; material covers required symbols
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String? _profileImagePath;
  bool _isLoading = false;

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), _updateTime);
    _loadProfileData();
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {});
    Future.delayed(Duration(seconds: 1), _updateTime);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nameFocusNode.dispose();
    _emailController.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }

  Future<void> _loadProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _nameController.text = prefs.getString('user_name') ?? '';
      _emailController.text = prefs.getString('user_email') ?? '';
      _profileImagePath = prefs.getString('profile_image_path');
    });
  }

  Future<void> _saveProfile() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('user_name', _nameController.text.trim());
      await prefs.setString('user_email', _emailController.text.trim());
      if (_profileImagePath != null) {
        await prefs.setString('profile_image_path', _profileImagePath!);
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Profile updated successfully!'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
        Navigator.pop(context, true); // Return true to indicate profile was updated
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to save profile: $e'),
            backgroundColor: AppTheme.accentRed,
          ),
        );
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // Image picking and keyboard helper functions removed — not used currently.

  @override
  Widget build(BuildContext context) {
    // Simplified layout to avoid syntax/paren mismatches during build.
    // Keeps essential fields and save functionality.
    return PopScope(
      canPop: false,
      // ignore: deprecated_member_use
      onPopInvoked: (didPop) {
        if (didPop) return;
        context.go('/home');
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _buildGlassAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 12),
                  CircleAvatar(
                    radius: 64,
                    backgroundColor: AppTheme.cardBackground,
                    backgroundImage: _profileImagePath != null ? FileImage(File(_profileImagePath!)) : null,
                    child: _profileImagePath == null ? const Icon(Icons.person, size: 64, color: AppTheme.primaryBlue) : null,
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      filled: true,
                      fillColor: AppTheme.cardBackground,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: AppTheme.cardBackground,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _isLoading ? null : _saveProfile,
                    style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryBlue),
                    child: _isLoading ? const CircularProgressIndicator() : const Text('Save Changes'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildGlassAppBar() {
    return AppBar(
      title: Text('Edit Profile'),
      backgroundColor: Colors.white.withAlpha((0.08 * 255).round()),
      elevation: 0,
      actions: [
        if (_isLoading)
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          )
        else
          IconButton(
            icon: Icon(Icons.check, color: AppTheme.accentGreen, size: 28),
            onPressed: _saveProfile,
          ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(2),
        child: Container(
          color: AppTheme.primaryBlue,
          height: 2,
        ),
      ),
    );
  }
}

