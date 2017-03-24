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

# tldr
sudo pip install tldr

# neovim
sudo dnf install neovim
sudo pip install neovim
sudo pip2 install neovim

# zsh
sudo dnf install zsh
chsh -s $(which zsh)

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# tmux
sudo dnf install tmux
# put:
#   tmux new-session -A -s "0"
# in terminal custom command

# xclip
sudo dnf install xclip

# base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
source ~/.config/base16-shell/scripts/base16-tomorrow-night.sh

# arc-theme
sudo dnf install autoconf
sudo dnf install automake
sudo dnf install pkgconfig # pkg-config in Debian
sudo dnf install gtk3-devel # libgtk-3-dev in Debian

git clone https://github.com/horst3180/arc-theme --depth 1
cd arc-theme
./autogen.sh --prefix=/usr
sudo make install
cd ..
rm -rf arc-theme

# la-capitaine
git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git ~/.icons/la-capitaine

# capitaine-cursors
git clone https://github.com/keeferrourke/capitaine-cursors.git
cp -pr capitaine-cursors/bin/xcursor ~/.icons/capitaine-cursors
rm -rf capitaine-cursors
