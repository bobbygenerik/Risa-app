bool isPlaylistHandshakeError(Object error) {
  final text = error.toString();
  return text.contains('HandshakeException') ||
      text.contains('WRONG_VERSION_NUMBER') ||
      text.contains('CERTIFICATE_VERIFY_FAILED') ||
      text.contains('wrong version number');
}

class PlaylistLoadErrorInfo {
  const PlaylistLoadErrorInfo({
    required this.message,
    this.shouldRethrow = false,
  });

  final String message;
  final bool shouldRethrow;
}

PlaylistLoadErrorInfo classifyPlaylistLoadError(Object error) {
  final text = error.toString();

  if (text.contains('HandshakeException') ||
      text.contains('WRONG_VERSION_NUMBER') ||
      text.contains('wrong version number')) {
    return PlaylistLoadErrorInfo(
      message: 'SSL/TLS Handshake Error\n\n'
          'Technical details:\n$error\n\n'
          'Possible causes:\n'
          '• Server requires specific TLS version\n'
          '• SSL certificate is invalid or expired\n'
          '• Firewall or proxy blocking connection\n\n'
          'The app is configured to accept all certificates.\n'
          'This is a server-side compatibility issue.',
    );
  }

  if (text.contains('SocketException')) {
    return PlaylistLoadErrorInfo(
      message: 'Connection Error: Unable to reach server.\n\n'
          'Details: $text\n\n'
          'Check your internet connection and server URL.',
    );
  }

  if (text.contains('timeout')) {
    return PlaylistLoadErrorInfo(
      message: 'Timeout Error: Playlist took too long to download (90 second limit).\n\n'
          'This could mean:\n'
          '• The playlist is very large\n'
          '• Your internet connection is slow\n'
          '• The server is overloaded\n\n'
          'Try again in a few moments.',
    );
  }

  if (text.contains('FormatException')) {
    return PlaylistLoadErrorInfo(
      message: 'Invalid playlist file or format. The playlist could not be parsed.\n\n'
          'Please check that your playlist URL is correct and the file is not empty or corrupted.',
    );
  }

  if (text.contains('Empty playlist file') ||
      text.contains('Parsed playlist is empty or invalid')) {
    return const PlaylistLoadErrorInfo(message: '');
  }

  return PlaylistLoadErrorInfo(message: text, shouldRethrow: true);
}
