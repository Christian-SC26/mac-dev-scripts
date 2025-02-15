#!/usr/bin/env bash
set -euo pipefail

# Restarts macOS audio service daemon

echo "Restarting coreaudiod..."
sudo killall coreaudiod
echo "✓ coreaudiod restarted."

# Build revision #102
