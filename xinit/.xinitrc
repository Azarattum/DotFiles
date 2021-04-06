#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xsetroot -cursor_name left_ptr
xrdb .cache/wal/colors.Xresources
exec bspwm