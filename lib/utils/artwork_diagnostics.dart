import 'dart:collection';

class ArtworkDiagnosticsEntry {
  final DateTime timestamp;
  final String program;
  final String source;
  final String url;
  final String result;

  const ArtworkDiagnosticsEntry({
    required this.timestamp,
    required this.program,
    required this.source,
    required this.url,
    required this.result,
  });
}

class ArtworkDiagnosticsSnapshot {
  final List<ArtworkDiagnosticsEntry> entries;
  final Map<String, int> sourceCounts;
  final Map<String, int> resultCounts;

  const ArtworkDiagnosticsSnapshot({
    required this.entries,
    required this.sourceCounts,
    required this.resultCounts,
  });
}

class ArtworkDiagnostics {
  static const int _maxEntries = 80;
  static final ListQueue<ArtworkDiagnosticsEntry> _entries =
      ListQueue<ArtworkDiagnosticsEntry>(_maxEntries);
  static final Map<String, int> _sourceCounts = <String, int>{};
  static final Map<String, int> _resultCounts = <String, int>{};

  static void record(String message) {
    final program = _extractField(message, 'program');
    final source = _extractField(message, 'source');
    final url = _extractField(message, 'url');
    final result = _extractField(message, 'result');
    if (program.isEmpty && source.isEmpty && url.isEmpty && result.isEmpty) {
      return;
    }
    final entry = ArtworkDiagnosticsEntry(
      timestamp: DateTime.now(),
      program: program,
      source: source,
      url: url,
      result: result,
    );
    if (_entries.length >= _maxEntries) {
      _entries.removeFirst();
    }
    _entries.add(entry);
    if (source.isNotEmpty) {
      _sourceCounts[source] = (_sourceCounts[source] ?? 0) + 1;
    }
    if (result.isNotEmpty) {
      _resultCounts[result] = (_resultCounts[result] ?? 0) + 1;
    }
  }

  static ArtworkDiagnosticsSnapshot snapshot() {
    return ArtworkDiagnosticsSnapshot(
      entries: List<ArtworkDiagnosticsEntry>.from(_entries),
      sourceCounts: Map<String, int>.from(_sourceCounts),
      resultCounts: Map<String, int>.from(_resultCounts),
    );
  }

  static void clear() {
    _entries.clear();
    _sourceCounts.clear();
    _resultCounts.clear();
  }

  static String _extractField(String message, String key) {
    final prefix = '$key=';
    final start = message.indexOf(prefix);
    if (start == -1) return '';
    var i = start + prefix.length;
    if (i >= message.length) return '';
    if (message[i] == '"') {
      i++;
      final end = message.indexOf('"', i);
      if (end == -1) return message.substring(i).trim();
      return message.substring(i, end).trim();
    }
    final end = message.indexOf(' ', i);
    if (end == -1) return message.substring(i).trim();
    return message.substring(i, end).trim();
  }
}
