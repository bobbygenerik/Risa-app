#!/usr/bin/env python3
"""
Generate all RISA brand assets from newrisalogo.png.
Outputs:
  - mipmap-{mdpi,hdpi,xhdpi,xxhdpi,xxxhdpi}/ic_launcher.png  (square icons)
  - drawable-{mdpi,hdpi,xhdpi,xxhdpi,xxxhdpi}/ic_launcher_foreground.png (adaptive icon fg)
  - drawable/tv_banner.png                                     (320x180 Android TV banner)
  - assets/images/logo.png                                     (sidebar expanded logo)
  - assets/images/logo_icon.png                                (sidebar collapsed icon)
  - assets/images/newrisalogo.png                              (canonical copy — already there)
  - drawable/launch_image.png                                  (splash center image)
  Splash background colour in colors.xml is updated to match logo bg (#0D0E1A).
"""

import os, sys
from pathlib import Path
from PIL import Image, ImageDraw

SRC = Path('/home/bobbygenerik/repos/Risa-app/assets/images/newrisalogo.png')
ROOT = Path('/home/bobbygenerik/Risa-app')

# The exact dark navy from the logo background
SPLASH_BG = '#0D0E1A'

def open_src():
    img = Image.open(SRC).convert('RGBA')
    return img

def save(img, path, size=None):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    out = img.copy()
    if size:
        out = out.resize(size, Image.LANCZOS)
    out.save(str(path), optimize=True)
    print(f'  wrote {path} {out.size}')

# ── 1. mipmap ic_launcher (square, full logo on dark bg) ──────────────────────
MIPMAP_SIZES = {
    'mdpi':    48,
    'hdpi':    72,
    'xhdpi':   96,
    'xxhdpi':  144,
    'xxxhdpi': 192,
}

src = open_src()

print('Generating mipmap ic_launcher...')
for dpi, px in MIPMAP_SIZES.items():
    dst = ROOT / f'android/app/src/main/res/mipmap-{dpi}/ic_launcher.png'
    save(src, dst, (px, px))

# ── 2. Adaptive icon foreground layers ────────────────────────────────────────
FOREGROUND_SIZES = {
    'mdpi':    108,
    'hdpi':    162,
    'xhdpi':   216,
    'xxhdpi':  324,
    'xxxhdpi': 432,
}

print('Generating adaptive icon foregrounds...')
for dpi, px in FOREGROUND_SIZES.items():
    # Adaptive foreground: logo centred in a transparent square, inset ~12.5%
    canvas = Image.new('RGBA', (px, px), (0, 0, 0, 0))
    safe = int(px * 0.75)  # use 75% of the canvas as the safe zone
    logo_resized = src.resize((safe, safe), Image.LANCZOS)
    offset = (px - safe) // 2
    canvas.paste(logo_resized, (offset, offset), logo_resized)
    dst = ROOT / f'android/app/src/main/res/drawable-{dpi}/ic_launcher_foreground.png'
    save(canvas, dst)

# ── 3. Android TV banner (320x180) ────────────────────────────────────────────
print('Generating TV banner...')
banner_w, banner_h = 320, 180
banner_bg = Image.new('RGBA', (banner_w, banner_h), (13, 14, 26, 255))  # #0D0E1A
# Logo centred, height = 90% of banner height
logo_h = int(banner_h * 0.90)
logo_w = logo_h  # square logo
logo_resized = src.resize((logo_w, logo_h), Image.LANCZOS)
x = (banner_w - logo_w) // 2
y = (banner_h - logo_h) // 2
banner_bg.paste(logo_resized, (x, y), logo_resized)
save(banner_bg.convert('RGBA'), ROOT / 'android/app/src/main/res/drawable/tv_banner.png')

# ── 4. assets/images/logo.png (sidebar expanded — horizontal wide crop) ───────
print('Generating assets/images/logo.png ...')
# Full square logo at 1024x1024 — sidebar code scales via height: 28
save(src, ROOT / 'assets/images/logo.png', (1024, 1024))

# ── 5. assets/images/logo_icon.png (sidebar collapsed — icon portion only) ────
print('Generating assets/images/logo_icon.png ...')
# Just the icon mark portion: top ~60% of the original square
icon_crop_ratio = 0.60
h_src = src.height
crop_box = (0, 0, src.width, int(h_src * icon_crop_ratio))
icon_only = src.crop(crop_box)
save(icon_only, ROOT / 'assets/images/logo_icon.png', (512, 512))

# ── 6. Splash launch_image.png (centred on splash screen) ─────────────────────
print('Generating splash launch_image.png ...')
# 300×300 transparent PNG of the logo (Flutter splash centres this)
splash_logo = src.resize((300, 300), Image.LANCZOS)
save(splash_logo, ROOT / 'android/app/src/main/res/drawable/launch_image.png')

# Also copy full-res logo as canonical asset
import shutil
dst_canon = ROOT / 'assets/images/newrisalogo.png'
shutil.copy2(str(SRC), str(dst_canon))
print(f'  copied canonical → {dst_canon}')

# ── 7. Update splash background colour in colors.xml ─────────────────────────
print('Updating colors.xml ...')
colors_xml = ROOT / 'android/app/src/main/res/values/colors.xml'
text = colors_xml.read_text()
# Replace the ic_launcher_background value
import re
text = re.sub(
    r'(<color name="ic_launcher_background">)[^<]*(</color>)',
    rf'\g<1>{SPLASH_BG}\g<2>',
    text
)
colors_xml.write_text(text)
print(f'  ic_launcher_background → {SPLASH_BG}')

print('\nAll assets generated successfully.')
