#!/usr/bin/env python3
"""
Simple HTTP server to serve APK files for download.
"""

import os
import sys
import urllib.parse
from http.server import HTTPServer, SimpleHTTPRequestHandler
from pathlib import Path

class APKServerHandler(SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory="/home/devuser/repos/Risa-app/apk_downloads", **kwargs)
    
    def end_headers(self):
        # Add CORS headers to allow cross-origin requests
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', '*')
        # Add headers to force download
        self.send_header('Content-Disposition', 'attachment')
        super().end_headers()
    
    def do_GET(self):
        # Parse the URL
        parsed_path = urllib.parse.urlparse(self.path)
        
        # If requesting the root, show a simple index page
        if parsed_path.path == '/':
            self.send_response(200)
            self.send_header('Content-type', 'text/html')
            self.end_headers()
            
            # List available APK files
            apk_dir = Path("/home/devuser/repos/Risa-app/apk_downloads")
            apk_files = list(apk_dir.glob("*.apk"))
            
            html_content = f"""
            <!DOCTYPE html>
            <html>
            <head>
                <title>APK Download Server</title>
                <style>
                    body {{ font-family: Arial, sans-serif; margin: 40px; }}
                    h1 {{ color: #333; }}
                    .apk-list {{ margin: 20px 0; }}
                    .apk-item {{ margin: 10px 0; padding: 10px; border: 1px solid #ddd; border-radius: 5px; }}
                    .download-btn {{ 
                        background: #4CAF50; color: white; padding: 8px 16px; 
                        text-decoration: none; border-radius: 3px; display: inline-block;
                    }}
                    .download-btn:hover {{ background: #45a049; }}
                    .file-info {{ color: #666; font-size: 0.9em; margin-top: 5px; }}
                </style>
            </head>
            <body>
                <h1>APK Download Server</h1>
                <p>Available APK files for download:</p>
                <div class="apk-list">
            """
            
            for apk_file in apk_files:
                file_size = apk_file.stat().st_size / (1024 * 1024)  # Size in MB
                html_content += f"""
                    <div class="apk-item">
                        <h3>{apk_file.name}</h3>
                        <div class="file-info">Size: {file_size:.2f} MB</div>
                        <a href="/{apk_file.name}" class="download-btn">Download APK</a>
                    </div>
                """
            
            html_content += """
                </div>
                <p><small>Server running on port 7575</small></p>
            </body>
            </html>
            """
            
            self.wfile.write(html_content.encode())
        else:
            # Serve the file normally
            super().do_GET()
    
    def log_message(self, format, *args):
        # Custom logging
        print(f"[APK Server] {self.address_string()} - {format % args}")

def main():
    port = 7575
    
    # Check if apk_downloads directory exists
    apk_dir = Path("/home/devuser/repos/Risa-app/apk_downloads")
    if not apk_dir.exists():
        print(f"Error: APK directory {apk_dir} does not exist!")
        sys.exit(1)
    
    apk_files = list(apk_dir.glob("*.apk"))
    if not apk_files:
        print(f"Warning: No APK files found in {apk_dir}")
    else:
        print(f"Found {len(apk_files)} APK file(s) in {apk_dir}")
        for apk_file in apk_files:
            print(f"  - {apk_file.name}")
    
    print(f"\nStarting APK download server on port {port}...")
    print(f"APK directory: {apk_dir}")
    print(f"Access the server at: http://localhost:{port}")
    print("Press Ctrl+C to stop the server")
    
    try:
        httpd = HTTPServer(("0.0.0.0", port), APKServerHandler)
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nShutting down server...")
        httpd.shutdown()
        sys.exit(0)
    except Exception as e:
        print(f"Error starting server: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
