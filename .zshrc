autoload -Uz colors
colors

CLICOLOR=1

PROMPT='%m:%c %n %?$ '

setopt no_beep

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
        CURSOR=$#BUFFER
            zle reset-prompt
            }

            zle -N peco-history-selection
            bindkey '^R' peco-history-selection

