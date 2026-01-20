import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/integrated_transcription_service.dart';
import 'package:iptv_player/services/whisper_transcription_service.dart';

class FakeWhisperTranscriptionService extends WhisperTranscriptionService {
  String? transcribeFileResult;
  String? lastTranscribedFile;
  bool isInitializedValue = true;
  bool startTranscriptionCalled = false;

  @override
  bool get isInitialized => isInitializedValue;

  @override
  Future<String?> transcribeFile(String filePath) async {
    lastTranscribedFile = filePath;
    return transcribeFileResult;
  }

  @override
  Future<bool> startTranscription({String? streamUrl}) async {
    startTranscriptionCalled = true;
    return true;
  }

  @override
  Future<void> stopTranscription() async {}
}

void main() {
  group('IntegratedTranscriptionService', () {
    test('transcribeAudioFile uses Whisper service', () async {
      final service = IntegratedTranscriptionService();
      final fakeWhisper = FakeWhisperTranscriptionService();

      fakeWhisper.transcribeFileResult = 'Fake Transcription';

      service.attachWhisperService(fakeWhisper);

      // We expect this to call transcribeFile on fakeWhisper
      await service.startTranscription(audioFilePath: 'test.wav');

      expect(fakeWhisper.lastTranscribedFile, 'test.wav');
      expect(service.subtitles.isNotEmpty, true);
      // Depending on implementation, it might append to existing or create new entry
      // For now, check if text is present
      final hasText = service.subtitles.any((s) => s.originalText == 'Fake Transcription');
      expect(hasText, true);
    });
  });
}
