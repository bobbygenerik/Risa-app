import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/providers/optimized_channel_provider.dart';
import 'package:iptv_player/providers/playlist_loader.dart';

class MockPlaylistLoader extends PlaylistLoader {
  @override
  Future<Map<String, dynamic>> loadFromUrl(String url,
      {void Function(int parsedChannels)? onProgress,
      void Function(List<Map<String, dynamic>> chunk)? onChannelsChunk}) async {

    // Simulate some delay
    await Future.delayed(const Duration(milliseconds: 10));

    if (url == 'error') {
        throw Exception('Mock error');
    }

    // Simulate chunks
    final chunk1 = [
        {'name': 'Ch1', 'url': 'http://1', 'groupTitle': 'News', 'id': '1'},
        {'name': 'Ch2', 'url': 'http://2', 'groupTitle': 'Sports', 'id': '2'},
    ];
    if (onChannelsChunk != null) onChannelsChunk(chunk1);
    if (onProgress != null) onProgress(2);

    await Future.delayed(const Duration(milliseconds: 10));

    final chunk2 = [
        {'name': 'Ch3', 'url': 'http://3', 'groupTitle': 'News', 'id': '3'},
        {'name': 'Ch4', 'url': 'http://4', 'groupTitle': 'Movies', 'id': '4'},
    ];
    if (onChannelsChunk != null) onChannelsChunk(chunk2);
    if (onProgress != null) onProgress(4);

    return {
        'channelsFile': 'dummy.jsonl',
        'channelCount': 4,
    };
  }

  @override
  void cancelCurrent() {
    // No-op
  }
}

void main() {
  test('OptimizedChannelProvider loads channels correctly', () async {
    final loader = MockPlaylistLoader();
    final provider = OptimizedChannelProvider(playlistLoader: loader);

    expect(provider.isLoading, false);
    expect(provider.hasChannels, false);

    final future = provider.loadChannels('http://test.com');

    expect(provider.isLoading, true);

    await future;

    expect(provider.isLoading, false);
    expect(provider.channels.length, 4);
    expect(provider.hasChannels, true);
    expect(provider.errorMessage, isNull);

    // Check categories
    expect(provider.getAllCategoryNames(), ['Movies', 'News', 'Sports']);

    // Check filtering
    final news = await provider.getChannelsForCategory('News');
    expect(news.length, 2);
    expect(news[0].name, 'Ch1');
    expect(news[1].name, 'Ch3');

    final movies = await provider.getChannelsForCategory('Movies');
    expect(movies.length, 1);
    expect(movies[0].name, 'Ch4');

    expect(provider.getChannelCountForCategory('Sports'), 1);
  });

  test('OptimizedChannelProvider handles error', () async {
    final loader = MockPlaylistLoader();
    final provider = OptimizedChannelProvider(playlistLoader: loader);

    await provider.loadChannels('error');

    expect(provider.isLoading, false);
    expect(provider.channels.isEmpty, true);
    expect(provider.errorMessage, contains('Mock error'));
  });
}
