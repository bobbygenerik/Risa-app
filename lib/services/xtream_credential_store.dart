import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class XtreamCredentialStore {
  XtreamCredentialStore._();

  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  static const String _globalPasswordKey = 'xtream_password';

  static Future<String> readGlobalPassword() async {
    return _readPassword(_globalPasswordKey);
  }

  static Future<void> writeGlobalPassword(String value) async {
    await _writePassword(_globalPasswordKey, value);
  }

  static Future<void> clearGlobalPassword() async {
    await _clearPassword(_globalPasswordKey);
  }

  static Future<String> readPasswordForEncodedServer(String encoded) async {
    return _readPassword('xtream_password_$encoded');
  }

  static Future<void> clearPasswordForEncodedServer(String encoded) async {
    await _clearPassword('xtream_password_$encoded');
  }

  static Future<String> _readPassword(String key) async {
    final secureValue = await _storage.read(key: key);
    if (secureValue != null) return secureValue;

    final prefs = await SharedPreferences.getInstance();
    final legacyValue = prefs.getString(key) ?? '';
    if (legacyValue.isNotEmpty) {
      await _storage.write(key: key, value: legacyValue);
      await prefs.remove(key);
    }
    return legacyValue;
  }

  static Future<void> _writePassword(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
    if (value.isEmpty) {
      await _storage.delete(key: key);
    } else {
      await _storage.write(key: key, value: value);
    }
  }

  static Future<void> _clearPassword(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await Future.wait([
      prefs.remove(key),
      _storage.delete(key: key),
    ]);
  }
}
