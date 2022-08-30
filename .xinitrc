#!/bin/sh

if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
	# if not found, launch a new one
	eval `dbus-launch --sh-syntax --exit-with-session`
	echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
fi

xrdb ~/.Xdefaults
feh --bg-fill /usr/share/backgrounds/gruvbox.png &
#exec dbus-launch ratpoison
#exec dbus-launch sdorfehs 
#exec dbus-launch mwm
#exec dbus-launch emwm
