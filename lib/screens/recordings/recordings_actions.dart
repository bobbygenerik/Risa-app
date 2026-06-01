part of '../recordings_screen.dart';

extension RecordingsActions on _RecordingsScreenState {
void _playRecording(FileSystemEntity file, String fileName) {
  context.push('/player', extra: {
    'videoUrl': file.path,
    'title': fileName,
    'isLive': false,
  });
  showAppSnackBar(
    context,
    const SnackBar(content: Text('Playing recording...')),
  );
}
}
