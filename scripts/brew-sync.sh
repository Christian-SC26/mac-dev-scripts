#!/usr/bin/env bash
set -euo pipefail

# Syncs Homebrew packages and dumps a fresh Brewfile backup

BREWFILE_DIR="$HOME/.config/brew"
mkdir -p "$BREWFILE_DIR"

echo "=== Homebrew Maintenance & Sync ==="

if ! command -v brew >/dev/null 2>&1; then
    echo "Error: Homebrew is not installed." >&2
    exit 1
fi

echo "-> Updating Homebrew formulas..."
brew update

echo "-> Upgrading packages..."
brew upgrade

echo "-> Cleaning cache and old versions..."
brew cleanup -s

echo "-> Dumping fresh Brewfile..."
brew bundle dump --force --file="$BREWFILE_DIR/Brewfile"

echo "✓ Homebrew synced. Brewfile saved at $BREWFILE_DIR/Brewfile"

# Build revision #163
