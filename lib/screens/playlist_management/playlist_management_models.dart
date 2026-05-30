part of '../playlist_management_screen.dart';

class PlaylistInfo {
  final String id;
  String name;
  String url;
  final String type;
  String epgUrl;
  String secondaryEpgUrl;
  int updateFrequency;
  String? username;
  String? password;

  PlaylistInfo({
    required this.id,
    required this.name,
    required this.url,
    required this.type,
    required this.epgUrl,
    required this.secondaryEpgUrl,
    required this.updateFrequency,
    this.username,
    this.password,
  });
}
