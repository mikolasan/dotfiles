# Assuming that you already have these essentials
#sudo pacman -S --noconfirm git curl

# You will need this
sudo pacman -S --noconfirm \
  python-pip \
  powerline \
  powerline-fonts \
  tmux \
  vim \
  zsh \
  ranger \
  yay \
  alacritty \
  tk \
  meld \
  nmap


vim +PluginInstall +qall
./fzf/install
chsh --shell /bin/zsh $USER

# Mosh
sudo pacman -S make pkgconf autoconf automake gcc protobuf protobuf-c ncurses
git clone https://github.com/mobile-shell/mosh
cd mosh
./autogen.sh
./configure
make
sudo make install

echo "It is time to LOG OUT and then start fresh"
