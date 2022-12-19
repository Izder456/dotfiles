#!/bin/sh

while true
do
	echo $(date +"%a, %B %d %Y @%I:%M %p %Z") "||" $(battstat) > ~/.config/sdorfehs/bar
	sleep 1
done
