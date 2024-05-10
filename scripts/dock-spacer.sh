#!/usr/bin/env bash
set -euo pipefail

# Inserts an empty spacer tile into the macOS Dock

echo "Adding spacer tile to macOS Dock..."
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
killall Dock
echo "✓ Spacer added to Dock."

# Build revision #32
