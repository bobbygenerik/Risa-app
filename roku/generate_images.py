#!/usr/bin/env python3
"""
Generate Roku channel icons and splash screens
"""
import os
from PIL import Image, ImageDraw, ImageFont

def create_directory(path):
    os.makedirs(path, exist_ok=True)

def create_icon(filename, width, height):
    """Create an icon with rounded corners and gradient"""
    img = Image.new('RGBA', (width, height), (0, 0, 0, 0))
    draw = ImageDraw.Draw(img)
    
    # Dark blue gradient background
    radius = 15
    for x in range(width):
        for y in range(height):
            # Rounded rectangle check
            dist = ((x - radius) ** 2 + (y - radius) ** 2) ** 0.5
            if dist <= radius or x >= width - radius or y >= height - radius:
                if x >= radius and x < width - radius and y >= radius and y < height - radius:
                    r = int(26 + (x / width) * 20)
                    g = int(37 + (y / height) * 20)
                    b = int(64)
                    img.putpixel((x, y), (r, g, b, 255))
    
    # Draw play button in center
    center_x, center_y = width // 2, height // 2
    triangle_size = min(width, height) // 4
    points = [
        (center_x - triangle_size, center_y - triangle_size),
        (center_x - triangle_size, center_y + triangle_size),
        (center_x + triangle_size, center_y)
    ]
    draw.polygon(points, fill=(255, 107, 0, 255))
    
    img.save(filename, 'PNG')
    print(f"Created {filename} ({width}x{height})")

def create_splash(filename, width, height):
    """Create a splash screen"""
    img = Image.new('RGB', (width, height), (26, 37, 64))
    draw = ImageDraw.Draw(img)
    
    # Draw text
    text = "IPTV Player"
    try:
        font = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", 80)
    except:
        font = ImageFont.load_default()
    
    # Get text bounds and center it
    bbox = draw.textbbox((0, 0), text, font=font)
    text_width = bbox[2] - bbox[0]
    text_height = bbox[3] - bbox[1]
    text_x = (width - text_width) // 2
    text_y = (height - text_height) // 2
    
    draw.text((text_x, text_y), text, fill=(255, 107, 0), font=font)
    
    # Draw play button below text
    button_y = text_y + text_height + 40
    triangle_size = 40
    points = [
        (width // 2 - triangle_size, button_y - triangle_size),
        (width // 2 - triangle_size, button_y + triangle_size),
        (width // 2 + triangle_size, button_y)
    ]
    draw.polygon(points, fill=(255, 107, 0))
    
    img.save(filename)
    print(f"Created {filename} ({width}x{height})")

# Create images directory
roku_root = '/root/iptv-player/roku'
images_dir = os.path.join(roku_root, 'images')
create_directory(images_dir)

# Create icons
create_icon(os.path.join(images_dir, 'mm_icon_focus_hd.png'), 320, 240)
create_icon(os.path.join(images_dir, 'mm_icon_focus_sd.png'), 210, 160)
create_icon(os.path.join(images_dir, 'mm_icon_unfocus_hd.png'), 320, 240)
create_icon(os.path.join(images_dir, 'mm_icon_unfocus_sd.png'), 210, 160)
create_icon(os.path.join(images_dir, 'icon_hd.png'), 320, 240)
create_icon(os.path.join(images_dir, 'icon_fhd.png'), 480, 360)

# Create splash screens
create_splash(os.path.join(images_dir, 'mm_splash_hd.jpg'), 1280, 720)
create_splash(os.path.join(images_dir, 'mm_splash_sd.jpg'), 720, 480)
create_splash(os.path.join(images_dir, 'splash_hd.png'), 1280, 720)
create_splash(os.path.join(images_dir, 'splash_fhd.png'), 1920, 1080)

# Create screensaver images
create_splash(os.path.join(images_dir, 'screensaver_hd.jpg'), 1280, 720)
create_splash(os.path.join(images_dir, 'screensaver_sd.jpg'), 720, 480)

# Create placeholder title image
title_img = Image.new('RGBA', (1280, 100), (0, 0, 0, 0))
title_draw = ImageDraw.Draw(title_img)
try:
    font = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", 60)
except:
    font = ImageFont.load_default()
title_draw.text((20, 20), "IPTV Player", fill=(255, 107, 0, 255), font=font)
title_img.save(os.path.join(images_dir, 'screensaver_title.png'))
print(f"Created screensaver_title.png")

print("\nAll Roku images created successfully!")
