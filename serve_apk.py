#!/usr/bin/env python3
import http.server
import socketserver
import os
import socket

PORT = 7575
os.chdir('build/app/outputs/flutter-apk')

class QuietHandler(http.server.SimpleHTTPRequestHandler):
    def log_message(self, format, *args):
        pass
    
    def handle(self):
        try:
            super().handle()
        except (BrokenPipeError, ConnectionResetError):
            pass

class ThreadingTCPServer(socketserver.ThreadingMixIn, socketserver.TCPServer):
    allow_reuse_address = True
    daemon_threads = True
    
    def server_bind(self):
        self.socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        super().server_bind()

with ThreadingTCPServer(("0.0.0.0", PORT), QuietHandler) as httpd:
    print(f"Serving APK at http://0.0.0.0:{PORT}/app-profile.apk")
    httpd.serve_forever()
