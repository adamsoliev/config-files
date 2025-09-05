
# Dotfiles Setup

## New Server Setup
```bash
git clone https://github.com/your-username/dotfiles.git
cd dotfiles
./install.sh
source ~/.zshrc
```

## Update Dotfiles (from laptop)
```bash
# After editing ~/.zshrc or ~/.vimrc
./sync.sh
```

Or add alias to ~/.zshrc:
```bash
alias dots="~/Development/dotfiles/sync.sh"
```
