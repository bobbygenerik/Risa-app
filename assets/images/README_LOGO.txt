Source of truth: assets/images/risalogo.png

Regenerate every branded asset:
  python3 tools/sync_brand_logos.py
  dart run flutter_launcher_icons

Outputs:
- logo.png — sidebar expanded
- logo_icon.png — sidebar collapsed (tighter crop)
- Android: launch_image.png, tv_banner, croppedlogo2, mipmaps, adaptive foreground
- web/icons, linux/runner/icon.png, roku/images/ (all channel + splash art)

Legacy files (RISA-logo.png, RISA-logo-upscaled.png) are removed by sync — do not re-add.

Rebuild APK/install to see all surfaces update on device.
