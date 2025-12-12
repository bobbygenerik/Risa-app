import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class UserProfile {
  final String id;
  final String name;
  final String avatarUrl;

  UserProfile({required this.id, required this.name, required this.avatarUrl});

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'avatarUrl': avatarUrl,
      };

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
        id: json['id'] as String,
        name: json['name'] as String,
        avatarUrl: json['avatarUrl'] as String? ?? '',
      );
}

class ProfileProvider extends ChangeNotifier {
  static const _profilesKey = 'user_profiles';
  static const _activeProfileKey = 'active_profile_id';

  List<UserProfile> _profiles = [];
  UserProfile? _activeProfile;
  bool _isDisposed = false;

  List<UserProfile> get profiles => _profiles;
  UserProfile? get activeProfile => _activeProfile;
  bool get isDisposed => _isDisposed;

  Future<void> loadProfiles() async {
    final prefs = await SharedPreferences.getInstance();
    final profilesJson = prefs.getString(_profilesKey);
    if (profilesJson != null) {
      final List<dynamic> list = jsonDecode(profilesJson);
      _profiles = list.map((e) => UserProfile.fromJson(e)).toList();
    } else {
      _profiles = [];
    }
    final activeId = prefs.getString(_activeProfileKey);
    _activeProfile = _findProfile(activeId) ?? (_profiles.isNotEmpty ? _profiles.first : null);
    _notifyIfActive();
  }

  Future<void> addProfile(UserProfile profile) async {
    _profiles.add(profile);
    unawaited(_saveProfiles());
    unawaited(setActiveProfile(profile.id));
  }

  Future<void> removeProfile(String id) async {
    _profiles.removeWhere((p) => p.id == id);
    unawaited(_saveProfiles());
    if (_activeProfile?.id == id && _profiles.isNotEmpty) {
      unawaited(setActiveProfile(_profiles.first.id));
    } else if (_profiles.isEmpty) {
      _activeProfile = null;
      await _saveActiveProfileId(null);
    }
    _notifyIfActive();
  }

  Future<void> setActiveProfile(String? id) async {
    _activeProfile = _findProfile(id);
    await _saveActiveProfileId(_activeProfile?.id);
    _notifyIfActive();
  }

  UserProfile? _findProfile(String? id) {
    if (id == null) {
      return _profiles.isNotEmpty ? _profiles.first : null;
    }
    try {
      return _profiles.firstWhere((p) => p.id == id);
    } catch (_) {
      return _profiles.isNotEmpty ? _profiles.first : null;
    }
  }

  Future<void> _saveProfiles() async {
    final prefs = await SharedPreferences.getInstance();
    final list = _profiles.map((p) => p.toJson()).toList();
    await prefs.setString(_profilesKey, jsonEncode(list));
  }

  Future<void> _saveActiveProfileId(String? id) async {
    final prefs = await SharedPreferences.getInstance();
    if (id != null) {
      await prefs.setString(_activeProfileKey, id);
    } else {
      await prefs.remove(_activeProfileKey);
    }
  }
  
  void _notifyIfActive() {
    if (!_isDisposed) {
      notifyListeners();
    }
  }
  
  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }
}
