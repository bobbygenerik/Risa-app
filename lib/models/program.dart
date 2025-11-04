class Program {
  final String id;
  final String channelId;
  final String title;
  final String? description;
  final DateTime startTime;
  final DateTime endTime;
  final String? imageUrl;
  final String? category;
  final bool? isLive;
  final bool? canRecord;

  Program({
    required this.id,
    required this.channelId,
    required this.title,
    this.description,
    required this.startTime,
    required this.endTime,
    this.imageUrl,
    this.category,
    this.isLive,
    this.canRecord,
  });

  Duration get duration => endTime.difference(startTime);
  
  bool get isCurrentlyPlaying {
    final now = DateTime.now();
    return now.isAfter(startTime) && now.isBefore(endTime);
  }
  
  double get progressPercentage {
    if (!isCurrentlyPlaying) return 0.0;
    final now = DateTime.now();
    final elapsed = now.difference(startTime).inSeconds;
    final total = duration.inSeconds;
    return (elapsed / total).clamp(0.0, 1.0);
  }

  factory Program.fromMap(Map<String, dynamic> map) {
    return Program(
      id: map['id'] ?? '',
      channelId: map['channelId'] ?? '',
      title: map['title'] ?? '',
      description: map['description'],
      startTime: DateTime.parse(map['startTime']),
      endTime: DateTime.parse(map['endTime']),
      imageUrl: map['imageUrl'],
      category: map['category'],
      isLive: map['isLive'],
      canRecord: map['canRecord'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'channelId': channelId,
      'title': title,
      'description': description,
      'startTime': startTime.toIso8601String(),
      'endTime': endTime.toIso8601String(),
      'imageUrl': imageUrl,
      'category': category,
      'isLive': isLive,
      'canRecord': canRecord,
    };
  }

  @override
  String toString() {
    return 'Program(id: $id, title: $title, channelId: $channelId)';
  }
}
