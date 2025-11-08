import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/profile_provider.dart';

void main() {
  test('UserProfile serializes and deserializes correctly', () {
    final profile = UserProfile(id: '123', name: 'Test', avatarUrl: 'avatar.png');
    final json = profile.toJson();
    final fromJson = UserProfile.fromJson(json);
    expect(fromJson.id, '123');
    expect(fromJson.name, 'Test');
    expect(fromJson.avatarUrl, 'avatar.png');
  });
}
