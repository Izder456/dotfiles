#!/bin/sh
ulimit -Sc 0
#/usr/local/bin/startxfce4 --with-ck-launch
export PKG_PATH="$(cat /etc/installurl)/7.1/packages/$(uname -p)/:$(cat /etc/installusr)/7.1/packages-stable/$(uname -p)/:$(cat /etc/installurl)/$(uname -r)/packages/$(uname -p)/:https://pkg.weird.cafe/pub/OpenBSD/7.1/packages/$(uname -p)/"
/usr/X11R6/bin/xrdb /home/izder456/.Xdefaults
#/usr/local/bin/ratpoison
/usr/local/bin/sdorfehs 
feh --bg-fill /usr/share/backgrounds/gruvbox.png &
#/usr/local/bin/mwm
#/usr/local/bin/emwm
#/usr/local/bin/nscde
