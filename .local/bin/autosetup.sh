#!/bin/bash

# git
sudo apt -y install git

# home
cd ~
git init
git remote add origin https://github.com/devinalvaro/home
git fetch
git checkout -t origin/master

# clang
sudo apt -y install clang
sudo apt -y install clang-format

# pip
sudo apt -y install python-pip
sudo apt -y install python3-pip
sudo pip2 install --upgrade pip
sudo pip3 install --upgrade pip
pip2 install --user --upgrade pip
pip3 install --user --upgrade pip

# python
pip2 install --user pylint
pip3 install --user pylint
pip2 install --user jedi
pip3 install --user jedi

# neovim
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt -y update
sudo apt -y install neovim
pip2 install --user neovim
pip3 install --user neovim

# zsh
sudo apt -y install zsh
chsh -s $(which zsh)

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
curl -o - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.sh | zsh

git clone git://github.com/zsh-users/zsh-autosuggestions .oh-my-zsh/plugins/zsh-autosuggestions

# tmux
sudo apt -y install tmux
# put: tmux new-session -A -s "0"
# in terminal custom command

# ranger
sudo apt -y install ranger

# tig
sudo apt -y install tig

# xsel
sudo apt -y install xsel
