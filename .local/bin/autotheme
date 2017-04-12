#!/bin/bash

# arc-theme
sudo dnf -y install autoconf
sudo dnf -y install automake
sudo dnf -y install pkgconfig # pkg-config in Debian
sudo dnf -y install gtk3-devel # libgtk-3-dev in Debian

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
