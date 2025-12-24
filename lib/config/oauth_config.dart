/// OAuth Configuration for external services
/// Add your API keys and OAuth credentials here
class OAuthConfig {
  // OAuth and API keys for external services
  // (Drive integration removed from this build.)
  // Real-Debrid API (users provide their own)
  // Users get this from: https://real-debrid.com/apitoken
  // This is set by users in settings, not hardcoded

  // OpenSubtitles API Key (free tier)
  // Get from: https://www.opensubtitles.com/en/consumers
  static const String openSubtitlesApiKey = 'WX4Acrpk0veYJrpQTc1I5oUBkpNnIqbc';

  // TMDB API Key (for movie/series metadata)
  // Get from: https://www.themoviedb.org/settings/api
  static const String tmdbApiKey = 'd98ee3033187dff844095fcff7873e21';

  /// Check if TMDB is configured
  static bool get isTmdbConfigured {
    return tmdbApiKey != 'YOUR_TMDB_API_KEY';
  }
}
