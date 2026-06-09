#!/usr/bin/env bash
# Tail Risa stdout and aggregate jank / perf milestones.
# Usage:
#   ./run_risa.sh --profile 2>&1 | tee /tmp/risa_perf.log &
#   ./scripts/monitor_risa_perf.sh /tmp/risa_perf.log
set -eo pipefail

LOG="${1:-/tmp/risa_perf.log}"
if [[ ! -f "$LOG" ]]; then
  echo "Waiting for log: $LOG"
  touch "$LOG"
fi

echo "Monitoring $LOG (Ctrl+C to stop)"
echo "---"

jank=0
severe=0
max=0
startup=0

tail -n 0 -F "$LOG" | while IFS= read -r line; do
  case "$line" in
    *"[Risa] JANK[severe]"*)
      severe=$((severe + 1))
      jank=$((jank + 1))
      ms=$(echo "$line" | sed -n 's/.*: \([0-9]*\)ms build.*/\1/p')
      if [[ -n "$ms" && "$ms" -gt "$max" ]]; then max=$ms; fi
      echo "$line"
      ;;
    *"[Risa] JANK:"*)
      jank=$((jank + 1))
      ms=$(echo "$line" | sed -n 's/.*: \([0-9]*\)ms build.*/\1/p')
      if [[ -n "$ms" && "$ms" -gt "$max" ]]; then max=$ms; fi
      ;;
    *"[Risa] PERF SUMMARY"*|*"[Risa] PERF["*|*"[Risa] startup:"*)
      startup=$((startup + 1))
      echo "$line"
      ;;
    *"Startup fast path"*|*"Skipping background sync"*|*"Skipping DB re-insert"*|*"initial chunk loaded from DB"*)
      echo "$line"
      ;;
  esac
done &
TAIL_PID=$!

trap 'kill "$TAIL_PID" 2>/dev/null; exit' INT TERM

while sleep 30; do
  echo "[monitor $(date +%H:%M:%S)] jank=$jank severe=$severe max_frame=${max}ms startup_marks=$startup"
done
