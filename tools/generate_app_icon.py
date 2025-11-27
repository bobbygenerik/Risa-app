#!/usr/bin/env python3
"""
Generate app icon for Risa IPTV Player
Colors: Primary Blue #2E3192, Accent Pink #E61E6E
"""

from PIL import Image, ImageDraw, ImageFont
import os

# App colors
PRIMARY_BLUE = (46, 49, 146)  # #2E3192
ACCENT_PINK = (230, 30, 110)  # #E61E6E
WHITE = (255, 255, 255)

def create_icon(size):
    """Create a single icon of the specified size"""
    # Create image with gradient background
    img = Image.new('RGB', (size, size), PRIMARY_BLUE)
    draw = ImageDraw.Draw(img)
    
    # Draw gradient effect
    for i in range(size):
        alpha = i / size
        color = tuple(int(PRIMARY_BLUE[j] * (1 - alpha * 0.3) + ACCENT_PINK[j] * alpha * 0.3) for j in range(3))
        draw.rectangle([(0, i), (size, i + 1)], fill=color)
    
    # Draw TV screen shape
    margin = size // 6
    screen_rect = [margin, margin, size - margin, size - margin]
    
    # Outer TV frame (pink)
    try:
        draw.rounded_rectangle(screen_rect, radius=size//10, fill=ACCENT_PINK, width=size//20)
    except (ValueError, TypeError):
        draw.rectangle(screen_rect, fill=ACCENT_PINK)
    
    # Inner screen (darker blue)
    inner_margin = margin + size // 15
    inner_rect = [inner_margin, inner_margin, size - inner_margin, size - inner_margin]
    try:
        draw.rounded_rectangle(inner_rect, radius=size//12, fill=(20, 22, 90))
    except (ValueError, TypeError):
        draw.rectangle(inner_rect, fill=(20, 22, 90))
    
    # Play button triangle in center
    center_x = size // 2
    center_y = size // 2
    triangle_size = size // 5
    
    # Draw play triangle (white with pink glow)
    triangle = [
        (center_x - triangle_size//3, center_y - triangle_size//2),
        (center_x - triangle_size//3, center_y + triangle_size//2),
        (center_x + triangle_size//2, center_y)
    ]
    
    # Pink glow
    for offset in range(4, 0, -1):
        alpha = 100 - offset * 20
        glow_triangle = [(x + offset, y) for x, y in triangle]
        draw.polygon(glow_triangle, fill=ACCENT_PINK)
    
    # White play button
    draw.polygon(triangle, fill=WHITE)
    
    # Add small accent dots for visual interest
    dot_size = size // 30
    positions = [
        (size - margin - dot_size * 2, margin + dot_size),
        (margin + dot_size, size - margin - dot_size * 2),
    ]
    for pos in positions:
        draw.ellipse([pos[0], pos[1], pos[0] + dot_size, pos[1] + dot_size], fill=ACCENT_PINK)
    
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
base_dir = '/root/iptv-player/android/app/src/main/res'

print("Generating app icons...")
for density, size in sizes.items():
    icon = create_icon(size)
    output_dir = os.path.join(base_dir, f'mipmap-{density}')
    os.makedirs(output_dir, exist_ok=True)
    output_path = os.path.join(output_dir, 'ic_launcher.png')
    icon.save(output_path, 'PNG')
    print(f"  ✓ Created {density} ({size}x{size}): {output_path}")

# Create a large preview
preview = create_icon(512)
preview_path = '/root/iptv-player/app_icon_preview.png'
preview.save(preview_path, 'PNG')
print(f"\n✓ Preview saved: {preview_path}")
print("\nApp icon generation complete!")
