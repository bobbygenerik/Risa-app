# EPG Loading Fix

## Problem
Users reported that EPG (guide) data was not loading in the guide, cards, and hero sections. This is commonly caused by parsing large XML files in memory, leading to crashes or silent failures on resource-constrained devices (or with very large EPGs).

## Solution
Rewrote `lib/services/incremental_epg_service.dart` to use a **streaming XML parser**.

### Key Changes
1.  **Streaming vs. DOM**: Replaced `XmlDocument.parse(content)` (which loads the entire file into RAM) with `XmlEventDecoder` via `toXmlEvents()`. This parses the file element-by-element, keeping memory usage constant regardless of file size.
2.  **Isolate Optimization**: The parsing logic runs in a background isolate. Previously, the main thread read the file as a huge string and passed it to the isolate (doubling memory usage). Now, the **file path** is passed, and the isolate streams the file directly from disk.
3.  **Robust GZIP Handling**: Improved detection of GZIP content by checking both HTTP headers and file extensions.
4.  **Error Handling**: Added specific error logging for download failures, empty files, and parsing errors.

## Verification
- The service now logs download progress and file sizes.
- Parsing is resilient to large files.
- `_findBestEpgId` logic remains to ensure channel IDs match.

This change ensures that "guide", "cards" (channel list items), and "hero" (featured content) can correctly display program data.