#!/bin/bash

# Script to remove MSTeams folder from Downloads and specifically from Trash
# For macOS

# Function to get timestamp
timestamp() {
    date '+%Y-%m-%d %H:%M:%S'
}

# Get the Downloads folder path
DOWNLOADS_DIR="$HOME/Downloads"
MSTEAMS_PATH="$DOWNLOADS_DIR/MSTeams"
TRASH_DIR="$HOME/.Trash"
MSTEAMS_FOUND=false

echo "$(timestamp) - 🚀 Starting MSTeams cleanup script..."
echo "$(timestamp) - 🔍 Checking for MSTeams folder in Downloads..."

# Check if MSTeams folder exists in Downloads
if [ -d "$MSTEAMS_PATH" ]; then
    echo "$(timestamp) - Found MSTeams folder at: $MSTEAMS_PATH"
    MSTEAMS_FOUND=true
    
    # Move to Trash first (this is the standard macOS way)
    echo "$(timestamp) - 🗑️  Moving MSTeams folder to Trash..."
    osascript -e "tell application \"Finder\" to delete POSIX file \"$MSTEAMS_PATH\"" 2>/dev/null
    
    if [ $? -eq 0 ]; then
        echo "$(timestamp) - ✅ MSTeams folder moved to Trash successfully"
    else
        echo "$(timestamp) - ❌ Failed to move MSTeams folder to Trash"
        echo "$(timestamp) - Attempting direct deletion..."
        rm -rf "$MSTEAMS_PATH"
        if [ $? -eq 0 ]; then
            echo "$(timestamp) - ✅ MSTeams folder deleted directly"
        else
            echo "$(timestamp) - ❌ Failed to delete MSTeams folder"
            exit 1
        fi
    fi
else
    echo "$(timestamp) - ✅ No MSTeams folder found in Downloads"
fi

# Only check Trash if we found MSTeams in Downloads OR if there are existing MSTeams folders in Trash
echo "$(timestamp) - 🔍 Checking for MSTeams folder in Trash..."
MSTEAMS_IN_TRASH=$(find "$TRASH_DIR" -name "MSTeams" -type d 2>/dev/null)

if [ -n "$MSTEAMS_IN_TRASH" ]; then
    echo "$(timestamp) - Found MSTeams folder(s) in Trash:"
    echo "$(timestamp) - $MSTEAMS_IN_TRASH"
    
    # Delete each MSTeams folder found in Trash
    while IFS= read -r folder; do
        if [ -d "$folder" ]; then
            echo "$(timestamp) - 🗑️  Permanently deleting: $folder"
            rm -rf "$folder"
            if [ $? -eq 0 ]; then
                echo "$(timestamp) - ✅ Deleted: $folder"
            else
                echo "$(timestamp) - ❌ Failed to delete: $folder"
            fi
        fi
    done <<< "$MSTEAMS_IN_TRASH"
elif [ "$MSTEAMS_FOUND" = true ]; then
    echo "$(timestamp) - ⚠️  MSTeams was moved to Trash but not found there (may have been processed already)"
else
    echo "$(timestamp) - ✅ No MSTeams folder found in Trash"
fi

echo "$(timestamp) - 🎉 Script completed!"
echo "$(timestamp) - ═══════════════════════════════════════════════════════════════"
