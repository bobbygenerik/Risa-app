import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<bool> pastePlainTextIntoController(TextEditingController controller) async {
  try {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    final text = data?.text?.trim();
    if (text == null || text.isEmpty) return false;
    controller.text = text;
    controller.selection = TextSelection.collapsed(offset: text.length);
    return true;
  } catch (_) {
    return false;
  }
}
