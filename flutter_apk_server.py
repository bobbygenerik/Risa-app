#!/usr/bin/env python3
"""
Simple HTTP server to serve Flutter APK files for download on port 8080.
"""

import os
import sys
import urllib.parse
from http.server import HTTPServer, SimpleHTTPRequestHandler
from pathlib import Path

class FlutterAPKServerHandler(SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory="/home/devuser/repos/Risa-app/build/app/outputs/flutter-apk", **kwargs)
    
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
            apk_dir = Path("/home/devuser/repos/Risa-app/build/app/outputs/flutter-apk")
            apk_files = list(apk_dir.glob("*.apk"))
            
            html_content = f"""
            <!DOCTYPE html>
            <html>
            <head>
                <title>Flutter APK Download Server</title>
                <style>
                    body {{ font-family: Arial, sans-serif; margin: 40px; background-color: #f5f5f5; }}
                    .container {{ max-width: 800px; margin: 0 auto; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }}
                    h1 {{ color: #2c3e50; text-align: center; margin-bottom: 30px; }}
                    .apk-list {{ margin: 20px 0; }}
                    .apk-item {{ margin: 15px 0; padding: 20px; border: 2px solid #e74c3c; border-radius: 8px; background: #fff; }}
                    .apk-name {{ font-size: 1.2em; font-weight: bold; color: #2c3e50; margin-bottom: 10px; }}
                    .download-btn {{ 
                        background: #e74c3c; color: white; padding: 12px 24px; 
                        text-decoration: none; border-radius: 5px; display: inline-block;
                        font-weight: bold; transition: background 0.3s;
                    }}
                    .download-btn:hover {{ background: #c0392b; }}
                    .file-info {{ color: #7f8c8d; font-size: 0.9em; margin-top: 10px; }}
                    .status {{ text-align: center; color: #27ae60; font-weight: bold; margin-bottom: 20px; }}
                    .build-info {{ background: #ecf0f1; padding: 15px; border-radius: 5px; margin: 20px 0; }}
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>🚀 Flutter APK Download Server</h1>
                    <div class="status">Server running on port 7575</div>
                    
                    <div class="build-info">
                        <strong>Build Directory:</strong> build/app/outputs/flutter-apk/<br>
                        <strong>Release Build Available</strong>
                    </div>
                    
                    <p><strong>Available APK files for download:</strong></p>
                    <div class="apk-list">
            """
            
            if apk_files:
                for apk_file in apk_files:
                    file_size = apk_file.stat().st_size / (1024 * 1024)  # Size in MB
                    # Check if it's a release build
                    is_release = "release" in apk_file.name.lower()
                    build_type = "📱 RELEASE BUILD" if is_release else "🔧 DEBUG BUILD"
                    
                    html_content += f"""
                        <div class="apk-item">
                            <div class="apk-name">{build_type}: {apk_file.name}</div>
                            <div class="file-info">📏 Size: {file_size:.2f} MB | 🗓️ Modified: {apk_file.stat().st_mtime}</div>
                            <a href="/{apk_file.name}" class="download-btn">⬇️ Download APK</a>
                        </div>
                    """
            else:
                html_content += """
                    <div class="apk-item">
                        <div class="apk-name">⚠️ No APK files found</div>
                        <div class="file-info">The build directory is empty or APK files haven't been generated yet.</div>
                    </div>
                """
            
            html_content += """
                    </div>
                    
                    <div style="margin-top: 30px; padding: 20px; background: #2c3e50; color: white; border-radius: 5px;">
                        <h3>📲 Installation Instructions</h3>
                        <ol>
                            <li>Download the APK file to your Android device</li>
                            <li>Enable "Unknown Sources" in your device settings</li>
                            <li>Tap the downloaded APK file to install</li>
                            <li>Follow the installation prompts</li>
                        </ol>
                    </div>
                    
                    <p style="text-align: center; margin-top: 30px; color: #7f8c8d;">
                        <small>Flutter APK Server | Port 7575 | Build Output Directory</small>
                    </p>
                </div>
            </body>
            </html>
            """
            
            self.wfile.write(html_content.encode())
        else:
            # Serve the file normally
            super().do_GET()
    
    def log_message(self, format, *args):
        # Custom logging with timestamp
        print(f"[{self.log_date_time_string()}] [APK Server] {self.address_string()} - {format % args}")

def main():
    port = 7575
    
    # Check if APK directory exists
    apk_dir = Path("/home/devuser/repos/Risa-app/build/app/outputs/flutter-apk")
    if not apk_dir.exists():
        print(f"❌ Error: APK directory {apk_dir} does not exist!")
        print("💡 Make sure you've built the APK first using: flutter build apk")
        sys.exit(1)
    
    apk_files = list(apk_dir.glob("*.apk"))
    if not apk_files:
        print(f"⚠️  Warning: No APK files found in {apk_dir}")
        print("💡 Run 'flutter build apk' to generate the APK files")
    else:
        print(f"✅ Found {len(apk_files)} APK file(s) in {apk_dir}")
        for apk_file in apk_files:
            file_size = apk_file.stat().st_size / (1024 * 1024)
            print(f"   📱 {apk_file.name} ({file_size:.2f} MB)")
    
    print(f"\n🚀 Starting Flutter APK download server on port {port}...")
    print(f"📁 APK directory: {apk_dir}")
    print(f"🌐 Access the server at: http://localhost:{port}")
    print("⏹️  Press Ctrl+C to stop the server")
    print("=" * 60)
    
    try:
        httpd = HTTPServer(("0.0.0.0", port), FlutterAPKServerHandler)
        print(f"✅ Server is running! Visit http://localhost:{port} to download APK files")
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\n🛑 Shutting down server...")
        httpd.shutdown()
        print("✅ Server stopped successfully")
        sys.exit(0)
    except Exception as e:
        print(f"❌ Error starting server: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
