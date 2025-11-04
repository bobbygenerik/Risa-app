class Category {
  final String id;
  final String name;
  final String? imageUrl;
  final String? iconName;
  final int? contentCount;

  Category({
    required this.id,
    required this.name,
    this.imageUrl,
    this.iconName,
    this.contentCount,
  });

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'],
      iconName: map['iconName'],
      contentCount: map['contentCount'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'iconName': iconName,
      'contentCount': contentCount,
    };
  }
}
