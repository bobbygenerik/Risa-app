#!/usr/bin/env bash
# Export FLUTTER_ROOT and add flutter/bin to PATH for CI/agents.
# Usage: source scripts/export_flutter_env.sh

if [ -z "$FLUTTER_ROOT" ]; then
  if [ -d "$HOME/flutter" ]; then
    export FLUTTER_ROOT="$HOME/flutter"
  elif [ -d "/opt/flutter" ]; then
    export FLUTTER_ROOT="/opt/flutter"
  elif command -v flutter >/dev/null 2>&1; then
    FLUTTER_PATH=$(readlink -f "$(command -v flutter)")
    export FLUTTER_ROOT="$(dirname "$(dirname "$FLUTTER_PATH")")"
  fi
fi

if [ -n "$FLUTTER_ROOT" ]; then
  case ":$PATH:" in
    *":$FLUTTER_ROOT/bin:"*) ;;
    *) export PATH="$FLUTTER_ROOT/bin:$PATH";;
  esac
fi

# Helpful message when sourced interactively
if [ -n "$PS1" ]; then
  if [ -n "$FLUTTER_ROOT" ]; then
    echo "FLUTTER_ROOT set to: $FLUTTER_ROOT"
  else
    echo "Flutter SDK not found by scripts/export_flutter_env.sh"
  fi
fi
