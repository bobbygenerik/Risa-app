class TvdbConfig {
  // Get your free API key from: https://thetvdb.com/
  static const String apiKey = String.fromEnvironment('TVDB_API_KEY');

  // Instructions:
  // 1. Create an account at https://thetvdb.com/
  // 2. Get an API key from your dashboard
  // 3. Provide it via --dart-define=TVDB_API_KEY=your_key_here
}
