#!/bin/sh

while true
do
	echo $(date) "||" $(battstat) > ~/.config/sdorfehs/bar
	sleep 1
done
