#!/usr/bin/env python3
import http.server
import socketserver
import os

PORT = 7878
DIRECTORY = "apk_downloads"

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

os.chdir(os.path.dirname(os.path.abspath(__file__)))

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Serving APK files from {DIRECTORY}/ at http://localhost:{PORT}")
    print("Available files:")
    for file in os.listdir(DIRECTORY):
        print(f"  - http://localhost:{PORT}/{file}")
    httpd.serve_forever()