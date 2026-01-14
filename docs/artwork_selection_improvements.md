# Artwork Selection Logic Improvements

## Overview
Enhanced artwork selection across all metadata services with improved filtering, sorting, and fallback logic while maintaining the existing priority order.

## Priority Order

### General Content
1. **TVDB** (v4 API with artwork filtering)
2. **TMDB** (enhanced filtering and sorting)
3. **Fanart** (sorted by likes)

### Sports Content
1. **Sportradar**
2. **TheSportsDB** (extended with team artwork)
3. **TVDB** (fallback)

## Changes by Service

### 1. TMDB Service (`lib/services/tmdb_service.dart`)

**Method:** `_getHighResBackdrop()`

**Improvements:**
- Changed `include_image_language` parameter from `en,null` to `null,en` for better language-neutral results
- Added filtering by `iso_639_1` field (only `null` or `en` allowed)
- Enforced minimum resolution: 1920x1080 (up from 1600x900)
- Added aspect ratio preference: images with ratio > 1.7 are prioritized
- Implemented multi-level sorting:
  1. Aspect ratio > 1.7 (wide format preferred)
  2. `vote_average` descending (quality rating)
  3. `vote_count` descending (popularity)

**Code snippet:**
```dart
// Filter: iso_639_1 == null or 'en', min 1920x1080
final filtered = available.where((entry) {
  final lang = entry['iso_639_1'] as String?;
  if (lang != null && lang != 'en') return false;
  final width = (entry['width'] as int?) ?? 0;
  final height = (entry['height'] as int?) ?? 0;
  return width >= 1920 && height >= 1080;
}).toList();

// Sort: prefer aspect ratio > 1.7, then vote_average desc, then vote_count desc
```

### 2. Fanart Service (`lib/services/fanart_service.dart`)

**Method:** `getBackdrop()`

**Improvements:**
- Changed from taking first result to sorting by `likes` field
- Sorts in descending order (most liked first)
- Maintains fallback position in priority chain

**Code snippet:**
```dart
// Sort by likes desc
final sorted = List<Map<String, dynamic>>.from(
  list.map((e) => e as Map<String, dynamic>),
);
sorted.sort((a, b) {
  final aLikes = int.tryParse(a['likes']?.toString() ?? '0') ?? 0;
  final bLikes = int.tryParse(b['likes']?.toString() ?? '0') ?? 0;
  return bLikes.compareTo(aLikes);
});
```

### 3. TVDB Service (`lib/services/tvdb_service.dart`)

**Major Changes:**
- Switched from v4 `/series/{id}/extended` to `/series/{id}/artworks` endpoint
- Added `/movies/{id}/artworks` endpoint support
- Implemented artwork type filtering

**New Constants:**
```dart
static const int _kArtworkTypeBackground = 3;
static const int _kArtworkTypeMovieBackground = 15;
```

**New Methods:**
- `_fetchSeriesImage()` - Uses `/series/{id}/artworks` endpoint
- `_fetchMovieImage()` - Uses `/movies/{id}/artworks` endpoint
- `_selectBestArtwork()` - Filters by type 3 or 15, sorts by score

**Improvements:**
- Filters artwork by type (Background or Movie Background only)
- Avoids posters and banners
- Sorts by `score` field in descending order
- Falls back to movie endpoint if series fails

**Code snippet:**
```dart
/// Selects best artwork from list: filters by type 3 or 15, prefers higher score.
static String? _selectBestArtwork(List<dynamic> artworks) {
  final backgrounds = artworks.where((art) {
    if (art is! Map<String, dynamic>) return false;
    final type = art['type'] as int?;
    return type == _kArtworkTypeBackground ||
        type == _kArtworkTypeMovieBackground;
  }).toList();

  // Sort by score desc
  backgrounds.sort((a, b) {
    final aScore = (a['score'] as num?)?.toDouble() ?? 0.0;
    final bScore = (b['score'] as num?)?.toDouble() ?? 0.0;
    return bScore.compareTo(aScore);
  });
```

### 4. TheSportsDB Service (`lib/services/thesportsdb_service.dart`)

**Major Changes:**
- Extended event search to include more fields
- Added team lookup fallback with fanart support

**New Method:**
- `_tryTeamLookup()` - Searches for team artwork when event search fails

**Improvements:**
- Event search now checks: `strFanart` → `strThumb` → `strPoster`
- Team lookup checks (in order):
  1. `strTeamFanart1` through `strTeamFanart4`
  2. `strStadium`
  3. `strTeamBadge` (last resort)

**Code snippet:**
```dart
/// Attempts to find team artwork by searching for team name.
/// Uses strTeamFanart1-4 and strStadium when available.
static Future<String?> _tryTeamLookup(String query) async {
  // ...
  for (final raw in teams) {
    // Try fanart fields first (strTeamFanart1-4)
    for (var i = 1; i <= 4; i++) {
      final fanart = raw['strTeamFanart$i'] as String?;
      if (fanart != null && fanart.isNotEmpty) return fanart;
    }
    // Fallback to stadium
    final stadium = raw['strStadium'] as String?;
    if (stadium != null && stadium.isNotEmpty) return stadium;
  }
}
```

### 5. Program Artwork Widget (`lib/widgets/program_artwork_widget.dart`)

**Changes:**
- Added documentation comment clarifying priority order
- No functional changes to maintain existing behavior

**Comment added:**
```dart
// Priority order for sports: Sportradar -> TheSportsDB -> TVDB
// Priority order for general: TVDB -> TMDB -> Fanart
```

## Benefits

1. **Higher Quality Images:** Minimum 1920x1080 resolution with aspect ratio preference
2. **Better Sorting:** Multi-level sorting by quality metrics (votes, likes, scores)
3. **Improved Sports Coverage:** Team artwork fallback for sports events
4. **Cleaner Results:** Proper filtering to avoid posters/banners in background contexts
5. **Language Neutrality:** Prioritizes language-neutral artwork with English fallback
6. **Maintained Compatibility:** All changes are backward compatible with existing code

## Testing Recommendations

1. Test TMDB artwork selection with various TV shows and movies
2. Verify Fanart sorting with content that has multiple backgrounds
3. Test TVDB v4 artwork endpoints with both series and movies
4. Verify TheSportsDB team lookup with various sports events
5. Check fallback behavior when primary sources fail
6. Validate aspect ratio filtering for wide-format displays

## Notes

- All changes maintain ASCII encoding
- Existing cache mechanisms remain intact
- Error handling and logging preserved
- No breaking changes to public APIs
