#!/bin/sh

# Configure touchpad input
id=$(xinput list | grep Touchpad | grep -Eo "id=[0-9]+" | grep -Eo "[0-9]+")
xinput set-prop $id 'libinput Tapping Enabled' 1
xinput set-prop $id 'libinput Natural Scrolling Enabled' 1
xinput set-prop $id 'libinput Disable While Typing Enabled' 0
