#!/bin/ksh
echo "We will install p5-rex from ports now!"
echo "Press ENTER to continue:"
read
doas pkg_add p5-Rex git
