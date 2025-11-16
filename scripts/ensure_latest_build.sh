#!/usr/bin/env bash
set -euo pipefail

# ensure_latest_build.sh
# Usage: ./scripts/ensure_latest_build.sh [branch] [remote]
# Defaults to current branch and remote 'origin'.

BRANCH="${1:-$(git rev-parse --abbrev-ref HEAD)}"
REMOTE="${2:-origin}"

echo "[pre-build] branch=$BRANCH remote=$REMOTE"

echo "[pre-build] fetching ${REMOTE}..."
git fetch --prune "${REMOTE}"

echo "[pre-build] resetting local branch ${BRANCH} to ${REMOTE}/${BRANCH} (this will discard local uncommitted changes)..."
git reset --hard "${REMOTE}/${BRANCH}"

echo "[pre-build] cleaning Flutter build artifacts (flutter clean)..."
if command -v flutter >/dev/null 2>&1; then
  flutter clean
  echo "[pre-build] running flutter pub get..."
  flutter pub get
else
  echo "[pre-build] flutter not found in PATH — please run 'flutter pub get' manually on this machine."
fi

echo "[pre-build] current HEAD: $(git rev-parse --short HEAD)"
echo "[pre-build] done."
