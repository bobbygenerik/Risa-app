#!/bin/bash
# Launch Risa on Linux with artwork provider API keys.
# Keys live in dart_defines.json (gitignored). Pass extra flags through, e.g.:
#   ./run_risa.sh --profile
set -e
cd "$(dirname "$0")"
exec flutter run -d linux --dart-define-from-file=dart_defines.json "$@"
