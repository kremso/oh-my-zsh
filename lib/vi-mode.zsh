function zle-line-init zle-keymap-select {
    MODE_INDICATOR='%{$fg_bold[red]%}<%{$fg[red]%}<<%{$reset_color%}'
    RPS1="${${KEYMAP/vicmd/$MODE_INDICATOR}/(main|viins)/}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
