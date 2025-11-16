import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/profile_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('ProfileProvider', () {
    late ProfileProvider provider;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      provider = ProfileProvider();
    });

    test('add and set active profile', () async {
      final profile = UserProfile(id: '1', name: 'Test', avatarUrl: '');
      await provider.addProfile(profile);
      expect(provider.profiles.length, 1);
      expect(provider.activeProfile?.id, '1');
    });

    test('remove profile', () async {
      final profile1 = UserProfile(id: '1', name: 'A', avatarUrl: '');
      final profile2 = UserProfile(id: '2', name: 'B', avatarUrl: '');
      await provider.addProfile(profile1);
      await provider.addProfile(profile2);
      await provider.removeProfile('1');
      expect(provider.profiles.length, 1);
      expect(provider.activeProfile?.id, '2');
    });
  });
}
