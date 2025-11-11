# Dependency / Vosk integration

Summary

- The project aims to enable on-device transcription using `vosk_flutter` (Vosk). While adding `vosk_flutter` the dependency resolution failed due to a version conflict with `permission_handler` (plugin requires an older version).
- A temporary `dependency_overrides` was added to pin `permission_handler` (and in earlier attempts `http`) so that `flutter pub get` would succeed. This is a risky, short-term workaround.

What I saw

- `flutter pub get` fails when adding `vosk_flutter` unless `permission_handler` is pinned.
- `dependency_overrides` currently present in `pubspec.yaml` to force older versions.
- The analyzer now resolves URIs for Vosk after overrides, but the overrides may cause runtime issues or incompatible transitive deps.

Impact

- Risk of runtime crashes or ABI issues on Android/iOS if other plugins expect newer `permission_handler` APIs.
- Blocks safely removing overrides without either downgrading other packages or making Vosk optional.

Options / Recommended remediation

1) Safe (recommended): Make Vosk optional/guarded
   - Remove `dependency_overrides` from `pubspec.yaml`.
   - Add `vosk_flutter` as an optional dependency and guard imports/usage with runtime checks or use conditional imports.
   - Provide a no-op or fallback implementation when Vosk isn't available.
   - Benefits: keeps the project on current dependency versions; avoids global downgrades.

2) Aggressive: Align project to Vosk's requirements
   - Bump/downgrade `permission_handler` and any conflicting transitive deps across the repo to match `vosk_flutter` constraints.
   - Thoroughly test on Android/iOS (permissions, builds) and run integration tests.
   - Risks: other plugins may break; increased maintenance.

3) Alternative: Use a different on-device ASR plugin with modern constraints or integrate Vosk as a separate native module.

Acceptance criteria to close this issue

- Either: `dependency_overrides` removed and `flutter pub get` succeeds, with Vosk guarded such that app compiles and runs without runtime dependency issues; or
- Or: all project dependencies aligned to Vosk's required versions and smoke-tested on Android/iOS.

Files of interest

- `pubspec.yaml` (current overrides)
- `lib/services/true_ondevice_transcription_service.dart` (vosk usage)

Estimated effort

- Option 1 (guarding): 1-2 days (depending on how many call sites need guarding).
- Option 2 (global alignment): 1-3 days + testing across platforms.

Tags: dependencies, vosk, on-device, action-required
