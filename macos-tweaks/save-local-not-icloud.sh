#!/usr/bin/env bash
set -euo pipefail
IFS="\n\t"

# for apps that support iCloud, don't make the default save location an iCloud location
# instead, offer to save to local disk. iCloud saving is still possible.
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false