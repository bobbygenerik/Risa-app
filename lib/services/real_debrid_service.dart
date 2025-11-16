import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/// Real-Debrid API Service
/// Provides unrestricted download links from premium hosters (FREE API)
/// API Documentation: https://api.real-debrid.com/
class RealDebridService extends ChangeNotifier {
  static const String _apiUrl = 'https://api.real-debrid.com/rest/1.0';

  String? _apiKey;
  bool _isEnabled = false;
  bool _isAuthenticated = false;
  bool _enableForCatchup = true;
  bool _enableForVOD = true;

  // Account info
  String? _username;
  String? _email;
  int? _premiumUntil;
  int? _pointsBalance;

  bool get isEnabled => _isEnabled;
  bool get isAuthenticated => _isAuthenticated;
  bool get enableForCatchup => _enableForCatchup;
  bool get enableForVOD => _enableForVOD;
  String? get username => _username;
  String? get email => _email;
  int? get premiumUntil => _premiumUntil;
  int? get pointsBalance => _pointsBalance;

  /// Initialize service
  Future<void> initialize() async {
    debugPrint('Real-Debrid Service initialized');
  }

  /// Set API key
  void setApiKey(String apiKey) {
    _apiKey = apiKey;
    notifyListeners();
  }

  /// Enable/disable service
  void setEnabled(bool enabled) {
    _isEnabled = enabled;
    notifyListeners();
  }

  /// Enable for catch-up TV
  void setEnableForCatchup(bool enabled) {
    _enableForCatchup = enabled;
    notifyListeners();
  }

  /// Enable for VOD
  void setEnableForVOD(bool enabled) {
    _enableForVOD = enabled;
    notifyListeners();
  }

  /// Test connection and get account info
  Future<bool> testConnection() async {
    if (_apiKey == null || _apiKey!.isEmpty) {
      debugPrint('Real-Debrid: Missing API key');
      return false;
    }

    try {
      final response = await http.get(
        Uri.parse('$_apiUrl/user'),
        headers: {'Authorization': 'Bearer $_apiKey'},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        _username = data['username'];
        _email = data['email'];
        _premiumUntil = data['premium'];
        _pointsBalance = data['points'];
        _isAuthenticated = true;
        notifyListeners();

        debugPrint('Real-Debrid: Connection successful - User: $_username');
        return true;
      } else {
        debugPrint('Real-Debrid: Connection failed - ${response.statusCode}');
        _isAuthenticated = false;
        notifyListeners();
        return false;
      }
    } catch (e) {
      debugPrint('Real-Debrid: Connection error - $e');
      _isAuthenticated = false;
      notifyListeners();
      return false;
    }
  }

  /// Check if a link is supported by Real-Debrid
  Future<bool> isLinkSupported(String link) async {
    if (!_isEnabled || !_isAuthenticated) return false;

    try {
      final response = await http.get(
        Uri.parse('$_apiUrl/hosts/regex'),
        headers: {'Authorization': 'Bearer $_apiKey'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> regexList = jsonDecode(response.body);

        for (var regex in regexList) {
          if (RegExp(regex as String).hasMatch(link)) {
            return true;
          }
        }
        return false;
      } else {
        debugPrint('Real-Debrid: Failed to get supported hosts');
        return false;
      }
    } catch (e) {
      debugPrint('Real-Debrid: Error checking link support - $e');
      return false;
    }
  }

  /// Unrestrict a link (get direct download link)
  Future<String?> unrestrictLink(String link) async {
    if (!_isEnabled || !_isAuthenticated) return null;

    try {
      final response = await http.post(
        Uri.parse('$_apiUrl/unrestrict/link'),
        headers: {
          'Authorization': 'Bearer $_apiKey',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {'link': link},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final downloadUrl = data['download'];

        debugPrint('Real-Debrid: Link unrestricted successfully');
        return downloadUrl;
      } else {
        debugPrint(
          'Real-Debrid: Failed to unrestrict link - ${response.statusCode}',
        );
        return null;
      }
    } catch (e) {
      debugPrint('Real-Debrid: Error unrestricting link - $e');
      return null;
    }
  }

  /// Process video URL (check if Real-Debrid should be used and unrestrict if needed)
  Future<String> processVideoUrl(
    String originalUrl, {
    bool isCatchup = false,
    bool isVOD = false,
  }) async {
    // Check if Real-Debrid should be used for this type of content
    if (!_isEnabled) {
      return originalUrl;
    }

    if (isCatchup && !_enableForCatchup) {
      return originalUrl;
    }

    if (isVOD && !_enableForVOD) {
      return originalUrl;
    }

    // Check if link is supported
    final supported = await isLinkSupported(originalUrl);
    if (!supported) {
      debugPrint('Real-Debrid: Link not supported, using original URL');
      return originalUrl;
    }

    // Unrestrict the link
    final unrestrictedUrl = await unrestrictLink(originalUrl);
    if (unrestrictedUrl != null) {
      debugPrint('Real-Debrid: Using unrestricted URL');
      return unrestrictedUrl;
    } else {
      debugPrint('Real-Debrid: Failed to unrestrict, using original URL');
      return originalUrl;
    }
  }

  /// Get available hosts
  Future<List<String>> getAvailableHosts() async {
    if (!_isAuthenticated) return [];

    try {
      final response = await http.get(
        Uri.parse('$_apiUrl/hosts'),
        headers: {'Authorization': 'Bearer $_apiKey'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> hosts = jsonDecode(response.body);
        return hosts.map((h) => h['name'] as String).toList();
      } else {
        debugPrint('Real-Debrid: Failed to get hosts');
        return [];
      }
    } catch (e) {
      debugPrint('Real-Debrid: Error getting hosts - $e');
      return [];
    }
  }

  /// Get traffic info
  Future<Map<String, dynamic>?> getTrafficInfo() async {
    if (!_isAuthenticated) return null;

    try {
      final response = await http.get(
        Uri.parse('$_apiUrl/traffic'),
        headers: {'Authorization': 'Bearer $_apiKey'},
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        debugPrint('Real-Debrid: Failed to get traffic info');
        return null;
      }
    } catch (e) {
      debugPrint('Real-Debrid: Error getting traffic info - $e');
      return null;
    }
  }

  /// Check if account is premium
  bool get isPremium {
    if (_premiumUntil == null) return false;
    final expiryDate = DateTime.fromMillisecondsSinceEpoch(
      _premiumUntil! * 1000,
    );
    return expiryDate.isAfter(DateTime.now());
  }

  /// Get premium expiry date
  DateTime? get premiumExpiryDate {
    if (_premiumUntil == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(_premiumUntil! * 1000);
  }

  /// Get premium expiry date as formatted string
  String get premiumExpiryDateString {
    final date = premiumExpiryDate;
    if (date == null) return 'Not Premium';
    return '${date.day}/${date.month}/${date.year}';
  }
}
