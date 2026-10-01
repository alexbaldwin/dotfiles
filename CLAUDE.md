# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

Personal dotfiles with a simple, self-contained setup. Uses oh-my-zsh for shell features and a simple install script for symlinks.

## Key Commands

```bash
# Install dotfiles (creates symlinks, installs oh-my-zsh)
./install.sh

# Install Homebrew packages
brew bundle --file=Brewfile
```

## Directory Structure

```
dotfiles/
├── install.sh           # Symlink setup script
├── Brewfile             # Homebrew packages
├── CLAUDE.md            # Project instructions
├── git/
│   └── gitconfig        # Git config (include ~/.gitconfig.local for user info)
├── shell/
│   └── zshrc            # Shell config with oh-my-zsh
└── vim/
    └── vimrc            # Vim config
```

## Configuration

**Git**: User-specific settings in `~/.gitconfig.local`:
```gitconfig
[user]
    name = Your Name
    email = your@email.com
```

**Shell**: Machine-specific settings in `~/.zshrc.local`

**Shell Features**:
- oh-my-zsh with robbyrussell theme
- zsh-autosuggestions and zsh-syntax-highlighting plugins
- Lazy-loaded version managers (rbenv, pyenv, asdf)
- Claude Code aliases: `c`, `claude`
- Codex wrapper: `cdx`
