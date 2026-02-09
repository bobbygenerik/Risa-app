#!/usr/bin/env bash
set -euo pipefail

# Usage: run from repo root: ./scripts/remove_committed_build_artifacts.sh
# This script will:
#  - back up .gitignore to .gitignore.bak
#  - append recommended ignore patterns (via append_to_gitignore.sh)
#  - stage removal of common generated folders from git index (git rm --cached)
#  - create a commit on the current branch describing the removals
#
# NOTE: This does NOT push to remote. Review the changes and push/create a PR as desired.

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

if [ ! -d .git ]; then
  echo "ERROR: Not a git repository (no .git directory). Run from the repo root." >&2
  exit 1
fi

echo "Appending recommended .gitignore entries..."
bash scripts/append_to_gitignore.sh

REMOVE_PATHS=(
  "build"
  "tmp"
  "tmp/tivimate_jadx"
)

echo "Staging removal of committed build/decompiled artifacts (git rm --cached)..."
for p in "${REMOVE_PATHS[@]}"; do
  if [ -e "$p" ]; then
    git rm -r --cached --ignore-unmatch "$p" || true
    echo "Staged removal of $p (if it existed in the index)."
  else
    echo "Path not found (skipping): $p"
  fi
done

echo "Creating commit: 'chore: remove committed build/decompiled artifacts and update .gitignore'"
git add .gitignore || true
if git diff --cached --quiet; then
  echo "No changes staged for commit. Nothing to do."
  exit 0
fi

git commit -m "chore: remove committed build/decompiled artifacts and update .gitignore"

echo "Committed changes locally. To push and open a PR, run:" 
echo "  git push origin HEAD:<branch-name>"
echo "Then open a PR from <branch-name> to your main branch."
