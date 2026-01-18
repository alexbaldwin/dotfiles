# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal fork of thoughtbot's dotfiles, managing macOS development environment configuration through RCM (RC file manager). Configuration files are symlinked from this repo to the home directory.

## Key Commands

```bash
# Install dotfiles (first time)
env RCRC=$HOME/dotfiles/rcrc rcup

# Update symlinks after changes
rcup

# Install Homebrew packages
brew bundle --file=Brewfile
```

## Architecture

**Customization Pattern**: Base thoughtbot configs are extended via `.local` suffix files:
- `vimrc.local` - Vim customizations (FZF, colorscheme, plugins)
- `vimrc.bundles.local` - Additional vim-plug plugins
- `gitconfig.local` - Git user config, GPG signing, aliases
- `zshrc.local` - Shell customizations, PostgreSQL config
- `aliases.local` - Custom shell aliases

**Key Configuration Files**:
- `Brewfile` - Homebrew packages and casks
- `slate` - Window manager hotkeys (Alt+arrows)
- `rcrc` - RCM settings (excludes README/LICENSE, precedence for dotfiles-local)

**Plugin Management**:
- Vim plugins via vim-plug (defined in `vimrc.bundles.local`)
- FZF integration with Ctrl+P bindings for file finding

## Vim Keybindings

- `Ctrl+P` - Fuzzy file finder (FZF)
- `Ctrl+P, t` - Open in new tab
- `Ctrl+P, v` - Vertical split
- `Ctrl+P, s` - Horizontal split

## Notes

- All git commits are GPG signed by default
- Working directory starts in `~/Sites`
- PostgreSQL database defaults to `postgres`
