#!/usr/bin/env bash
set -euo pipefail
IFS="\n\t"

# Disables creation of .DS_Store files when saving to network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores true