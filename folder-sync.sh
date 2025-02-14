#!/bin/bash

# Paths
# In this example the source_posts and source_media variables points to the obsidian vault folder in Icloud
source_posts=~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/YOUR-VAULT/YOUR-POSTS-FOLDER
target_posts=~/YOUR-LOCAL-REPO/YOUR-POSTS

source_media=~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/YOUR-VAULT/YOUR-MEDIA-FOLDER
target_media=~/YOUR-LOCAL-REPO/YOUR-MEDIA-FOLDER

# Function to compare and copy .md files
copy_missing_md_files() {
    for file in "$source_posts"/*.md; do
        file_name=$(basename "$file")
        if [[ ! -f "$target_posts/$file_name" ]]; then
            cp "$file" "$target_posts"
        fi
    done
}

# Function to compare and copy files from media folder
copy_missing_media_files() {
    for file in "$source_media"/*; do
        file_name=$(basename "$file")
        if [[ ! -f "$target_media/$file_name" ]]; then
            cp "$file" "$target_media"
        fi
    done
}

# Perform functions
copy_missing_md_files
copy_missing_media_files

echo "Copy operation completed."