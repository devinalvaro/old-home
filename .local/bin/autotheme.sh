#!/bin/bash

# arc-theme
sudo apt -y install autoconf
sudo apt -y install automake
sudo apt -y install pkg-config # pkgconfig in Debian
sudo apt -y install libgtk-3-dev # gtk3-devel in Debian

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

# gogh
wget -O xt https://git.io/vKOB6 && chmod +x xt && ./xt
