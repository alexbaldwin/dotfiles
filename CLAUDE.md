# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

Personal dotfiles based on thoughtbot's dotfiles, managed via RCM. Configuration files are symlinked from this repo to the home directory.

## Key Commands

```bash
# Install dotfiles (first time)
env RCRC=$HOME/dotfiles/rcrc rcup

# Update symlinks after changes
rcup

# Install Homebrew packages
brew bundle --file=Brewfile

# Install vim plugins
vim +PlugInstall +qall
```

## Architecture

**Customization Pattern**: Base thoughtbot configs are extended via `.local` suffix files:
- `zshrc.local` - Pure prompt, version managers (rbenv, asdf, pyenv), pnpm, bun, go, claude/codex
- `gitconfig.local` - User config, git-lfs, nvimdiff as diff/merge tool
- `vimrc.local` - FZF keybindings, jellybeans colorscheme, ripgrep integration
- `vimrc.bundles.local` - Additional vim-plug plugins
- `aliases.local` - Custom shell aliases (serve, vi→nvim)

**Key Files**:
- `Brewfile` - Core tools: neovim, fzf, ripgrep, gh, version managers, languages
- `rcrc` - RCM config (excludes markdown/license, precedence for dotfiles-local)

**Vim Keybindings**:
- `Ctrl+P` - FZF file finder
- `Ctrl+G` - Ripgrep search

**Shell Features**:
- Lazy-loaded version managers for fast startup
- Claude Code aliases: `c`, `claude`
- Codex wrapper: `cdx`
