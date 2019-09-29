#!/bin/bash

cmd='fish'
if [ $# -ne 0 ]; then
    cmd="${@:1}"
fi

docker run --rm -it -v $HOME:/home devinalvaro/home /bin/fish -c "cd $(dirs); $cmd"
