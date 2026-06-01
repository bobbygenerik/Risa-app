#!/usr/bin/env python3
"""Analyze M3U ↔ XMLTV match rates using Risa-style matching tiers.

Usage:
  python3 tools/analyze_m3u_epg_match.py playlist.m3u epg.xmltv
  python3 tools/analyze_m3u_epg_match.py --url-m3u URL --url-epg URL
"""
from __future__ import annotations

import argparse
import gzip
import re
import sys
import urllib.request
import xml.etree.ElementTree as ET
from collections import defaultdict
from dataclasses import dataclass
from typing import Dict, Iterable, List, Optional, Set, Tuple

# --- Normalization (subset of lib/utils/epg_matching_utils.dart) ---

NOISE_RE = re.compile(
    r"(\bvip\b|\btrial\b|\btest\b|\bbackup\b|\bstable\b|\badult\b|\bxxx\b|"
    r"\b24\/7\b|\bpaid\s+programming\b|\bhome\s+shopping\b)",
    re.I,
)
TECH_RE = re.compile(
    r"(\b4k\b|\buhd\b|\bfhd\b|\bhd\b|\bsd\b|\b720p\b|\b1080p\b|\bh264\b|\bh265\b)",
    re.I,
)
REGION_PREFIX_RE = re.compile(r"^([A-Z]{2,3})[:|]\s*", re.I)
BRACKETS_RE = re.compile(r"[\[\(\{].*?[\]\)\}]")
NON_ALNUM_RE = re.compile(r"[^a-z0-9]")
TOKEN_SPLIT_RE = re.compile(r"[^a-z0-9]+")

NUMBER_WORDS = {
    "one": "1",
    "two": "2",
    "three": "3",
    "four": "4",
    "five": "5",
    "six": "6",
    "seven": "7",
    "eight": "8",
    "nine": "9",
    "ten": "10",
}
NUMBER_WORD_RE = re.compile(r"\b(" + "|".join(NUMBER_WORDS) + r")\b", re.I)


def clean_channel_name(text: str) -> str:
    s = (text or "").lower()
    s = BRACKETS_RE.sub(" ", s)
    s = REGION_PREFIX_RE.sub("", s)
    s = TECH_RE.sub(" ", s)
    s = NOISE_RE.sub(" ", s)
    s = NUMBER_WORD_RE.sub(lambda m: NUMBER_WORDS[m.group(0).lower()], s)
    return s.strip()


def normalize_channel_name(text: str) -> str:
    return NON_ALNUM_RE.sub("", clean_channel_name(text))


def tokenize(text: str) -> Set[str]:
    cleaned = clean_channel_name(text)
    tokens: Set[str] = set()
    for part in TOKEN_SPLIT_RE.split(cleaned):
        if len(part) >= 2 or (part and part[-1].isdigit()):
            tokens.add(part)
    return tokens


def levenshtein(a: str, b: str) -> int:
    if a == b:
        return 0
    if not a:
        return len(b)
    if not b:
        return len(a)
    if len(b) > len(a):
        a, b = b, a
    prev = list(range(len(b) + 1))
    for i, ca in enumerate(a, 1):
        curr = [i]
        for j, cb in enumerate(b, 1):
            cost = 0 if ca == cb else 1
            curr.append(
                min(curr[-1] + 1, prev[j] + 1, prev[j - 1] + cost)
            )
        prev = curr
    return prev[-1]


@dataclass
class EpgCandidate:
    epg_id: str
    display_name: str
    normalized: str
    tokens: Set[str]


def calculate_match_score(playlist_name: str, candidate: EpgCandidate) -> float:
    pl_norm = normalize_channel_name(playlist_name)
    if pl_norm and pl_norm == candidate.normalized:
        return 100.0

    pl_tokens = tokenize(playlist_name)
    if not pl_tokens or not candidate.tokens:
        return 0.0

    smaller, larger = (
        (pl_tokens, candidate.tokens)
        if len(pl_tokens) < len(candidate.tokens)
        else (candidate.tokens, pl_tokens)
    )
    inter = sum(1 for t in smaller if t in larger)
    union = len(pl_tokens) + len(candidate.tokens) - inter
    jaccard = (inter / union) * 100.0 if union else 0.0

    cand_cov = (inter / len(candidate.tokens)) * 100.0 if candidate.tokens else 0.0
    pl_cov = (inter / len(pl_tokens)) * 100.0 if pl_tokens else 0.0
    best_overlap = max(cand_cov, pl_cov)

    if cand_cov >= 100.0 or pl_cov >= 100.0:
        diff = abs(len(pl_norm) - len(candidate.normalized))
        return 95.0 if diff < 3 else 85.0

    lev = 0.0
    if best_overlap > 50.0 or len(pl_norm) < 5:
        dist = levenshtein(pl_norm, candidate.normalized)
        mx = max(len(pl_norm), len(candidate.normalized))
        if mx:
            lev = (1.0 - dist / mx) * 100.0
    return max(jaccard, lev)


# --- M3U / XMLTV ---

TVG_ID_RE = re.compile(r'tvg[-_]?id\s*=\s*["\']([^"\']+)["\']', re.I)
GROUP_RE = re.compile(r'group-title="([^"]*)"', re.I)


@dataclass
class PlaylistChannel:
    tvg_id: str
    name: str
    group: str
    channel_id: str


def is_likely_live(url: str) -> bool:
    u = url.lower()
    return "/live/" in u or u.endswith(".m3u8") or u.endswith(".ts")


def is_likely_vod(url: str, name: str, group: str) -> bool:
    u = url.lower()
    if is_likely_live(url):
        return False
    if any(x in u for x in ("/movie/", "/movies/", "/series/", "/vod/")):
        return True
    g = group.lower()
    if "series" in g or "movie" in g or "vod" in g:
        return True
    return bool(re.search(r"S\d+E\d+", name, re.I))


def parse_m3u(path: str) -> List[PlaylistChannel]:
    channels: List[PlaylistChannel] = []
    extinf: Optional[str] = None
    with open(path, encoding="utf-8", errors="replace") as f:
        for raw in f:
            line = raw.strip()
            if line.startswith("#EXTINF"):
                extinf = line
                continue
            if not extinf or not line or line.startswith("#"):
                continue
            m = TVG_ID_RE.search(extinf)
            tvg = (m.group(1) if m else "").strip()
            name = extinf.split(",", 1)[-1].strip() if "," in extinf else ""
            gm = GROUP_RE.search(extinf)
            group = gm.group(1) if gm else ""
            if is_likely_vod(line, name, group):
                extinf = None
                continue
            cid = tvg if tvg else name
            channels.append(
                PlaylistChannel(tvg_id=tvg, name=name, group=group, channel_id=cid)
            )
            extinf = None
    return channels


def load_xmltv(path: str) -> Tuple[Set[str], Dict[str, str], Dict[str, List[str]], List[EpgCandidate]]:
    ids: Set[str] = set()
    lower_to_raw: Dict[str, str] = {}
    norm_map: Dict[str, List[str]] = defaultdict(list)
    display_by_id: Dict[str, List[str]] = {}

    for _, el in ET.iterparse(path, events=("end",)):
        if not el.tag.endswith("channel"):
            continue
        cid = (el.get("id") or "").strip()
        if not cid:
            el.clear()
            continue
        ids.add(cid)
        lower_to_raw.setdefault(cid.lower(), cid)
        nk = normalize_channel_name(cid)
        if nk:
            norm_map[nk].append(cid)
        names: List[str] = []
        for dn in el.findall("{*}display-name"):
            if dn.text and dn.text.strip():
                names.append(dn.text.strip())
        if names:
            display_by_id[cid] = names
            for n in names:
                nn = normalize_channel_name(n)
                if nn:
                    norm_map[nn].append(cid)
        el.clear()

    candidates: List[EpgCandidate] = []
    for epg_id, names in display_by_id.items():
        candidates.append(
            EpgCandidate(epg_id, epg_id, normalize_channel_name(epg_id), tokenize(epg_id))
        )
        for n in names:
            if n.strip():
                candidates.append(
                    EpgCandidate(
                        epg_id, n, normalize_channel_name(n), tokenize(n)
                    )
                )

    return ids, lower_to_raw, norm_map, candidates


def match_channel(
    ch: PlaylistChannel,
    ids: Set[str],
    lower_to_raw: Dict[str, str],
    norm_map: Dict[str, List[str]],
    candidates: List[EpgCandidate],
    fuzzy_threshold: float = 65.0,
) -> Tuple[Optional[str], str]:
    def raw_match(value: str) -> Optional[str]:
        v = value.strip()
        if not v:
            return None
        if v in ids:
            return v
        return lower_to_raw.get(v.lower())

    def norm_lookup(value: str) -> Optional[str]:
        nk = normalize_channel_name(value)
        if nk and nk in norm_map:
            return norm_map[nk][0]
        return None

    for key in (ch.channel_id, ch.tvg_id):
        hit = raw_match(key)
        if hit:
            return hit, "exact_id"
        hit = norm_lookup(key)
        if hit:
            return hit, "norm_id"

    if ch.name:
        hit = raw_match(ch.name)
        if hit:
            return hit, "exact_name"
        hit = norm_lookup(ch.name)
        if hit:
            return hit, "norm_name"

        best = 0.0
        best_id: Optional[str] = None
        for cand in candidates:
            score = calculate_match_score(ch.name, cand)
            if score > best:
                best = score
                best_id = cand.epg_id
                if best >= 99.0:
                    break
        if best_id and best >= fuzzy_threshold:
            return best_id, f"fuzzy:{best:.0f}"

    return None, "none"


def analyze(playlist: List[PlaylistChannel], epg_path: str, label: str) -> None:
    ids, lower_to_raw, norm_map, candidates = load_xmltv(epg_path)
    reasons: Dict[str, int] = defaultdict(int)
    matched = 0
    by_group: Dict[str, Tuple[int, int]] = defaultdict(lambda: (0, 0))

    for ch in playlist:
        epg_id, reason = match_channel(ch, ids, lower_to_raw, norm_map, candidates)
        if epg_id:
            matched += 1
        reasons[reason] += 1
        g = ch.group or "(none)"
        m, t = by_group[g]
        by_group[g] = (m + (1 if epg_id else 0), t + 1)

    total = len(playlist)
    pct = (matched / total * 100.0) if total else 0.0
    print(f"\n=== {label} ===")
    print(f"EPG channel tags: {len(ids)}")
    print(f"Fuzzy candidates: {len(candidates)}")
    print(f"Playlist (live): {total} ({sum(1 for c in playlist if c.tvg_id)} with tvg-id)")
    print(f"Matched: {matched}/{total} ({pct:.1f}%)")
    print("By tier:", dict(sorted(reasons.items(), key=lambda x: -x[1])))

    local_groups = [g for g in by_group if "Local" in g or g == "Local"]
    if local_groups:
        print("US Local groups:")
        for g in sorted(local_groups):
            m, t = by_group[g]
            p = 100 * m / t if t else 0
            print(f"  {g}: {m}/{t} ({p:.1f}%)")

    low = sorted(
        ((g, m, t) for g, (m, t) in by_group.items() if t >= 50),
        key=lambda x: (x[1] / x[2]) if x[2] else 0,
    )[:5]
    print("Lowest match groups (n>=50):")
    for g, m, t in low:
        print(f"  {g}: {m}/{t} ({100*m/t:.1f}%)")


def fetch_url(url: str, dest: str) -> None:
    req = urllib.request.Request(url, headers={"User-Agent": "Risa-EPG-Analyze/1.0"})
    with urllib.request.urlopen(req, timeout=120) as resp:
        data = resp.read()
    if data[:2] == b"\x1f\x8b":
        data = gzip.decompress(data)
    with open(dest, "wb") as f:
        f.write(data)


def main() -> None:
    parser = argparse.ArgumentParser(description="M3U/XMLTV match analysis (Risa-style)")
    parser.add_argument("m3u", nargs="?", help="M3U playlist path")
    parser.add_argument("xmltv", nargs="?", help="XMLTV path")
    parser.add_argument("--url-m3u", help="Download M3U from URL")
    parser.add_argument("--url-epg", help="Download XMLTV from URL")
    parser.add_argument("--label", default="EPG", help="Label for report section")
    args = parser.parse_args()

    if args.url_m3u or args.url_epg:
        import tempfile
        import os

        tmp = tempfile.mkdtemp(prefix="risa_epg_")
        m3u_path = os.path.join(tmp, "playlist.m3u")
        epg_path = os.path.join(tmp, "epg.xml")
        if args.url_m3u:
            print("Downloading M3U...")
            fetch_url(args.url_m3u, m3u_path)
        if args.url_epg:
            print("Downloading XMLTV...")
            fetch_url(args.url_epg, epg_path)
        playlist = parse_m3u(m3u_path)
        analyze(playlist, epg_path, args.label)
        return

    if not args.m3u or not args.xmltv:
        parser.error("Provide m3u+xmltv paths or --url-m3u and --url-epg")
    playlist = parse_m3u(args.m3u)
    analyze(playlist, args.xmltv, args.label)


if __name__ == "__main__":
    main()
