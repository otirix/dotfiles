#!/bin/zsh

# env variables
export PATH=$PATH:$HOME/.local/bin
export DOTFILES="$HOME/dotfiles"
export WORKSPACE="$HOME/workspace"

# XDG
export XDG_CONFIG_HOME=$HOME/.config

# editor
export EDITOR="nvim"
export VISUAL="nvim"
ZDOTDIR=$XDG_CONFIG_HOME/zsh
