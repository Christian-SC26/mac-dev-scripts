#!/usr/bin/env bash
set -euo pipefail

# Prunes local git branches that have already been merged into main/master

DEFAULT_BRANCH=$(git symbolic-ref refs/remotes/origin/HEAD 2>/dev/null | sed 's@^refs/remotes/origin/@@' || echo "main")

echo "Fetching latest remote updates..."
git fetch --prune

echo "Pruning merged branches (against $DEFAULT_BRANCH)..."
git branch --merged "$DEFAULT_BRANCH" | grep -v -E "^\*|\b($DEFAULT_BRANCH|master|develop)\b" | while read -r branch; do
    echo "Deleting branch: $branch"
    git branch -d "$branch" || true
done

echo "✓ Local branch cleanup complete."

# Build revision #112
