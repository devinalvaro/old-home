#!/bin/bash

# git
sudo dnf install git

# home
cd ~
git init
git remote add origin https://github.com/devinalvaro/home
git fetch
git checkout -t origin/master

# clang
sudo dnf install clang
sudo dnf install clang-format

# pip
sudo dnf install python-pip
sudo dnf install python3-pip
sudo pip2 install --upgrade pip
sudo pip3 install --upgrade pip

# python
sudo pip2 install mypy
sudo pip2 install flake8
sudo pip3 install mypy
sudo pip3 install flake8
sudo pip2 install jedi
sudo pip3 install jedi

# neovim
sudo dnf install neovim
sudo pip2 install neovim
sudo pip3 install neovim

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

# xsel
sudo dnf install xsel
