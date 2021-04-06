#Wallpaper
xwallpaper --zoom .config/wall.jpg &
#Compositor
picom --blur-background --blur-method dual_kawase --backend glx --experimental-backends --blur-strength 5 -f -D 4 --blur-background-exclude="class_g='GLava'" &
#Status bar
polybar main --config="~/.config/polybar/config.ini" &
#Dynamic workspaces
btops &
#Hot keys
hotkeyer &
#Music control
playerctld daemon &