#!/usr/bin/env python3
"""Fuzzy match M3U channels to XMLTV channels and update tvg-id in M3U.

Usage:
  python3 tools/m3u_epg_fuzzy_matcher.py <input.m3u> <input.xmltv> <output.m3u>
"""
import argparse
import re
import sys
import xml.etree.ElementTree as ET
from dataclasses import dataclass
from typing import List, Optional, Tuple

NON_ALNUM_RE = re.compile(r"[^a-z0-9]")
TOKEN_SPLIT_RE = re.compile(r"[^a-z0-9]+")
TVG_ID_RE = re.compile(r"tvg-id=([\"\'])(.*?)(\1)", re.IGNORECASE)


@dataclass(frozen=True)
class EpgChannel:
    channel_id: str
    display_name: str
    normalized: str
    tokens: List[str]


def normalize(text: str) -> str:
    return NON_ALNUM_RE.sub("", text.lower()) if text else ""


def tokenize(text: str) -> List[str]:
    if not text:
        return []
    tokens = [t for t in TOKEN_SPLIT_RE.split(text.lower()) if len(t) > 2]
    return tokens


def token_intersection_score(tokens1: List[str], tokens2: List[str]) -> float:
    if not tokens1 or not tokens2:
        return 0.0
    matches = 0
    for t1 in tokens1:
        for t2 in tokens2:
            if t1 in t2:
                matches += 1
                break
    denom = max(len(tokens1), len(tokens2))
    if denom == 0:
        return 0.0
    return (matches / denom) * 80.0


def score_match(m3u_name: str, m3u_tokens: List[str], epg: EpgChannel) -> float:
    n1 = normalize(m3u_name)
    n2 = epg.normalized
    if n1 and n2 and n1 == n2:
        return 100.0
    if n1 and n2 and (n1 in n2 or n2 in n1):
        return 85.0
    return token_intersection_score(m3u_tokens, epg.tokens)


def parse_extinf_channel_name(line: str) -> str:
    comma = line.find(",")
    if comma == -1:
        return ""
    return line[comma + 1 :].strip()


def update_tvg_id(extinf_line: str, new_id: str) -> str:
    if TVG_ID_RE.search(extinf_line):
        return TVG_ID_RE.sub(f'tvg-id="{new_id}"', extinf_line, count=1)
    comma = extinf_line.find(",")
    if comma == -1:
        if extinf_line.endswith(" "):
            return extinf_line + f'tvg-id="{new_id}"'
        return extinf_line + f' tvg-id="{new_id}"'
    prefix = extinf_line[:comma]
    suffix = extinf_line[comma:]
    if not prefix.endswith(" "):
        prefix += " "
    return f"{prefix}tvg-id=\"{new_id}\"{suffix}"


def load_epg_channels(xml_path: str) -> List[EpgChannel]:
    tree = ET.parse(xml_path)
    root = tree.getroot()
    channels: List[EpgChannel] = []
    for channel in root.findall("channel"):
        ch_id = channel.get("id") or ""
        if not ch_id:
            continue
        display_name = ""
        for dn in channel.findall("display-name"):
            if dn.text:
                display_name = dn.text.strip()
                if display_name:
                    break
        if not display_name:
            display_name = ch_id
        normalized = normalize(display_name)
        tokens = tokenize(display_name)
        channels.append(EpgChannel(ch_id, display_name, normalized, tokens))
    return channels


def find_best_match(m3u_name: str, epg_channels: List[EpgChannel]) -> Tuple[Optional[str], float]:
    m3u_tokens = tokenize(m3u_name)
    best_id = None
    best_score = 0.0
    for epg in epg_channels:
        score = score_match(m3u_name, m3u_tokens, epg)
        if score > best_score:
            best_score = score
            best_id = epg.channel_id
    if best_score > 30.0:
        return best_id, best_score
    return None, best_score


def process_m3u(input_path: str, output_path: str, epg_channels: List[EpgChannel]):
    with open(input_path, "r", encoding="utf-8", errors="replace") as f:
        lines = f.read().splitlines()

    out_lines: List[str] = []
    total_channels = 0
    matched_channels = 0

    i = 0
    while i < len(lines):
        line = lines[i]
        if line.startswith("#EXTINF"):
            total_channels += 1
            channel_name = parse_extinf_channel_name(line)
            matched_id, score = find_best_match(channel_name, epg_channels)
            if matched_id:
                line = update_tvg_id(line, matched_id)
                matched_channels += 1
            out_lines.append(line)
            i += 1
            if i < len(lines):
                out_lines.append(lines[i])
                i += 1
            continue
        out_lines.append(line)
        i += 1

    with open(output_path, "w", encoding="utf-8") as f:
        f.write("\n".join(out_lines))
        f.write("\n")

    return total_channels, matched_channels


def main():
    parser = argparse.ArgumentParser(
        description="Fuzzy match M3U channels to XMLTV channels and update tvg-id."
    )
    parser.add_argument("input_m3u", help="Input M3U playlist")
    parser.add_argument("input_xmltv", help="Input XMLTV file")
    parser.add_argument("output_m3u", help="Output M3U playlist")
    args = parser.parse_args()

    epg_channels = load_epg_channels(args.input_xmltv)
    if not epg_channels:
        print("No EPG channels found in XMLTV file.")
        sys.exit(1)

    total, matched = process_m3u(args.input_m3u, args.output_m3u, epg_channels)
    pct = (matched / total * 100.0) if total else 0.0
    print(f"Channels processed: {total}")
    print(f"Channels matched: {matched} ({pct:.1f}%)")
    print(f"Output written to: {args.output_m3u}")


if __name__ == "__main__":
    main()
