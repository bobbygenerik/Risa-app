#!/usr/bin/env python3
"""Simple XMLTV inspector: fetch URL, parse <channel> entries, extract display-name(s),
build normalized keys and print counts + examples.

Usage: python3 tools/epg_inspect.py <xmltv_url>
"""
import sys
import urllib.request
import xml.etree.ElementTree as ET
from html import unescape

CONVERSIONS = {
    'one': '1','two': '2','three': '3','four': '4','five': '5',
    'six':'6','seven':'7','eight':'8','nine':'9','ten':'10',
    '1st':'1','2nd':'2','3rd':'3','4th':'4','5th':'5'
}

def normalize(text: str) -> str:
    if not text:
        return ''
    t = text.strip().lower()
    # remove country prefixes like 'uk:' or 'us|'
    import re
    t = re.sub(r'^[a-z]{2,3}[:|]\s*', '', t)
    # strip quality suffixes
    t = re.sub(r'[|]\s*(hd|fhd|uhd|4k|sd|720p|1080p)', '', t, flags=re.I)
    # remove non-alphanumeric
    t = re.sub(r'[^a-z0-9]', '', t)
    # strip common country suffixes
    t = re.sub(r'(uk|us|ca|au|ie|pt|hk|fr|de|it|es)$', '', t)
    for k,v in CONVERSIONS.items():
        if k in t:
            t = t.replace(k, v)
    return t


def fetch(url: str) -> bytes:
    req = urllib.request.Request(url, headers={'User-Agent': 'epg-inspector/1.0'})
    with urllib.request.urlopen(req, timeout=30) as resp:
        return resp.read()


def parse_channels(xml_bytes: bytes):
    # ET will honor the XML encoding declared
    root = ET.fromstring(xml_bytes)
    channels = []
    for ch in root.findall('channel'):
        ch_id = ch.get('id') or ''
        names = []
        for dn in ch.findall('display-name'):
            if dn.text:
                names.append(unescape(dn.text).strip())
        channels.append((ch_id, names))
    return channels


def main():
    if len(sys.argv) < 2:
        print('Usage: python3 tools/epg_inspect.py <xmltv_url>')
        sys.exit(2)
    url = sys.argv[1]
    print('Fetching:', url)
    data = fetch(url)
    print('Fetched', len(data), 'bytes')
    try:
        channels = parse_channels(data)
    except Exception as e:
        print('Parse error:', e)
        sys.exit(1)
    print('Channels parsed:', len(channels))
    mapping = {}
    for ch_id, names in channels:
        # prefer first display-name if present, else id
        if names:
            display = names[0]
        else:
            display = ch_id
        key = normalize(display)
        if key:
            # keep first mapping for key
            if key not in mapping:
                mapping[key] = ch_id
    # Print summary and samples
    print('\nNormalized mapping entries:', len(mapping))
    print('\nSample mappings (first 40):')
    i = 0
    for k, v in list(mapping.items())[:40]:
        print(f'{i+1:3d}. "{k}" -> {v}')
        i += 1
    # Show some examples where display-names exist
    print('\nSome channel id -> display-name samples:')
    for idx, (ch_id, names) in enumerate(channels[:30]):
        print(f'{idx+1:3d}. {ch_id} -> {names[:2]}')

if __name__ == '__main__':
    main()
