#!/usr/bin/env zsh
# For this file to be picked up, zsh needs to be configured where it can find its dotfiles:
# Best place this in /etc/zshenv:
#
#   export ZDOTDIR=~/.config/zsh
#

# Load all files in ~/.config/rc.d/
if [ -d $HOME/.config/rc.d/ ]; then
  for file in `find "$HOME/.config/rc.d/" -type f`; do
    source "$file"
  done
fi

# Load all files in ~/.config/loginrc.d/
if [ -d $HOME/.config/loginrc.d/ ]; then
  for file in `find "$HOME/.config/loginrc.d/" -type f`; do
    source "$file"
  done
fi

# Load all files in .zhsrc.d/
if [ -d ${ZDOTDIR:-$HOME}/zshrc.d/ ]; then
  for file in `find "${ZDOTDIR:-$HOME}/zshrc.d/" -type f`; do
    source "$file"
  done
fi

