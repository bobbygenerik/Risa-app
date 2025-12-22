#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if ! command -v flutter >/dev/null 2>&1; then
  echo "flutter not found in PATH. Install Flutter and retry." >&2
  exit 1
fi

echo "Running Flutter tests in main app..."
(
  cd "$repo_root"
  flutter test
)

echo "Running Flutter tests in companion app..."
(
  cd "$repo_root/platforms/companion-app"
  flutter test
)

echo "All test suites completed."
