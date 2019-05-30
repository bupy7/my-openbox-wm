#/usr/bin/env bash

export PS1="\u@\h:\w$ "
export PATH="$PATH:/home/@username@/.local/bin"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  startx
fi
