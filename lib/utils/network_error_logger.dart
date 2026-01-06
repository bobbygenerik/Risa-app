import 'package:iptv_player/utils/debug_helper.dart';

void logHandshakeIfNeeded(String url, Object error, {String? context}) {
  final message = error.toString();
  if (!message.contains('HandshakeException') &&
      !message.contains('WRONG_VERSION_NUMBER')) {
    return;
  }

  final uri = Uri.tryParse(url);
  final contextLabel = context == null ? '' : ' [$context]';
  debugLog(
    'Network handshake error$contextLabel: url=$url scheme=${uri?.scheme} host=${uri?.host} port=${uri?.port} error=$message',
  );
}
