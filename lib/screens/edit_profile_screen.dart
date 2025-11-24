import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';

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
    Future.delayed(const Duration(seconds: 1), _updateTime);
    _loadProfileData();
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {});
    Future.delayed(const Duration(seconds: 1), _updateTime);
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
        showAppSnackBar(
          context,
          const SnackBar(
            content: Text('Profile updated successfully!'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
        Navigator.pop(context, true); // Return true to indicate profile was updated
      }
    } catch (e) {
      if (mounted) {
        showAppSnackBar(
          context,
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

  Future<void> _pickProfileImage() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: false,
      );

      if (result != null && result.files.single.path != null) {
        setState(() {
          _profileImagePath = result.files.single.path;
        });
      }
    } catch (e) {
      if (mounted) {
        showAppSnackBar(
          context,
          SnackBar(
            content: Text('Failed to pick image: $e'),
            backgroundColor: AppTheme.accentRed,
          ),
        );
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    // Simplified layout to avoid syntax/paren mismatches during build.
    // Keeps essential fields and save functionality.
    return CompatPopScope(
      onWillPop: () async {
        if (Navigator.of(context).canPop()) {
          context.pop(false);
          return false;
        }
        return true;
      },
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF050710),
              Color(0xFF0d1140),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _buildGlassAppBar(),
          body: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 640),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.lg,
                    vertical: AppSizes.xl,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(AppSizes.xl),
                    decoration: BoxDecoration(
                      color: AppTheme.cardBackground,
                      borderRadius: BorderRadius.circular(AppSizes.radiusXl),
                      border: Border.all(color: AppTheme.divider),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: _pickProfileImage,
                            child: CircleAvatar(
                              radius: 72,
                              backgroundColor: AppTheme.highlight,
                              backgroundImage: _profileImagePath != null
                                  ? FileImage(File(_profileImagePath!))
                                  : null,
                              child: _profileImagePath == null
                                  ? const Icon(Icons.person, size: 72, color: AppTheme.primaryBlue)
                                  : null,
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSizes.xl),
                        _buildLinedTextField(
                          controller: _nameController,
                          focusNode: _nameFocusNode,
                          label: 'Name',
                          hint: 'Enter your display name',
                        ),
                        const SizedBox(height: AppSizes.lg),
                        _buildLinedTextField(
                          controller: _emailController,
                          focusNode: _emailFocusNode,
                          label: 'Email',
                          hint: 'name@example.com',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: AppSizes.xl),
                        ElevatedButton(
                          onPressed: _isLoading ? null : _saveProfile,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.primaryBlue,
                            padding: const EdgeInsets.symmetric(vertical: AppSizes.md),
                          ),
                          child: _isLoading
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                                )
                              : const Text('Save Changes'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildGlassAppBar() {
    return AppBar(
      title: const Text('Edit Profile'),
      backgroundColor: Colors.white.withAlpha((0.04 * 255).round()),
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
            icon: const Icon(Icons.check, color: AppTheme.accentGreen, size: 28),
            onPressed: _saveProfile,
          ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.zero,
        child: SizedBox.shrink(),
      ),
    );
  }

  Widget _buildLinedTextField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required String label,
    required String hint,
    TextInputType? keyboardType,
  }) {
    return Focus(
      focusNode: focusNode,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          filled: true,
          fillColor: AppTheme.highlight,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusLg),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusLg),
            borderSide: const BorderSide(color: AppTheme.primaryBlue, width: 3),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.lg,
            vertical: AppSizes.md,
          ),
        ),
      ),
    );
  }
}

