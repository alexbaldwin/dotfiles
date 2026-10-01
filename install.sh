#!/bin/bash
set -e

DOTFILES="$HOME/dotfiles"

# Git
ln -sf "$DOTFILES/git/gitconfig" "$HOME/.gitconfig"

# Shell
ln -sf "$DOTFILES/shell/zshrc" "$HOME/.zshrc"

# Vim
ln -sf "$DOTFILES/vim/vimrc" "$HOME/.vimrc"

# Install oh-my-zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install oh-my-zsh plugins
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
[ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ] && \
  git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ] && \
  git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

echo "Done! Restart your shell."
echo "Create ~/.gitconfig.local for your name/email"
echo "Create ~/.zshrc.local for machine-specific config"
