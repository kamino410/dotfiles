apt update
apt install -y software-properties-common
add-apt-repository -y ppa:neovim-ppa/unstable
apt update
apt install -y neovim python3-pip git clang clang-tools curl clang-format peco
python3 -m pip install pynvim neovim neovim-remote autopep8
mkdir ~/.config
mkdir ~/.config/dein
mkdir ~/.config/nvim
mkdir ~/.config/nvim/ftplugin
mkdir ~/github
cd ~/github
git clone https://github.com/kamino410/dotfiles.git
cp ./dotfiles/.config/nvim/init.vim ~/.config/nvim
cp ./dotfiles/.config/nvim/ftplugin/cpp.vim ~/.config/nvim/ftplugin
cp ./dotfiles/.config/dein/plugins.toml ~/.config/dein
cd ~
echo EOF
alias nvrr='nvr --remote-tab'
peco-select-history() {
    declare l=$(HISTTIMEFORMAT= history | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$READLINE_LINE")
    READLINE_LINE="$l"
    READLINE_POINT=${#l}
}
bind -x '"\C-r": peco-select-history'
EOF >> ~/.bashrc

