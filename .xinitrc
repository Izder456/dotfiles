#!/bin/sh

if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
	# if not found, launch a new one
	eval `dbus-launch --sh-syntax --exit-with-session`
	echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
fi

xrdb ~/.Xdefaults
exec dbus-launch sdorfehs 
