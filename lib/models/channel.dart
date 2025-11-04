class Channel {
  final String id;
  final String name;
  final String url;
  final String? logoUrl;
  final String? groupTitle;
  final String? tvgId;
  final int? channelNumber;
  final Map<String, String>? attributes;
  final bool? isHD;
  final bool? isFavorite;
  final String? language;
  final String? country;
  final bool? isHidden; // For hiding channels in EPG
  final int? sortOrder; // For custom channel ordering

  Channel({
    required this.id,
    required this.name,
    required this.url,
    this.logoUrl,
    this.groupTitle,
    this.tvgId,
    this.channelNumber,
    this.attributes,
    this.isHD,
    this.isFavorite,
    this.language,
    this.country,
    this.isHidden,
    this.sortOrder,
  });

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      url: map['url'] ?? '',
      logoUrl: map['logoUrl'],
      groupTitle: map['groupTitle'],
      tvgId: map['tvgId'],
      channelNumber: map['channelNumber'],
      attributes: map['attributes'] != null
          ? Map<String, String>.from(map['attributes'])
          : null,
      isHD: map['isHD'],
      isFavorite: map['isFavorite'],
      language: map['language'],
      country: map['country'],
      isHidden: map['isHidden'],
      sortOrder: map['sortOrder'],
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
      'channelNumber': channelNumber,
      'attributes': attributes,
      'isHD': isHD,
      'isFavorite': isFavorite,
      'language': language,
      'country': country,
      'isHidden': isHidden,
      'sortOrder': sortOrder,
    };
  }

  Channel copyWith({
    String? id,
    String? name,
    String? url,
    String? logoUrl,
    String? groupTitle,
    String? tvgId,
    int? channelNumber,
    Map<String, String>? attributes,
    bool? isHD,
    bool? isFavorite,
    String? language,
    String? country,
    bool? isHidden,
    int? sortOrder,
  }) {
    return Channel(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      logoUrl: logoUrl ?? this.logoUrl,
      groupTitle: groupTitle ?? this.groupTitle,
      tvgId: tvgId ?? this.tvgId,
      channelNumber: channelNumber ?? this.channelNumber,
      attributes: attributes ?? this.attributes,
      isHD: isHD ?? this.isHD,
      isFavorite: isFavorite ?? this.isFavorite,
      language: language ?? this.language,
      country: country ?? this.country,
      isHidden: isHidden ?? this.isHidden,
      sortOrder: sortOrder ?? this.sortOrder,
    );
  }

  @override
  String toString() {
    return 'Channel(id: $id, name: $name, url: $url, groupTitle: $groupTitle)';
  }
}
