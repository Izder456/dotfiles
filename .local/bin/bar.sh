#!/bin/sh

while true
do
	echo $(date +"%a, %B %d %Y @%I:%M %p %Z") "||" $(battstat -c ч++ -d д-- {i} {t} {p}) > ~/.config/sdorfehs/bar
	sleep 1
done
