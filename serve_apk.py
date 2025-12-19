#!/usr/bin/env python3
import http.server
import socketserver
import os

PORT = 7575
os.chdir('build/app/outputs/flutter-apk')

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Serving APK folder at port {PORT}")
    httpd.serve_forever()
