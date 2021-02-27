export LC_ALL=en_US.UTF-8
autoload -Uz colors
colors

CLICOLOR=1

PROMPT='MacBookPro:%c %?$ '
precmd() { eval 'echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"' }

setopt no_beep

SAVEHIST=2000
HISTSIZE=2000
HISTFILE=~/.zsh_history
setopt inc_append_history
setopt share_history

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

alias nvrr='nvr --remote-tab'

