#!/bin/bash
set -e

echo "Setting up dotfiles on new server..."

# Switch to zsh
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "Switching default shell to zsh..."
    chsh -s $(which zsh)
fi

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Copy dotfiles from repo to home
echo "Installing dotfiles..."
cp .zshrc ~/
cp .vimrc ~/

echo "Setup complete!"
echo "Run 'source ~/.zshrc' to reload shell configuration"