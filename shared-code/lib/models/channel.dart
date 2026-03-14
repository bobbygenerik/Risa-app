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

extension ChannelEpgLookup on Channel {
  static String? _attributeValue(Map<String, String>? attrs, String key) {
    if (attrs == null || attrs.isEmpty) return null;
    for (final entry in attrs.entries) {
      if (entry.key.toLowerCase() == key) {
        final value = entry.value.trim();
        if (value.isNotEmpty) return value;
      }
    }
    return null;
  }

  static String? _tvgNameValue(Map<String, String>? attrs) {
    return _attributeValue(attrs, 'tvg-name') ??
        _attributeValue(attrs, 'tvg_name');
  }

  /// Use a stable identifier for persisted mappings and caches.
  String get epgLookupId {
    final tvg = tvgId?.trim();
    if (tvg != null && tvg.isNotEmpty) {
      return tvg;
    }
    return id.trim();
  }

  /// Transient alias metadata that can still be used for exact EPG matching.
  String? get epgLookupAliasId => _tvgNameValue(attributes);

  /// Only use name-based matching when tvg-id is missing/empty.
  String? get epgLookupName {
    final tvg = tvgId?.trim();
    if (tvg != null && tvg.isNotEmpty) {
      return null;
    }
    final alias = epgLookupAliasId;
    if (alias != null) {
      return alias;
    }
    final trimmed = name.trim();
    return trimmed.isNotEmpty ? trimmed : null;
  }

  /// Prefer tvg-name metadata before falling back to the display name.
  String? get epgLookupNameFallback {
    final alias = epgLookupAliasId;
    if (alias != null) {
      return alias;
    }
    final trimmed = name.trim();
    return trimmed.isNotEmpty ? trimmed : null;
  }
}
