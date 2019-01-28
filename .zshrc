autoload -U compinit
compinit

autoload -Uz colors
colors

CLICOLOR=1

PROMPT='%m:%c %n %?$ '

SAVEHIST=1000
HISTSIZE=1000
HISTFILE=~/.zsh_history

setopt no_beep

setopt inc_append_history
setopt share_history
function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

show_buffer_stack() {
    zle push-line-or-edit
}
zle -N show_buffer_stack
setopt noflowcontrol
bindkey '^Q' show_buffer_stack

