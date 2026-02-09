# Subagent Scan Report

Date: 2026-02-09

Summary: automated subagents scanned the repository for code-quality, performance, security, dependency, and optimization issues. High-priority issues and recommended immediate actions are listed below.

**High-Severity Findings**
- **Committed build / decompiled artifacts:** large generated folders (e.g. `tmp/tivimate_jadx/`, `build/`) are present and bloat the repo. Immediate: remove from git, add to `.gitignore`, and consider a git history rewrite if size is a problem.
- **Hard-coded API keys / secrets:** multiple API keys found in `lib/config/*` (TMDB, TVDB, Fanart, OMDb). Immediate: remove keys from source, rotate/revoke exposed keys, and use secure runtime configuration (env vars/secret manager/--dart-define).
- **TLS validation disabled:** several places set `badCertificateCallback = (cert, host, port) => true` or accept all certs (e.g., `lib/services/ssl_handler.dart`, `lib/providers/playlist_isolate.dart`, `lib/services/incremental_epg_service.dart`). Immediate: revert insecure behavior, require proper certificate validation, and fail closed.
- **Large/monolithic files:** several very large files/services/screens (e.g., `lib/screens/live_tv_screen.dart`, `lib/services/incremental_epg_service.dart`, `lib/providers/channel_provider.dart`) increase complexity and risk. Immediate: plan refactors to extract responsibilities and add tests.
- **Duplicate/shared-code drift:** duplicate implementations exist between `lib/` and `shared-code/` (models, helpers). Immediate: consolidate canonical code (create internal package or single `shared-code` import) to avoid drift.

**Performance Hotspots (high/medium priority)**
- Serializing large JSON blobs on the main isolate (backups, playlist saves, shared prefs). Fix: move JSON encode/decode and file IO to background isolates, or use a small DB (sqflite) and batch operations.
- Embedding raw image bytes into JSON structures (`LogoData.toJson()`): avoid serializing raw bytes; store files on disk and serialize paths/metadata.
- Nested O(N^2) loops on EPG/program lists (memory heavy). Fix: stream or batch processing, index by channel, use isolates for parsing.
- Sequential network checks in loops (logo detection): run with controlled concurrency and caching.

**Dependency & Manifest Issues**
- Version mismatches across packages (examples: `go_router`, `dio`, `http`, `xml`, `shared_preferences`, `intl`, `flutter_lints`). Immediate: create a repo-wide policy for dependency alignment; run `dart pub outdated` and unify versions, then run full test matrix.
- Several local package overrides exist (file_picker, speech_to_text). Document and consider re-adopting official packages when feasible.

**Other actionable findings**
- Debug `print` left in code (`lib/utils/image_load_probe.dart`, `lib/main.dart`) — replace with structured logging and guard in production.
- Broad `// ignore_for_file: todo` — triage TODOs into tracked issues and avoid suppressing lints broadly.
- Many TODOs and tracked issues in `TODO.md` and other docs — convert high-priority items to tracked tickets with owners and ETA.

**Immediate Recommended Steps (first 7 days)**
1. Revoke/rotate any real API keys discovered and remove them from the repo. Configure secrets to be injected at runtime (env vars, secret manager, or `--dart-define`).
2. Remove `build/`, `tmp/` and decompiled artifacts from the repo and add them to `.gitignore`. If repo size is a concern, plan a history rewrite (git-filter-repo or BFG).
3. Disable any insecure TLS shortcuts (remove `badCertificateCallback` acceptance). Audit networking code for any downgrades to HTTP and fail-closed.
4. Add CI checks: secret scanning (git-secrets / trufflehog / custom), `dart analyze`, and license checks. Add caching for `pub`/Gradle in CI to speed pipelines.
5. Align dependency versions across packages and remove local overrides or document/maintain them intentionally.
6. Triage and create issues for the top maintenance items: dedupe shared-code, split large files, and fix the highest-impact performance hotspots (JSON on main thread, raw bytes serialization).
7. Add a small engineering task to replace `print` with structured logging and to limit logging of sensitive values.

**Suggested longer-term work (plan)**
- Refactor very large files/services into smaller testable components and add unit tests.
- Introduce a small internal shared package for `shared-code/` and update imports.
- Optimize asset pipeline (convert/compress images, automate in CI) and use AAB/split-per-abi for releases.
- Implement background workers for CPU-heavy tasks (transcription, EPG processing) and use queues for large-batch jobs.

If you want, I can:
- generate full JSON output files from each subagent in `.analysis/subagents/` (detailed findings),
- create tracked GitHub issues for the top N items, or
- open a PR with a minimal fixset (e.g., `.gitignore` changes and removing committed build artifacts).

Next step: tell me which of the three optional follow-ups above you want me to do first.
