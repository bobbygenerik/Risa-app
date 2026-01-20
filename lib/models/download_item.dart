import 'dart:io';

class DownloadItem {
  final FileSystemEntity file;
  final FileStat stat;

  const DownloadItem({
    required this.file,
    required this.stat,
  });
}
