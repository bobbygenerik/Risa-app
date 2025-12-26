class SavedPlaylist {
  final String id;
  final String name;
  final String type; // 'm3u' or 'xtream'
  final String url; // For M3U
  final String? server; // For Xtream
  final String? username; // For Xtream
  final String? password; // For Xtream
  final String? epgUrl;
  final String? epgUrlSecondary;
  final DateTime addedDate;

  SavedPlaylist({
    required this.id,
    required this.name,
    required this.type,
    required this.url,
    this.server,
    this.username,
    this.password,
    this.epgUrl,
    this.epgUrlSecondary,
    required this.addedDate,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'url': url,
      'server': server,
      'username': username,
      'password': password,
      'epgUrl': epgUrl,
      'epgUrlSecondary': epgUrlSecondary,
      'addedDate': addedDate.toIso8601String(),
    };
  }

  factory SavedPlaylist.fromJson(Map<String, dynamic> json) {
    return SavedPlaylist(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      url: json['url'] as String,
      server: json['server'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      epgUrl: json['epgUrl'] as String?,
      epgUrlSecondary: json['epgUrlSecondary'] as String?,
      addedDate: DateTime.parse(json['addedDate'] as String),
    );
  }
}
