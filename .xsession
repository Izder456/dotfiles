#!/bin/sh
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.Xdefaults ] && xrdb ~/.Xdefaults
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
urxvtd -q -f -o
ulimit -Sc 0
picom -b --backend glx --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 500 --no-vsync &
feh --bg-fill /usr/local/share/backgrounds/oddments.png &
sdorfehs
