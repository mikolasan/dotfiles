# Assuming that you already have these essentials
#sudo apt-get install --assume-yes git curl

# You will need this
sudo apt-get install --assume-yes \
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
git config --global user.email "neupokoev.n@gmail.com"
git config --global user.name "Nikolay Neupokoev"
git config --global core.editor "vim"
echo "It is time to LOG OUT and then start fresh"
