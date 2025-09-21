#!/bin/bash
set -e

echo "Setting up dotfiles on new server..."

# Check and install zsh if it's not present
if ! command -v zsh &> /dev/null; then
    echo "Zsh not found, installing now..."
    sudo apt-get update
    sudo apt-get install -y zsh
fi

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

# Ensure ZSH theme is set to "evan" after installation
# Note: The original 'sed' command with -i '' might not work on Linux.
# The updated command is more portable.
sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="evan"/' ~/.zshrc

echo "Setup complete!"
echo "Run 'source ~/.zshrc' to reload shell configuration"
