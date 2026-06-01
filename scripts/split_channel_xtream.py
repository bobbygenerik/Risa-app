#!/usr/bin/env python3
from pathlib import Path

p = Path("lib/providers/channel/channel_xtream_service.dart")
lines = p.read_text().splitlines()
prime_start = next(
    i for i, l in enumerate(lines) if l.strip() == "Future<void> primeLiveMetadata(String m3uUrl) async {"
)
# include doc if any - back to method with indent
while prime_start > 0 and lines[prime_start - 1].strip().startswith("///"):
    prime_start -= 1

shell = lines[:prime_start] + [
    "part 'channel_xtream_service_live.dart';",
    "}",
]
live_body = lines[prime_start:-1]  # drop closing brace of class
live_part = [
    "part of 'channel_xtream_service.dart';",
    "",
    "extension ChannelXtreamServiceLive on ChannelXtreamService {",
] + ["  " + line[2:] if line.startswith("  ") else line for line in live_body] + [
    "}",
]

p.write_text("\n".join(shell) + "\n")
(Path("lib/providers/channel") / "channel_xtream_service_live.dart").write_text(
    "\n".join(live_part) + "\n"
)
print("shell", len(shell), "live", len(live_part))
