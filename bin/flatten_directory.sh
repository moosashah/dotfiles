#!/bin/bash

# Get the current directory name
current_dir=$(basename "$(pwd)")

# Create the output directory
output_dir="${current_dir}-flat"
mkdir -p "$output_dir"

echo "Output directory created: $output_dir"

# Function to check if a file/directory is in .gitignore
is_ignored() {
    if [ -f .gitignore ]; then
        local relative_path="${1#./}"
        if grep -q "^${relative_path}$" .gitignore; then
            return 0
        fi
    fi
    return 1
}

# Function to check if a file/directory is in dist or build folders
is_build_or_dist() {
    local item="$1"
    if [[ "$item" == *"/dist/"* ]] || [[ "$item" == *"/build/"* ]]; then
        return 0
    fi
    return 1
}

# Function to flatten directories
flatten_dir() {
    local dir="$1"
    local prefix="$2"

    echo "Processing directory: $dir"

    for item in "$dir"/*; do
        if [ -d "$item" ]; then
            if [ "$(basename "$item")" != "node_modules" ] && ! is_ignored "$item" && ! is_build_or_dist "$item"; then
                echo "Entering directory: $item"
                flatten_dir "$item" "${prefix}$(basename "$item")^"
            else
                echo "Ignoring directory: $item"
            fi
        elif [ -f "$item" ] && ! is_ignored "$item" && ! is_build_or_dist "$item"; then
            echo "Copying file: $item to $output_dir/${prefix}$(basename "$item")"
            cp "$item" "$output_dir/${prefix}$(basename "$item")"
        else
            echo "Ignoring file: $item"
        fi
    done
}

# Start flattening from the current directory
echo "Starting flattening process..."
flatten_dir "." ""

echo "Flattening complete. Output directory: $output_dir"

