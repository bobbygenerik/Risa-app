import http.server
import socketserver
import os

PORT = 8082
APK_PATH = os.path.abspath("build/app/outputs/flutter-apk/app-debug.apk")
APK_FILENAME = "app-debug.apk"

class APKRequestHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path == f"/{APK_FILENAME}":
            if os.path.exists(APK_PATH):
                self.send_response(200)
                self.send_header("Content-type", "application/vnd.android.package-archive")
                self.send_header("Content-Disposition", f"attachment; filename={APK_FILENAME}")
                self.end_headers()
                with open(APK_PATH, "rb") as apk_file:
                    self.wfile.write(apk_file.read())
            else:
                self.send_error(404, "APK file not found.")
        else:
            self.send_error(404, "File not found.")

if __name__ == "__main__":
    with socketserver.TCPServer(("", PORT), APKRequestHandler) as httpd:
        print(f"Serving APK on port {PORT}. Download at http://localhost:{PORT}/{APK_FILENAME}")
        httpd.serve_forever()
