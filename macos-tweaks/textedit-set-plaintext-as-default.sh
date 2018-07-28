 #!/usr/bin/env bash
 set -euo pipefail
 IFS="\n\t"

 # Set TextEdit's new document to Plain Text mode by default
 defaults write com.apple.TextEdit RichText -int 0