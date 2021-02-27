export LC_ALL=en_US.UTF-8

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

