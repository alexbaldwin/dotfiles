#!/usr/bin/env zsh

# FZF shell integration - detect architecture
if [[ -f /opt/homebrew/bin/fzf ]]; then
  source <(/opt/homebrew/bin/fzf --zsh)
elif [[ -f /usr/local/bin/fzf ]]; then
  source <(/usr/local/bin/fzf --zsh)
fi
