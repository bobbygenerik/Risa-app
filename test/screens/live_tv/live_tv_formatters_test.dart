import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/screens/live_tv/live_tv_formatters.dart';

void main() {
  group('LiveTvFormatters', () {
    group('normalizeTitleForFilter', () {
      test('returns empty string for empty input', () {
        expect(LiveTvFormatters.normalizeTitleForFilter(''), '');
      });

      test('lowercases and trims', () {
        expect(LiveTvFormatters.normalizeTitleForFilter('  HELLO WORLD  '),
            'hello world');
      });

      test('removes articles at the beginning of the string', () {
        expect(LiveTvFormatters.normalizeTitleForFilter('The Matrix'), 'matrix');
        expect(LiveTvFormatters.normalizeTitleForFilter('A Beautiful Mind'),
            'beautiful mind');
        expect(LiveTvFormatters.normalizeTitleForFilter('An Inconvenient Truth'),
            'inconvenient truth');
      });

      test('does not remove articles if they are not at the beginning', () {
        expect(
            LiveTvFormatters.normalizeTitleForFilter('Return of the Jedi'),
            'return of the jedi');
      });

      test('replaces non-alphanumeric characters with spaces', () {
        expect(LiveTvFormatters.normalizeTitleForFilter('Spider-Man: No Way Home!'),
            'spider man no way home');
        expect(LiveTvFormatters.normalizeTitleForFilter('Star Wars (1977)'),
            'star wars 1977');
      });

      test('collapses multiple spaces into a single space', () {
        expect(
            LiveTvFormatters.normalizeTitleForFilter(
                '  The   Lord  of   the Rings:  The Fellowship   of the Ring  '),
            'lord of the rings the fellowship of the ring');
      });

      test('handles complex examples', () {
        expect(
            LiveTvFormatters.normalizeTitleForFilter(
                '  The   Batman-Begins: Part II! (2024)  '),
            'batman begins part ii 2024');
      });
    });

    group('replaceEpgWithData', () {
      test('returns null for null input', () {
        expect(LiveTvFormatters.replaceEpgWithData(null), null);
      });

      test('replaces "EPG" with "data" case-insensitively', () {
        expect(LiveTvFormatters.replaceEpgWithData('No EPG available'),
            'No data available');
        expect(LiveTvFormatters.replaceEpgWithData('epg data missing'),
            'data data missing');
        expect(LiveTvFormatters.replaceEpgWithData('Update Epg info'),
            'Update data info');
      });

      test('trims the resulting string', () {
        expect(LiveTvFormatters.replaceEpgWithData('  EPG is loading  '),
            'data is loading');
      });

      test('does not replace "epg" if it is part of another word', () {
        expect(LiveTvFormatters.replaceEpgWithData('Sleepgap'), 'Sleepgap');
      });
    });

    group('formatProgramTime', () {
      test('formats midnight correctly', () {
        expect(LiveTvFormatters.formatProgramTime(DateTime(2024, 1, 1, 0, 15)),
            '12:15 AM');
      });

      test('formats noon correctly', () {
        expect(LiveTvFormatters.formatProgramTime(DateTime(2024, 1, 1, 12, 30)),
            '12:30 PM');
      });

      test('formats morning times correctly', () {
        expect(LiveTvFormatters.formatProgramTime(DateTime(2024, 1, 1, 9, 5)),
            '09:05 AM');
      });

      test('formats afternoon/evening times correctly', () {
        expect(LiveTvFormatters.formatProgramTime(DateTime(2024, 1, 1, 18, 45)),
            '06:45 PM');
      });
    });
  });
}
