#!/bin/zsh

# env variables
export PATH=$PATH:$HOME/.local/bin
export PATH="$PATH:/home/otirix/.dotnet/tools"
export DOTFILES="$HOME/dotfiles"
export WORKSPACE="$HOME/workspace"
export TERM="xterm-256color"
export BROWSER="google-chrome-stable"

# XDG
export XDG_CONFIG_HOME=$HOME/.config

# editor
export EDITOR="nvim"
export VISUAL="nvim"
ZDOTDIR=$XDG_CONFIG_HOME/zsh
. "$HOME/.cargo/env"
