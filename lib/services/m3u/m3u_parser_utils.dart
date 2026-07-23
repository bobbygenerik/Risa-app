part of '../m3u_parser_service.dart';

bool _isSchemeChar(int code) {
  return (code >= 97 && code <= 122) || // a-z
      (code >= 65 && code <= 90) || // A-Z
      (code >= 48 && code <= 57) || // 0-9
      code == 43 ||
      code == 46 ||
      code == 45; // + . -
}

bool _isWhitespace(int code) {
  return code == 32 || (code >= 9 && code <= 13);
}

class _SimpleMatch {
  final int start;
  final int end;
  final String input;

  // Bolt Optimization: Removed eager `_match` string allocation.
  // Store start/end indices and lazily slice the string only when accessed.
  _SimpleMatch(this.start, this.end, this.input);

  String? group(int group) {
    if (group == 0) return input.substring(start, end);
    return null;
  }

  String? operator [](int group) => this.group(group);

  List<String?> groups(List<int> groupIndices) {
    return groupIndices.map(group).toList();
  }
}
