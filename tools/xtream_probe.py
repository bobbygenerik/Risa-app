#!/usr/bin/env python3
import sys
import json
import ssl
import urllib.request
import urllib.parse
import socket

if len(sys.argv) < 4:
    print("Usage: xtream_probe.py <server> <username> <password>")
    sys.exit(2)

server = sys.argv[1].rstrip('/')
username = sys.argv[2]
password = sys.argv[3]

api_base = server + '/player_api.php'

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

headers = {
    'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
    'Accept': '*/*'
}


def fetch_json(url):
    req = urllib.request.Request(url, headers=headers)
    try:
        with urllib.request.urlopen(req, timeout=20, context=ctx) as r:
            data = r.read()
            return json.loads(data.decode('utf-8', errors='replace'))
    except Exception as e:
        print(f"ERROR fetching JSON {url}: {e}")
        return None


def probe_url(url, timeout=15):
    req = urllib.request.Request(url, headers=headers)
    try:
        with urllib.request.urlopen(req, timeout=timeout, context=ctx) as r:
            status = getattr(r, 'status', None) or r.getcode()
            ctype = r.getheader('Content-Type') or ''
            preview = r.read(4096)
            text = preview.decode('utf-8', errors='replace').lstrip()
            ok = (status == 200) and (text.startswith('<?xml') or text.startswith('<tv') or 'xml' in ctype.lower())
            return {'url': url, 'status': status, 'content_type': ctype, 'preview': text[:400].replace('\n',' '), 'ok': ok}
    except Exception as e:
        return {'url': url, 'error': str(e), 'ok': False}


print('XTREAM PROBE')
print('Server:', server)
print('Username:', username)

# Try to fetch all live streams (no category)
all_live_url = f"{api_base}?username={urllib.parse.quote(username)}&password={urllib.parse.quote(password)}&action=get_live_streams"
print('\nFetching live streams (no category)')
streams = fetch_json(all_live_url)
if streams is None:
    # try categories approach
    cats_url = f"{api_base}?username={urllib.parse.quote(username)}&password={urllib.parse.quote(password)}&action=get_live_categories"
    print('live streams fetch failed, trying get_live_categories...')
    cats = fetch_json(cats_url) or []
    streams = []
    for c in cats:
        cid = c.get('category_id') or c.get('id')
        if cid is None:
            continue
        url = f"{api_base}?username={urllib.parse.quote(username)}&password={urllib.parse.quote(password)}&action=get_live_streams&category_id={cid}"
        s = fetch_json(url) or []
        streams.extend(s)

print(f'Found {len(streams) if streams else 0} live streams')

candidates = set()
stream_to_epg = {}

for s in (streams or []):
    # common fields
    for key in ('epg','stream_epg','epg_channel_id','epg_url'):
        val = s.get(key)
        if val:
            v = str(val).strip()
            if v:
                candidates.add(v)
    # explicit epg_channel_id
    eid = s.get('epg_channel_id') or s.get('epg_id')
    if eid:
        key = str(s.get('stream_id') or s.get('name') or '')
        if key:
            stream_to_epg[key] = str(eid)

print('\nCollected candidate strings (first 50):')
for i, c in enumerate(list(candidates)[:50], 1):
    print(f'{i:02d}. {c}')

# Normalize candidates to URLs when possible
url_candidates = []
for c in candidates:
    if c.startswith('http') or c.startswith('//'):
        normalized = ('http:' + c) if c.startswith('//') else c
        url_candidates.append(normalized)
    elif c.startswith('/') or 'xmltv' in c or '.php' in c:
        try:
            resolved = urllib.parse.urljoin(server + '/', c)
            url_candidates.append(resolved)
        except Exception as e:
            print('Could not resolve', c, e)
    else:
        # not a URL
        pass

# Dedup
seen = set()
url_candidates = [u for u in url_candidates if not (u in seen or seen.add(u))]
print(f'\nResolved {len(url_candidates)} URL candidates:')
for u in url_candidates:
    print(' -', u)

# Probe each candidate
print('\nProbing candidates...')
accepted = None
for u in url_candidates:
    res = probe_url(u)
    if res.get('ok'):
        print('ACCEPTED:', u, res['status'], res['content_type'])
        print('Preview:', res['preview'])
        accepted = u
        break
    else:
        if 'error' in res:
            print('FAILED:', u, res['error'])
        else:
            print('NOPE:', u, 'status=', res.get('status'), 'ctype=', res.get('content_type'), 'preview=', res.get('preview')[:120])

# Try common server paths if none accepted
if not accepted:
    common = ['xmltv.php','xmltv','epg.xml','epg.php','xmltv/xml.php']
    print('\nNo accepted candidate. Trying common paths on server:')
    for p in common:
        probe = urllib.parse.urljoin(server + '/', p)
        print('Probing', probe)
        r = probe_url(probe)
        if r.get('ok'):
            print('ACCEPTED:', probe, r['status'], r['content_type'])
            print('Preview:', r['preview'])
            accepted = probe
            break
        else:
            if 'error' in r:
                print('FAILED:', probe, r['error'])
            else:
                print('NOPE:', probe, 'status=', r.get('status'), 'ctype=', r.get('content_type'))

print('\nRESULT:')
if accepted:
    print('Accepted EPG URL:', accepted)
else:
    print('No EPG URL accepted from probes')

print('\nStream-to-EPG mapping sample (first 20):')
for i,(k,v) in enumerate(stream_to_epg.items()):
    print(k, '->', v)
    if i>18: break

print('\nDone')
