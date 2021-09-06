#!/bin/sh

#Clean up
killall picom polybar btops hotkeyer playerctl cornora

#Wallpaper
xwallpaper --zoom .config/wall.jpg &
#Compositor
picom --experimental-backends & 
#Status bar
polybar main --config="~/.config/polybar/config.ini" &
#Dynamic workspaces
btops &
#Hot keys
hotkeyer &
#Music control
playerctld daemon &
#Hot corners
cornora -tl launcher -tr controls -iof > /dev/null 2> /dev/null &
