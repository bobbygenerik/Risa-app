#!/usr/bin/env python3
from pathlib import Path

root = Path("lib/services/epg")
src = (root / "epg_file_cache.dart").read_text().splitlines()

# Line numbers are 1-based in editor; convert to 0-based slices.
body_io = src[9:182]  # enum through _writeEpgResponseToFile
class_head = src[182:194]  # doc + class opening through cacheDuration
storage = src[194:269]  # getCacheFile .. isCacheValid
static_helpers = src[269:324]  # normalizeEpgUrl .. handleCacheUrlChange
download = src[325:480]  # downloadIfNeeded
validate = src[481:499]  # _validateDownloadedFile

imports = src[0:8]

shell = imports + [
    "part 'epg_file_cache_body_io.dart';",
    "part 'epg_file_cache_storage.dart';",
    "part 'epg_file_cache_download.dart';",
    "",
] + class_head + static_helpers + ["}"]

storage_ext = [
    "part of 'epg_file_cache.dart';",
    "",
    "extension EpgFileCacheStorage on EpgFileCache {",
] + ["  " + line[2:] if line.startswith("  ") else line for line in storage] + [
    "}",
]

download_ext = [
    "part of 'epg_file_cache.dart';",
    "",
    "Future<String?> _epgValidateDownloadedFile(File file) async {",
] + [
    line[4:] if line.startswith("    ") else line
    for line in validate[1:]
    if line.strip() != "}"
] + [
    "}",
    "",
    "extension EpgFileCacheDownload on EpgFileCache {",
] + ["  " + line[2:] if line.startswith("  ") else line for line in download] + [
    "}",
]

body_io_part = ["part of 'epg_file_cache.dart';", ""] + body_io

(root / "epg_file_cache.dart").write_text("\n".join(shell) + "\n")
(root / "epg_file_cache_body_io.dart").write_text("\n".join(body_io_part) + "\n")
(root / "epg_file_cache_storage.dart").write_text("\n".join(storage_ext) + "\n")
(root / "epg_file_cache_download.dart").write_text("\n".join(download_ext) + "\n")

# Fix validate call in download part
dl = (root / "epg_file_cache_download.dart").read_text()
dl = dl.replace(
    "await _validateDownloadedFile(file)",
    "await _epgValidateDownloadedFile(file)",
)
(root / "epg_file_cache_download.dart").write_text(dl)
print("wrote", *[p.name for p in root.glob("epg_file_cache*.dart")])
