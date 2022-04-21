source $HOME/.config/shell/profile.sh

# Prompt
autoload -U colors && colors
PS1="%B%{$fg[white]%}[%{$reset_color%} %{$fg[cyan]%}%~%{$fg[white]%}]%{$reset_color%}$%b "

# Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
compinit

# Beam Cursor
echo -ne '\e[5 q'
preexec() { echo -ne '\e[5 q' ;}

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null