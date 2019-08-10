#!/bin/bash

set -eu

export DEBIAN_FRONTEND=noninteractive

UPGRADE_PACKAGES=${1:-none}

if [ "${UPGRADE_PACKAGES}" != "none" ]; then
    echo "==> Updating and upgrading packages"
    sudo apt-get update
    sudo apt-get upgrade -y
fi

echo "==> Installing packages"
sudo apt-get install -qq \
    build-essential \
    ctags \
    curl \
    docker-compose \
    docker.io \
    fd-find \
    fish \
    fzf \
    lastpass-cli \
    mosh \
    neovim \
    python3 \
    python3-dev \
    python3-pip \
    python3-setuptools \
    ripgrep \
    --no-install-recommends

# ...

# docker

if [ $(groups $USER | grep -q docker) ]; then
    echo "==> Adding user to docker group"
    sudo gpasswd -a $USER docker
fi

# fd

FD_BIN="/usr/local/bin/fd"
if [ ! -f "${FD_BIN}" ]; then
    echo "==> Linking fdfind to fd"
    sudo ln -sfn "$(which fdfind)" ${FD_BIN}
fi

# fish

FISHER_FILE="${HOME}/.config/fish/functions/fisher.fish"
if [ ! -f "${FISHER_FILE}" ]; then
    echo " ==> Installing fish plugins"
    curl https://git.io/fisher --create-dirs -sLo ${FISHER_FILE}
    fish -c fisher
fi

# nvim

VIM_PLUG_FILE="${HOME}/.local/share/nvim/site/autoload/plug.vim"
if [ ! -f "${VIM_PLUG_FILE}" ]; then
    echo " ==> Installing nvim plugins"
    curl -fLo ${VIM_PLUG_FILE} --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    nvim +PlugInstall +qall
fi

NVIM_FTPLUGIN="${HOME}/.local/share/nvim/site/ftplugin"
if [ ! -d "${NVIM_FTPLUGIN}" ]; then
    echo "==> Linking nvim/langs to nvim/site/ftplugin"
    ln -sfn ~/.config/nvim/langs ${NVIM_FTPLUGIN}
fi

# ...

# node

if ! [ -x "$(command -v node)" ]; then
    echo "==> Installing node"
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi

# go

GO_VERSION="1.12.7"
if ! [ -x "$(command -v go)" ]; then
    echo "==> Installing go"
    wget -c "https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz"
    sudo tar -C /usr/local -xzf "go${GO_VERSION}.linux-amd64.tar.gz"
    rm -f "go${GO_VERSION}.linux-amd64.tar.gz"
fi

GO_BIN="/usr/local/bin/go"
if [ ! -f "${GO_BIN}" ]; then
    echo "==> Linking go to /usr/local/bin"
    sudo ln -sfn /usr/local/go/bin/go ${GO_BIN}
fi

echo "==> Setting go environment"
export GOPATH="$HOME/.go"
nvim +GoInstallBinaries +qall

# python

echo "==> Installing pip packages"
export PYTHONUSERBASE="$HOME/.pip"
pip3 install --user \
    neovim-remote \
    virtualfish

echo "==> Setting python environment"
pip3 install --user 'python-language-server[rope,pycodestyle,pyflakes]'
pip3 install --user black

# rust

if ! [ -x "$(command -v rustup)" ]; then
    echo "==> Setting rust environment"
    curl https://sh.rustup.rs -sSf | sh -s -- -y
    export PATH="$HOME/.cargo/bin:$PATH"
    rustup component add rls rust-analysis rust-src
    rustup component add rustfmt
fi

# ...

echo ""
echo "==> Done!"
