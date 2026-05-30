#!/usr/bin/env python3
"""Regenerate all Risa brand images from assets/images/risalogo.png."""

from __future__ import annotations

import os
from PIL import Image

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(SCRIPT_DIR)
SRC = os.path.join(ROOT, "assets", "images", "risalogo.png")
ASSETS = os.path.join(ROOT, "assets", "images")
ANDROID_RES = os.path.join(ROOT, "android", "app", "src", "main", "res")
DARK = (28, 28, 30, 255)


def load_source() -> Image.Image:
    img = Image.open(SRC).convert("RGBA")
    return img


def fit_on_canvas(
    logo: Image.Image, size: int, padding_ratio: float = 0.12, bg: tuple = DARK
) -> Image.Image:
    canvas = Image.new("RGBA", (size, size), bg)
    pad = int(size * padding_ratio)
    inner = logo.copy()
    inner.thumbnail((size - 2 * pad, size - 2 * pad), Image.Resampling.LANCZOS)
    x = (size - inner.width) // 2
    y = (size - inner.height) // 2
    canvas.paste(inner, (x, y), inner)
    return canvas


def center_crop_square(logo: Image.Image, fraction: float = 0.82) -> Image.Image:
    w, h = logo.size
    side = int(min(w, h) * fraction)
    left = (w - side) // 2
    top = (h - side) // 2
    return logo.crop((left, top, left + side, top + side))


def save_png(img: Image.Image, path: str) -> None:
    os.makedirs(os.path.dirname(path), exist_ok=True)
    if img.mode == "RGBA":
        img.save(path, "PNG", optimize=True)
    else:
        img.save(path, "PNG", optimize=True)
    print(f"  ✓ {path}")


def save_jpg(img: Image.Image, path: str, quality: int = 92) -> None:
    os.makedirs(os.path.dirname(path), exist_ok=True)
    img.convert("RGB").save(path, "JPEG", quality=quality)
    print(f"  ✓ {path}")


def compose_banner(logo: Image.Image, width: int, height: int) -> Image.Image:
    canvas = Image.new("RGBA", (width, height), DARK)
    pad = int(min(width, height) * 0.1)
    inner = logo.copy()
    inner.thumbnail((width - 2 * pad, height - 2 * pad), Image.Resampling.LANCZOS)
    x = (width - inner.width) // 2
    y = (height - inner.height) // 2
    canvas.paste(inner, (x, y), inner)
    return canvas


def main() -> None:
    if not os.path.isfile(SRC):
        raise SystemExit(f"Missing source: {SRC}")

    print(f"Source: {SRC}")
    logo = load_source()

    print("Flutter assets...")
    save_png(fit_on_canvas(logo, 1024, padding_ratio=0.08), os.path.join(ASSETS, "logo.png"))
    icon_src = center_crop_square(logo)
    save_png(
        fit_on_canvas(icon_src, 1024, padding_ratio=0.06),
        os.path.join(ASSETS, "logo_icon.png"),
    )

    print("Android...")
    save_png(
        compose_banner(logo, 320, 180),
        os.path.join(ANDROID_RES, "drawable", "tv_banner.png"),
    )
    save_jpg(
        compose_banner(logo, 1024, 576),
        os.path.join(ANDROID_RES, "drawable", "croppedlogo2.jpg"),
    )
    save_png(
        fit_on_canvas(logo, 1024, padding_ratio=0.1),
        os.path.join(ANDROID_RES, "drawable-nodpi", "launch_image.png"),
    )

    fg_master = fit_on_canvas(logo, 1024, padding_ratio=0.14)
    for dpi, size in [
        ("mdpi", 108),
        ("hdpi", 162),
        ("xhdpi", 216),
        ("xxhdpi", 324),
        ("xxxhdpi", 432),
    ]:
        fg = fg_master.copy()
        fg.thumbnail((size, size), Image.Resampling.LANCZOS)
        out = Image.new("RGBA", (size, size), (0, 0, 0, 0))
        out.paste(fg, ((size - fg.width) // 2, (size - fg.height) // 2), fg)
        save_png(out, os.path.join(ANDROID_RES, f"drawable-{dpi}", "ic_launcher_foreground.png"))

    for dpi, size in [
        ("mdpi", 48),
        ("hdpi", 72),
        ("xhdpi", 96),
        ("xxhdpi", 144),
        ("xxxhdpi", 192),
    ]:
        icon = fit_on_canvas(logo, size, padding_ratio=0.12)
        save_png(icon.convert("RGB"), os.path.join(ANDROID_RES, f"mipmap-{dpi}", "ic_launcher.png"))

    print("Web + Linux + Roku...")
    web = os.path.join(ROOT, "web")
    for size in (192, 512):
        save_png(
            fit_on_canvas(logo, size, padding_ratio=0.12).convert("RGB"),
            os.path.join(web, "icons", f"Icon-{size}.png"),
        )
        save_png(
            fit_on_canvas(logo, size, padding_ratio=0.12).convert("RGB"),
            os.path.join(web, "icons", f"Icon-maskable-{size}.png"),
        )
    save_png(fit_on_canvas(logo, 32, padding_ratio=0.1).convert("RGB"), os.path.join(web, "favicon.png"))

    save_png(
        fit_on_canvas(logo, 128, padding_ratio=0.12).convert("RGB"),
        os.path.join(ROOT, "linux", "runner", "icon.png"),
    )

    roku = os.path.join(ROOT, "roku", "images")
    save_png(fit_on_canvas(logo, 512, padding_ratio=0.08), os.path.join(roku, "logo.png"))
    save_png(
        fit_on_canvas(center_crop_square(logo), 256, padding_ratio=0.06),
        os.path.join(roku, "logo_icon.png"),
    )
    for name, w, h in [
        ("splash_hd", 1280, 720),
        ("splash_fhd", 1920, 1080),
        ("icon_hd", 320, 240),
        ("icon_fhd", 480, 360),
        ("mm_icon_focus_hd", 320, 240),
        ("mm_icon_focus_sd", 210, 160),
        ("mm_icon_unfocus_hd", 320, 240),
        ("mm_icon_unfocus_sd", 210, 160),
    ]:
        save_png(compose_banner(logo, w, h), os.path.join(roku, f"{name}.png"))
    save_jpg(compose_banner(logo, 1280, 720), os.path.join(roku, "mm_splash_hd.jpg"))
    save_jpg(compose_banner(logo, 720, 480), os.path.join(roku, "mm_splash_sd.jpg"))
    save_jpg(compose_banner(logo, 1280, 720), os.path.join(roku, "screensaver_hd.jpg"))
    save_jpg(compose_banner(logo, 720, 480), os.path.join(roku, "screensaver_sd.jpg"))
    save_png(compose_banner(logo, 1280, 100), os.path.join(roku, "screensaver_title.png"))

    legacy_assets = [
        os.path.join(ASSETS, "RISA-logo.png"),
        os.path.join(ASSETS, "RISA-logo-upscaled.png"),
    ]
    for path in legacy_assets:
        if os.path.isfile(path):
            os.remove(path)
            print(f"  ✗ removed legacy {path}")

    print("Done. Run: dart run flutter_launcher_icons")


if __name__ == "__main__":
    main()
