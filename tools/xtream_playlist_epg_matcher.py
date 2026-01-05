#!/usr/bin/env python3
"""Fetch an Xtream playlist, discover the XMLTV feed, and match channels to EPG entries."""

import argparse
import json
import re
import ssl
import sys
import urllib.parse
import urllib.request
import xml.etree.ElementTree as ET
from html import unescape
from typing import Optional

HEADERS = {
    "User-Agent": "xtream-epg-matcher/1.0",
    "Accept": "*/*",
}

CTX = ssl.create_default_context()
CTX.check_hostname = False
CTX.verify_mode = ssl.CERT_NONE

CONVERSIONS = {
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
    "1st": "1",
    "2nd": "2",
    "3rd": "3",
    "4th": "4",
    "5th": "5",
}


def normalize(text: str) -> str:
    if not text:
        return ""
    t = text.strip().lower()
    t = re.sub(r"^[a-z]{2,3}[:|]\s*", "", t)
    t = re.sub(r"[|]\s*(hd|fhd|uhd|4k|sd|720p|1080p)", "", t, flags=re.I)
    t = re.sub(r"[^a-z0-9]", "", t)
    t = re.sub(r"(uk|us|ca|au|ie|pt|hk|fr|de|it|es)$", "", t)
    for k, v in CONVERSIONS.items():
        if k in t:
            t = t.replace(k, v)
    return t


def fetch_json(url: str):
    req = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(req, timeout=25, context=CTX) as response:
        return json.loads(response.read().decode("utf-8", errors="replace"))


def fetch_bytes(url: str):
    req = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(req, timeout=30, context=CTX) as response:
        return response.read()


def probe_url(url: str, verbose: bool = False):
    try:
        req = urllib.request.Request(url, headers=HEADERS)
        with urllib.request.urlopen(req, timeout=25, context=CTX) as response:
            status = getattr(response, "status", None) or response.getcode()
            ctype = response.getheader("Content-Type") or ""
            preview = response.read(4096)
            text = preview.decode("utf-8", errors="replace").lstrip()
            ok = (
                status == 200
                and (
                    text.startswith("<?xml")
                    or text.startswith("<tv")
                    or "xml" in ctype.lower()
                )
            )
            if verbose:
                print(f"Probed {url} -> status={status}, ctype={ctype}, ok={ok}")
            return ok, text[:400].replace("\n", " ")
    except Exception as exc:
        if verbose:
            print(f"Probe failed for {url}: {exc}")
        return False, str(exc)


def build_mapping(xml_bytes: bytes):
    root = ET.fromstring(xml_bytes)
    mapping = {}
    for channel in root.findall("channel"):
        ch_id = channel.get("id") or ""
        display_names = [
            unescape(dn.text).strip()
            for dn in channel.findall("display-name")
            if dn.text
        ]
        display = display_names[0] if display_names else ch_id
        key = normalize(display)
        if key and key not in mapping:
            mapping[key] = ch_id
        id_key = normalize(ch_id)
        if id_key and id_key not in mapping:
            mapping[id_key] = ch_id
    return mapping


def fetch_streams(server: str, username: str, password: str):
    api_base = server.rstrip("/") + "/player_api.php"
    auth = urllib.parse.urlencode(
        {"username": username, "password": password, "action": "get_live_streams"}
    )
    url = f"{api_base}?{auth}"
    streams = []
    try:
        streams = fetch_json(url) or []
    except Exception:
        streams = []
    if streams:
        return streams
    cats_url = f"{api_base}?{urllib.parse.urlencode({'username': username, 'password': password, 'action': 'get_live_categories'})}"
    categories = []
    try:
        categories = fetch_json(cats_url) or []
    except Exception:
        categories = []
    for category in categories:
        cid = category.get("category_id") or category.get("id")
        if cid is None:
            continue
        cat_url = f"{api_base}?{urllib.parse.urlencode({'username': username,'password': password,'action': 'get_live_streams','category_id': cid})}"
        try:
            items = fetch_json(cat_url) or []
            streams.extend(items)
        except Exception:
            continue
    return streams


def collect_candidates(server: str, streams):
    candidates = set()
    for stream in streams:
        for key in ("epg_channel_id", "epg", "stream_epg", "epg_id", "epg_url"):
            val = stream.get(key)
            if val:
                trimmed = str(val).strip()
                if trimmed:
                    candidates.add(trimmed)
    server_root = server.rstrip("/") + "/"
    url_candidates = []
    seen = set()
    for candidate in candidates:
        target = None
        if candidate.startswith("http"):
            target = candidate
        elif candidate.startswith("//"):
            target = "http:" + candidate
        elif candidate.startswith("/"):
            target = urllib.parse.urljoin(server_root, candidate)
        elif any(token in candidate.lower() for token in ("xmltv", "xml", "epg", "php")):
            try:
                target = urllib.parse.urljoin(server_root, candidate)
            except Exception:
                target = None
        if target and target not in seen:
            seen.add(target)
            url_candidates.append(target)
    return url_candidates


def discover_epg_url(
    server: str,
    streams,
    manual_url: Optional[str],
    verbose: bool,
    max_probes: int,
):
    if manual_url:
        print("Using provided XMLTV URL:", manual_url)
        return manual_url
    candidates = collect_candidates(server, streams)
    print(f"Discovered {len(candidates)} candidate XMLTV URLs")
    tested = 0
    for candidate in candidates:
        if tested >= max_probes:
            break
        ok, _ = probe_url(candidate, verbose)
        tested += 1
        if ok:
            print("Accepted XMLTV URL:", candidate)
            return candidate
    common_paths = ["xmltv.php", "xmltv", "epg.xml", "epg.php", "xmltv/xml.php"]
    for path in common_paths:
        candidate = urllib.parse.urljoin(server.rstrip("/") + "/", path)
        ok, _ = probe_url(candidate, verbose)
        if ok:
            print("Accepted XMLTV URL via common path:", candidate)
            return candidate
    print("Could not discover an XMLTV URL automatically.")
    return None


def match_stream(stream, mapping):
    for key in ("epg_channel_id", "epg", "stream_epg", "epg_id", "epg_url"):
        val = stream.get(key)
        if val:
            norm = normalize(str(val))
            if norm and norm in mapping:
                return mapping[norm], key
    name = stream.get("name") or stream.get("stream_name") or stream.get("title") or ""
    if name:
        norm = normalize(name)
        if norm and norm in mapping:
            return mapping[norm], "name"
    sid = stream.get("stream_id") or stream.get("num") or ""
    if sid:
        norm = normalize(str(sid))
        if norm and norm in mapping:
            return mapping[norm], "stream_id"
    if name:
        nk = normalize(name)
        if nk:
            def trigrams(text: str):
                return {text[i : i + 3] for i in range(len(text) - 2)} if len(text) >= 3 else set()
            best = (0.0, None)
            a_trigrams = trigrams(nk)
            for key, epg_id in mapping.items():
                b_trigrams = trigrams(key)
                if not a_trigrams or not b_trigrams:
                    continue
                intersect = len(a_trigrams & b_trigrams)
                union = len(a_trigrams) + len(b_trigrams) - intersect
                score = intersect / union if union else 0.0
                if score > best[0]:
                    best = (score, epg_id)
            if best[0] >= 0.6:
                return best[1], "trigram"
    return None, None


def main():
    parser = argparse.ArgumentParser(
        description="Map Xtream live streams to their XMLTV channels."
    )
    parser.add_argument("server", help="Xtream server URL (e.g. http://host:port)")
    parser.add_argument("username", help="Xtream username")
    parser.add_argument("password", help="Xtream password")
    parser.add_argument(
        "--xmltv-url",
        help="Use this XMLTV endpoint instead of discovering it",
        dest="xmltv_url",
    )
    parser.add_argument(
        "--max-probes",
        type=int,
        default=12,
        help="Limit how many candidate URLs to probe",
    )
    parser.add_argument(
        "--show-samples",
        type=int,
        default=12,
        help="Number of matched/unmatched samples to display",
    )
    parser.add_argument(
        "--verbose",
        action="store_true",
        help="Print probing diagnostics",
    )
    args = parser.parse_args()

    streams = fetch_streams(args.server, args.username, args.password)
    if not streams:
        print("Failed to fetch any live streams.")
        sys.exit(1)

    xmltv_url = discover_epg_url(
        args.server, streams, args.xmltv_url, args.verbose, args.max_probes
    )
    if not xmltv_url:
        print("No XMLTV URL was accepted; matching cannot continue.")
        sys.exit(1)

    try:
        xml_bytes = fetch_bytes(xmltv_url)
    except Exception as exc:
        print("Failed to download XMLTV feed:", exc)
        sys.exit(1)

    mapping = build_mapping(xml_bytes)
    if not mapping:
        print("XMLTV feed does not expose any channels.")
        sys.exit(1)

    matched = 0
    matched_examples = []
    unmatched_examples = []
    for stream in streams:
        epg_id, reason = match_stream(stream, mapping)
        if epg_id:
            matched += 1
            if len(matched_examples) < args.show_samples:
                matched_examples.append(
                    (
                        stream.get("name") or stream.get("stream_id") or "",
                        epg_id,
                        reason,
                    )
                )
        else:
            if len(unmatched_examples) < args.show_samples:
                unmatched_examples.append(
                    (
                        stream.get("name") or stream.get("stream_id") or "",
                        stream.get("epg") or stream.get("epg_channel_id") or "",
                    )
                )

    total = len(streams)
    pct = (matched / total * 100) if total else 0.0
    print(f"\nPlaylist channels: {total}")
    print(f"Matches found: {matched} ({pct:.1f}%)")
    if matched_examples:
        print("\nMatched samples:")
        for name, epg_id, reason in matched_examples:
            print(f" - {name} -> {epg_id} ({reason})")
    if unmatched_examples:
        print("\nUnmatched samples:")
        for name, hint in unmatched_examples:
            print(f" - {name} (hints: {hint})")


if __name__ == "__main__":
    main()
