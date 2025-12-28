#!/usr/bin/env bash
set -euo pipefail

DEVICE_ID="${1:-R5CX40N6CXW}"
VM_PORT="${2:-5555}"

echo "Forwarding VM service port ${VM_PORT}..."
adb forward "tcp:${VM_PORT}" "tcp:${VM_PORT}" >/dev/null 2>&1 || true
echo "Attaching Flutter to device ${DEVICE_ID} with VM service port ${VM_PORT}..."
flutter attach -d "${DEVICE_ID}" --host-vmservice-port="${VM_PORT}"
