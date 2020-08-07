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

pip3 install --user ranger-fm powerline-status thefuck

vim +PluginInstall +qall
./fzf/install # n, y, y
chsh --shell /bin/zsh $USER
echo "It is time to LOG OUT and then start fresh"
