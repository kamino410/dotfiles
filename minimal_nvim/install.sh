apt update

apt install -y software-properties-common
add-apt-repository -y ppa:neovim-ppa/unstable
apt update
apt install -y neovim python3-pip git clang clang-tools curl clang-format

python3 -m pip install pynvim neovim

mkdir ~/.config
mkdir ~/.config/dein
mkdir ~/.config/nvim
mkdir ~/.config/nvim/ftplugin

mkdir ~/github
cd ~/github
git clone https://github.com/kamino410/dotfiles.git
cp ./dotfiles/minimal_nvim/init.vim ~/.config/nvim
cp ./dotfiles/minimal_nvim/plugins.toml ~/.config/dein
cp ./dotfiles/minimal_nvim/cpp.vim ~/.config/nvim/ftplugin
cd ~

