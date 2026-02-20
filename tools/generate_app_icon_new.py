#!/usr/bin/env python3
"""
Generate app icon using the lone logo with dark theme background
"""

from PIL import Image, ImageDraw
import os

# Get project root directory
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.dirname(SCRIPT_DIR)

# App colors - consistent with dark theme
DARK_BACKGROUND = (28, 28, 30)  # #1C1C1E - main app background

def create_icon(size, logo_path):
    """Create app icon using the lone logo"""
    # Create dark background
    img = Image.new('RGB', (size, size), DARK_BACKGROUND)
    
    try:
        # Load the lone logo
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
        draw.polygon(triangle, fill=(0, 122, 255))  # Blue triangle
    
    return img

# Icon sizes for Android
sizes = {
    'mdpi': 48,
    'hdpi': 72,
    'xhdpi': 96,
    'xxhdpi': 144,
    'xxxhdpi': 192,
}

# Base directory for Android resources
logo_path = os.path.join(PROJECT_ROOT, 'assets', 'images', 'logo_icon.png')
base_dir = os.path.join(PROJECT_ROOT, 'android', 'app', 'src', 'main', 'res')

print("Generating app icons with lone logo...")
for density, size in sizes.items():
    icon = create_icon(size, logo_path)
    output_dir = os.path.join(base_dir, f'mipmap-{density}')
    os.makedirs(output_dir, exist_ok=True)
    output_path = os.path.join(output_dir, 'ic_launcher.png')
    icon.save(output_path, 'PNG')
    print(f"  ✓ Created {density} ({size}x{size}): {output_path}")

# Create web icons
web_dir = os.path.join(PROJECT_ROOT, 'web', 'icons')
os.makedirs(web_dir, exist_ok=True)

web_sizes = [192, 512]
for web_size in web_sizes:
    web_icon = create_icon(web_size, logo_path)
    web_path = os.path.join(web_dir, f'Icon-{web_size}.png')
    web_icon.save(web_path, 'PNG')
    print(f"  ✓ Created web icon ({web_size}x{web_size}): {web_path}")
    
    # Maskable version
    maskable_path = os.path.join(web_dir, f'Icon-maskable-{web_size}.png')
    web_icon.save(maskable_path, 'PNG')

# Create favicon
favicon = create_icon(32, logo_path)
favicon_path = os.path.join(PROJECT_ROOT, 'web', 'favicon.png')
favicon.save(favicon_path, 'PNG')
print(f"  ✓ Created favicon: {favicon_path}")

# Create preview
preview = create_icon(512, logo_path)
preview_path = os.path.join(PROJECT_ROOT, 'app_icon_preview.png')
preview.save(preview_path, 'PNG')
print(f"  ✓ Preview saved: {preview_path}")

print("\nApp icon generation complete!")