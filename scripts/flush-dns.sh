#!/usr/bin/env bash
set -euo pipefail

# Flushes macOS DNS resolver cache

echo "Flushing macOS DNS cache..."
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder
echo "✓ DNS cache flushed successfully."

# Build revision #152
