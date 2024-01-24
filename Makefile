.PHONY: help test lint chmod-all

help:
	@echo "mac-dev-scripts maintenance targets:"
	@echo "  make chmod-all - Make all shell scripts executable"
	@echo "  make lint      - Run shellcheck if available"

chmod-all:
	chmod +x scripts/*.sh

lint:
	@command -v shellcheck >/dev/null 2>&1 && shellcheck scripts/*.sh || echo "shellcheck not installed, skipping"
