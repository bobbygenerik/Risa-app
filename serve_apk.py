#!/usr/bin/env python3
import http.server
import socketserver
import os

PORT = 8585
DIRECTORY = "apk_downloads"

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

os.chdir('/home/devuser/repos/Risa-app')
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Serving APK files at http://localhost:{PORT}")
    print(f"Directory: {os.path.abspath(DIRECTORY)}")
    httpd.serve_forever()