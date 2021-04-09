# Default software
export VISUAL=nvim
export EDITOR=nvim
export BROWSER=brave
export TERMINAL=st
export LOCKER=slock
export PAINT=mypaint
export FILES=lf
export CALCULATOR=gnome-calculator
export MIXER=pulsemixer
export SCREENSHOT=shot
export LAUNCHER=launcher
export RUNNER=runner
export CONTROLS=controls
export MANAGER=htop
export NETWORK=nmtui

# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# ZSH
export HISTFILE=$XDG_DATA_HOME/zsh/history
export ZDOTDIR=$XDG_CONFIG_HOME/.config/zsh

# XOrg
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc

# Less
export LESSHISTFILE=-

# Node
export NODE_REPL_HISTORY=$XDG_DATA_HOME/node_repl_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# VSCode
export VSCODE_PORTABLE=$XDG_DATA_HOME/vscode

# GNUPg
export GNUPGHOME=$XDG_DATA_HOME/gnupg

# Go
export GOPATH=$XDG_DATA_HOME/go

# Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

# Nuget
export NUGET_PACKAGES=$XDG_CACHE_HOME/NuGetPackages
export OMNISHARPHOME=$XDG_CACHE_HOME/omnisharp

# PATH
export PATH=$HOME/.local/bin:$PATH

