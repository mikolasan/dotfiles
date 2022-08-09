# Assuming that you already have these essentials
#sudo zypper install --no-confirm git curl

# You will need this
sudo zypper install --no-confirm \
  gcc \
  python3-devel \
  screen \
  powerline \
  powerline-fonts \
  tmux \
  vim \
  zsh \
  python3-pip

pip3 install --user ranger-fm powerline-status

vim +PluginInstall +qall
./fzf/install # n, y, y
chsh --shell /bin/zsh $USER

# Mosh
sudo zypper install git make autoconf automake gcc pkg-config libopenssl-devel zlib-devel protobuf-c protobuf-devel libncurses5 ncurses5-devel
git clone https://github.com/mobile-shell/mosh
cd mosh
./autogen.sh
./configure
make
sudo make install

echo "It is time to LOG OUT and then start fresh"
