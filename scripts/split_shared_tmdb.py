#!/usr/bin/env python3
"""Split shared-code tmdb_service.dart artwork into a part file."""
from pathlib import Path
import re

p = Path("shared-code/lib/services/tmdb_service.dart")
lines = p.read_text().splitlines()

art = next(
    i
    for i, l in enumerate(lines)
    if "static Future<String?> getBestBackdrop(String title" in l
)
while art > 0 and (
    lines[art - 1].strip().startswith("///") or lines[art - 1].strip() == ""
):
    art -= 1
init = next(i for i, l in enumerate(lines) if "static Future<void> init()" in l)

artwork = []
for line in lines[art:init]:
    if line.startswith("  "):
        line = line[2:]
    if line.lstrip().startswith("static "):
        line = line[: line.index("static ")] + line[line.index("static ") + 7 :]
    artwork.append(line)
text = "\n".join(artwork)

private_renames = [
    ("_resolveTmdbBackdrop", "_tmdbResolveBackdrop"),
    ("_extractBackdropUrl", "_tmdbExtractBackdropUrl"),
    ("_getHighResBackdrop", "_tmdbGetHighResBackdrop"),
    ("_extractSportsTeams", "_tmdbExtractSportsTeams"),
    ("_tryTeamHeuristic", "_tmdbTryTeamHeuristic"),
    ("_resizeTmdbImageUrl", "_tmdbResizeTmdbImageUrl"),
    ("_titleSimilarity", "_tmdbTitleSimilarity"),
    ("_getAnyBackdrop", "_tmdbGetAnyBackdrop"),
    ("_hasArtwork", "_tmdbHasArtwork"),
]
public_renames = [
    ("getBestBackdropBatch", "tmdbGetBestBackdropBatch"),
    ("getBestBackdropDetails", "tmdbGetBestBackdropDetails"),
    ("getBestBackdrop", "tmdbGetBestBackdrop"),
    ("getTitleLogo", "tmdbGetTitleLogo"),
]
for old, new in private_renames:
    text = re.sub(r"(?<![\w\.])" + re.escape(old) + r"(?!\w)", new, text)
for old, new in public_renames:
    text = re.sub(r"(?<![\w\.])" + re.escape(old) + r"\s*\(", new + "(", text)
for priv in ["_getOMDbDetails"] + [
    "_normalizeTitle",
    "_cacheKey",
    "_getFromCache",
    "_setCache",
    "_apiKey",
    "_baseUrl",
    "_imageBaseUrl",
    "_whitespaceRe",
    "_processingRequests",
    "_pendingRequests",
    "_omdbApiKey",
    "_omdbBaseUrl",
]:
    text = re.sub(
        r"(?<!Service\.)(?<![\w\.])" + re.escape(priv), "TMDBService." + priv, text
    )
text = text.replace("await init()", "await TMDBService.init()")
text = re.sub(r"(?<!Service\.)\bgetTVDetails\s*\(", "TMDBService.getTVDetails(", text)
text = re.sub(
    r"(?<!Service\.)\bgetMovieDetails\s*\(", "TMDBService.getMovieDetails(", text
)
text = text.replace(
    "tmdbGetBestBackdrop(title", "TMDBService.getBestBackdrop(title"
)

out = Path("shared-code/lib/services/tmdb")
out.mkdir(exist_ok=True)
(out / "tmdb_artwork.dart").write_text(
    "part of '../tmdb_service.dart';\n\n" + text + "\n"
)

forwards = [
    "  static Future<String?> getBestBackdrop(String title, {int? year}) =>",
    "      tmdbGetBestBackdrop(title, year: year);",
    "  static Future<Map<String, String?>> getBestBackdropBatch(",
    "    List<String> titles, {int? year}) =>",
    "      tmdbGetBestBackdropBatch(titles, year: year);",
]
shell = (
    lines[:8]
    + ["part 'tmdb/tmdb_artwork.dart';", ""]
    + lines[8:art]
    + [""]
    + forwards
    + [""]
    + lines[init:]
)
p.write_text("\n".join(shell).replace("_titleSimilarity(", "_tmdbTitleSimilarity(") + "\n")
print(f"shell {len(shell)} lines, artwork from line {art + 1}")
