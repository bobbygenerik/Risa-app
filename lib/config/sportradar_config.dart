/// Configuration values for Sportradar artwork lookups.
class SportradarConfig {
  /// Your Sportradar API key (obtainable from https://developer.sportradar.com).
  static const String apiKey = '28GixsmIBM8YjnFFJdNl1WGNGSiAsisUmv8A9DWB';

  /// Default sport to query when no sport heuristic is available.
  static const String defaultSport = 'soccer';

  /// URL template for the Sportradar search endpoint.
  ///
  /// Example: `https://api.sportradar.com/{sport}/trials/v1/en/events/search.json`
  /// This URL should not contain query parameters; `SportradarService` will append
  /// `api_key` and `name` automatically.
  static const String heroSearchUrl =
      'https://api.sportradar.com/{sport}/trials/v1/en/events/search.json';
}
