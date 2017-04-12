#!/bin/bash

# git
sudo dnf -y install git

# home
cd ~
git init
git remote add origin https://github.com/devinalvaro/home
git fetch
git checkout -t origin/master

# clang
sudo dnf -y install clang
sudo dnf -y install clang-format

# pip
sudo dnf -y install python-pip
sudo dnf -y install python3-pip
sudo pip2 install --upgrade pip
sudo pip3 install --upgrade pip

# python
pip2 install --user pylint
pip3 install --user pylint
pip2 install --user jedi
pip3 install --user jedi

# neovim
sudo dnf -y install neovim
pip2 install --user neovim
pip3 install --user neovim

# tmux
sudo dnf -y install tmux
# put: tmux new-session -A -s "0"
# in terminal custom command

# xsel
sudo dnf -y install xsel

# zsh
sudo dnf -y install zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
wget -o - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.sh | zsh

git clone git://github.com/zsh-users/zsh-autosuggestions .oh-my-zsh/plugins/zsh-autosuggestions

sudo dnf install util-linux-user
chsh -s $(which zsh)
