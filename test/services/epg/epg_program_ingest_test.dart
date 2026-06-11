import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/epg/epg_program_ingest.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late Directory tempDir;
  late Map<String, List<Program>> programsByChannel;
  late EpgProgramIngest ingest;

  setUp(() {
    tempDir = Directory.systemTemp.createTempSync('ingest_test');
    programsByChannel = {};
    ingest = EpgProgramIngest(
      deps: EpgProgramIngestDeps(
        programsByChannel: programsByChannel,
        isDbDisabled: () => true,
        buildCatchupUrl: (epgId, startTs, endTs, {required nowMs}) => null,
        insertPrograms: (epgId, payload, {required clearExisting}) async {},
        deleteProgramsForEpgIds: (epgIds) async {},
        insertAllPrograms: (buffer) async {},
        handleDbError: (e) => fail('unexpected db error: $e'),
        notifyListeners: () {},
      ),
    );
  });

  tearDown(() {
    if (tempDir.existsSync()) tempDir.deleteSync(recursive: true);
  });

  File writeJsonl(List<String> lines) {
    final file = File('${tempDir.path}/programs.jsonl');
    file.writeAsStringSync(lines.join('\n'));
    return file;
  }

  test('ingests valid lines into programsByChannel and deletes the file',
      () async {
    final file = writeJsonl([
      '{"epgId":"cnn.us","startTs":1000,"endTs":2000,"title":"News Night"}',
      '{"epgId":"cnn.us","startTs":2000,"endTs":3000,"title":"Late News"}',
      '{"epgId":"amc.us","startTs":1000,"endTs":2000,"title":"Gladiator"}',
    ]);

    await ingest.ingestFromFile(file.path, skipDbWrites: true);

    expect(programsByChannel['cnn.us'], hasLength(2));
    expect(programsByChannel['cnn.us']![0].title, 'News Night');
    expect(programsByChannel['amc.us'], hasLength(1));
    expect(file.existsSync(), isFalse, reason: 'temp file is cleaned up');
  });

  test('skips malformed, empty, and id-less lines without aborting', () async {
    final file = writeJsonl([
      '{"epgId":"cnn.us","startTs":1000,"endTs":2000,"title":"Kept"}',
      'not json',
      '',
      '{"startTs":1,"endTs":2,"title":"No id"}',
      '{"epgId":"amc.us","startTs":1000,"endTs":2000,"title":"Also kept"}',
    ]);

    await ingest.ingestFromFile(file.path, skipDbWrites: true);

    expect(programsByChannel['cnn.us'], hasLength(1));
    expect(programsByChannel['amc.us'], hasLength(1));
    expect(programsByChannel, hasLength(2));
  });

  test('honors skipChannels', () async {
    final file = writeJsonl([
      '{"epgId":"cnn.us","startTs":1000,"endTs":2000,"title":"Skipped"}',
      '{"epgId":"amc.us","startTs":1000,"endTs":2000,"title":"Kept"}',
    ]);

    await ingest.ingestFromFile(
      file.path,
      skipDbWrites: true,
      skipChannels: {'cnn.us'},
    );

    expect(programsByChannel.containsKey('cnn.us'), isFalse);
    expect(programsByChannel['amc.us'], hasLength(1));
  });

  test('caps per-channel program list at 80 entries', () async {
    final file = writeJsonl([
      for (var i = 0; i < 120; i++)
        '{"epgId":"cnn.us","startTs":${i * 1000},"endTs":${i * 1000 + 500},"title":"P$i"}',
    ]);

    await ingest.ingestFromFile(file.path, skipDbWrites: true);

    expect(programsByChannel['cnn.us'], hasLength(80));
  });

  test('reports progress including a final total', () async {
    final file = writeJsonl([
      for (var i = 0; i < 600; i++)
        '{"epgId":"ch$i.us","startTs":1,"endTs":2,"title":"P$i"}',
    ]);

    final calls = <(int, int)>[];
    await ingest.ingestFromFile(
      file.path,
      skipDbWrites: true,
      totalPrograms: 600,
      onProgress: (processed, total) => calls.add((processed, total)),
    );

    expect(calls, isNotEmpty);
    expect(calls.last.$1, 600);
    expect(calls.last.$2, 600);
  });
}
