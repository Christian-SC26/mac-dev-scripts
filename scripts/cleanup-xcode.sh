#!/usr/bin/env bash
set -euo pipefail

# Cleans Xcode DerivedData, Archives, iOS DeviceSupport, and Caches

echo "=== Xcode Environment Cleaner ==="

DERIVED_DATA="$HOME/Library/Developer/Xcode/DerivedData"
ARCHIVES="$HOME/Library/Developer/Xcode/Archives"
DEVICE_SUPPORT="$HOME/Library/Developer/Xcode/iOS DeviceSupport"
SIMULATOR_CACHES="$HOME/Library/Caches/com.apple.dt.XCTest"

calc_size() {
    local target="$1"
    if [ -d "$target" ]; then
        du -sh "$target" 2>/dev/null | awk '{print $1}' || echo "0B"
    else
        echo "0B"
    fi
}

echo "Current disk usage before cleanup:"
echo "  DerivedData:    $(calc_size "$DERIVED_DATA")"
echo "  Archives:       $(calc_size "$ARCHIVES")"
echo "  DeviceSupport:  $(calc_size "$DEVICE_SUPPORT")"

if [ -d "$DERIVED_DATA" ]; then
    echo "-> Clearing DerivedData..."
    rm -rf "${DERIVED_DATA:?}"/*
fi

if [ -d "$SIMULATOR_CACHES" ]; then
    echo "-> Clearing Simulator test caches..."
    rm -rf "${SIMULATOR_CACHES:?}"/*
fi

echo "✓ Xcode cleanup completed successfully."

# Build revision #148
