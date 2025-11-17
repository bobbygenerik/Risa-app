# PR: Remove Cloud Sync (provider-specific) — Local Backup Replacement

## Summary
This change removes the provider-specific cloud sync feature and replaces it with a local export/import backup workflow. The import flow now includes an explicit confirmation dialog and an option to create a pre-backup before applying an import.

## Why
Cloud sync added complexity and required OAuth configuration and cloud permissions.
- User-requested simplification to local backups keeps user data under their control without cloud dependencies.

## Key Changes
 - UI
  - `lib/screens/settings_screen.dart` — Removed cloud-sync tile; added Local Backup export/import handlers and an import confirmation dialog with "Backup & Continue" option.

- Services
  - `lib/services/local_backup_service.dart` — Primary export/import implementation (existing); used for Import/Export flows.
  - `lib/services/cloud_sync_service.dart` — Deprecated/removed (provider-specific implementation deleted to avoid accidental usage).

- Docs & Tests
  - `CLOUD_AND_AI_FEATURES.md` — Marked cloud sync removed and pointed to Local Backup.
  - `IMPLEMENTATION_STATUS.md` — Updated to reflect cloud-sync removal and replace cloud-sync card with Local Backup card.
  - `PROJECT_STATUS.md` / `PROJECT_SUMMARY.md` — Removed Drive-specific references.
  - `test_functionality.dart` — Updated to test `LocalBackupService` instead of Drive service.

## Files Changed (high-level)
- lib/screens/settings_screen.dart (import confirmation & pre-backup)
- lib/services/local_backup_service.dart (used; no breaking changes)
 - lib/services/cloud_sync_service.dart (deleted)
- CLOUD_AND_AI_FEATURES.md, IMPLEMENTATION_STATUS.md, PROJECT_STATUS.md, PROJECT_SUMMARY.md (docs updated)
- test_functionality.dart (tests updated)
- PR_SUMMARY.md (this file)

## Verification
- Ran: `flutter clean && flutter pub get && flutter analyze && flutter test && flutter build apk --debug -v` successfully.
- APK: `build/app/outputs/flutter-apk/app-debug.apk`

## Suggested PR Title
```
Remove provider-specific cloud sync; add Local Backup export/import and import confirmation
```

## Suggested PR Body
- Explain that Drive sync was intentionally removed and local backups should be used.
- Point reviewers to `PR_SUMMARY.md` for details and testing steps.
- Note: No cloud dependencies were introduced or required.

## Next Steps for Maintainers
- Review updated docs for accuracy.
- If you want to reintroduce cloud sync later, consider implementing it as an optional plugin with a feature flag.
- Merge when ready.
