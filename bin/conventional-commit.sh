#!/bin/sh

gum style \
  --border normal \
  --margin "1" \
  --padding "1" \
  "Git commit helper"

TYPE=$(gum choose  "feat" "chore" "docs" "style" "refactor" "test" "fix" "revert")
SCOPE=$(git branch --show-current | cut -d- -f1,2)
SCOPE="($SCOPE)"

SUMMARY=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")

gum confirm "Commit Changes?" && git commit -m "$SUMMARY"
