#!/bin/sh

setxkbmap -layout us,ru -option 'grp:alt_space_toggle'
xset r rate 300 50
picom &
unclutter --timeout 3 &
dunst &
mpd &
slstatus &
ssh-agent dwm
