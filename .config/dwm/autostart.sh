#Wallpaper
xwallpaper --zoom .config/wall.jpg &
#Window effects (opacity and blur)
picom --blur-background --blur-method dual_kawase --backend glx --experimental-backends --blur-strength 5 &
#Status bar
slstatus &
#Hot keys
hotkeyer &

#Input confings
id=$(xinput list | grep Touchpad | grep -Eo "id=[0-9]+" | grep -Eo "[0-9]+")
xinput set-prop $id 'libinput Tapping Enabled' 1
xinput set-prop $id 'libinput Natural Scrolling Enabled' 1
xinput set-prop $id 'libinput Disable While Typing Enabled' 0
