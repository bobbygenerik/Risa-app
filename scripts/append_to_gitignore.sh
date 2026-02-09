#!/usr/bin/env bash
set -euo pipefail

# Safely append recommended ignore patterns to the repo's .gitignore
# Creates a backup `.gitignore.bak` before modifying.

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
GITIGNORE="$REPO_ROOT/.gitignore"
BACKUP="$GITIGNORE.bak"

PATTERNS=(
  "# Generated/build artifacts"
  "build/"
  "**/build/"
  "tmp/"
  "tmp/**"
  "**/tmp/"
  "**/.dart_tool/"
  "**/.pub-cache/"
  "**/.gradle/"
  "**/app/intermediates/"
  "**/intermediates/"
  "**/.idea/"
  "*.iml"
  "**/tmp/tivimate_jadx/"
)

if [ ! -f "$GITIGNORE" ]; then
  echo "No .gitignore found at $GITIGNORE — creating new file."
  touch "$GITIGNORE"
fi

cp "$GITIGNORE" "$BACKUP"
echo "Backed up existing .gitignore to $BACKUP"

for p in "${PATTERNS[@]}"; do
  if ! grep -Fqx "$p" "$GITIGNORE"; then
    echo "$p" >> "$GITIGNORE"
    echo "Appended: $p"
  fi
done

echo "Done. Review $GITIGNORE and commit the changes."
