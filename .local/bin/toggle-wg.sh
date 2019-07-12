#!/bin/bash

set -u

systemctl is-active --quiet wg-quick@wg0
if [ $? -ne 0 ]; then
    echo "==> Starting wireguard"
    sudo systemctl start wg-quick@wg0
else
    echo "==> Stopping wireguard"
    sudo systemctl stop wg-quick@wg0
fi
