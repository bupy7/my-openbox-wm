#/usr/bin/env bash

export PS1="\u@\h:\w$ "

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  startx
fi
