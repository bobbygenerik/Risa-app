import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

/// Handles SSL certificate validation for IPTV streams
/// Many IPTV providers use self-signed or misconfigured certificates
class SSLHandler {
  static final Set<String> _trustedHosts = {};
  static bool _allowAllCertificates = false;

  /// Initialize SSL handler with saved preferences
  static Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _allowAllCertificates = prefs.getBool('ssl_allow_all') ?? true;
    final hosts = prefs.getStringList('ssl_trusted_hosts') ?? [];
    _trustedHosts.addAll(hosts);
  }

  /// Check if a certificate should be accepted
  static bool shouldAcceptCertificate(X509Certificate cert, String host, int port) {
    // If user has enabled "allow all" mode (default for IPTV compatibility)
    if (_allowAllCertificates) return true;
    
    // Check if host is in trusted list
    if (_trustedHosts.contains(host)) return true;
    
    return false;
  }

  /// Add a host to the trusted list
  static Future<void> trustHost(String host) async {
    _trustedHosts.add(host);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('ssl_trusted_hosts', _trustedHosts.toList());
  }

  /// Set whether to allow all certificates (for IPTV compatibility)
  static Future<void> setAllowAllCertificates(bool allow) async {
    _allowAllCertificates = allow;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ssl_allow_all', allow);
  }

  /// Get current allow all setting
  static bool get allowAllCertificates => _allowAllCertificates;
}

/// Custom HttpOverrides for IPTV SSL handling
class IPTVHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) {
        return SSLHandler.shouldAcceptCertificate(cert, host, port);
      };
  }
}
