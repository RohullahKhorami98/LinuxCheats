#!/bin/sh

# This is for chaning the keyboard layout to swedish
setxkbmap se

# Turn off screensaver
xset s off

# set and unset a terminal as default terminal
chsh -s $(which bash)
