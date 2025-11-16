#!/usr/bin/env python3
"""
Generate complete app icon set using the lone logo with dark theme background
"""

from PIL import Image, ImageDraw
import os

# App colors - consistent with dark theme
DARK_BACKGROUND = (28, 28, 30)  # #1C1C1E - main app background

def create_icon(size):
    """Create app icon using the lone logo"""
    # Create dark background
    img = Image.new('RGB', (size, size), DARK_BACKGROUND)
    
    try:
        # Load the lone logo
        logo_path = '/root/iptv-player/assets/images/lonelogo (1).png'
        logo = Image.open(logo_path)
        
        # Convert to RGBA if needed
        if logo.mode != 'RGBA':
            logo = logo.convert('RGBA')
        
        # Calculate size to fit logo in icon (with padding)
        padding = size // 8
        max_logo_size = size - (padding * 2)
        
        # Resize logo maintaining aspect ratio
        logo.thumbnail((max_logo_size, max_logo_size), Image.Resampling.LANCZOS)
        
        # Center the logo
        logo_x = (size - logo.width) // 2
        logo_y = (size - logo.height) // 2
        
        # Paste logo onto background
        img.paste(logo, (logo_x, logo_y), logo)
        
    except Exception as e:
        print(f"Error loading logo: {e}")
        # Fallback: create simple triangle
        draw = ImageDraw.Draw(img)
        center_x = size // 2
        center_y = size // 2
        triangle_size = size // 3
        
        triangle = [
            (center_x - triangle_size//2, center_y - triangle_size//2),
            (center_x - triangle_size//2, center_y + triangle_size//2),
            (center_x + triangle_size//2, center_y)
        ]
        draw.polygon(triangle, fill=(46, 49, 146))  # Primary blue
    
    return img

# Android icons
android_sizes = {
    'mdpi': 48,
    'hdpi': 72,
    'xhdpi': 96,
    'xxhdpi': 144,
    'xxxhdpi': 192,
}

android_base_dir = '/root/iptv-player/android/app/src/main/res'

print("Generating Android app icons...")
for density, size in android_sizes.items():
    icon = create_icon(size)
    output_dir = os.path.join(android_base_dir, f'mipmap-{density}')
    os.makedirs(output_dir, exist_ok=True)
    output_path = os.path.join(output_dir, 'ic_launcher.png')
    icon.save(output_path, 'PNG')
    print(f"  ✓ Android {density} ({size}x{size})")

# Web icons
web_dir = '/root/iptv-player/web/icons'
os.makedirs(web_dir, exist_ok=True)

web_sizes = [192, 512]
print("Generating web icons...")
for web_size in web_sizes:
    web_icon = create_icon(web_size)
    web_path = os.path.join(web_dir, f'Icon-{web_size}.png')
    web_icon.save(web_path, 'PNG')
    print(f"  ✓ Web icon ({web_size}x{web_size})")
    
    # Maskable version
    maskable_path = os.path.join(web_dir, f'Icon-maskable-{web_size}.png')
    web_icon.save(maskable_path, 'PNG')

# Favicon
favicon = create_icon(32)
favicon_path = '/root/iptv-player/web/favicon.png'
favicon.save(favicon_path, 'PNG')
print("  ✓ Favicon (32x32)")

# Linux desktop icon
linux_dir = '/root/iptv-player/linux/runner'
os.makedirs(linux_dir, exist_ok=True)
linux_icon = create_icon(128)
linux_path = os.path.join(linux_dir, 'icon.png')
linux_icon.save(linux_path, 'PNG')
print("  ✓ Linux desktop icon (128x128)")

# Preview
preview = create_icon(512)
preview_path = '/root/iptv-player/app_icon_preview.png'
preview.save(preview_path, 'PNG')
print(f"  ✓ Preview saved: app_icon_preview.png")

print("\nComplete app icon generation finished!")