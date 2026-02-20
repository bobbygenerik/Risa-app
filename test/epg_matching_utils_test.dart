import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';

void main() {
  group('EPGMatchingUtils', () {
    test('calculateMatchScore returns same score with and without explicit normalized name', () {
      final playlistName = 'BBC One HD';
      final candidate = EpgMatchCandidate(id: 'bbc1', displayName: 'BBC One');

      final score1 = EPGMatchingUtils.calculateMatchScore(playlistName, candidate);

      final normalized = EPGMatchingUtils.normalizeChannelName(playlistName);
      final score2 = EPGMatchingUtils.calculateMatchScore(
        playlistName,
        candidate,
        playlistNormalizedName: normalized
      );

      expect(score1, equals(score2));
    });

    test('calculateMatchScore handles pre-calculated tokens correctly', () {
      final playlistName = 'BBC One HD';
      final candidate = EpgMatchCandidate(id: 'bbc1', displayName: 'BBC One');

      final tokens = EPGMatchingUtils.tokenize(playlistName);
      final score1 = EPGMatchingUtils.calculateMatchScore(playlistName, candidate);
      final score2 = EPGMatchingUtils.calculateMatchScore(
        playlistName,
        candidate,
        playlistTokens: tokens
      );

      expect(score1, equals(score2));
    });
  });
}
