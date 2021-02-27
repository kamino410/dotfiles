export LC_ALL=en_US.UTF-8

set -u fish_term24bit

function peco_select_history
      history|peco|read foo
      if [ $foo ]
            commandline $foo
      else
            commandline ''
      end
end
bind \cr 'peco_select_history (commandline -b)'

alias nvrr 'nvr --remote-tab'

set PATH $HOME/.cargo/bin /opt/nvim-osx64/bin /usr/local/bin $PATH

source ~/.iterm2_shell_integration.fish

