#!/bin/bash

# git
sudo dnf install git

# home
cd ~
git init
git remote add origin https://github.com/devinalvaro/home
git fetch
git checkout -t origin/master

# pip
sudo dnf install python-pip
sudo dnf install python3-pip
sudo pip install --upgrade pip
sudo pip2 install --upgrade pip

# clang
sudo dnf install clang

# neovim
sudo dnf install neovim
sudo pip install neovim
sudo pip2 install neovim

# zsh
sudo dnf install zsh
chsh -s $(which zsh)

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
curl -o - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.sh | zsh

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# tmux
sudo dnf install tmux
# put: tmux new-session -A -s "0"
# in terminal custom command

# ranger
sudo dnf install ranger

# tig
sudo dnf install tig

# xclip
sudo dnf install xclip
