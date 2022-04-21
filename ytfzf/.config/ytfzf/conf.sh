external_menu () {
    font="firacode nerd font:pixelsize=14"
    dmenu -fn "$font" -i -l 10 -p "$1"
}
