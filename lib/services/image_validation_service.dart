import 'package:iptv_player/utils/image_url_helper.dart';

class ImageValidationService {
  static bool isKnownInvalid(String? url) {
    if (url == null || url.isEmpty) return true;
    normalizeImageUrl(url);
    return false;
  }

  static bool isKnownValid(String? url) {
    if (url == null || url.isEmpty) return false;
    normalizeImageUrl(url);
    return true;
  }

  static Future<bool> isValid(String? url) async {
    if (url == null || url.isEmpty) return false;
    normalizeImageUrl(url);
    return true;
  }
}
