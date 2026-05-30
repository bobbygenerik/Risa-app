part of 'epg_matching_utils.dart';

/// Represents a potential match candidate from the EPG.
class EpgMatchCandidate {
  final String id;
  final String displayName;
  final String normalizedName;
  final Set<String> tokens;

  EpgMatchCandidate({
    required this.id,
    required this.displayName,
    String? normalized,
  }) : normalizedName =
           normalized ?? EPGMatchingUtils.normalizeChannelName(displayName),
       tokens = EPGMatchingUtils.tokenize(displayName);

  @override
  String toString() => 'Candidate($id, "$displayName")';
}
