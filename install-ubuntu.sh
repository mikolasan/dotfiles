# Assuming that you already have these essentials
#sudo apt-get install --assume-yes git curl

# You will need this
sudo apt-get install --assume-yes \
  screen \
  powerline \
  fonts-powerline \
  tmux \
  vim \
  zsh \
  python3-pip

pip3 install --user ranger-fm powerline-status thefuck

vim +PluginInstall +qall
./fzf/install
chsh --shell /bin/zsh $USER

# Mosh
sudo apt install git make gcc libssl-dev zlib1g-dev protobuf-compiler protobuf-c-compiler autoconf libncurses5-dev pkg-config libprotoc-dev libprotobuf-dev
git clone https://github.com/mobile-shell/mosh
cd mosh
./autogen.sh
./configure
make
sudo make install

echo "It is time to LOG OUT and then start fresh"
