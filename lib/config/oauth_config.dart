/// OAuth Configuration for external services
/// Add your API keys and OAuth credentials here
class OAuthConfig {
  // OAuth and API keys for external services
  // (Drive integration removed from this build.)

  // TMDB API Key (for program metadata)
  // Get from: https://www.themoviedb.org/settings/api
  static const String tmdbApiKey = 'd98ee3033187dff844095fcff7873e21';

  /// Check if TMDB is configured
  static bool get isTmdbConfigured {
    return tmdbApiKey != 'YOUR_TMDB_API_KEY';
  }
}
