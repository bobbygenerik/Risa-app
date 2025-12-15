# EPG Data Flow Debug Report

## 🔍 Root Cause Analysis

After investigating the EPG data flow, I've identified the **core issue**: there's a **service mismatch** causing EPG data to load successfully but not reach the UI components.

### Key Findings

#### 1. **EPG Data IS Loading Successfully**
- ✅ `EpgService` and `IncrementalEpgService` are both working
- ✅ XML parsing is successful 
- ✅ Data is stored in memory (`_loadedChannels` and `_epgData`)
- ✅ Cache mechanisms are functioning

#### 2. **Service Mismatch Problem**
❌ **Critical Issue**: The app has **two different EPG services** with different capabilities:

- **`EpgService`** (comprehensive, in `lib/services/epg_service.dart`):
  - Has full EPG data with excellent matching logic
  - Supports manual mappings, fuzzy matching, secondary EPG
  - **NOT being used by UI components**

- **`IncrementalEpgService`** (limited, in `lib/services/incremental_epg_service.dart`):
  - Has basic EPG loading
  - **Being used by UI components** but has limited data
  - Missing comprehensive matching algorithms

#### 3. **UI Component Integration Issues**

**Hero Banner** (`live_tv_screen.dart`):
```dart
// Using IncrementalEpgService (LIMITED)
Consumer2<ChannelProvider, IncrementalEpgService>(
  builder: (context, channelProvider, epgService, _) {
    // Gets current program from limited service
    currentProgram = epgService.getCurrentProgram(channelId);
```

**Channel Cards** (`live_tv_screen.dart`):
```dart
// Using IncrementalEpgService (LIMITED)
Selector<IncrementalEpgService, Program?>(
  selector: (_, epgService) => epgService.getCurrentProgram(
    channel.tvgId ?? channel.id,
  ),
```

**EPG Guide**:
```dart
// Also using IncrementalEpgService (LIMITED)
```

#### 4. **Channel ID Mapping Issues**

**Problem**: Channel IDs from M3U don't exactly match EPG service keys
```dart
// ChannelProvider has:
channel.tvgId = "bbc1" // from M3U
channel.id = "12345"   // generated ID

// EpgService expects:
epgKey = "bbc1.co.uk"  // from EPG XML
```

**Result**: Manual mappings exist but UI components don't use the service that applies them.

## 🚨 Why EPG Data Loads But Doesn't Display

1. **EPG loads successfully** → Data exists in `IncrementalEpgService._loadedChannels`
2. **UI tries to get data** → Calls `epgService.getCurrentProgram(channelId)`
3. **Matching fails** → `channelId` doesn't match any EPG keys
4. **Returns null** → UI shows no EPG data
5. **Fallback to EpgService** → Never happens because UI uses wrong service

## 🔧 Solution

### Option 1: Migrate UI to use EpgService (RECOMMENDED)
**Pros**: Full functionality, proven matching logic
**Cons**: Requires code changes across multiple files

### Option 2: Enhance IncrementalEpgService
**Pros**: Less code changes
**Cons**: Duplicates existing functionality

### Option 3: Create Unified EPG Service
**Pros**: Clean architecture
**Cons**: More complex refactoring

## 📋 Implementation Plan

### Step 1: Replace IncrementalEpgService with EpgService

**Files to update:**
1. `lib/main.dart` - Change provider registration
2. `lib/screens/live_tv_screen.dart` - Update imports and usage
3. `lib/widgets/epg_widgets.dart` - Update imports
4. Any other files importing `IncrementalEpgService`

**Key changes needed:**

#### 1. Update main.dart provider registration
```dart
// Change FROM:
ChangeNotifierProvider(
  create: (context) {
    final service = IncrementalEpgService();
    _runDeferred(() async {
      await service.initialize();
    });
    return service;
  },
),

// Change TO:
ChangeNotifierProvider(
  create: (context) {
    final service = EpgService();
    _runDeferred(() async {
      await service.initialize();
    });
    return service;
  },
),
```

#### 2. Update live_tv_screen.dart imports
```dart
// Change FROM:
import 'package:iptv_player/services/incremental_epg_service.dart';

// Change TO:
import 'package:iptv_player/services/epg_service.dart';
```

#### 3. Update all service method calls
```dart
// IncrementalEpgService methods → EpgService equivalents
epgService.getCurrentProgram(channelId)           → epgService.getCurrentProgram(channelId)
epgService.hasEpgData(channelId)                  → epgService.hasEpgData(channelId)
epgService.getProgramsForChannel(channelId)       → epgService.getProgramsForChannel(channelId)
```

### Step 2: Ensure EPG URL Configuration

**Check that EPG URL is properly saved:**
```dart
// In ChannelProvider, when EPG URL is found:
final epgUrl = parsed['epgUrl'] as String?;
if (epgUrl != null && epgUrl.isNotEmpty) {
  debugLog('ChannelProvider: Found EPG URL: $epgUrl (auto-saving)');
  await prefs.setString('epg_url', epgUrl);
  unawaited(_epgService?.initialize()); // Trigger EPG loading
}
```

### Step 3: Test EPG Integration

**Verify the fix works:**
1. Load a playlist with channels
2. Configure EPG URL (or let auto-configure)
3. Check that hero banner shows current program
4. Verify channel cards show program info
5. Test EPG guide functionality

## 🎯 Expected Results

After implementing the solution:
- ✅ Hero banner will show current program with artwork
- ✅ Channel cards will display program titles and times  
- ✅ Progress bars will show program completion
- ✅ EPG guide will load and display schedule
- ✅ Manual mappings will work correctly
- ✅ Fuzzy matching will find more EPG matches

## 🔍 Debug Commands

**To verify EPG data is loading:**
```dart
// Add to any screen to check EPG service status
final epgService = Provider.of<EpgService>(context, listen: false);
debugLog('EPG Service: ${epgService.hasData ? "HAS DATA" : "NO DATA"}');
debugLog('EPG Channels: ${epgService.totalChannelCount}');
debugLog('EPG Loading: ${epgService.isLoading}');
```

**To test channel matching:**
```dart
// In any widget, test if a specific channel has EPG data
final channel = channels[0];
final hasEpg = epgService.hasEpgData(channel.tvgId ?? channel.id, channelName: channel.name);
debugLog('Channel "${channel.name}" has EPG: $hasEpg');
```

## 📝 Next Steps

1. **Immediate**: Update provider registration in `main.dart`
2. **Immediate**: Update imports in UI components
3. **Short-term**: Test and verify EPG integration
4. **Medium-term**: Remove unused `IncrementalEpgService` code
5. **Long-term**: Add EPG loading progress indicators

---

**Issue Identified**: December 15, 2025  
**Status**: Solution Ready for Implementation  
**Priority**: HIGH (affects core app functionality)
