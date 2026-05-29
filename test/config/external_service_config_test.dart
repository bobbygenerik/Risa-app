import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/config/fanart_config.dart';
import 'package:iptv_player/config/oauth_config.dart';
import 'package:iptv_player/config/omdb_config.dart';
import 'package:iptv_player/config/tmdb_config.dart';
import 'package:iptv_player/config/tvdb_config.dart';

void main() {
  test('external API keys default to empty dart-define values', () {
    expect(TMDBConfig.apiKey, isEmpty);
    expect(OAuthConfig.tmdbApiKey, isEmpty);
    expect(TvdbConfig.apiKey, isEmpty);
    expect(FanartConfig.apiKey, isEmpty);
    expect(OmdbConfig.apiKey, isEmpty);
  });
}
