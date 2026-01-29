# EPG Matching Analysis Report

## Executive Summary

The user is experiencing a **14.5% EPG match rate** with their current EPG source, despite an existing EPG match report showing **94.5% matching** (4301/4552 channels). This analysis identifies the root cause and provides actionable recommendations.

## Root Cause Analysis

### 1. Empty EPG Cache File
**Critical Finding**: The EPG cache file at `docs/IPTVEditor_epg.txt` is **completely empty (0 lines)**.

This indicates that:
- The EPG data is not being properly downloaded from the configured URL
- The EPG parsing is failing silently
- The caching mechanism is broken or not being triggered

### 2. EPG Source Mismatch

**Discrepancy Identified**: 
- **EPG Match Report**: Shows 94.5% match rate (4301/4552 channels)
- **User's Current EPG Source**: Only 14.5% match rate

**Explanation**: The EPG match report was generated from a **different EPG source** than the one currently configured. The report shows channels like NBC10 WJAR (ID: `nbc10wjarprovidencerhodeisland.us`) as **MATCHED** at line 2330, but the user reports "nbc10 wjar has no match" with their current EPG source.

### 3. Low Coverage EPG Source

The user's current EPG source URL (https://opop.pro/epNCvfgjsYe9JC) does not contain data for most channels in the playlist, particularly:
- US local channels (NBC, ABC, CBS, Fox affiliates)
- Canadian channels
- Regional variants

## M3U Playlist Analysis

**Playlist**: `docs/Bobby_s_Playlist__DragTv_.txt`
- **Total Channels**: 927
- **Format**: Properly formatted M3U with tvg-ID attributes
- **Channel IDs**: Using US local channel ID format (e.g., `nbc10wjarprovidencerhodeisland.us`)

**Sample Channel IDs**:
```
abcwlneprovidenceri.us        (ABC6 WLNE)
abcwcvbboston.us                (WCVB5)
cbs12wpprovidence.us            (CBS12 WPRI)
nbc10wjarprovidencerhodeisland.us (NBC10 WJAR)
```

## Matching Logic Analysis

The EPG matching system uses a sophisticated multi-stage approach in [`_findBestEpgId()`](lib/services/incremental_epg_service.dart):

### Matching Priority:
1. **Manual mappings** (highest priority)
2. **Cached mappings** from database
3. **Exact ID match** (tvg-id == EPG channel ID)
4. **Normalized channel name match** (after removing suffixes, converting number words)
5. **Number word conversion fallback** ("ONE" → 1)

### Normalization Process:
The [`EPGMatchingUtils.normalizeForFilter()`](lib/utils/epg_matching_utils.dart) applies:
- Diacritic removal (é → e)
- Lowercase conversion
- Stripping of regional suffixes (Manchester, Yorkshire, etc.)
- Plus-one variant collapsing
- Number word conversion ("ONE" → 1)
- Technical label removal (HD, 4K, H.264, etc.)

## EPG Data Flow

```
1. EPG URL Configuration (SharedPreferences)
   ├─ custom_epg_url (user-set)
   └─ epg_url (auto-detected from playlist)

2. EPG Download (IncrementalEpgService._downloadEpgIfNeeded)
   ├─ Check cache validity
   ├─ Download from URL
   ├─ Validate XML structure
   └─ Save to cache file

3. EPG Parsing (_parseEpgInIsolate)
   ├─ Extract channel IDs from <channel> tags
   ├─ Extract programs from <programme> tags
   ├─ Build normalized mapping
   └─ Save to database

4. Channel Matching (_findBestEpgId)
   ├─ Try exact ID match
   ├─ Try normalized name match
   └─ Return EPG ID or null
```

## Diagnostic Findings

### EPG Diagnostic Screen
The [`EpgDiagnosticScreen`](lib/screens/epg_diagnostic_screen.dart) calculates match rate using:

```dart
final matchRate = total == 0 ? 0.0 : (matched / total) * 100.0;
```

**Key Metrics**:
- `total`: Total playlist channels
- `matched`: Channels with EPG matches
- `epgChannels`: Unique EPG channel IDs in source

### Current State
- **EPG Channels**: Likely very low (empty cache file)
- **Playlist Channels**: 927
- **Match Rate**: 14.5%

## Recommendations

### Immediate Actions (Priority 1)

#### 1. Check EPG URL Configuration
Verify the EPG URL is properly configured in SharedPreferences:
- Check `custom_epg_url` in SharedPreferences
- Check `epg_url` in SharedPreferences
- Verify URL is accessible and returns valid XML

**Action**: Use the EPG Diagnostic screen to view configured EPG URLs.

#### 2. Force EPG Reload
Clear the EPG cache and force a fresh download:

```dart
await epgService.clearAllData(clearUrls: false, clearSavedPlaylists: false);
await epgService.initialize(forceRefresh: true);
```

**Action**: Click "Reload EPG" button in EPG Diagnostic screen.

#### 3. Verify EPG Source Coverage
Test if the EPG source actually contains the channel IDs from the playlist:

**Test Channels**:
- `nbc10wjarprovidencerhodeisland.us`
- `abcwlneprovidenceri.us`
- `abcwcvbboston.us`

**Action**: Download the EPG XML and search for these channel IDs.

### Medium-Term Solutions (Priority 2)

#### 4. Use Alternative EPG Source
Find an EPG source with better US local channel coverage:

**Potential Sources**:
- IPTV Editor EPG (used for the 94.5% match report)
- XMLTV EPG sources with US local channels
- Provider-specific EPG from IPTV service

**Action**: Update the EPG URL in Settings → EPG Manager.

#### 5. Add Manual Mappings
For channels that don't match automatically, add manual mappings:

**Location**: Settings → EPG Manager → Manual Mappings

**Example Mappings**:
```
nbc10wjarprovidencerhodeisland.us → NBC10_WJAR
abcwlneprovidenceri.us → ABC6_WLNE
abcwcvbboston.us → WCVB5
```

#### 6. Improve EPG Source Selection
Implement EPG source validation:
- Check if EPG source contains expected channel IDs
- Show coverage percentage before using EPG source
- Allow multiple EPG sources with fallback

### Long-Term Improvements (Priority 3)

#### 7. Enhanced Matching Algorithm
Consider adding:
- Fuzzy string matching (Levenshtein distance)
- Channel number matching (e.g., "Channel 10" → WJAR)
- Network affiliate matching (NBC → NBC10)

#### 8. EPG Source Aggregation
Combine multiple EPG sources:
- Primary EPG source
- Secondary EPG source
- Fallback to manual mappings

#### 9. Better Error Reporting
Improve EPG error messages:
- Show specific channels not found in EPG
- Display EPG coverage statistics
- Suggest alternative EPG sources

## Testing Plan

### Step 1: Verify EPG Download
1. Check EPG URL configuration
2. Force EPG reload
3. Verify cache file is populated
4. Check EPG channel count

### Step 2: Test Channel Matching
1. Select 10 sample channels from playlist
2. Check if they have EPG matches
3. Verify matching logic is working
4. Check normalization is applied correctly

### Step 3: Compare EPG Sources
1. Download current EPG source
2. Download alternative EPG source
3. Compare channel coverage
4. Identify which source has better coverage

### Step 4: Implement Fixes
1. Apply manual mappings for critical channels
2. Switch to better EPG source if available
3. Test match rate improvement
4. Verify EPG data is loading correctly

## Expected Outcomes

### With Current EPG Source:
- **Match Rate**: ~14.5% (current state)
- **Issue**: EPG source lacks US local channel data

### With Alternative EPG Source (IPTV Editor):
- **Match Rate**: ~94.5% (based on existing report)
- **Issue**: Need to verify source is still available

### With Manual Mappings:
- **Match Rate**: Can reach 100% with enough manual mappings
- **Issue**: Manual effort required

## Conclusion

The primary issue is that the **current EPG source does not contain data for most channels in the user's playlist**. The EPG match report showing 94.5% matching was generated from a different EPG source with better coverage.

**Recommended Action**: Switch to an EPG source with better US local channel coverage, such as the one used to generate the 94.5% match report, or add manual mappings for critical channels.

---

**Generated**: 2025-01-28
**Analysis Based On**:
- M3U Playlist: `docs/Bobby_s_Playlist__DragTv_.txt`
- EPG Match Report: `docs/epg_match_report.txt`
- EPG Cache File: `docs/IPTVEditor_epg.txt` (empty)
- User EPG URL: https://opop.pro/epNCvfgjsYe9JC
- User M3U URL: https://opop.pro/mpjJUXrysJKL
