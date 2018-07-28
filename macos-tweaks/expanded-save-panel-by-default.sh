#!/usr/bin/env bash
set -euo pipefail
IFS="\n\t"

# Sets file 'save' panels to the expanded view by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
