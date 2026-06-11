import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_program_type_row_cache.dart';
import 'package:iptv_player/screens/live_tv/program_type_slivers.dart';

Channel channel(String id) => Channel(id: id, name: id, url: 'http://x/$id');

Program program(String channelId, String category) => Program(
      id: '${channelId}_1',
      channelId: channelId,
      title: 'T',
      category: category,
      startTime: DateTime(2026),
      endTime: DateTime(2027),
    );

void main() {
  group('LiveTvProgramTypeRowCache.ensureFresh', () {
    late LiveTvProgramTypeRowCache cache;
    late int resolveCalls;

    final specs = [
      ProgramTypeRowSpec(
        keyName: 'a',
        title: 'A',
        predicate: (p, c) => p?.category == 'a',
      ),
      ProgramTypeRowSpec(
        keyName: 'b',
        title: 'B',
        predicate: (p, c) => p?.category == 'b',
      ),
    ];

    setUp(() {
      cache = LiveTvProgramTypeRowCache();
      resolveCalls = 0;
    });

    Program? Function(Channel) resolverWith(Map<String, String> categories) {
      return (c) {
        resolveCalls++;
        final cat = categories[c.id];
        return cat == null ? null : program(c.id, cat);
      };
    }

    Widget section(BuildContext? _, String title, List<Channel> channels) =>
        Text('$title:${channels.map((c) => c.id).join(",")}');

    test('resolves each channel program at most once across all rows', () {
      final channels = [channel('c1'), channel('c2'), channel('c3')];
      cache.ensureFresh(
        channels: channels,
        specs: specs,
        currentProgramOf: resolverWith({'c1': 'a', 'c2': 'b', 'c3': 'a'}),
      );
      expect(resolveCalls, 3, reason: 'one resolution per channel, not per row');
    });

    test('ensureFresh is a no-op until invalidated', () {
      final channels = [channel('c1')];
      final resolver = resolverWith({'c1': 'a'});
      cache.ensureFresh(
          channels: channels, specs: specs, currentProgramOf: resolver);
      cache.ensureFresh(
          channels: channels, specs: specs, currentProgramOf: resolver);
      expect(resolveCalls, 1);
    });

    test('unchanged membership keeps the identical row widget instance', () {
      final channels = [channel('c1'), channel('c2')];
      final categories = {'c1': 'a', 'c2': 'b'};
      cache.ensureFresh(
          channels: channels,
          specs: specs,
          currentProgramOf: resolverWith(categories));
      final first = cache.buildRow(context: null, title: 'A', buildSection: section);

      cache.invalidate();
      cache.ensureFresh(
          channels: channels,
          specs: specs,
          currentProgramOf: resolverWith(categories));
      final second = cache.buildRow(context: null, title: 'A', buildSection: section);

      expect(identical(first, second), isTrue,
          reason: 'same membership -> same widget instance -> subtree skipped');
    });

    test('changed membership rebuilds only that row', () {
      final channels = [channel('c1'), channel('c2')];
      cache.ensureFresh(
          channels: channels,
          specs: specs,
          currentProgramOf: resolverWith({'c1': 'a', 'c2': 'b'}));
      final a1 = cache.buildRow(context: null, title: 'A', buildSection: section);
      final b1 = cache.buildRow(context: null, title: 'B', buildSection: section);

      cache.invalidate();
      // c2 now classifies as 'a': row A membership changes, row B becomes empty.
      cache.ensureFresh(
          channels: channels,
          specs: specs,
          currentProgramOf: resolverWith({'c1': 'a', 'c2': 'a'}));
      final a2 = cache.buildRow(context: null, title: 'A', buildSection: section);
      final b2 = cache.buildRow(context: null, title: 'B', buildSection: section);

      expect(identical(a1, a2), isFalse, reason: 'row A membership changed');
      expect(identical(b1, b2), isFalse, reason: 'row B went empty');
      expect(b2, isA<SizedBox>(), reason: 'empty rows collapse');
    });

    test('caps each row at 12 channels and dedupes by epg lookup id', () {
      final channels = [
        for (var i = 0; i < 30; i++) channel('c$i'),
        channel('c0'), // duplicate id must not appear twice
      ];
      cache.ensureFresh(
        channels: channels,
        specs: specs,
        currentProgramOf: resolverWith({
          for (var i = 0; i < 30; i++) 'c$i': 'a',
        }),
      );
      final row =
          cache.buildRow(context: null, title: 'A', buildSection: section);
      expect((row as Text).data, isNotNull);
      final ids = row.data!.split(':')[1].split(',');
      expect(ids, hasLength(12));
      expect(ids.toSet(), hasLength(12));
    });

    test('stops resolving once every row is full', () {
      final channels = [for (var i = 0; i < 100; i++) channel('c$i')];
      cache.ensureFresh(
        channels: channels,
        specs: specs,
        currentProgramOf: resolverWith({
          // First 12 are 'a' and next 12 are 'b': all rows full after c23.
          for (var i = 0; i < 12; i++) 'c$i': 'a',
          for (var i = 12; i < 24; i++) 'c$i': 'b',
        }),
      );
      expect(resolveCalls, lessThanOrEqualTo(24),
          reason: 'no scanning past the point where all rows are satisfied');
    });
  });

  group('liveTvProgramTypeRowSpecs', () {
    test('defines the 11 Live TV rows with unique keys', () {
      expect(liveTvProgramTypeRowSpecs, hasLength(11));
      expect(
        liveTvProgramTypeRowSpecs.map((s) => s.keyName).toSet(),
        hasLength(11),
      );
      expect(liveTvProgramTypeRowSpecs.first.title, 'Live Sports');
    });
  });
}
