import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/providers/channel/channel_category_cache.dart';
import 'package:iptv_player/providers/channel/channel_query_service.dart';
import 'package:iptv_player/providers/channel/channel_query_service_deps.dart';
import 'package:iptv_player/services/local_db_service.dart';

void main() {
  test('getChannelsPage falls back to in-memory maps with offset and limit',
      () async {
    final maps = List<Map<String, dynamic>>.generate(
      10,
      (i) => {
        'id': 'id-$i',
        'name': 'Channel $i',
        'url': 'http://example.com/$i',
        'groupTitle': i.isEven ? 'News' : 'Sports',
      },
    );
    final service = ChannelQueryService(_depsFor(maps));

    final page = await service.getChannelsPage(offset: 3, limit: 4);

    expect(page.map((c) => c.id), ['id-3', 'id-4', 'id-5', 'id-6']);
  });

  test('getChannelsPage returns remaining in-memory maps near the end',
      () async {
    final maps = List<Map<String, dynamic>>.generate(
      5,
      (i) => {
        'id': 'id-$i',
        'name': 'Channel $i',
        'url': 'http://example.com/$i',
      },
    );
    final service = ChannelQueryService(_depsFor(maps));

    final page = await service.getChannelsPage(offset: 3, limit: 50);

    expect(page.map((c) => c.id), ['id-3', 'id-4']);
  });
}

ChannelQueryServiceDeps _depsFor(List<Map<String, dynamic>> maps) {
  return ChannelQueryServiceDeps(
    channelMaps: maps,
    channelIndicesByGroup: const {},
    channelLowerNames:
        maps.map((m) => (m['name'] as String).toLowerCase()).toList(),
    categoryCache: ChannelCategoryCache(),
    db: LocalDbService.instance,
    getDbReady: () => false,
    setDbReady: (_) {},
    getDbDisabled: () => true,
    getChannelCountDb: () => maps.length,
    setChannelCountDb: (_) {},
    getCachedCategories: () => null,
    setCachedCategories: (_) {},
    getCategoryTitleCache: () => null,
    setCategoryTitleCache: (_) {},
    getChannelIdCache: () => null,
    setChannelIdCache: (_) {},
    getHiddenFlagCache: () => null,
    setHiddenFlagCache: (_) {},
    getCategoriesCompleter: () => null,
    setCategoriesCompleter: (_) {},
    getIsGroupingChannels: () => false,
    setIsGroupingChannels: (_) {},
    ensureDb: () async {},
    handleDbError: (_) {},
    getChannelAt: (index) => Channel.fromMap(maps[index]),
    getChannelPreview: () => maps.take(30).map(Channel.fromMap).toList(),
    notifyListenersSafe: () {},
  );
}
