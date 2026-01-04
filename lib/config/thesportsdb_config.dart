/// Configuration for TheSportsDB artwork lookups.
class TheSportsDbConfig {
  /// Use TheSportsDB test key (`1`) or replace with your own for higher rate limits.
  static const String apiKey = '123';

  /// URL template for searching events by name.
  ///
  /// Replace `{apikey}` with the actual API key.
  /// The service expects the `e` query parameter for the event name.
  static const String searchUrl =
      'https://www.thesportsdb.com/api/v1/json/{apikey}/searchevents.php';
}
