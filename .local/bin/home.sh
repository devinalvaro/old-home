#!/bin/bash

img='home'
if [ $# -gt 0 ]; then
    img="$1"
fi

cmd='fish'
if [ $# -gt 1 ]; then
    cmd="${@:2}"
fi

docker run \
    --rm -it \
    -v "$HOME:/home" \
    "devinalvaro/$img" \
    /bin/fish -c "cd $(dirs); $cmd"
