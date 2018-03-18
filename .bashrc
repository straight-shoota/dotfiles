# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
if [[ $- != *i* ]] ; then
  # shell is non-interactive. be done now!
  return
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Load all files in .config/rc.d/
if [ -d $HOME/.config/rc.d/ ]; then
  for file in `find "$HOME/.config/rc.d/" -type f`; do
    source "$file"
  done
fi

# Load all files in .config/bashrc.d/
if [ -d $HOME/.config/bashrc.d/ ]; then
  for file in `find "$HOME/.config/bashrc.d/" -type f`; do
    source "$file"
  done
fi
