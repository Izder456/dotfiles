#!/bin/sh
ulimit -Sc 0
/usr/X11R6/bin/xrdb /home/izder456/.Xdefaults
picom -b
feh --bg-fill /usr/share/backgrounds/gruvbox.png &
#dbus-launch ratpoison
dbus-launch sdorfehs 
#dbus-launch mwm
#dbus-launch emwm
