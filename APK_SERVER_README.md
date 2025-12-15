# APK Download Server

A simple Python HTTP server to serve APK files for download.

## Overview

This server provides an easy way to distribute APK files through a web interface. It automatically detects APK files in the `apk_downloads` directory and serves them with proper download headers.

## Features

- **Web Interface**: Clean HTML interface listing all available APK files
- **Direct Downloads**: Click-to-download functionality with proper file headers
- **CORS Support**: Cross-origin requests enabled for web integration
- **File Information**: Displays file sizes and names
- **Responsive Design**: Works on desktop and mobile devices

## Files

- `apk_server.py` - Main server script
- `apk_downloads/` - Directory containing APK files
- `serve_apk_todo.md` - Project todo list

## Quick Start

### Starting the Server

```bash
# Make the script executable (if not already)
chmod +x apk_server.py

# Start the server
python3 apk_server.py
```

The server will start on port 8000 and be accessible at:
- **Local**: http://localhost:8000
- **Network**: http://YOUR_IP:8000

### Stopping the Server

Press `Ctrl+C` in the terminal where the server is running.

### Running in Background

```bash
# Start server in background
python3 apk_server.py &

# Check if server is running
ps aux | grep apk_server

# Kill the server
pkill -f apk_server.py
```

## Available APK Files

The server currently serves the following APK files:

1. **Risa-debug.apk** (115.6 MB) - Debug build for testing
2. **Risa-release.apk** (62.6 MB) - Release build for production

## Usage

### Web Interface

1. Open your browser and navigate to `http://localhost:8000`
2. You'll see a list of available APK files
3. Click the "Download APK" button next to any file to download it

### Direct Download

You can also download files directly using their URLs:

```bash
# Download using curl
curl -O http://localhost:8000/Risa-debug.apk

# Download using wget
wget http://localhost:8000/Risa-debug.apk

# Download using browser
# Just visit: http://localhost:8000/Risa-debug.apk
```

### API Endpoints

- `GET /` - HTML interface listing all APK files
- `GET /<filename>.apk` - Download specific APK file
- `HEAD /` - Server status information
- `HEAD /<filename>.apk` - File information (size, headers)

## Server Configuration

### Changing Port

To run the server on a different port, modify the `port` variable in `apk_server.py`:

```python
def main():
    port = 8000  # Change this to your desired port
    # ... rest of the code
```

### Adding New APK Files

Simply copy new APK files to the `apk_downloads/` directory:

```bash
cp /path/to/your/app.apk apk_downloads/
```

The server will automatically detect and serve the new file on the next request.

## Technical Details

### Headers

The server automatically adds these headers to all responses:

- `Access-Control-Allow-Origin: *` - Allows cross-origin requests
- `Access-Control-Allow-Methods: GET, OPTIONS` - Allowed HTTP methods
- `Access-Control-Allow-Headers: *` - Allowed headers
- `Content-Disposition: attachment` - Forces file download

### File Types Supported

- `.apk` files (Android Package Kit)
- Any other files placed in the `apk_downloads/` directory

### Logging

The server logs all requests with timestamps:

```
[APK Server] 127.0.0.1 - "GET / HTTP/1.1" 200 -
[APK Server] 127.0.0.1 - "GET /Risa-debug.apk HTTP/1.1" 200 -
```

## Troubleshooting

### Server Won't Start

1. **Port already in use**: Change the port number in the script
2. **Permission issues**: Ensure you have read access to `apk_downloads/` directory
3. **Python not found**: Make sure Python 3 is installed

### Files Not Appearing

1. Check that APK files are in the correct directory (`apk_downloads/`)
2. Ensure files have `.apk` extension
3. Verify file permissions (files should be readable)

### Download Issues

1. **CORS errors**: The server includes CORS headers, but some browsers may still block downloads
2. **Large files**: The server handles large files, but downloads may take time
3. **Network access**: Ensure the device can reach the server IP and port

## Security Considerations

⚠️ **Important**: This server is designed for development and testing. For production use:

1. **Add authentication** - Implement user authentication
2. **Use HTTPS** - Serve over HTTPS for encrypted connections
3. **Restrict access** - Limit who can access the server
4. **Validate files** - Implement file validation and scanning
5. **Monitor logs** - Regular security monitoring

## Development

### Customizing the Interface

The HTML interface can be customized by modifying the `html_content` variable in the `do_GET` method of `APKServerHandler`.

### Adding Features

Common extensions:

- File upload capability
- User authentication
- File versioning
- Download statistics
- API key authentication

## License

This server script is provided as-is for the Risa app project.

---

**Server Status**: ✅ Running on port 8000  
**Files Available**: 2 APK files  
**Last Updated**: December 15, 2025
