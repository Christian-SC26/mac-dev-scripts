# mac-dev-scripts

[![macOS](https://img.shields.io/badge/Platform-macOS-lightgrey.svg)](https://apple.com/macos)
[![Shell](https://img.shields.io/badge/Shell-Bash%20%7C%20Zsh-blue.svg)](https://zsh.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A curated collection of battle-tested shell scripts and automations for macOS developers. Keeps your development environment clean, fast, and productive.

## Included Tools

| Script | Purpose |
|---|---|
| `scripts/cleanup-xcode.sh` | Cleans Xcode DerivedData, Archives, Device Support, and Simulators with disk space reporting. |
| `scripts/dock-spacer.sh` | Inserts invisible spacer tiles into the macOS Dock to organize app groups. |
| `scripts/brew-sync.sh` | Automated Homebrew bundle backup, outdated package cleanup, and health check. |
| `scripts/git-prune-branches.sh` | Safely prunes local branches that have been merged upstream. |
| `scripts/flush-dns.sh` | Clears macOS mDNSResponder resolver cache. |
| `scripts/toggle-hidden-files.sh` | Quickly toggles visibility of hidden dotfiles in Finder. |
| `scripts/fix-audio-core.sh` | Restarts the macOS `coreaudiod` daemon when audio devices glitch. |

## Usage

Make scripts executable and run:
```bash
chmod +x scripts/*.sh

# Clean gigabytes of Xcode cache:
./scripts/cleanup-xcode.sh

# Add spacing in your dock:
./scripts/dock-spacer.sh
```

## Shell Productivity Helpers

Source `zsh/aliases.zsh` and `zsh/functions.zsh` in your `~/.zshrc`:
```bash
source ~/mac-dev-scripts/zsh/aliases.zsh
source ~/mac-dev-scripts/zsh/functions.zsh
```

## License
MIT. Created by Christian.

<!-- Build revision #120 -->
