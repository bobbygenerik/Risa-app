#!/usr/bin/env python3
"""Match Xtream playlist live streams against XMLTV channel mapping.

Usage: python3 tools/match_playlist_epg.py <server> <username> <password> <xmltv_url>
"""
import sys, json, ssl, urllib.request, urllib.parse
from html import unescape
import xml.etree.ElementTree as ET
import re

if len(sys.argv) < 5:
    print('Usage: match_playlist_epg.py <server> <username> <password> <xmltv_url>')
    sys.exit(2)

server = sys.argv[1].rstrip('/')
username = sys.argv[2]
password = sys.argv[3]
xmltv_url = sys.argv[4]

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE
headers = {'User-Agent': 'epg-matcher/1.0', 'Accept': '*/*'}

CONVERSIONS = {
    'one': '1','two': '2','three': '3','four': '4','five': '5',
    'six':'6','seven':'7','eight':'8','nine':'9','ten':'10',
    '1st':'1','2nd':'2','3rd':'3','4th':'4','5th':'5'
}

def normalize(text: str) -> str:
    if not text:
        return ''
    t = text.strip().lower()
    t = re.sub(r'^[a-z]{2,3}[:|]\s*', '', t)
    t = re.sub(r'[|]\s*(hd|fhd|uhd|4k|sd|720p|1080p)', '', t, flags=re.I)
    t = re.sub(r'[^a-z0-9]', '', t)
    t = re.sub(r'(uk|us|ca|au|ie|pt|hk|fr|de|it|es)$', '', t)
    for k,v in CONVERSIONS.items():
        if k in t:
            t = t.replace(k, v)
    return t


def fetch_bytes(url):
    req = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(req, timeout=30, context=ctx) as r:
        return r.read()


def fetch_json(url):
    req = urllib.request.Request(url, headers=headers)
    with urllib.request.urlopen(req, timeout=30, context=ctx) as r:
        return json.loads(r.read().decode('utf-8', errors='replace'))


def build_xmltv_mapping(xml_bytes):
    root = ET.fromstring(xml_bytes)
    mapping = {}
    # prefer first display-name if present
    for ch in root.findall('channel'):
        ch_id = ch.get('id') or ''
        names = [unescape(dn.text).strip() for dn in ch.findall('display-name') if dn.text]
        display = names[0] if names else ch_id
        key = normalize(display)
        if key and key not in mapping:
            mapping[key] = ch_id
    return mapping


def fetch_streams():
    api_base = server + '/player_api.php'
    url = f"{api_base}?username={urllib.parse.quote(username)}&password={urllib.parse.quote(password)}&action=get_live_streams"
    try:
        streams = fetch_json(url)
        if not streams:
            # try categories
            cats_url = f"{api_base}?username={urllib.parse.quote(username)}&password={urllib.parse.quote(password)}&action=get_live_categories"
            cats = fetch_json(cats_url) or []
            streams = []
            for c in cats:
                cid = c.get('category_id') or c.get('id')
                if cid is None:
                    continue
                u = f"{api_base}?username={urllib.parse.quote(username)}&password={urllib.parse.quote(password)}&action=get_live_streams&category_id={cid}"
                s = fetch_json(u) or []
                streams.extend(s)
        return streams or []
    except Exception as e:
        print('Failed to fetch streams:', e)
        return []


def find_match_for_stream(s, mapping):
    # Try explicit epg fields first
    for key in ('epg_channel_id','epg','stream_epg','epg_id','epg_url'):
        v = s.get(key)
        if v:
            vk = normalize(str(v))
            if vk and vk in mapping:
                return mapping[vk], 'field:'+key
    # try name
    name = s.get('name') or s.get('stream_name') or s.get('title') or s.get('name')
    if name:
        nk = normalize(name)
        if nk and nk in mapping:
            return mapping[nk], 'name'
    # try stream_id
    sid = s.get('stream_id') or s.get('num')
    if sid:
        sk = normalize(str(sid))
        if sk and sk in mapping:
            return mapping[sk], 'stream_id'
    # Conservative trigram fallback
    name = s.get('name') or s.get('stream_name') or s.get('title')
    if name:
        nk = normalize(name)
        if nk and len(nk) >= 4:
            # compute trigram sets
            def trigrams(t):
                return {t[i:i+3] for i in range(0, len(t)-2)} if len(t) >= 3 else set()
            aTr = trigrams(nk)
            best = (0.0, None)
            for k, v in mapping.items():
                bTr = trigrams(k)
                if not aTr or not bTr:
                    continue
                inter = len(aTr & bTr)
                union = len(aTr) + len(bTr) - inter
                score = inter / union if union else 0.0
                if score > best[0]:
                    best = (score, v)
            threshold = 0.60
            if best[0] >= threshold:
                return best[1], 'trigram'
    return None, None


def main():
    print('Fetching XMLTV...')
    xml = fetch_bytes(xmltv_url)
    print('XMLTV bytes:', len(xml))
    print('Building mapping...')
    mapping = build_xmltv_mapping(xml)
    print('Mapping entries:', len(mapping))

    print('Fetching streams...')
    streams = fetch_streams()
    print('Streams fetched:', len(streams))

    matched = 0
    matched_examples = []
    unmatched_examples = []

    for i, s in enumerate(streams):
        mid, reason = find_match_for_stream(s, mapping)
        if mid:
            matched += 1
            if len(matched_examples) < 30:
                matched_examples.append((s.get('name') or s.get('stream_id'), mid, reason))
        else:
            if len(unmatched_examples) < 30:
                unmatched_examples.append((s.get('name') or s.get('stream_id'), s.get('epg') or s.get('epg_channel_id')))

    total = len(streams)
    pct = (matched / total * 100) if total else 0.0
    print('\nMatched:', matched, '/', total, f'({pct:.1f}%)')

    print('\nMatched samples:')
    for a in matched_examples:
        print(' -', a)
    print('\nUnmatched samples:')
    for a in unmatched_examples:
        print(' -', a)

if __name__ == '__main__':
    main()
