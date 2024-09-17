#!/usr/bin/env bash
set -euo pipefail

# Toggles hidden files visibility in macOS Finder

CURRENT=$(defaults read com.apple.finder AppleShowAllFiles 2>/dev/null || echo "NO")

if [ "$CURRENT" = "YES" ] || [ "$CURRENT" = "1" ]; then
    defaults write com.apple.finder AppleShowAllFiles -bool false
    echo "Hidden files: OFF"
else
    defaults write com.apple.finder AppleShowAllFiles -bool true
    echo "Hidden files: ON"
fi

killall Finder

# Build revision #62
