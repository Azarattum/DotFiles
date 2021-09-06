# DotFiles

My personal dotfiles setup for arch.

## Installation

Using [stow](https://www.gnu.org/software/stow/):
```sh
rm README.md .gitignore
stow -t ~ *
```

## Dependencies

System:
```
pipewire pipewire-pulse networkmanager
```

Installation dependencies:
```
git stow zsh
```

Environment:
```
bspwm xwallpaper picom-jonaburg-git polybar btops-git hotkeyer-git playerctl i3lock-fancy scrot htop light-git st bluez-utils xorg-setxkbmap xorg-xinit xorg-xclipboard xorg-xinput xorg-xrandr xorg-xsetroot xorg-xrdb xclip dmenu nerd-fonts-fira-code mpv-mpris st pulsemixer
```

Applications:
```
neovim mypaint nautilus brave-bin code discord steam telegram-desktop onlyoffice-bin gnome-calculator ytfzf glava
```
