/// OAuth Configuration for external services
/// Add your API keys and OAuth credentials here
class OAuthConfig {
  // Google Drive OAuth (for cloud sync)
  // Get these from: https://console.developers.google.com/
  static const String googleClientId = 'YOUR_GOOGLE_CLIENT_ID.apps.googleusercontent.com';
  static const String googleClientSecret = 'YOUR_GOOGLE_CLIENT_SECRET';
  
  // Real-Debrid API (users provide their own)
  // Users get this from: https://real-debrid.com/apitoken
  // This is set by users in settings, not hardcoded
  
  // OpenSubtitles API Key (free tier)
  // Get from: https://www.opensubtitles.com/en/consumers
  static const String openSubtitlesApiKey = 'WX4Acrpk0veYJrpQTc1I5oUBkpNnIqbc';
  
  // TMDB API Key (for movie/series metadata)
  // Get from: https://www.themoviedb.org/settings/api
  static const String tmdbApiKey = 'YOUR_TMDB_API_KEY';
  
  /// Check if Google OAuth is configured
  static bool get isGoogleConfigured {
    return googleClientId != 'YOUR_GOOGLE_CLIENT_ID.apps.googleusercontent.com' &&
           googleClientSecret != 'YOUR_GOOGLE_CLIENT_SECRET';
  }
  
  /// Check if TMDB is configured
  static bool get isTmdbConfigured {
    return tmdbApiKey != 'YOUR_TMDB_API_KEY';
  }
}