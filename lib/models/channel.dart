class Channel {
  final String id;
  final String name;
  final String url;
  final String? logoUrl;
  final String? groupTitle;
  final String? tvgId;
  final Map<String, String>? attributes;

  Channel({
    required this.id,
    required this.name,
    required this.url,
    this.logoUrl,
    this.groupTitle,
    this.tvgId,
    this.attributes,
  });

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      url: map['url'] ?? '',
      logoUrl: map['logoUrl'],
      groupTitle: map['groupTitle'],
      tvgId: map['tvgId'],
      attributes: map['attributes'] != null 
          ? Map<String, String>.from(map['attributes']) 
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'logoUrl': logoUrl,
      'groupTitle': groupTitle,
      'tvgId': tvgId,
      'attributes': attributes,
    };
  }

  @override
  String toString() {
    return 'Channel(id: $id, name: $name, url: $url, groupTitle: $groupTitle)';
  }
}
