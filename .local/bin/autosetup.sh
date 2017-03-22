#!/bin/bash

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# arc-theme
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
sudo make install
rm -rf arc-theme

# la-capitaine
git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git ~/.icons

# tldr
sudo npm install -g tldr

# base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
