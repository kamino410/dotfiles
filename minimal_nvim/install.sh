apt update

apt install -y software-properties-common
add-apt-repository -y ppa:neovim-ppa/unstable
apt update
apt install -y neovim python3-pip git clang clang-tools

python3 -m pip install pynvim neovim curl

mkdir ~/.config
mkdir ~/.config/dein
mkdir ~/.config/nvim

mkdir ~/github
cd ~/github
git clone https://github.com/kamino410/dotfiles.git
cp ./dotfiles/minimal_nvim/init.vim ~/.config/nvim
cp ./dotfiles/minimal_nvim/plugins.toml ~/.config/dein
