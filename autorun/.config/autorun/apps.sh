#!/bin/sh

# Clean up
killall picom polybar btops keymapper playerctl cornora

# Update monitor
xrandr --auto
# Set arrow cursor
xsetroot -cursor_name left_ptr
# Keyboard layout
(sleep 1 && setxkbmap -layout us,ru -option grp:win_space_toggle -option terminate:ctrl_alt_bksp) &
# Wallpaper
xwallpaper --zoom .config/wall.jpg &
# Compositor
picom --experimental-backends & 
# Status bar
polybar main --config="~/.config/polybar/config.ini" &
# Dynamic workspaces
btops &
# Hot keys
keymapper &
# Music control
playerctld daemon &
# Hot corners
cornora -tl launcher -tr controls -iof > /dev/null 2> /dev/null &
