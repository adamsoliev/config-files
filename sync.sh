#!/bin/bash
set -e

echo "Syncing dotfiles from home directory..."

# Copy dotfiles to repo
cp ~/.zshrc .zshrc
cp ~/.vimrc .vimrc

# Commit and push changes
git add .zshrc .vimrc
if git diff --quiet --cached; then
    echo "No changes to commit"
    exit 0
fi

git commit -m "Update dotfiles $(date '+%Y-%m-%d %H:%M')"
git push

echo "Dotfiles synced and pushed to git"